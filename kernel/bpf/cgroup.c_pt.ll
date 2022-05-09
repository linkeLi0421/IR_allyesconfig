; ModuleID = '/llk/IR_all_yes/kernel/bpf/cgroup.c_pt.bc'
source_filename = "../kernel/bpf/cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cgroup_bpf_enabled_key\22, \22a\22\09"
module asm "\09.weak\09__crc_cgroup_bpf_enabled_key\09\09\09\09"
module asm "\09.long\09__crc_cgroup_bpf_enabled_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_bpf_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_bpf_enabled_key\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_bpf_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cgroup_bpf_run_filter_skb\22, \22a\22\09"
module asm "\09.weak\09__crc___cgroup_bpf_run_filter_skb\09\09\09\09"
module asm "\09.long\09__crc___cgroup_bpf_run_filter_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cgroup_bpf_run_filter_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__cgroup_bpf_run_filter_skb\22\09\09\09\09\09"
module asm "__kstrtabns___cgroup_bpf_run_filter_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cgroup_bpf_run_filter_sk\22, \22a\22\09"
module asm "\09.weak\09__crc___cgroup_bpf_run_filter_sk\09\09\09\09"
module asm "\09.long\09__crc___cgroup_bpf_run_filter_sk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cgroup_bpf_run_filter_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22__cgroup_bpf_run_filter_sk\22\09\09\09\09\09"
module asm "__kstrtabns___cgroup_bpf_run_filter_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cgroup_bpf_run_filter_sock_addr\22, \22a\22\09"
module asm "\09.weak\09__crc___cgroup_bpf_run_filter_sock_addr\09\09\09\09"
module asm "\09.long\09__crc___cgroup_bpf_run_filter_sock_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cgroup_bpf_run_filter_sock_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22__cgroup_bpf_run_filter_sock_addr\22\09\09\09\09\09"
module asm "__kstrtabns___cgroup_bpf_run_filter_sock_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cgroup_bpf_run_filter_sock_ops\22, \22a\22\09"
module asm "\09.weak\09__crc___cgroup_bpf_run_filter_sock_ops\09\09\09\09"
module asm "\09.long\09__crc___cgroup_bpf_run_filter_sock_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cgroup_bpf_run_filter_sock_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22__cgroup_bpf_run_filter_sock_ops\22\09\09\09\09\09"
module asm "__kstrtabns___cgroup_bpf_run_filter_sock_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bpf_link_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_ops = type { ptr }
%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.202, %union.anon.204, ptr, ptr }
%union.anon.202 = type { %struct.anon.203 }
%struct.anon.203 = type { i32, i32, i32, i32, i32 }
%union.anon.204 = type { %struct.anon.205 }
%struct.anon.205 = type { ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.172, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.172 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.120, i32, %struct.spinlock }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { ptr, ptr }
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
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.bpf_prog_list = type { %struct.list_head, ptr, ptr, [2 x ptr] }
%struct.bpf_link = type { %struct.atomic64_t, i32, i32, ptr, ptr, %struct.work_struct }
%struct.atomic64_t = type { i64 }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.173 }
%union.anon.173 = type { i64 }
%struct.anon.66 = type { i32, i32, i32, i32, i32 }
%struct.bpf_cgroup_storage_key = type { i64, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.100, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.100 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.anon.88, [0 x %struct.sock_filter] }
%struct.anon.88 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.95 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.95 = type { %struct.work_struct }
%struct.bpf_link_primer = type { ptr, ptr, i32, i32 }
%struct.anon.75 = type { i32, %union.anon.76, i32, i32, %union.anon.77 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, i32 }
%struct.bpf_cgroup_link = type { %struct.bpf_link, ptr, i32 }
%struct.anon.71 = type { i32, i32, i32, i32, i64, i32 }
%struct.bpf_cg_run_ctx = type { %struct.bpf_run_ctx, ptr }
%struct.bpf_run_ctx = type {}
%struct.sk_buff = type { %union.anon.113, %union.anon.144, %union.anon.145, [48 x i8], %union.anon.146, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.148, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr, %union.anon.115 }
%union.anon.115 = type { ptr }
%union.anon.144 = type { ptr }
%union.anon.145 = type { i64 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, ptr }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.150, i32, i32, i32, i16, i16, %union.anon.152, i32, %union.anon.153, %union.anon.154, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.150 = type { i32 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i16 }
%struct.sock_common = type { %union.anon.19, %union.anon.21, %union.anon.22, i16, i8, i8, i32, %union.anon.24, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.162, [0 x i32], %union.anon.163, i16, i16, %union.anon.164, %struct.refcount_struct, [0 x i32], %union.anon.165 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { i32 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.134 }
%union.anon.134 = type { [4 x i32] }
%union.anon.162 = type { i32 }
%union.anon.163 = type { %struct.hlist_node }
%union.anon.164 = type { i32 }
%union.anon.165 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.166, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.167, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.168, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.166 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.167 = type { ptr }
%union.anon.168 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.bpf_sock_addr_kern = type { ptr, ptr, i64, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.199 }
%union.anon.199 = type { ptr, [124 x i8] }
%struct.bpf_cgroup_dev_ctx = type { i32, i32, i32 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.bpf_insn_access_aux = type { i32, %union.anon.206, ptr }
%union.anon.206 = type { %struct.anon.207 }
%struct.anon.207 = type { ptr, i32 }
%struct.bpf_sysctl_kern = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i64 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_sockopt_buf = type { [32 x i8] }
%struct.bpf_sockopt_kern = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.bpf_link_info = type { i32, i32, i32, %union.anon.190 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i64, i32 }

@cgroup_bpf_enabled_key = dso_local global { [23 x %struct.static_key_false], [40 x i8] } zeroinitializer, align 32
@__kstrtab_cgroup_bpf_enabled_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_bpf_enabled_key = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_bpf_enabled_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_bpf_enabled_key to i32), ptr @__kstrtab_cgroup_bpf_enabled_key, ptr @__kstrtabns_cgroup_bpf_enabled_key }, section "___ksymtab+cgroup_bpf_enabled_key", align 4
@bpf_cgroup_link_lops = internal constant { %struct.bpf_link_ops, [40 x i8] } { %struct.bpf_link_ops { ptr @bpf_cgroup_link_release, ptr @bpf_cgroup_link_dealloc, ptr @bpf_cgroup_link_detach, ptr @cgroup_bpf_replace, ptr @bpf_cgroup_link_show_fdinfo, ptr @bpf_cgroup_link_fill_link_info }, [40 x i8] zeroinitializer }, align 32
@__kstrtab___cgroup_bpf_run_filter_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___cgroup_bpf_run_filter_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___cgroup_bpf_run_filter_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cgroup_bpf_run_filter_skb to i32), ptr @__kstrtab___cgroup_bpf_run_filter_skb, ptr @__kstrtabns___cgroup_bpf_run_filter_skb }, section "___ksymtab+__cgroup_bpf_run_filter_skb", align 4
@__kstrtab___cgroup_bpf_run_filter_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns___cgroup_bpf_run_filter_sk = external dso_local constant [0 x i8], align 1
@__ksymtab___cgroup_bpf_run_filter_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cgroup_bpf_run_filter_sk to i32), ptr @__kstrtab___cgroup_bpf_run_filter_sk, ptr @__kstrtabns___cgroup_bpf_run_filter_sk }, section "___ksymtab+__cgroup_bpf_run_filter_sk", align 4
@__kstrtab___cgroup_bpf_run_filter_sock_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns___cgroup_bpf_run_filter_sock_addr = external dso_local constant [0 x i8], align 1
@__ksymtab___cgroup_bpf_run_filter_sock_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cgroup_bpf_run_filter_sock_addr to i32), ptr @__kstrtab___cgroup_bpf_run_filter_sock_addr, ptr @__kstrtabns___cgroup_bpf_run_filter_sock_addr }, section "___ksymtab+__cgroup_bpf_run_filter_sock_addr", align 4
@__kstrtab___cgroup_bpf_run_filter_sock_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns___cgroup_bpf_run_filter_sock_ops = external dso_local constant [0 x i8], align 1
@__ksymtab___cgroup_bpf_run_filter_sock_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cgroup_bpf_run_filter_sock_ops to i32), ptr @__kstrtab___cgroup_bpf_run_filter_sock_ops, ptr @__kstrtabns___cgroup_bpf_run_filter_sock_ops }, section "___ksymtab+__cgroup_bpf_run_filter_sock_ops", align 4
@cg_dev_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@cg_dev_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr @cgroup_dev_func_proto, ptr @cgroup_dev_is_valid_access, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/bpf/cgroup.c\00", [44 x i8] zeroinitializer }, align 32
@cg_sysctl_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr @sysctl_func_proto, ptr @sysctl_is_valid_access, ptr null, ptr null, ptr @sysctl_convert_ctx_access, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cg_sysctl_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@cg_sockopt_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr @cg_sockopt_func_proto, ptr @cg_sockopt_is_valid_access, ptr @cg_sockopt_get_prologue, ptr null, ptr @cg_sockopt_convert_ctx_access, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cg_sockopt_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cgroup_bpf_release_fn.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&cgrp->bpf.release_work)\00", [53 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@cgroup_bpf_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@activate_effective_progs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hierarchy_allows_attach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@replace_effective_prog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cgroup_id:\09%llu\0Aattach_type:\09%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__cgroup_bpf_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@BPF_PROG_RUN_ARRAY_CG_FLAGS.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bpf.h\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@BPF_PROG_RUN_ARRAY_CG.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bpf_get_current_uid_gid_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_get_local_storage_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_get_current_cgroup_id_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_event_output_data_proto = external dso_local constant %struct.bpf_func_proto, align 4
@__cgroup_bpf_prog_array_is_empty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@bpf_strtol_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_strtoul_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sysctl_get_name_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sysctl_get_name, i8 0, i8 0, i32 0, %union.anon.202 { %struct.anon.203 { i32 9, i32 5, i32 7, i32 10, i32 0 } }, %union.anon.204 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sysctl_get_current_value_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sysctl_get_current_value, i8 0, i8 0, i32 0, %union.anon.202 { %struct.anon.203 { i32 9, i32 6, i32 7, i32 0, i32 0 } }, %union.anon.204 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sysctl_get_new_value_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sysctl_get_new_value, i8 0, i8 0, i32 0, %union.anon.202 { %struct.anon.203 { i32 9, i32 6, i32 7, i32 0, i32 0 } }, %union.anon.204 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sysctl_set_new_value_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sysctl_set_new_value, i8 0, i8 0, i32 0, %union.anon.202 { %struct.anon.203 { i32 9, i32 517, i32 7, i32 0, i32 0 } }, %union.anon.204 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ktime_get_coarse_ns_proto = external dso_local constant %struct.bpf_func_proto, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@bpf_get_netns_cookie_sockopt_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_netns_cookie_sockopt, i8 0, i8 0, i32 0, %union.anon.202 { %struct.anon.203 { i32 265, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.204 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_storage_get_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_storage_delete_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_setsockopt_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_getsockopt_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_tcp_sock_proto = external dso_local constant %struct.bpf_func_proto, align 4
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 29, i64 30, i64 31, i64 32, i64 34]
@__sancov_gen_cov_switch_values.16 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 29, i64 30, i64 31, i64 32, i64 34]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 25, i64 80, i64 81]
@__sancov_gen_cov_switch_values.20 = internal global [13 x i64] [i64 11, i64 32, i64 15, i64 25, i64 80, i64 81, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 160]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [12 x i64] [i64 10, i64 32, i64 15, i64 25, i64 49, i64 57, i64 80, i64 81, i64 96, i64 107, i64 108, i64 122]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 29, i64 30, i64 31, i64 32, i64 34]
@__sancov_gen_cov_switch_values.28 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 29, i64 30, i64 31, i64 32, i64 34]
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"cgroup_bpf_enabled_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 22, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"bpf_cgroup_link_lops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 961, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"cg_dev_prog_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1268, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"cg_dev_verifier_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1271, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1546, i32 7 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"cg_sysctl_verifier_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1908, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"cg_sysctl_prog_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1914, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"cg_sockopt_verifier_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2085, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"cg_sockopt_prog_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2092, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 162, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 133, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 938, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"../include/linux/bpf.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1300, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 613, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 271, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 695, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 481, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 723, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 230, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 214, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 156, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1670, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"bpf_sysctl_get_name_proto\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1700, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant [35 x i8] c"bpf_sysctl_get_current_value_proto\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1742, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant [31 x i8] c"bpf_sysctl_get_new_value_proto\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1762, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"bpf_sysctl_set_new_value_proto\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1787, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [35 x i8] c"bpf_get_netns_cookie_sockopt_proto\00", align 1
@___asan_gen_.117 = private constant [23 x i8] c"../kernel/bpf/cgroup.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1925, i32 36 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab___cgroup_bpf_run_filter_sk, ptr @__ksymtab___cgroup_bpf_run_filter_skb, ptr @__ksymtab___cgroup_bpf_run_filter_sock_addr, ptr @__ksymtab___cgroup_bpf_run_filter_sock_ops, ptr @__ksymtab_cgroup_bpf_enabled_key, ptr @cgroup_bpf_enabled_key, ptr @bpf_cgroup_link_lops, ptr @cg_dev_prog_ops, ptr @cg_dev_verifier_ops, ptr @.str, ptr @cg_sysctl_verifier_ops, ptr @cg_sysctl_prog_ops, ptr @cg_sockopt_verifier_ops, ptr @cg_sockopt_prog_ops, ptr @cgroup_bpf_release_fn.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @bpf_sysctl_get_name_proto, ptr @bpf_sysctl_get_current_value_proto, ptr @bpf_sysctl_get_new_value_proto, ptr @bpf_sysctl_set_new_value_proto, ptr @bpf_get_netns_cookie_sockopt_proto], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_bpf_enabled_key to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_cgroup_link_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_dev_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_dev_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_sysctl_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_sysctl_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_sockopt_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cg_sockopt_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_bpf_release_fn.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sysctl_get_name_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sysctl_get_current_value_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sysctl_get_new_value_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sysctl_set_new_value_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_netns_cookie_sockopt_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_bpf_offline(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.cgroup_get.exit_crit_edge

entry.cgroup_get.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 2
  tail call fastcc void @percpu_ref_get(ptr noundef %refcnt.i.i) #16
  br label %cgroup_get.exit

cgroup_get.exit:                                  ; preds = %if.then.i.i, %entry.cgroup_get.exit_crit_edge
  %refcnt = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 5
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %refcnt, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_bpf_inherit(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  %arrays = alloca [23 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %arrays) #16
  %0 = call ptr @memset(ptr %arrays, i32 0, i32 92)
  %refcnt = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 5
  %call = tail call i32 @percpu_ref_init(ptr noundef %refcnt, ptr noundef nonnull @cgroup_bpf_release_fn, i32 noundef 0, i32 noundef 3264) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 12
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.079 = load ptr, ptr %parent.i, align 8
  %tobool2.not80 = icmp eq ptr %p.079, null
  br i1 %tobool2.not80, label %if.end.for.cond4.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond4.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %if.end.for.cond4.preheader_crit_edge
  %arrayidx = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.3 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.4 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  %arrayidx.5 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i.5 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.5, ptr %prev.i.5, align 4
  %arrayidx.6 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i.6 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.6, ptr %prev.i.6, align 4
  %arrayidx.7 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i.7 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.7, ptr %prev.i.7, align 4
  %arrayidx.8 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 4
  %prev.i.8 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.8, ptr %prev.i.8, align 4
  %arrayidx.9 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 4
  %prev.i.9 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.9, ptr %prev.i.9, align 4
  %arrayidx.10 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.10, ptr %arrayidx.10, align 4
  %prev.i.10 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i.10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.10, ptr %prev.i.10, align 4
  %arrayidx.11 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx.11, ptr %arrayidx.11, align 4
  %prev.i.11 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 11, i32 1
  %25 = ptrtoint ptr %prev.i.11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.11, ptr %prev.i.11, align 4
  %arrayidx.12 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 12
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.12, ptr %arrayidx.12, align 4
  %prev.i.12 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 12, i32 1
  %27 = ptrtoint ptr %prev.i.12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.12, ptr %prev.i.12, align 4
  %arrayidx.13 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 13
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.13, ptr %arrayidx.13, align 4
  %prev.i.13 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 13, i32 1
  %29 = ptrtoint ptr %prev.i.13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.13, ptr %prev.i.13, align 4
  %arrayidx.14 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 14
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx.14, ptr %arrayidx.14, align 4
  %prev.i.14 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 14, i32 1
  %31 = ptrtoint ptr %prev.i.14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.14, ptr %prev.i.14, align 4
  %arrayidx.15 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 15
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx.15, ptr %arrayidx.15, align 4
  %prev.i.15 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 15, i32 1
  %33 = ptrtoint ptr %prev.i.15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.15, ptr %prev.i.15, align 4
  %arrayidx.16 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 16
  %34 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.16, ptr %arrayidx.16, align 4
  %prev.i.16 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 16, i32 1
  %35 = ptrtoint ptr %prev.i.16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.16, ptr %prev.i.16, align 4
  %arrayidx.17 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 17
  %36 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx.17, ptr %arrayidx.17, align 4
  %prev.i.17 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 17, i32 1
  %37 = ptrtoint ptr %prev.i.17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.17, ptr %prev.i.17, align 4
  %arrayidx.18 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 18
  %38 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx.18, ptr %arrayidx.18, align 4
  %prev.i.18 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 18, i32 1
  %39 = ptrtoint ptr %prev.i.18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.18, ptr %prev.i.18, align 4
  %arrayidx.19 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 19
  %40 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx.19, ptr %arrayidx.19, align 4
  %prev.i.19 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 19, i32 1
  %41 = ptrtoint ptr %prev.i.19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.19, ptr %prev.i.19, align 4
  %arrayidx.20 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 20
  %42 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %arrayidx.20, ptr %arrayidx.20, align 4
  %prev.i.20 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 20, i32 1
  %43 = ptrtoint ptr %prev.i.20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.20, ptr %prev.i.20, align 4
  %arrayidx.21 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 21
  %44 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx.21, ptr %arrayidx.21, align 4
  %prev.i.21 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 21, i32 1
  %45 = ptrtoint ptr %prev.i.21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.21, ptr %prev.i.21, align 4
  %arrayidx.22 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 22
  %46 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx.22, ptr %arrayidx.22, align 4
  %prev.i.22 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 22, i32 1
  %47 = ptrtoint ptr %prev.i.22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.22, ptr %prev.i.22, align 4
  %storages = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 3
  %48 = ptrtoint ptr %storages to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %storages, ptr %storages, align 4
  %prev.i75 = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %storages, ptr %prev.i75, align 4
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.081 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.079, %if.end.for.body_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.cgroup, ptr %p.081, i32 0, i32 34, i32 5
  tail call fastcc void @percpu_ref_get(ptr noundef %refcnt.i) #16
  %parent.i74 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.081, i32 0, i32 12
  %50 = ptrtoint ptr %parent.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %p.0 = load ptr, ptr %parent.i74, align 8
  %tobool2.not = icmp eq ptr %p.0, null
  br i1 %tobool2.not, label %for.body.for.cond4.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond4.preheader

for.cond10:                                       ; preds = %for.body12
  %inc19 = add nuw nsw i32 %i.183, 1
  %exitcond.not = icmp eq i32 %inc19, 23
  br i1 %exitcond.not, label %for.cond21.preheader, label %for.cond10.for.body12_crit_edge

for.cond10.for.body12_crit_edge:                  ; preds = %for.cond10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12

for.cond21.preheader:                             ; preds = %for.cond10
  %bpf.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34
  br label %for.body23

for.body12:                                       ; preds = %for.cond10.for.body12_crit_edge, %for.cond4.preheader
  %i.183 = phi i32 [ 0, %for.cond4.preheader ], [ %inc19, %for.cond10.for.body12_crit_edge ]
  %arrayidx13 = getelementptr [23 x ptr], ptr %arrays, i32 0, i32 %i.183
  %call14 = call fastcc i32 @compute_effective_progs(ptr noundef %cgrp, i32 noundef %i.183, ptr noundef %arrayidx13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond10, label %for.body30.preheader

for.body30.preheader:                             ; preds = %for.body12
  %51 = ptrtoint ptr %arrays to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrays, align 4
  tail call void @bpf_prog_array_free(ptr noundef %52) #16
  %arrayidx31.1 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx31.1, align 4
  tail call void @bpf_prog_array_free(ptr noundef %54) #16
  %arrayidx31.2 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx31.2, align 4
  tail call void @bpf_prog_array_free(ptr noundef %56) #16
  %arrayidx31.3 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx31.3, align 4
  tail call void @bpf_prog_array_free(ptr noundef %58) #16
  %arrayidx31.4 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx31.4, align 4
  tail call void @bpf_prog_array_free(ptr noundef %60) #16
  %arrayidx31.5 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 5
  %61 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx31.5, align 4
  tail call void @bpf_prog_array_free(ptr noundef %62) #16
  %arrayidx31.6 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx31.6, align 4
  tail call void @bpf_prog_array_free(ptr noundef %64) #16
  %arrayidx31.7 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx31.7, align 4
  tail call void @bpf_prog_array_free(ptr noundef %66) #16
  %arrayidx31.8 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 8
  %67 = ptrtoint ptr %arrayidx31.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx31.8, align 4
  tail call void @bpf_prog_array_free(ptr noundef %68) #16
  %arrayidx31.9 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 9
  %69 = ptrtoint ptr %arrayidx31.9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx31.9, align 4
  tail call void @bpf_prog_array_free(ptr noundef %70) #16
  %arrayidx31.10 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 10
  %71 = ptrtoint ptr %arrayidx31.10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx31.10, align 4
  tail call void @bpf_prog_array_free(ptr noundef %72) #16
  %arrayidx31.11 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 11
  %73 = ptrtoint ptr %arrayidx31.11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx31.11, align 4
  tail call void @bpf_prog_array_free(ptr noundef %74) #16
  %arrayidx31.12 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 12
  %75 = ptrtoint ptr %arrayidx31.12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx31.12, align 4
  tail call void @bpf_prog_array_free(ptr noundef %76) #16
  %arrayidx31.13 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 13
  %77 = ptrtoint ptr %arrayidx31.13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx31.13, align 4
  tail call void @bpf_prog_array_free(ptr noundef %78) #16
  %arrayidx31.14 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 14
  %79 = ptrtoint ptr %arrayidx31.14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx31.14, align 4
  tail call void @bpf_prog_array_free(ptr noundef %80) #16
  %arrayidx31.15 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 15
  %81 = ptrtoint ptr %arrayidx31.15 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx31.15, align 4
  tail call void @bpf_prog_array_free(ptr noundef %82) #16
  %arrayidx31.16 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 16
  %83 = ptrtoint ptr %arrayidx31.16 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx31.16, align 4
  tail call void @bpf_prog_array_free(ptr noundef %84) #16
  %arrayidx31.17 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 17
  %85 = ptrtoint ptr %arrayidx31.17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx31.17, align 4
  tail call void @bpf_prog_array_free(ptr noundef %86) #16
  %arrayidx31.18 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 18
  %87 = ptrtoint ptr %arrayidx31.18 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx31.18, align 4
  tail call void @bpf_prog_array_free(ptr noundef %88) #16
  %arrayidx31.19 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 19
  %89 = ptrtoint ptr %arrayidx31.19 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx31.19, align 4
  tail call void @bpf_prog_array_free(ptr noundef %90) #16
  %arrayidx31.20 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 20
  %91 = ptrtoint ptr %arrayidx31.20 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx31.20, align 4
  tail call void @bpf_prog_array_free(ptr noundef %92) #16
  %arrayidx31.21 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 21
  %93 = ptrtoint ptr %arrayidx31.21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx31.21, align 4
  tail call void @bpf_prog_array_free(ptr noundef %94) #16
  %arrayidx31.22 = getelementptr inbounds [23 x ptr], ptr %arrays, i32 0, i32 22
  %95 = ptrtoint ptr %arrayidx31.22 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx31.22, align 4
  tail call void @bpf_prog_array_free(ptr noundef %96) #16
  %97 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %p.186 = load ptr, ptr %parent.i, align 8
  %tobool37.not87 = icmp eq ptr %p.186, null
  br i1 %tobool37.not87, label %for.body30.preheader.for.end41_crit_edge, label %for.body30.preheader.for.body38_crit_edge

for.body30.preheader.for.body38_crit_edge:        ; preds = %for.body30.preheader
  br label %for.body38

for.body30.preheader.for.end41_crit_edge:         ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end41

for.body23:                                       ; preds = %activate_effective_progs.exit.for.body23_crit_edge, %for.cond21.preheader
  %i.284 = phi i32 [ 0, %for.cond21.preheader ], [ %inc26, %activate_effective_progs.exit.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [23 x ptr], ptr %arrays, i32 0, i32 %i.284
  %98 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx24, align 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body23.activate_effective_progs.exit_crit_edge

for.body23.activate_effective_progs.exit_crit_edge: ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

land.lhs.true.i:                                  ; preds = %for.body23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.activate_effective_progs.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.activate_effective_progs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b51.i = load i1, ptr @activate_effective_progs.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true3.i.activate_effective_progs.exit_crit_edge, label %if.then.i

land.lhs.true3.i.activate_effective_progs.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @activate_effective_progs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.2) #16
  br label %activate_effective_progs.exit

activate_effective_progs.exit:                    ; preds = %if.then.i, %land.lhs.true3.i.activate_effective_progs.exit_crit_edge, %land.lhs.true.i.activate_effective_progs.exit_crit_edge, %for.body23.activate_effective_progs.exit_crit_edge
  %arrayidx.i = getelementptr [23 x ptr], ptr %bpf.i, i32 0, i32 %i.284
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !96
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %99, ptr %arrayidx.i, align 4
  tail call void @bpf_prog_array_free(ptr noundef %101) #16
  %inc26 = add nuw nsw i32 %i.284, 1
  %exitcond90.not = icmp eq i32 %inc26, 23
  br i1 %exitcond90.not, label %activate_effective_progs.exit.cleanup44_crit_edge, label %activate_effective_progs.exit.for.body23_crit_edge

activate_effective_progs.exit.for.body23_crit_edge: ; preds = %activate_effective_progs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body23

activate_effective_progs.exit.cleanup44_crit_edge: ; preds = %activate_effective_progs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body30.preheader.for.body38_crit_edge
  %p.188 = phi ptr [ %p.1, %for.body38.for.body38_crit_edge ], [ %p.186, %for.body30.preheader.for.body38_crit_edge ]
  %refcnt.i77 = getelementptr inbounds %struct.cgroup, ptr %p.188, i32 0, i32 34, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i77) #16
  %parent.i78 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.188, i32 0, i32 12
  %103 = ptrtoint ptr %parent.i78 to i32
  call void @__asan_load4_noabort(i32 %103)
  %p.1 = load ptr, ptr %parent.i78, align 8
  %tobool37.not = icmp eq ptr %p.1, null
  br i1 %tobool37.not, label %for.body38.for.end41_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body38

for.body38.for.end41_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end41

for.end41:                                        ; preds = %for.body38.for.end41_crit_edge, %for.body30.preheader.for.end41_crit_edge
  tail call void @percpu_ref_exit(ptr noundef %refcnt) #16
  br label %cleanup44

cleanup44:                                        ; preds = %for.end41, %activate_effective_progs.exit.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ -12, %for.end41 ], [ %call, %entry.cleanup44_crit_edge ], [ 0, %activate_effective_progs.exit.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %arrays) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_bpf_release_fn(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %release_work = getelementptr i8, ptr %ref, i32 8
  tail call void @__init_work(ptr noundef %release_work, i32 noundef 0) #16
  %0 = ptrtoint ptr %release_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %release_work, align 4
  %lockdep_map = getelementptr i8, ptr %ref, i32 24
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cgroup_bpf_release_fn.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry7 = getelementptr i8, ptr %ref, i32 12
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr i8, ptr %ref, i32 16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %ref, i32 20
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cgroup_bpf_release, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %release_work) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compute_effective_progs(ptr noundef readonly %cgrp, i32 noundef %atype, ptr nocapture noundef writeonly %array) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %p.0 = phi ptr [ %cgrp, %entry ], [ %11, %if.end.do.body_crit_edge ]
  %cnt.0 = phi i32 [ 0, %entry ], [ %cnt.1, %if.end.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %cmp = icmp eq i32 %cnt.0, 0
  br i1 %cmp, label %do.body.if.then_crit_edge, label %lor.lhs.false

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %arrayidx = getelementptr %struct.cgroup, ptr %p.0, i32 0, i32 34, i32 2, i32 %atype
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %do.body.if.then_crit_edge
  %arrayidx3 = getelementptr %struct.cgroup, ptr %p.0, i32 0, i32 34, i32 1, i32 %atype
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pl.010.i = load ptr, ptr %arrayidx3, align 4
  %cmp.not11.i = icmp eq ptr %pl.010.i, %arrayidx3
  br i1 %cmp.not11.i, label %if.then.prog_list_length.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.prog_list_length.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_length.exit

for.body.i:                                       ; preds = %prog_list_prog.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %pl.013.i = phi ptr [ %pl.0.i, %prog_list_prog.exit.i.for.body.i_crit_edge ], [ %pl.010.i, %if.then.for.body.i_crit_edge ]
  %cnt.012.i = phi i32 [ %spec.select.i, %prog_list_prog.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %prog.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i, i32 0, i32 1
  %3 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prog.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.prog_list_prog.exit.i_crit_edge

for.body.i.prog_list_prog.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %link.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i, i32 0, i32 2
  %5 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.prog_list_prog.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.prog_list_prog.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i.i = getelementptr inbounds %struct.bpf_link, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %prog6.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prog6.i.i, align 4
  br label %prog_list_prog.exit.i

prog_list_prog.exit.i:                            ; preds = %if.then3.i.i, %if.end.i.i.prog_list_prog.exit.i_crit_edge, %for.body.i.prog_list_prog.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.then3.i.i ], [ %4, %for.body.i.prog_list_prog.exit.i_crit_edge ], [ null, %if.end.i.i.prog_list_prog.exit.i_crit_edge ]
  %tobool.not.i = icmp ne ptr %retval.0.i.i, null
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %cnt.012.i, %inc.i
  %9 = ptrtoint ptr %pl.013.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pl.0.i = load ptr, ptr %pl.013.i, align 4
  %cmp.not.i = icmp eq ptr %pl.0.i, %arrayidx3
  br i1 %cmp.not.i, label %prog_list_prog.exit.i.prog_list_length.exit_crit_edge, label %prog_list_prog.exit.i.for.body.i_crit_edge

prog_list_prog.exit.i.for.body.i_crit_edge:       ; preds = %prog_list_prog.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

prog_list_prog.exit.i.prog_list_length.exit_crit_edge: ; preds = %prog_list_prog.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_length.exit

prog_list_length.exit:                            ; preds = %prog_list_prog.exit.i.prog_list_length.exit_crit_edge, %if.then.prog_list_length.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.then.prog_list_length.exit_crit_edge ], [ %spec.select.i, %prog_list_prog.exit.i.prog_list_length.exit_crit_edge ]
  %add = add i32 %cnt.0.lcssa.i, %cnt.0
  br label %if.end

if.end:                                           ; preds = %prog_list_length.exit, %lor.lhs.false.if.end_crit_edge
  %cnt.1 = phi i32 [ %add, %prog_list_length.exit ], [ %cnt.0, %lor.lhs.false.if.end_crit_edge ]
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.0, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %if.end
  %call6 = tail call ptr @bpf_prog_array_alloc(i32 noundef %cnt.1, i32 noundef 3264) #16
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.end.do.body10_crit_edge

do.end.do.body10_crit_edge:                       ; preds = %do.end
  br label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body10:                                        ; preds = %do.cond38.do.body10_crit_edge, %do.end.do.body10_crit_edge
  %p.1 = phi ptr [ %35, %do.cond38.do.body10_crit_edge ], [ %cgrp, %do.end.do.body10_crit_edge ]
  %cnt.2 = phi i32 [ %cnt.5, %do.cond38.do.body10_crit_edge ], [ 0, %do.end.do.body10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.2)
  %cmp11 = icmp sgt i32 %cnt.2, 0
  br i1 %cmp11, label %land.lhs.true, label %do.body10.if.end18_crit_edge

do.body10.if.end18_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body10
  %arrayidx14 = getelementptr %struct.cgroup, ptr %p.1, i32 0, i32 34, i32 2, i32 %atype
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.cond38_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true.do.cond38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond38

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %do.body10.if.end18_crit_edge
  %arrayidx21 = getelementptr %struct.cgroup, ptr %p.1, i32 0, i32 34, i32 1, i32 %atype
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %pl.089 = load ptr, ptr %arrayidx21, align 4
  %cmp25.not90 = icmp eq ptr %pl.089, %arrayidx21
  br i1 %cmp25.not90, label %if.end18.do.cond38_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.do.cond38_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18.for.body_crit_edge
  %pl.092 = phi ptr [ %pl.0, %for.inc.for.body_crit_edge ], [ %pl.089, %if.end18.for.body_crit_edge ]
  %cnt.391 = phi i32 [ %cnt.4, %for.inc.for.body_crit_edge ], [ %cnt.2, %if.end18.for.body_crit_edge ]
  %prog.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.092, i32 0, i32 1
  %15 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prog.i, align 4
  %tobool.not.i70 = icmp eq ptr %16, null
  br i1 %tobool.not.i70, label %if.end.i, label %for.body.prog_list_prog.exit79_crit_edge

for.body.prog_list_prog.exit79_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit79

if.end.i:                                         ; preds = %for.body
  %link.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.092, i32 0, i32 2
  %17 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link.i, align 4
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %prog_list_prog.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

prog_list_prog.exit:                              ; preds = %if.end.i
  %prog6.i = getelementptr inbounds %struct.bpf_link, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %prog6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog6.i, align 4
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %prog_list_prog.exit.for.inc_crit_edge, label %if.end.i75

prog_list_prog.exit.for.inc_crit_edge:            ; preds = %prog_list_prog.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i75:                                       ; preds = %prog_list_prog.exit
  %21 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link.i, align 4
  %tobool2.not.i74 = icmp eq ptr %22, null
  br i1 %tobool2.not.i74, label %if.end.i75.prog_list_prog.exit79_crit_edge, label %if.then3.i77

if.end.i75.prog_list_prog.exit79_crit_edge:       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit79

if.then3.i77:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i76 = getelementptr inbounds %struct.bpf_link, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %prog6.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog6.i76, align 4
  br label %prog_list_prog.exit79

prog_list_prog.exit79:                            ; preds = %if.then3.i77, %if.end.i75.prog_list_prog.exit79_crit_edge, %for.body.prog_list_prog.exit79_crit_edge
  %retval.0.i78 = phi ptr [ %24, %if.then3.i77 ], [ null, %if.end.i75.prog_list_prog.exit79_crit_edge ], [ %16, %for.body.prog_list_prog.exit79_crit_edge ]
  %arrayidx3087 = getelementptr %struct.bpf_prog_array, ptr %call6, i32 0, i32 1, i32 %cnt.391
  %25 = ptrtoint ptr %arrayidx3087 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i78, ptr %arrayidx3087, align 8
  %26 = getelementptr %struct.bpf_prog_array, ptr %call6, i32 0, i32 1, i32 %cnt.391, i32 1
  %storage = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.092, i32 0, i32 3
  %27 = ptrtoint ptr %storage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %storage, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %26, align 4
  %arrayidx.1.i = getelementptr %struct.bpf_prog_list, ptr %pl.092, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr ptr, ptr %26, i32 1
  %32 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx1.1.i, align 4
  %inc = add i32 %cnt.391, 1
  br label %for.inc

for.inc:                                          ; preds = %prog_list_prog.exit79, %prog_list_prog.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %cnt.4 = phi i32 [ %inc, %prog_list_prog.exit79 ], [ %cnt.391, %prog_list_prog.exit.for.inc_crit_edge ], [ %cnt.391, %if.end.i.for.inc_crit_edge ]
  %33 = ptrtoint ptr %pl.092 to i32
  call void @__asan_load4_noabort(i32 %33)
  %pl.0 = load ptr, ptr %pl.092, align 4
  %cmp25.not = icmp eq ptr %pl.0, %arrayidx21
  br i1 %cmp25.not, label %for.inc.do.cond38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.do.cond38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond38

do.cond38:                                        ; preds = %for.inc.do.cond38_crit_edge, %if.end18.do.cond38_crit_edge, %land.lhs.true.do.cond38_crit_edge
  %cnt.5 = phi i32 [ %cnt.2, %land.lhs.true.do.cond38_crit_edge ], [ %cnt.2, %if.end18.do.cond38_crit_edge ], [ %cnt.4, %for.inc.do.cond38_crit_edge ]
  %parent.i80 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.1, i32 0, i32 12
  %34 = ptrtoint ptr %parent.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i80, align 8
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %do.end41, label %do.cond38.do.body10_crit_edge

do.cond38.do.body10_crit_edge:                    ; preds = %do.cond38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10

do.end41:                                         ; preds = %do.cond38
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6, ptr %array, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end41 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_array_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_bpf_prog_attach(ptr nocapture noundef readonly %attr, i32 noundef %ptype, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %call = tail call ptr @cgroup_get_from_fd(i32 noundef %1) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_flags = getelementptr inbounds %struct.anon.66, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attach_flags, align 4
  %5 = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %.not = icmp eq i32 %5, 6
  br i1 %.not, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %replace_bpf_fd = getelementptr inbounds %struct.anon.66, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %replace_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %replace_bpf_fd, align 8
  %call.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %7, i32 noundef %ptype, i1 noundef zeroext false) #16
  %cmp.i33 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then9.cgroup_put.exit_crit_edge

if.then9.cgroup_put.exit_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_put.exit

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cgroup_put.exit

cgroup_put.exit:                                  ; preds = %if.then.i.i, %if.then9.cgroup_put.exit_crit_edge
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %replace_prog.0 = phi ptr [ %call.i, %if.then6.if.end12_crit_edge ], [ null, %if.end.if.end12_crit_edge ]
  %attach_type = getelementptr inbounds %struct.anon.66, ptr %attr, i32 0, i32 2
  %11 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type, align 8
  %13 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attach_flags, align 4
  %call14 = tail call fastcc i32 @cgroup_bpf_attach(ptr noundef %call, ptr noundef %prog, ptr noundef %replace_prog.0, ptr noundef null, i32 noundef %12, i32 noundef %14)
  %tobool15.not = icmp eq ptr %replace_prog.0, null
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bpf_prog_put(ptr noundef nonnull %replace_prog.0) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %flags.i.i34 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %flags.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i34, align 4
  %and.i.i35 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.then.i.i38, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i38:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i37 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i37) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i38, %if.end17.cleanup_crit_edge, %cgroup_put.exit, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %10, %cgroup_put.exit ], [ %call14, %if.end17.cleanup_crit_edge ], [ %call14, %if.then.i.i38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_from_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cgroup_bpf_attach(ptr noundef %cgrp, ptr noundef %prog, ptr noundef readnone %replace_prog, ptr noundef %link, i32 noundef %type, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.bpf_cgroup_storage_key, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %and.i = and i32 %flags, 3
  %and2.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %.not.i = icmp eq i32 %and.i, 3
  %0 = and i32 %flags, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp eq i32 %0, 4
  %or.cond.i = or i1 %.not.i, %1
  br i1 %or.cond.i, label %entry.__cgroup_bpf_attach.exit_crit_edge, label %if.end.i

entry.__cgroup_bpf_attach.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

if.end.i:                                         ; preds = %entry
  %tobool9.not.i = icmp eq ptr %link, null
  br i1 %tobool9.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true10.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

land.lhs.true10.i:                                ; preds = %if.end.i
  %tobool11.not.i = icmp eq ptr %prog, null
  %tobool13.not.i = icmp eq ptr %replace_prog, null
  %or.cond156.i = and i1 %tobool11.not.i, %tobool13.not.i
  br i1 %or.cond156.i, label %land.lhs.true10.i.if.end15.i_crit_edge, label %land.lhs.true10.i.__cgroup_bpf_attach.exit_crit_edge

land.lhs.true10.i.__cgroup_bpf_attach.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

land.lhs.true10.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true10.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %tobool16.i = icmp eq ptr %replace_prog, null
  %2 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp ne i32 %2, 0
  %cmp.not.i = xor i1 %tobool16.i, %3
  br i1 %cmp.not.i, label %if.end25.i, label %if.end15.i.__cgroup_bpf_attach.exit_crit_edge

if.end15.i.__cgroup_bpf_attach.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

if.end25.i:                                       ; preds = %if.end15.i
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end25.i.__cgroup_bpf_attach.exit_crit_edge [
    i32 0, label %if.end25.i.if.end28.i_crit_edge
    i32 1, label %if.end25.i.if.end28.i_crit_edge61
    i32 2, label %if.end25.i.if.end28.i_crit_edge62
    i32 3, label %if.end25.i.if.end28.i_crit_edge63
    i32 6, label %sw.bb4.i.i
    i32 8, label %sw.bb5.i.i
    i32 9, label %sw.bb6.i.i
    i32 10, label %sw.bb7.i.i
    i32 11, label %sw.bb8.i.i
    i32 12, label %sw.bb9.i.i
    i32 13, label %sw.bb10.i.i
    i32 14, label %sw.bb11.i.i
    i32 15, label %sw.bb12.i.i
    i32 18, label %sw.bb13.i.i
    i32 19, label %sw.bb14.i.i
    i32 20, label %sw.bb15.i.i
    i32 21, label %sw.bb16.i.i
    i32 22, label %sw.bb17.i.i
    i32 29, label %sw.bb18.i.i
    i32 30, label %sw.bb19.i.i
    i32 31, label %sw.bb20.i.i
    i32 32, label %sw.bb21.i.i
    i32 34, label %sw.bb22.i.i
  ]

if.end25.i.if.end28.i_crit_edge63:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

if.end25.i.if.end28.i_crit_edge62:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

if.end25.i.if.end28.i_crit_edge61:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

if.end25.i.if.end28.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

if.end25.i.__cgroup_bpf_attach.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

sw.bb4.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb5.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb6.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb7.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb8.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb9.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb10.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb11.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb12.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb13.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb14.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb15.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb16.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb17.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb18.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb19.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb20.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb21.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

sw.bb22.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

if.end28.i:                                       ; preds = %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %if.end25.i.if.end28.i_crit_edge, %if.end25.i.if.end28.i_crit_edge61, %if.end25.i.if.end28.i_crit_edge62, %if.end25.i.if.end28.i_crit_edge63
  %retval.0.i.ph.i = phi i32 [ %type, %if.end25.i.if.end28.i_crit_edge ], [ 4, %sw.bb4.i.i ], [ 5, %sw.bb5.i.i ], [ 6, %sw.bb6.i.i ], [ 7, %sw.bb7.i.i ], [ 8, %sw.bb8.i.i ], [ 9, %sw.bb9.i.i ], [ 10, %sw.bb10.i.i ], [ 11, %sw.bb11.i.i ], [ 12, %sw.bb12.i.i ], [ 13, %sw.bb13.i.i ], [ 14, %sw.bb14.i.i ], [ 15, %sw.bb15.i.i ], [ 16, %sw.bb16.i.i ], [ 17, %sw.bb17.i.i ], [ 18, %sw.bb18.i.i ], [ 19, %sw.bb19.i.i ], [ 20, %sw.bb20.i.i ], [ 21, %sw.bb21.i.i ], [ 22, %sw.bb22.i.i ], [ %type, %if.end25.i.if.end28.i_crit_edge61 ], [ %type, %if.end25.i.if.end28.i_crit_edge62 ], [ %type, %if.end25.i.if.end28.i_crit_edge63 ]
  %arrayidx.i = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i
  %parent.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 12
  %5 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end28.i.if.end32.i_crit_edge, label %if.end28.i.do.body.i.i_crit_edge

if.end28.i.do.body.i.i_crit_edge:                 ; preds = %if.end28.i
  br label %do.body.i.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

do.body.i.i:                                      ; preds = %do.cond57.i.i.do.body.i.i_crit_edge, %if.end28.i.do.body.i.i_crit_edge
  %p.0.i.i = phi ptr [ %18, %do.cond57.i.i.do.body.i.i_crit_edge ], [ %6, %if.end28.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.cgroup, ptr %p.0.i.i, i32 0, i32 34, i32 2, i32 %retval.0.i.ph.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.body.i.i.if.end32.i_crit_edge

do.body.i.i.if.end32.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.end4.i.i:                                      ; preds = %do.body.i.i
  %arrayidx6.i.i = getelementptr %struct.cgroup, ptr %p.0.i.i, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pl.010.i.i.i = load ptr, ptr %arrayidx6.i.i, align 4
  %cmp.not11.i.i.i = icmp eq ptr %pl.010.i.i.i, %arrayidx6.i.i
  br i1 %cmp.not11.i.i.i, label %if.end4.i.i.do.cond57.i.i_crit_edge, label %if.end4.i.i.for.body.i.i.i_crit_edge

if.end4.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end4.i.i
  br label %for.body.i.i.i

if.end4.i.i.do.cond57.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond57.i.i

for.body.i.i.i:                                   ; preds = %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end4.i.i.for.body.i.i.i_crit_edge
  %pl.013.i.i.i = phi ptr [ %pl.0.i.i.i, %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %pl.010.i.i.i, %if.end4.i.i.for.body.i.i.i_crit_edge ]
  %cnt.012.i.i.i = phi i32 [ %spec.select.i.i.i, %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end4.i.i.for.body.i.i.i_crit_edge ]
  %prog.i.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prog.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge

for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i
  %link.i.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %link.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.prog_list_prog.exit.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.prog_list_prog.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i.i.i.i = getelementptr inbounds %struct.bpf_link, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %prog6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prog6.i.i.i.i, align 4
  br label %prog_list_prog.exit.i.i.i

prog_list_prog.exit.i.i.i:                        ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.i.prog_list_prog.exit.i.i.i_crit_edge, %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %15, %if.then3.i.i.i.i ], [ %11, %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge ], [ null, %if.end.i.i.i.i.prog_list_prog.exit.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp ne ptr %retval.0.i.i.i.i, null
  %inc.i.i.i = zext i1 %tobool.not.i.i.i to i32
  %spec.select.i.i.i = add i32 %cnt.012.i.i.i, %inc.i.i.i
  %16 = ptrtoint ptr %pl.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %pl.0.i.i.i = load ptr, ptr %pl.013.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %pl.0.i.i.i, %arrayidx6.i.i
  br i1 %cmp.not.i.i.i, label %prog_list_length.exit.i.i, label %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge

prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %prog_list_prog.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

prog_list_length.exit.i.i:                        ; preds = %prog_list_prog.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i.i)
  %cmp.i.i = icmp ugt i32 %spec.select.i.i.i, 1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end38.i.i

land.rhs.i.i:                                     ; preds = %prog_list_length.exit.i.i
  %.b70.i.i = load i1, ptr @hierarchy_allows_attach.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.do.cond57.i.i_crit_edge, label %if.then15.i.i, !prof !97

land.rhs.i.i.do.cond57.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond57.i.i

if.then15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @hierarchy_allows_attach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #16
  br label %do.cond57.i.i

if.end38.i.i:                                     ; preds = %prog_list_length.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i.i)
  %cmp46.i.i = icmp eq i32 %spec.select.i.i.i, 1
  br i1 %cmp46.i.i, label %hierarchy_allows_attach.exit.i, label %if.end38.i.i.do.cond57.i.i_crit_edge

if.end38.i.i.do.cond57.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond57.i.i

do.cond57.i.i:                                    ; preds = %if.end38.i.i.do.cond57.i.i_crit_edge, %if.then15.i.i, %land.rhs.i.i.do.cond57.i.i_crit_edge, %if.end4.i.i.do.cond57.i.i_crit_edge
  %parent.i71.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.0.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %parent.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i71.i.i, align 8
  %tobool58.not.i.i = icmp eq ptr %18, null
  br i1 %tobool58.not.i.i, label %do.cond57.i.i.if.end32.i_crit_edge, label %do.cond57.i.i.do.body.i.i_crit_edge

do.cond57.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.cond57.i.i.if.end32.i_crit_edge:               ; preds = %do.cond57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

hierarchy_allows_attach.exit.i:                   ; preds = %if.end38.i.i
  %and48.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.i.not.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.i.not.i, label %hierarchy_allows_attach.exit.i.__cgroup_bpf_attach.exit_crit_edge, label %hierarchy_allows_attach.exit.i.if.end32.i_crit_edge

hierarchy_allows_attach.exit.i.if.end32.i_crit_edge: ; preds = %hierarchy_allows_attach.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

hierarchy_allows_attach.exit.i.__cgroup_bpf_attach.exit_crit_edge: ; preds = %hierarchy_allows_attach.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

if.end32.i:                                       ; preds = %hierarchy_allows_attach.exit.i.if.end32.i_crit_edge, %do.cond57.i.i.if.end32.i_crit_edge, %do.body.i.i.if.end32.i_crit_edge, %if.end28.i.if.end32.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i157.i = icmp eq ptr %20, %arrayidx.i
  br i1 %cmp.i157.i, label %if.end45.i.thread, label %land.lhs.true35.i

land.lhs.true35.i:                                ; preds = %if.end32.i
  %arrayidx38.i = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 2, i32 %retval.0.i.ph.i
  %21 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %and.i)
  %cmp39.not.i = icmp eq i32 %22, %and.i
  br i1 %cmp39.not.i, label %land.lhs.true35.i.for.body.i.i_crit_edge, label %land.lhs.true35.i.__cgroup_bpf_attach.exit_crit_edge

land.lhs.true35.i.__cgroup_bpf_attach.exit_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

land.lhs.true35.i.for.body.i.i_crit_edge:         ; preds = %land.lhs.true35.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %prog_list_prog.exit.i.i.for.body.i.i_crit_edge, %land.lhs.true35.i.for.body.i.i_crit_edge
  %pl.013.i.i = phi ptr [ %pl.0.i.i, %prog_list_prog.exit.i.i.for.body.i.i_crit_edge ], [ %20, %land.lhs.true35.i.for.body.i.i_crit_edge ]
  %cnt.012.i.i = phi i32 [ %spec.select.i.i, %prog_list_prog.exit.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true35.i.for.body.i.i_crit_edge ]
  %prog.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog.i.i.i, align 4
  %tobool.not.i.i158.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i158.i, label %if.end.i.i.i, label %for.body.i.i.prog_list_prog.exit.i.i_crit_edge

for.body.i.i.prog_list_prog.exit.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %link.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %link.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i.i.i = getelementptr inbounds %struct.bpf_link, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %prog6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prog6.i.i.i, align 4
  br label %prog_list_prog.exit.i.i

prog_list_prog.exit.i.i:                          ; preds = %if.then3.i.i.i, %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge, %for.body.i.i.prog_list_prog.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %28, %if.then3.i.i.i ], [ %24, %for.body.i.i.prog_list_prog.exit.i.i_crit_edge ], [ null, %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge ]
  %tobool.not.i159.i = icmp ne ptr %retval.0.i.i.i, null
  %inc.i.i = zext i1 %tobool.not.i159.i to i32
  %spec.select.i.i = add i32 %cnt.012.i.i, %inc.i.i
  %29 = ptrtoint ptr %pl.013.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %pl.0.i.i = load ptr, ptr %pl.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pl.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %prog_list_length.exit.i, label %prog_list_prog.exit.i.i.for.body.i.i_crit_edge

prog_list_prog.exit.i.i.for.body.i.i_crit_edge:   ; preds = %prog_list_prog.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

prog_list_length.exit.i:                          ; preds = %prog_list_prog.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.select.i.i)
  %cmp43.i = icmp ugt i32 %spec.select.i.i, 63
  br i1 %cmp43.i, label %prog_list_length.exit.i.__cgroup_bpf_attach.exit_crit_edge, label %if.end45.i

prog_list_length.exit.i.__cgroup_bpf_attach.exit_crit_edge: ; preds = %prog_list_length.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__cgroup_bpf_attach.exit

if.end45.i:                                       ; preds = %prog_list_length.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool47.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool47.i.not, label %if.end45.i.if.then.i_crit_edge, label %for.body.lr.ph.i

if.end45.i.if.then.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.end45.i.thread:                                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool47.i23.not = icmp eq i32 %and2.i, 0
  br i1 %tobool47.i23.not, label %if.end45.i.thread.if.then.i_crit_edge, label %if.end45.i.thread.for.end.i_crit_edge

if.end45.i.thread.for.end.i_crit_edge:            ; preds = %if.end45.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end45.i.thread.if.then.i_crit_edge:            ; preds = %if.end45.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

for.body.lr.ph.i:                                 ; preds = %if.end45.i
  %tobool8.not.i = icmp eq ptr %prog, null
  %cmp12.not.i = icmp eq ptr %prog, %replace_prog
  br label %for.body.i

if.then.i:                                        ; preds = %if.end45.i.thread.if.then.i_crit_edge, %if.end45.i.if.then.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %31, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.then.i.if.end52.i_crit_edge, label %if.then.i.find_attach_entry.exit_crit_edge

if.then.i.find_attach_entry.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_attach_entry.exit

if.then.i.if.end52.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

for.body.i:                                       ; preds = %for.inc.i12.for.body.i_crit_edge, %for.body.lr.ph.i
  %pl.072.i = phi ptr [ %20, %for.body.lr.ph.i ], [ %pl.0.i10, %for.inc.i12.for.body.i_crit_edge ]
  br i1 %tobool8.not.i, label %for.body.i.if.end15.i9_crit_edge, label %land.lhs.true.i

for.body.i.if.end15.i9_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i9

land.lhs.true.i:                                  ; preds = %for.body.i
  %prog9.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.072.i, i32 0, i32 1
  %32 = ptrtoint ptr %prog9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prog9.i, align 4
  %cmp10.i = icmp ne ptr %33, %prog
  %or.cond.i8 = or i1 %cmp12.not.i, %cmp10.i
  br i1 %or.cond.i8, label %land.lhs.true.i.if.end15.i9_crit_edge, label %land.lhs.true.i.if.then50.i_crit_edge

land.lhs.true.i.if.then50.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then50.i

land.lhs.true.i.if.end15.i9_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i9

if.end15.i9:                                      ; preds = %land.lhs.true.i.if.end15.i9_crit_edge, %for.body.i.if.end15.i9_crit_edge
  br i1 %tobool9.not.i, label %if.end15.i9.for.inc.i12_crit_edge, label %land.lhs.true17.i

if.end15.i9.for.inc.i12_crit_edge:                ; preds = %if.end15.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i12

land.lhs.true17.i:                                ; preds = %if.end15.i9
  %link18.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.072.i, i32 0, i32 2
  %34 = ptrtoint ptr %link18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link18.i, align 4
  %cmp19.i = icmp eq ptr %35, %link
  br i1 %cmp19.i, label %land.lhs.true17.i.if.then50.i_crit_edge, label %land.lhs.true17.i.for.inc.i12_crit_edge

land.lhs.true17.i.for.inc.i12_crit_edge:          ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i12

land.lhs.true17.i.if.then50.i_crit_edge:          ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then50.i

for.inc.i12:                                      ; preds = %land.lhs.true17.i.for.inc.i12_crit_edge, %if.end15.i9.for.inc.i12_crit_edge
  %36 = ptrtoint ptr %pl.072.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %pl.0.i10 = load ptr, ptr %pl.072.i, align 4
  %cmp.not.i11 = icmp eq ptr %pl.0.i10, %arrayidx.i
  br i1 %cmp.not.i11, label %for.inc.i12.for.end.i_crit_edge, label %for.inc.i12.for.body.i_crit_edge

for.inc.i12.for.body.i_crit_edge:                 ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i12.for.end.i_crit_edge:                  ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i12.for.end.i_crit_edge, %if.end45.i.thread.for.end.i_crit_edge
  br i1 %tobool16.i, label %for.end.i.if.end52.i_crit_edge, label %for.end.i.for.cond34.i_crit_edge

for.end.i.for.cond34.i_crit_edge:                 ; preds = %for.end.i
  br label %for.cond34.i

for.end.i.if.end52.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

for.cond34.i:                                     ; preds = %for.body38.i.for.cond34.i_crit_edge, %for.end.i.for.cond34.i_crit_edge
  %pl.1.in.i = phi ptr [ %pl.1.i, %for.body38.i.for.cond34.i_crit_edge ], [ %arrayidx.i, %for.end.i.for.cond34.i_crit_edge ]
  %37 = ptrtoint ptr %pl.1.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %pl.1.i = load ptr, ptr %pl.1.in.i, align 4
  %cmp36.not.i = icmp eq ptr %pl.1.i, %arrayidx.i
  br i1 %cmp36.not.i, label %for.cond34.i.if.then50.i_crit_edge, label %for.body38.i

for.cond34.i.if.then50.i_crit_edge:               ; preds = %for.cond34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then50.i

for.body38.i:                                     ; preds = %for.cond34.i
  %prog39.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.1.i, i32 0, i32 1
  %38 = ptrtoint ptr %prog39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prog39.i, align 4
  %cmp40.i = icmp eq ptr %39, %replace_prog
  br i1 %cmp40.i, label %for.body38.i.find_attach_entry.exit_crit_edge, label %for.body38.i.for.cond34.i_crit_edge

for.body38.i.for.cond34.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond34.i

for.body38.i.find_attach_entry.exit_crit_edge:    ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_attach_entry.exit

find_attach_entry.exit:                           ; preds = %for.body38.i.find_attach_entry.exit_crit_edge, %if.then.i.find_attach_entry.exit_crit_edge
  %retval.0.i13 = phi ptr [ %31, %if.then.i.find_attach_entry.exit_crit_edge ], [ %pl.1.i, %for.body38.i.find_attach_entry.exit_crit_edge ]
  %cmp.i160.i = icmp ugt ptr %retval.0.i13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160.i, label %find_attach_entry.exit.if.then50.i_crit_edge, label %find_attach_entry.exit.if.end52.i_crit_edge

find_attach_entry.exit.if.end52.i_crit_edge:      ; preds = %find_attach_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

find_attach_entry.exit.if.then50.i_crit_edge:     ; preds = %find_attach_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then50.i

if.then50.i:                                      ; preds = %find_attach_entry.exit.if.then50.i_crit_edge, %for.cond34.i.if.then50.i_crit_edge, %land.lhs.true17.i.if.then50.i_crit_edge, %land.lhs.true.i.if.then50.i_crit_edge
  %retval.0.i1326 = phi ptr [ %retval.0.i13, %find_attach_entry.exit.if.then50.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond34.i.if.then50.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.if.then50.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true17.i.if.then50.i_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i1326 to i32
  br label %__cgroup_bpf_attach.exit

if.end52.i:                                       ; preds = %find_attach_entry.exit.if.end52.i_crit_edge, %for.end.i.if.end52.i_crit_edge, %if.then.i.if.end52.i_crit_edge
  %retval.0.i1331 = phi ptr [ %retval.0.i13, %find_attach_entry.exit.if.end52.i_crit_edge ], [ null, %for.end.i.if.end52.i_crit_edge ], [ null, %if.then.i.if.end52.i_crit_edge ]
  %tobool54.not.i = icmp eq ptr %prog, null
  br i1 %tobool54.not.i, label %cond.false.i, label %if.end52.i.cond.end.i_crit_edge

if.end52.i.cond.end.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog56.i = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %41 = ptrtoint ptr %prog56.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prog56.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end52.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %42, %cond.false.i ], [ %prog, %if.end52.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i) #16
  %43 = getelementptr inbounds i8, ptr %key.i, i32 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %43, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 11
  %45 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %id.i.i, align 8
  %49 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %key.i, align 8
  store i32 %type, ptr %43, align 8
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %cond.i, i32 0, i32 10
  %50 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aux.i, align 4
  %arrayidx.i1 = getelementptr %struct.bpf_prog_aux, ptr %51, i32 0, i32 45, i32 0
  %52 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i1, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %cond.end.i.for.inc.i_crit_edge, label %if.end.i2

cond.end.i.for.inc.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i2:                                        ; preds = %cond.end.i
  %call1.i = call ptr @cgroup_storage_lookup(ptr noundef nonnull %53, ptr noundef nonnull %key.i, i1 noundef zeroext false) #16
  %tobool4.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i2.for.inc.i_crit_edge

if.end.i2.for.inc.i_crit_edge:                    ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i2
  %call7.i = call ptr @bpf_cgroup_storage_alloc(ptr noundef %cond.i, i32 noundef 0) #16
  %cmp.i.i3 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i3, label %if.end6.i.bpf_cgroup_storages_alloc.exit_crit_edge, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end6.i.bpf_cgroup_storages_alloc.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bpf_cgroup_storages_alloc.exit

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %if.end.i2.for.inc.i_crit_edge, %cond.end.i.for.inc.i_crit_edge
  %storage.i.sroa.0.1 = phi ptr [ null, %cond.end.i.for.inc.i_crit_edge ], [ %call1.i, %if.end.i2.for.inc.i_crit_edge ], [ %call7.i, %if.end6.i.for.inc.i_crit_edge ]
  %new_storage.i.sroa.0.1 = phi ptr [ null, %cond.end.i.for.inc.i_crit_edge ], [ null, %if.end.i2.for.inc.i_crit_edge ], [ %call7.i, %if.end6.i.for.inc.i_crit_edge ]
  %54 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %aux.i, align 4
  %arrayidx.1.i5 = getelementptr %struct.bpf_prog_aux, ptr %55, i32 0, i32 45, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.1.i5, align 4
  %tobool.not.1.i = icmp eq ptr %57, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end60.i_crit_edge, label %if.end.1.i

for.inc.i.if.end60.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call1.1.i = call ptr @cgroup_storage_lookup(ptr noundef nonnull %57, ptr noundef nonnull %key.i, i1 noundef zeroext false) #16
  %tobool4.not.1.i = icmp eq ptr %call1.1.i, null
  br i1 %tobool4.not.1.i, label %if.end6.1.i, label %if.end.1.i.if.end60.i_crit_edge

if.end.1.i.if.end60.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.end6.1.i:                                      ; preds = %if.end.1.i
  %call7.1.i = call ptr @bpf_cgroup_storage_alloc(ptr noundef %cond.i, i32 noundef 1) #16
  %cmp.i.1.i = icmp ugt ptr %call7.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end6.1.i.bpf_cgroup_storages_alloc.exit_crit_edge, label %if.end6.1.i.if.end60.i_crit_edge

if.end6.1.i.if.end60.i_crit_edge:                 ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.end6.1.i.bpf_cgroup_storages_alloc.exit_crit_edge: ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bpf_cgroup_storages_alloc.exit

bpf_cgroup_storages_alloc.exit:                   ; preds = %if.end6.1.i.bpf_cgroup_storages_alloc.exit_crit_edge, %if.end6.i.bpf_cgroup_storages_alloc.exit_crit_edge
  %new_storage.i.sroa.0.0 = phi ptr [ %new_storage.i.sroa.0.1, %if.end6.1.i.bpf_cgroup_storages_alloc.exit_crit_edge ], [ null, %if.end6.i.bpf_cgroup_storages_alloc.exit_crit_edge ]
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.0.0) #16
  call void @bpf_cgroup_storage_free(ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #16
  br label %__cgroup_bpf_attach.exit

if.end60.i:                                       ; preds = %if.end6.1.i.if.end60.i_crit_edge, %if.end.1.i.if.end60.i_crit_edge, %for.inc.i.if.end60.i_crit_edge
  %storage.i.sroa.6.1.ph = phi ptr [ %call7.1.i, %if.end6.1.i.if.end60.i_crit_edge ], [ %call1.1.i, %if.end.1.i.if.end60.i_crit_edge ], [ null, %for.inc.i.if.end60.i_crit_edge ]
  %new_storage.i.sroa.9.0.ph = phi ptr [ %call7.1.i, %if.end6.1.i.if.end60.i_crit_edge ], [ null, %if.end.1.i.if.end60.i_crit_edge ], [ null, %for.inc.i.if.end60.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #16
  %tobool61.not.i = icmp eq ptr %retval.0.i1331, null
  br i1 %tobool61.not.i, label %if.else.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog63.i = getelementptr inbounds %struct.bpf_prog_list, ptr %retval.0.i1331, i32 0, i32 1
  %58 = ptrtoint ptr %prog63.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prog63.i, align 4
  br label %if.end69.i

if.else.i:                                        ; preds = %if.end60.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 24) #19
  %tobool65.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end68.i

if.then66.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.0.1) #16
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.9.0.ph) #16
  br label %__cgroup_bpf_attach.exit

if.end68.i:                                       ; preds = %if.else.i
  %prev.i.i = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %62, ptr noundef %arrayidx.i) #16
  br i1 %call.i.i.i, label %if.end.i.i161.i, label %if.end68.i.if.end69.i_crit_edge

if.end68.i.if.end69.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69.i

if.end.i.i161.i:                                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call7.i.i, ptr %62, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end.i.i161.i, %if.end68.i.if.end69.i_crit_edge, %if.then62.i
  %old_prog.0.i = phi ptr [ %59, %if.then62.i ], [ null, %if.end68.i.if.end69.i_crit_edge ], [ null, %if.end.i.i161.i ]
  %pl.0.i = phi ptr [ %retval.0.i1331, %if.then62.i ], [ %call7.i.i, %if.end68.i.if.end69.i_crit_edge ], [ %call7.i.i, %if.end.i.i161.i ]
  %prog70.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i, i32 0, i32 1
  %67 = ptrtoint ptr %prog70.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %prog, ptr %prog70.i, align 4
  %link71.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i, i32 0, i32 2
  %68 = ptrtoint ptr %link71.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %link, ptr %link71.i, align 4
  %storage72.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i, i32 0, i32 3
  %69 = ptrtoint ptr %storage72.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %storage.i.sroa.0.1, ptr %storage72.i, align 4
  %arrayidx1.1.i.i = getelementptr %struct.bpf_prog_list, ptr %pl.0.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %storage.i.sroa.6.1.ph, ptr %arrayidx1.1.i.i, align 4
  %arrayidx77.i = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 2, i32 %retval.0.i.ph.i
  %71 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i, ptr %arrayidx77.i, align 4
  %call78.i = call fastcc i32 @update_effective_progs(ptr noundef %cgrp, i32 noundef %retval.0.i.ph.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  %tobool82.not.i = icmp eq ptr %old_prog.0.i, null
  br i1 %tobool79.not.i, label %if.end81.i, label %cleanup.i

if.end81.i:                                       ; preds = %if.end69.i
  br i1 %tobool82.not.i, label %if.else84.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @bpf_prog_put(ptr noundef nonnull %old_prog.0.i) #16
  br label %if.end86.i

if.else84.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx85.i = getelementptr [23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 %retval.0.i.ph.i
  call void @static_key_slow_inc(ptr noundef %arrayidx85.i) #16
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else84.i, %if.then83.i
  call void @bpf_cgroup_storage_link(ptr noundef %new_storage.i.sroa.0.1, ptr noundef %cgrp, i32 noundef %type) #16
  call void @bpf_cgroup_storage_link(ptr noundef %new_storage.i.sroa.9.0.ph, ptr noundef %cgrp, i32 noundef %type) #16
  br label %__cgroup_bpf_attach.exit

cleanup.i:                                        ; preds = %if.end69.i
  br i1 %tobool82.not.i, label %if.then95.critedge.i, label %if.then89.i

if.then89.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %prog70.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %old_prog.0.i, ptr %prog70.i, align 4
  %73 = ptrtoint ptr %link71.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %link71.i, align 4
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.0.1) #16
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.9.0.ph) #16
  br label %__cgroup_bpf_attach.exit

if.then95.critedge.i:                             ; preds = %cleanup.i
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.0.1) #16
  call void @bpf_cgroup_storage_free(ptr noundef %new_storage.i.sroa.9.0.ph) #16
  %call.i.i165.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pl.0.i) #16
  br i1 %call.i.i165.i, label %if.end.i.i166.i, label %if.then95.critedge.i.list_del.exit.i_crit_edge

if.then95.critedge.i.list_del.exit.i_crit_edge:   ; preds = %if.then95.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i166.i:                                  ; preds = %if.then95.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pl.0.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %pl.0.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pl.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i166.i, %if.then95.critedge.i.list_del.exit.i_crit_edge
  %80 = ptrtoint ptr %pl.0.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %pl.0.i, align 4
  %prev.i167.i = getelementptr inbounds %struct.list_head, ptr %pl.0.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i167.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i167.i, align 4
  call void @kfree(ptr noundef nonnull %pl.0.i) #16
  br label %__cgroup_bpf_attach.exit

__cgroup_bpf_attach.exit:                         ; preds = %list_del.exit.i, %if.then89.i, %if.end86.i, %if.then66.i, %bpf_cgroup_storages_alloc.exit, %if.then50.i, %prog_list_length.exit.i.__cgroup_bpf_attach.exit_crit_edge, %land.lhs.true35.i.__cgroup_bpf_attach.exit_crit_edge, %hierarchy_allows_attach.exit.i.__cgroup_bpf_attach.exit_crit_edge, %if.end25.i.__cgroup_bpf_attach.exit_crit_edge, %if.end15.i.__cgroup_bpf_attach.exit_crit_edge, %land.lhs.true10.i.__cgroup_bpf_attach.exit_crit_edge, %entry.__cgroup_bpf_attach.exit_crit_edge
  %retval.0.i = phi i32 [ %40, %if.then50.i ], [ 0, %if.end86.i ], [ -12, %if.then66.i ], [ -22, %entry.__cgroup_bpf_attach.exit_crit_edge ], [ -22, %land.lhs.true10.i.__cgroup_bpf_attach.exit_crit_edge ], [ -22, %if.end15.i.__cgroup_bpf_attach.exit_crit_edge ], [ -1, %hierarchy_allows_attach.exit.i.__cgroup_bpf_attach.exit_crit_edge ], [ -1, %land.lhs.true35.i.__cgroup_bpf_attach.exit_crit_edge ], [ -7, %prog_list_length.exit.i.__cgroup_bpf_attach.exit_crit_edge ], [ -12, %bpf_cgroup_storages_alloc.exit ], [ %call78.i, %if.then89.i ], [ %call78.i, %list_del.exit.i ], [ -22, %if.end25.i.__cgroup_bpf_attach.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_bpf_prog_detach(ptr nocapture noundef readonly %attr, i32 noundef %ptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %call = tail call ptr @cgroup_get_from_fd(i32 noundef %1) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_bpf_fd = getelementptr inbounds %struct.anon.66, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %attach_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attach_bpf_fd, align 4
  %call.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %4, i32 noundef %ptype, i1 noundef zeroext false) #16
  %cmp.i20 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i20, ptr null, ptr %call.i
  %attach_type = getelementptr inbounds %struct.anon.66, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attach_type, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %call.i21 = tail call fastcc i32 @__cgroup_bpf_detach(ptr noundef %call, ptr noundef %spec.select, ptr noundef null, i32 noundef %6) #16
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bpf_prog_put(ptr noundef nonnull %spec.select) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call.i21, %if.end9.cleanup_crit_edge ], [ %call.i21, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_bpf_link_attach(ptr nocapture noundef readonly %attr, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  %link_primer = alloca %struct.bpf_link_primer, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_primer) #16
  %flags = getelementptr inbounds %struct.anon.75, ptr %attr, i32 0, i32 3
  %0 = call ptr @memset(ptr %link_primer, i32 255, i32 16)
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.anon.75, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call ptr @cgroup_get_from_fd(i32 noundef %5) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 1052096, i32 noundef 80) #19
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.out_put_cgroup_crit_edge, label %if.end8

if.end4.out_put_cgroup_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_cgroup

if.end8:                                          ; preds = %if.end4
  tail call void @bpf_link_init(ptr noundef nonnull %call7.i.i, i32 noundef 3, ptr noundef nonnull @bpf_cgroup_link_lops, ptr noundef %prog) #16
  %cgroup = getelementptr inbounds %struct.bpf_cgroup_link, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %cgroup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %cgroup, align 8
  %attach_type = getelementptr inbounds %struct.anon.75, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_type, align 8
  %type = getelementptr inbounds %struct.bpf_cgroup_link, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  %call11 = call i32 @bpf_link_prime(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %link_primer) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %out_put_cgroup

if.end14:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %call16 = call fastcc i32 @cgroup_bpf_attach(ptr noundef %call, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, i32 noundef %13, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  call void @bpf_link_cleanup(ptr noundef nonnull %link_primer) #16
  br label %out_put_cgroup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = call i32 @bpf_link_settle(ptr noundef nonnull %link_primer) #16
  br label %cleanup

out_put_cgroup:                                   ; preds = %if.then18, %if.then13, %if.end4.out_put_cgroup_crit_edge
  %err.0 = phi i32 [ %call11, %if.then13 ], [ %call16, %if.then18 ], [ -12, %if.end4.out_put_cgroup_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %out_put_cgroup.cleanup_crit_edge

out_put_cgroup.cleanup_crit_edge:                 ; preds = %out_put_cgroup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i:                                      ; preds = %out_put_cgroup
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %out_put_cgroup.cleanup_crit_edge, %if.end19, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then2 ], [ %call20, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %out_put_cgroup.cleanup_crit_edge ], [ %err.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_primer) #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_bpf_prog_query(ptr nocapture noundef readonly %attr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %cnt.i.i = alloca i32, align 4
  %flags.i.i = alloca i32, align 4
  %id.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %call = tail call ptr @cgroup_get_from_fd(i32 noundef %1) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %prog_ids2.i.i = getelementptr inbounds %struct.anon.71, ptr %attr, i32 0, i32 4
  %3 = ptrtoint ptr %prog_ids2.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %prog_ids2.i.i, align 8
  %conv3.i.i = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv3.i.i to ptr
  %attach_type.i.i = getelementptr inbounds %struct.anon.71, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attach_type.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt.i.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #16
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %7, label %if.end.cgroup_bpf_query.exit_crit_edge [
    i32 0, label %if.end.if.end.i.i_crit_edge
    i32 1, label %if.end.if.end.i.i_crit_edge12
    i32 2, label %if.end.if.end.i.i_crit_edge13
    i32 3, label %if.end.if.end.i.i_crit_edge14
    i32 6, label %sw.bb4.i.i.i
    i32 8, label %sw.bb5.i.i.i
    i32 9, label %sw.bb6.i.i.i
    i32 10, label %sw.bb7.i.i.i
    i32 11, label %sw.bb8.i.i.i
    i32 12, label %sw.bb9.i.i.i
    i32 13, label %sw.bb10.i.i.i
    i32 14, label %sw.bb11.i.i.i
    i32 15, label %sw.bb12.i.i.i
    i32 18, label %sw.bb13.i.i.i
    i32 19, label %sw.bb14.i.i.i
    i32 20, label %sw.bb15.i.i.i
    i32 21, label %sw.bb16.i.i.i
    i32 22, label %sw.bb17.i.i.i
    i32 29, label %sw.bb18.i.i.i
    i32 30, label %sw.bb19.i.i.i
    i32 31, label %sw.bb20.i.i.i
    i32 32, label %sw.bb21.i.i.i
    i32 34, label %sw.bb22.i.i.i
  ]

if.end.if.end.i.i_crit_edge14:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.if.end.i.i_crit_edge13:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.if.end.i.i_crit_edge12:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.cgroup_bpf_query.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

sw.bb4.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb10.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb11.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb12.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb14.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb15.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb16.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb17.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb18.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb19.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb20.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb21.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb22.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb22.i.i.i, %sw.bb21.i.i.i, %sw.bb20.i.i.i, %sw.bb19.i.i.i, %sw.bb18.i.i.i, %sw.bb17.i.i.i, %sw.bb16.i.i.i, %sw.bb15.i.i.i, %sw.bb14.i.i.i, %sw.bb13.i.i.i, %sw.bb12.i.i.i, %sw.bb11.i.i.i, %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %if.end.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge12, %if.end.if.end.i.i_crit_edge13, %if.end.if.end.i.i_crit_edge14
  %retval.0.i.ph.i.i = phi i32 [ %7, %if.end.if.end.i.i_crit_edge ], [ 4, %sw.bb4.i.i.i ], [ 5, %sw.bb5.i.i.i ], [ 6, %sw.bb6.i.i.i ], [ 7, %sw.bb7.i.i.i ], [ 8, %sw.bb8.i.i.i ], [ 9, %sw.bb9.i.i.i ], [ 10, %sw.bb10.i.i.i ], [ 11, %sw.bb11.i.i.i ], [ 12, %sw.bb12.i.i.i ], [ 13, %sw.bb13.i.i.i ], [ 14, %sw.bb14.i.i.i ], [ 15, %sw.bb15.i.i.i ], [ 16, %sw.bb16.i.i.i ], [ 17, %sw.bb17.i.i.i ], [ 18, %sw.bb18.i.i.i ], [ 19, %sw.bb19.i.i.i ], [ 20, %sw.bb20.i.i.i ], [ 21, %sw.bb21.i.i.i ], [ 22, %sw.bb22.i.i.i ], [ %7, %if.end.if.end.i.i_crit_edge12 ], [ %7, %if.end.if.end.i.i_crit_edge13 ], [ %7, %if.end.if.end.i.i_crit_edge14 ]
  %bpf.i.i = getelementptr inbounds %struct.cgroup, ptr %call, i32 0, i32 34
  %arrayidx.i.i = getelementptr %struct.cgroup, ptr %call, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i.i
  %arrayidx9.i.i = getelementptr %struct.cgroup, ptr %call, i32 0, i32 34, i32 2, i32 %retval.0.i.ph.i.i
  %9 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9.i.i, align 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags.i.i, align 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i.i
  %.b107.i.i = load i1, ptr @__cgroup_bpf_query.__warned, align 1
  br i1 %.b107.i.i, label %land.lhs.true13.i.i.do.end.i.i_crit_edge, label %if.then15.i.i

land.lhs.true13.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__cgroup_bpf_query.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 779, ptr noundef nonnull @.str.2) #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then15.i.i, %land.lhs.true13.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %arrayidx20.i.i = getelementptr [23 x ptr], ptr %bpf.i.i, i32 0, i32 %retval.0.i.ph.i.i
  %12 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx20.i.i, align 4
  %query_flags.i.i = getelementptr inbounds %struct.anon.71, ptr %attr, i32 0, i32 2
  %14 = ptrtoint ptr %query_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %query_flags.i.i, align 8
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool21.not.i.i, label %if.else.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call23.i.i = tail call i32 @bpf_prog_array_length(ptr noundef %13) #16
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %do.end.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %pl.010.i.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not11.i.i.i = icmp eq ptr %pl.010.i.i.i, %arrayidx.i.i
  br i1 %cmp.not11.i.i.i, label %if.else.i.i.if.end25.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.if.end25.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

for.body.i.i.i:                                   ; preds = %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %pl.013.i.i.i = phi ptr [ %pl.0.i.i.i, %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %pl.010.i.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %cnt.012.i.i.i = phi i32 [ %spec.select.i.i.i, %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %prog.i.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prog.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i134.i.i, label %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge

for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i.i

if.end.i.i134.i.i:                                ; preds = %for.body.i.i.i
  %link.i.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.013.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %link.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i134.i.i.prog_list_prog.exit.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i134.i.i.prog_list_prog.exit.i.i.i_crit_edge: ; preds = %if.end.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i.i.i.i = getelementptr inbounds %struct.bpf_link, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %prog6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prog6.i.i.i.i, align 4
  br label %prog_list_prog.exit.i.i.i

prog_list_prog.exit.i.i.i:                        ; preds = %if.then3.i.i.i.i, %if.end.i.i134.i.i.prog_list_prog.exit.i.i.i_crit_edge, %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %22, %if.then3.i.i.i.i ], [ %18, %for.body.i.i.i.prog_list_prog.exit.i.i.i_crit_edge ], [ null, %if.end.i.i134.i.i.prog_list_prog.exit.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp ne ptr %retval.0.i.i.i.i, null
  %inc.i.i.i = zext i1 %tobool.not.i.i.i to i32
  %spec.select.i.i.i = add i32 %cnt.012.i.i.i, %inc.i.i.i
  %23 = ptrtoint ptr %pl.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %pl.0.i.i.i = load ptr, ptr %pl.013.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %pl.0.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i.i, label %prog_list_prog.exit.i.i.i.if.end25.i.i_crit_edge, label %prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge

prog_list_prog.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %prog_list_prog.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

prog_list_prog.exit.i.i.i.if.end25.i.i_crit_edge: ; preds = %prog_list_prog.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %prog_list_prog.exit.i.i.i.if.end25.i.i_crit_edge, %if.else.i.i.if.end25.i.i_crit_edge, %if.then22.i.i
  %storemerge.i.i = phi i32 [ %call23.i.i, %if.then22.i.i ], [ 0, %if.else.i.i.if.end25.i.i_crit_edge ], [ %spec.select.i.i.i, %prog_list_prog.exit.i.i.i.if.end25.i.i_crit_edge ]
  %24 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i.i, ptr %cnt.i.i, align 4
  %attach_flags.i.i = getelementptr inbounds %struct.anon.71, ptr %uattr, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #16
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i.i, label %if.end25.i.i.cgroup_bpf_query.exit_crit_edge, label %if.end.i.i.i.i

if.end25.i.i.cgroup_bpf_query.exit_crit_edge:     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

if.end.i.i.i.i:                                   ; preds = %if.end25.i.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %attach_flags.i.i, i32 4, i32 -1226833920) #20, !srcloc !98
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.cgroup_bpf_query.exit_crit_edge

if.end.i.i.i.i.cgroup_bpf_query.exit_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %flags.i.i, i32 noundef 4) #16
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %attach_flags.i.i, ptr noundef nonnull %flags.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %copy_to_user.exit.i.i.cgroup_bpf_query.exit_crit_edge

copy_to_user.exit.i.i.cgroup_bpf_query.exit_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

if.end29.i.i:                                     ; preds = %copy_to_user.exit.i.i
  %prog_cnt.i.i = getelementptr inbounds %struct.anon.71, ptr %uattr, i32 0, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #16
  %call.i.i112.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i112.i.i, label %if.end29.i.i.cgroup_bpf_query.exit_crit_edge, label %if.end.i.i115.i.i

if.end29.i.i.cgroup_bpf_query.exit_crit_edge:     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

if.end.i.i115.i.i:                                ; preds = %if.end29.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %prog_cnt.i.i, i32 4, i32 -1226833920) #20, !srcloc !98
  %asmresult.i.i113.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i113.i.i)
  %cmp.i6.i114.i.i = icmp eq i32 %asmresult.i.i113.i.i, 0
  br i1 %cmp.i6.i114.i.i, label %copy_to_user.exit120.i.i, label %if.end.i.i115.i.i.cgroup_bpf_query.exit_crit_edge

if.end.i.i115.i.i.cgroup_bpf_query.exit_crit_edge: ; preds = %if.end.i.i115.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

copy_to_user.exit120.i.i:                         ; preds = %if.end.i.i115.i.i
  %call.i.i.i116.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cnt.i.i, i32 noundef 4) #16
  %call.i12.i.i117.i.i = call i32 @arm_copy_to_user(ptr noundef %prog_cnt.i.i, ptr noundef nonnull %cnt.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i117.i.i)
  %tobool31.not.i.i = icmp eq i32 %call.i12.i.i117.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %copy_to_user.exit120.i.i.cgroup_bpf_query.exit_crit_edge

copy_to_user.exit120.i.i.cgroup_bpf_query.exit_crit_edge: ; preds = %copy_to_user.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

if.end33.i.i:                                     ; preds = %copy_to_user.exit120.i.i
  %prog_cnt34.i.i = getelementptr inbounds %struct.anon.71, ptr %attr, i32 0, i32 5
  %27 = ptrtoint ptr %prog_cnt34.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prog_cnt34.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp35.i.i = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i)
  %tobool37.not.i.i = icmp eq i32 %conv3.i.i, 0
  %or.cond.i.i = select i1 %cmp35.i.i, i1 true, i1 %tobool37.not.i.i
  br i1 %or.cond.i.i, label %if.end33.i.i.cgroup_bpf_query.exit_crit_edge, label %lor.lhs.false38.i.i

if.end33.i.i.cgroup_bpf_query.exit_crit_edge:     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

lor.lhs.false38.i.i:                              ; preds = %if.end33.i.i
  %29 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool39.not.i.i, label %lor.lhs.false38.i.i.cgroup_bpf_query.exit_crit_edge, label %if.end41.i.i

lor.lhs.false38.i.i.cgroup_bpf_query.exit_crit_edge: ; preds = %lor.lhs.false38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_bpf_query.exit

if.end41.i.i:                                     ; preds = %lor.lhs.false38.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp43.i.i = icmp ult i32 %28, %30
  br i1 %cmp43.i.i, label %if.then45.i.i, label %if.end41.i.i.if.end47.i.i_crit_edge

if.end41.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.i.i

if.then45.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %cnt.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then45.i.i, %if.end41.i.i.if.end47.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -28, %if.then45.i.i ], [ 0, %if.end41.i.i.if.end47.i.i_crit_edge ]
  %32 = ptrtoint ptr %query_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %query_flags.i.i, align 8
  %and49.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.else53.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt.i.i, align 4
  %call52.i.i = call i32 @bpf_prog_array_copy_to_user(ptr noundef %13, ptr noundef nonnull %5, i32 noundef %35) #16
  br label %cgroup_bpf_query.exit

if.else53.i.i:                                    ; preds = %if.end47.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i.i) #16
  %36 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %id.i.i, align 4, !annotation !99
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end63.i.i.for.cond.i.i_crit_edge, %if.else53.i.i
  %i.0.i.i = phi i32 [ 0, %if.else53.i.i ], [ %inc.i.i, %if.end63.i.i.for.cond.i.i_crit_edge ]
  %pl.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.else53.i.i ], [ %pl.0.i.i, %if.end63.i.i.for.cond.i.i_crit_edge ]
  %37 = ptrtoint ptr %pl.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %pl.0.i.i = load ptr, ptr %pl.0.in.i.i, align 4
  %cmp55.not.i.i = icmp eq ptr %pl.0.i.i, %arrayidx.i.i
  br i1 %cmp55.not.i.i, label %for.cond.i.i._crit_edge, label %for.body.i.i

for.cond.i.i._crit_edge:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %52

for.body.i.i:                                     ; preds = %for.cond.i.i
  %prog.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prog.i.i.i, align 4
  %tobool.not.i135.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i135.i.i, label %if.end.i.i.i, label %for.body.i.i.prog_list_prog.exit.i.i_crit_edge

for.body.i.i.prog_list_prog.exit.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %link.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %link.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prog_list_prog.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prog6.i.i.i = getelementptr inbounds %struct.bpf_link, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %prog6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prog6.i.i.i, align 4
  br label %prog_list_prog.exit.i.i

prog_list_prog.exit.i.i:                          ; preds = %if.then3.i.i.i, %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge, %for.body.i.i.prog_list_prog.exit.i.i_crit_edge
  %retval.0.i136.i.i = phi ptr [ %43, %if.then3.i.i.i ], [ %39, %for.body.i.i.prog_list_prog.exit.i.i_crit_edge ], [ null, %if.end.i.i.i.prog_list_prog.exit.i.i_crit_edge ]
  %aux.i.i = getelementptr inbounds %struct.bpf_prog, ptr %retval.0.i136.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aux.i.i, align 4
  %id58.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %id58.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id58.i.i, align 8
  %48 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %id.i.i, align 4
  %add.ptr59.i.i = getelementptr i32, ptr %5, i32 %i.0.i.i
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #16
  %call.i.i125.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i125.i.i, label %prog_list_prog.exit.i.i.cleanup.i.i_crit_edge, label %if.end.i.i128.i.i

prog_list_prog.exit.i.i.cleanup.i.i_crit_edge:    ; preds = %prog_list_prog.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.end.i.i128.i.i:                                ; preds = %prog_list_prog.exit.i.i
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr59.i.i, i32 4, i32 -1226833920) #20, !srcloc !98
  %asmresult.i.i126.i.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i126.i.i)
  %cmp.i6.i127.i.i = icmp eq i32 %asmresult.i.i126.i.i, 0
  br i1 %cmp.i6.i127.i.i, label %copy_to_user.exit133.i.i, label %if.end.i.i128.i.i.cleanup.i.i_crit_edge

if.end.i.i128.i.i.cleanup.i.i_crit_edge:          ; preds = %if.end.i.i128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

copy_to_user.exit133.i.i:                         ; preds = %if.end.i.i128.i.i
  %call.i.i.i129.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %id.i.i, i32 noundef 4) #16
  %call.i12.i.i130.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr59.i.i, ptr noundef nonnull %id.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i130.i.i)
  %tobool61.not.i.i = icmp eq i32 %call.i12.i.i130.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end63.i.i, label %copy_to_user.exit133.i.i.cleanup.i.i_crit_edge

copy_to_user.exit133.i.i.cleanup.i.i_crit_edge:   ; preds = %copy_to_user.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.end63.i.i:                                     ; preds = %copy_to_user.exit133.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  %50 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cnt.i.i, align 4
  %cmp64.i.i = icmp eq i32 %inc.i.i, %51
  br i1 %cmp64.i.i, label %if.end63.i.i._crit_edge, label %if.end63.i.i.for.cond.i.i_crit_edge

if.end63.i.i.for.cond.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

if.end63.i.i._crit_edge:                          ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %52

cleanup.i.i:                                      ; preds = %copy_to_user.exit133.i.i.cleanup.i.i_crit_edge, %if.end.i.i128.i.i.cleanup.i.i_crit_edge, %prog_list_prog.exit.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i.i) #16
  br label %cgroup_bpf_query.exit

52:                                               ; preds = %if.end63.i.i._crit_edge, %for.cond.i.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i.i) #16
  br label %cgroup_bpf_query.exit

cgroup_bpf_query.exit:                            ; preds = %52, %cleanup.i.i, %if.then51.i.i, %lor.lhs.false38.i.i.cgroup_bpf_query.exit_crit_edge, %if.end33.i.i.cgroup_bpf_query.exit_crit_edge, %copy_to_user.exit120.i.i.cgroup_bpf_query.exit_crit_edge, %if.end.i.i115.i.i.cgroup_bpf_query.exit_crit_edge, %if.end29.i.i.cgroup_bpf_query.exit_crit_edge, %copy_to_user.exit.i.i.cgroup_bpf_query.exit_crit_edge, %if.end.i.i.i.i.cgroup_bpf_query.exit_crit_edge, %if.end25.i.i.cgroup_bpf_query.exit_crit_edge, %if.end.cgroup_bpf_query.exit_crit_edge
  %retval.1.i.i = phi i32 [ %call52.i.i, %if.then51.i.i ], [ -14, %copy_to_user.exit.i.i.cgroup_bpf_query.exit_crit_edge ], [ -14, %copy_to_user.exit120.i.i.cgroup_bpf_query.exit_crit_edge ], [ 0, %lor.lhs.false38.i.i.cgroup_bpf_query.exit_crit_edge ], [ 0, %if.end33.i.i.cgroup_bpf_query.exit_crit_edge ], [ -22, %if.end.cgroup_bpf_query.exit_crit_edge ], [ %ret.0.i.i, %52 ], [ -14, %cleanup.i.i ], [ -14, %if.end25.i.i.cgroup_bpf_query.exit_crit_edge ], [ -14, %if.end.i.i.i.i.cgroup_bpf_query.exit_crit_edge ], [ -14, %if.end29.i.i.cgroup_bpf_query.exit_crit_edge ], [ -14, %if.end.i.i115.i.i.cgroup_bpf_query.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt.i.i) #16
  call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %flags.i.i9 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %53 = ptrtoint ptr %flags.i.i9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i.i9, align 4
  %and.i.i10 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i11, label %if.then.i.i, label %cgroup_bpf_query.exit.cleanup_crit_edge

cgroup_bpf_query.exit.cleanup_crit_edge:          ; preds = %cgroup_bpf_query.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i:                                      ; preds = %cgroup_bpf_query.exit
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %cgroup_bpf_query.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %retval.1.i.i, %cgroup_bpf_query.exit.cleanup_crit_edge ], [ %retval.1.i.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_skb(ptr noundef %sk, ptr noundef %skb, i32 noundef %atype) #0 align 64 {
entry:
  %array_rcu.addr.i61 = alloca ptr, align 4
  %run_ctx.i62 = alloca %struct.bpf_cg_run_ctx, align 4
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i94 = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i94
  %and.i95 = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.i.not = icmp eq i32 %and.i95, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %9, label %if.end.cleanup_crit_edge [
    i16 2, label %if.end.if.end9_crit_edge
    i16 10, label %if.end.if.end9_crit_edge105
  ]

if.end.if.end9_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge105
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %11 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_cgrp_data, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  store ptr %sk, ptr %13, align 4
  %idx.neg.i = sub i32 0, %sub.ptr.sub
  %add.ptr.i96 = getelementptr i8, ptr %1, i32 %idx.neg.i
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i96, ptr %data, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %18, %sub.ptr.sub
  store i32 %add.i, ptr %len1.i, align 4
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %19 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_end.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %add.i, %22
  %add.ptr.i98 = getelementptr i8, ptr %add.ptr.i96, i32 %sub.i.i
  store ptr %add.ptr.i98, ptr %data_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp12 = icmp eq i32 %atype, 1
  br i1 %cmp12, label %if.then14, label %if.else25

if.then14:                                        ; preds = %if.end9
  %arrayidx = getelementptr %struct.cgroup, ptr %12, i32 0, i32 34, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %25 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %26 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %26, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %28 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.then14.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then14.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then14
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then14.rcu_read_lock.exit.i_crit_edge
  %32 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG_FLAGS.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG_FLAGS.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1300, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %33 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 217
  %37 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %39 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not36.i = icmp eq ptr %40, null
  br i1 %tobool16.not36.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %_flags.0 = phi i32 [ %or.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end7.i.while.body.i_crit_edge ]
  %41 = phi ptr [ %44, %while.body.i.while.body.i_crit_edge ], [ %40, %do.end7.i.while.body.i_crit_edge ]
  %item.038.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.037.i = phi i32 [ %and18.i, %while.body.i.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %item.038.i, ptr %26, align 4
  %call17.i = call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef nonnull %41, ptr noundef %skb) #16, !callees !101
  %and18.i = and i32 %call17.i, %ret.037.i
  %shr.i = lshr i32 %call17.i, 1
  %or.i = or i32 %shr.i, %_flags.0
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.038.i, i32 1
  %43 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %44, null
  br i1 %tobool16.not.i, label %while.end.i.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.end.i.loopexit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = and i32 %or.i, 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %do.end7.i.while.end.i_crit_edge
  %_flags.1 = phi i32 [ 0, %do.end7.i.while.end.i_crit_edge ], [ %phi.bo, %while.end.i.loopexit ]
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and18.i, %while.end.i.loopexit ]
  %45 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i24.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i24.i to ptr
  %task.i25.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i25.i, align 8
  %bpf_ctx.i26.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 217
  %49 = ptrtoint ptr %bpf_ctx.i26.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %38, ptr %bpf_ctx.i26.i, align 8
  %call.i27.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i27.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %land.lhs.true.i30.i

while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

land.lhs.true.i30.i:                              ; preds = %while.end.i
  %call1.i28.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %land.lhs.true2.i32.i

land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

land.lhs.true2.i32.i:                             ; preds = %land.lhs.true.i30.i
  %.b4.i31.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31.i, label %land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %if.then.i33.i

land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

if.then.i33.i:                                    ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

BPF_PROG_RUN_ARRAY_CG_FLAGS.exit:                 ; preds = %if.then.i33.i, %land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, %land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %50 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i34.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i34.i to ptr
  %preempt_count.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i35.i, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i35.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool17.not = icmp eq i32 %ret.0.lcssa.i, 0
  %54 = shl nuw nsw i32 %_flags.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_flags.1)
  %tobool16.not = icmp eq i32 %_flags.1, 0
  %cond23 = select i1 %tobool16.not, i32 -1, i32 1
  %_ret.0 = select i1 %tobool17.not, i32 %cond23, i32 %54
  br label %if.end33

if.else25:                                        ; preds = %if.end9
  %bpf26 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 34
  %arrayidx28 = getelementptr [23 x ptr], ptr %bpf26, i32 0, i32 %atype
  %55 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i61)
  %57 = ptrtoint ptr %array_rcu.addr.i61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %array_rcu.addr.i61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i62) #16
  %58 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i62, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %58, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %60 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i63 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i64, align 4
  %add.i.i.i.i65 = add i32 %63, 1
  store volatile i32 %add.i.i.i.i65, ptr %preempt_count.i.i.i.i.i64, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i66 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i66, label %if.else25.rcu_read_lock.exit.i76_crit_edge, label %land.lhs.true.i.i69

if.else25.rcu_read_lock.exit.i76_crit_edge:       ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i76

land.lhs.true.i.i69:                              ; preds = %if.else25
  %call1.i.i67 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %call1.i.i67, 0
  br i1 %tobool.not.i.i68, label %land.lhs.true.i.i69.rcu_read_lock.exit.i76_crit_edge, label %land.lhs.true2.i.i71

land.lhs.true.i.i69.rcu_read_lock.exit.i76_crit_edge: ; preds = %land.lhs.true.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i76

land.lhs.true2.i.i71:                             ; preds = %land.lhs.true.i.i69
  %.b4.i.i70 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i70, label %land.lhs.true2.i.i71.rcu_read_lock.exit.i76_crit_edge, label %if.then.i.i72

land.lhs.true2.i.i71.rcu_read_lock.exit.i76_crit_edge: ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i76

if.then.i.i72:                                    ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i76

rcu_read_lock.exit.i76:                           ; preds = %if.then.i.i72, %land.lhs.true2.i.i71.rcu_read_lock.exit.i76_crit_edge, %land.lhs.true.i.i69.rcu_read_lock.exit.i76_crit_edge, %if.else25.rcu_read_lock.exit.i76_crit_edge
  %64 = ptrtoint ptr %array_rcu.addr.i61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %array_rcu.addr.i61.0.array_rcu.addr.i61.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i73 = load volatile ptr, ptr %array_rcu.addr.i61, align 4
  %call.i74 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i79, label %rcu_read_lock.exit.i76.do.end7.i86_crit_edge

rcu_read_lock.exit.i76.do.end7.i86_crit_edge:     ; preds = %rcu_read_lock.exit.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i86

land.lhs.true.i79:                                ; preds = %rcu_read_lock.exit.i76
  %call2.i77 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i77)
  %tobool3.not.i78 = icmp eq i32 %call2.i77, 0
  br i1 %tobool3.not.i78, label %land.lhs.true.i79.do.end7.i86_crit_edge, label %land.lhs.true4.i80

land.lhs.true.i79.do.end7.i86_crit_edge:          ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i86

land.lhs.true4.i80:                               ; preds = %land.lhs.true.i79
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i80.do.end7.i86_crit_edge, label %if.then.i81

land.lhs.true4.i80.do.end7.i86_crit_edge:         ; preds = %land.lhs.true4.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i86

if.then.i81:                                      ; preds = %land.lhs.true4.i80
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i86

do.end7.i86:                                      ; preds = %if.then.i81, %land.lhs.true4.i80.do.end7.i86_crit_edge, %land.lhs.true.i79.do.end7.i86_crit_edge, %rcu_read_lock.exit.i76.do.end7.i86_crit_edge
  %items.i82 = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i61.0.array_rcu.addr.i61.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i73, i32 0, i32 1
  %65 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i83 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i83 to ptr
  %task.i.i84 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i84, align 8
  %bpf_ctx.i.i85 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 217
  %69 = ptrtoint ptr %bpf_ctx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bpf_ctx.i.i85, align 8
  store ptr %run_ctx.i62, ptr %bpf_ctx.i.i85, align 8
  %71 = ptrtoint ptr %items.i82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %items.i82, align 8
  %tobool16.not34.i = icmp eq ptr %72, null
  br i1 %tobool16.not34.i, label %do.end7.i86.while.end.i92_crit_edge, label %do.end7.i86.while.body.i90_crit_edge

do.end7.i86.while.body.i90_crit_edge:             ; preds = %do.end7.i86
  br label %while.body.i90

do.end7.i86.while.end.i92_crit_edge:              ; preds = %do.end7.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i92

while.body.i90:                                   ; preds = %while.body.i90.while.body.i90_crit_edge, %do.end7.i86.while.body.i90_crit_edge
  %73 = phi ptr [ %76, %while.body.i90.while.body.i90_crit_edge ], [ %72, %do.end7.i86.while.body.i90_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i88, %while.body.i90.while.body.i90_crit_edge ], [ %items.i82, %do.end7.i86.while.body.i90_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %while.body.i90.while.body.i90_crit_edge ], [ 1, %do.end7.i86.while.body.i90_crit_edge ]
  %74 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %item.036.i, ptr %58, align 4
  %call17.i87 = call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef nonnull %73, ptr noundef %skb) #16, !callees !101
  %and.i = and i32 %call17.i87, %ret.035.i
  %incdec.ptr.i88 = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %75 = ptrtoint ptr %incdec.ptr.i88 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %incdec.ptr.i88, align 8
  %tobool16.not.i89 = icmp eq ptr %76, null
  br i1 %tobool16.not.i89, label %while.body.i90.while.end.i92_crit_edge, label %while.body.i90.while.body.i90_crit_edge

while.body.i90.while.body.i90_crit_edge:          ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i90

while.body.i90.while.end.i92_crit_edge:           ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i92

while.end.i92:                                    ; preds = %while.body.i90.while.end.i92_crit_edge, %do.end7.i86.while.end.i92_crit_edge
  %ret.0.lcssa.i91 = phi i32 [ 1, %do.end7.i86.while.end.i92_crit_edge ], [ %and.i, %while.body.i90.while.end.i92_crit_edge ]
  %77 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 217
  %81 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %70, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i92.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i92.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i92
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i92.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %82 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i93 = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i93, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i62) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.lcssa.i91)
  %cmp30 = icmp ne i32 %ret.0.lcssa.i91, 1
  %cond32 = sext i1 %cmp30 to i32
  br label %if.end33

if.end33:                                         ; preds = %BPF_PROG_RUN_ARRAY_CG.exit, %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit
  %ret.0 = phi i32 [ %_ret.0, %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit ], [ %cond32, %BPF_PROG_RUN_ARRAY_CG.exit ]
  %86 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %20, ptr %data_end.i, align 4
  %87 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %88, %sub.ptr.sub
  store i32 %sub.i, ptr %len1.i, align 4
  %89 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %90)
  %cmp.i = icmp ult i32 %sub.i, %90
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !103

do.body4.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !104
  unreachable

__skb_pull.exit:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %add.ptr.i102 = getelementptr i8, ptr %92, i32 %sub.ptr.sub
  store ptr %add.ptr.i102, ptr %data, align 4
  %93 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %15, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %__skb_pull.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %prog, ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 8
  %cb_access = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %0 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cb_access, align 2
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %cb_saved.sroa.0.0.copyload = load i8, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %3 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %cb_saved.sroa.5.0.copyload = load i8, ptr %cb_saved.sroa.5.0..sroa_idx, align 1
  %cb_saved.sroa.6.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %cb_saved.sroa.6.0.copyload = load i8, ptr %cb_saved.sroa.6.0..sroa_idx, align 1
  %cb_saved.sroa.7.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %5 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %cb_saved.sroa.7.0.copyload = load i8, ptr %cb_saved.sroa.7.0..sroa_idx, align 1
  %cb_saved.sroa.8.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cb_saved.sroa.8.0.copyload = load i8, ptr %cb_saved.sroa.8.0..sroa_idx, align 1
  %cb_saved.sroa.9.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cb_saved.sroa.9.0.copyload = load i8, ptr %cb_saved.sroa.9.0..sroa_idx, align 1
  %cb_saved.sroa.10.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %8 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cb_saved.sroa.10.0.copyload = load i8, ptr %cb_saved.sroa.10.0..sroa_idx, align 1
  %cb_saved.sroa.11.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %9 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %cb_saved.sroa.11.0.copyload = load i8, ptr %cb_saved.sroa.11.0..sroa_idx, align 1
  %cb_saved.sroa.12.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cb_saved.sroa.12.0.copyload = load i8, ptr %cb_saved.sroa.12.0..sroa_idx, align 1
  %cb_saved.sroa.13.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %cb_saved.sroa.13.0.copyload = load i8, ptr %cb_saved.sroa.13.0..sroa_idx, align 1
  %cb_saved.sroa.14.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %cb_saved.sroa.14.0.copyload = load i8, ptr %cb_saved.sroa.14.0..sroa_idx, align 1
  %cb_saved.sroa.15.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %13 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %cb_saved.sroa.15.0.copyload = load i8, ptr %cb_saved.sroa.15.0..sroa_idx, align 1
  %cb_saved.sroa.16.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %14 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %cb_saved.sroa.16.0.copyload = load i8, ptr %cb_saved.sroa.16.0..sroa_idx, align 1
  %cb_saved.sroa.17.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %15 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cb_saved.sroa.17.0.copyload = load i8, ptr %cb_saved.sroa.17.0..sroa_idx, align 1
  %cb_saved.sroa.18.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %16 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cb_saved.sroa.18.0.copyload = load i8, ptr %cb_saved.sroa.18.0..sroa_idx, align 1
  %cb_saved.sroa.19.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %17 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %cb_saved.sroa.19.0.copyload = load i8, ptr %cb_saved.sroa.19.0..sroa_idx, align 1
  %cb_saved.sroa.20.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %cb_saved.sroa.20.0.copyload = load i8, ptr %cb_saved.sroa.20.0..sroa_idx, align 1
  %cb_saved.sroa.21.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %19 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %cb_saved.sroa.21.0.copyload = load i8, ptr %cb_saved.sroa.21.0..sroa_idx, align 1
  %cb_saved.sroa.22.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %20 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %cb_saved.sroa.22.0.copyload = load i8, ptr %cb_saved.sroa.22.0..sroa_idx, align 1
  %cb_saved.sroa.23.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %cb_saved.sroa.23.0.copyload = load i8, ptr %cb_saved.sroa.23.0..sroa_idx, align 1
  %22 = call ptr @memset(ptr %data.i, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cb_saved.sroa.23.0 = phi i8 [ %cb_saved.sroa.23.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.22.0 = phi i8 [ %cb_saved.sroa.22.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.21.0 = phi i8 [ %cb_saved.sroa.21.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.20.0 = phi i8 [ %cb_saved.sroa.20.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.19.0 = phi i8 [ %cb_saved.sroa.19.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.18.0 = phi i8 [ %cb_saved.sroa.18.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.17.0 = phi i8 [ %cb_saved.sroa.17.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.16.0 = phi i8 [ %cb_saved.sroa.16.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.15.0 = phi i8 [ %cb_saved.sroa.15.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.14.0 = phi i8 [ %cb_saved.sroa.14.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.13.0 = phi i8 [ %cb_saved.sroa.13.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.12.0 = phi i8 [ %cb_saved.sroa.12.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.11.0 = phi i8 [ %cb_saved.sroa.11.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.10.0 = phi i8 [ %cb_saved.sroa.10.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.9.0 = phi i8 [ %cb_saved.sroa.9.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.8.0 = phi i8 [ %cb_saved.sroa.8.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.7.0 = phi i8 [ %cb_saved.sroa.7.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.6.0 = phi i8 [ %cb_saved.sroa.6.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.5.0 = phi i8 [ %cb_saved.sroa.5.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.0.0 = phi i8 [ %cb_saved.sroa.0.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_run_save_cb, %if.then.i.i)) #16
          to label %if.else.i.i [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %23 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %25 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats9.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %41 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, ptrtoint (ptr @lockdep_recursion to i32)
  %47 = inttoptr i32 %add.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %50 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %62 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %65, ptrtoint (ptr @hardirqs_enabled to i32)
  %66 = inttoptr i32 %add47.i.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %69 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool54.not.i.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %73 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3, i32 0, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #16
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #16
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %34, align 8
  %inc.i.i.i = add i64 %78, 1
  store i64 %inc.i.i.i, ptr %34, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %79 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %80
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %76) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %81 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %84 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %85(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %86 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load5 = load i16, ptr %cb_access, align 2
  %87 = and i16 %bf.load5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool8.not = icmp eq i16 %87, 0
  br i1 %tobool8.not, label %bpf_prog_run.exit.if.end17_crit_edge, label %if.then15, !prof !97

bpf_prog_run.exit.if.end17_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then15:                                        ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %cb_saved.sroa.0.0, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx19 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %89 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx19 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %cb_saved.sroa.5.0, ptr %cb_saved.sroa.5.0..sroa_idx19, align 1
  %cb_saved.sroa.6.0..sroa_idx21 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %90 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx21 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %cb_saved.sroa.6.0, ptr %cb_saved.sroa.6.0..sroa_idx21, align 1
  %cb_saved.sroa.7.0..sroa_idx23 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %91 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx23 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %cb_saved.sroa.7.0, ptr %cb_saved.sroa.7.0..sroa_idx23, align 1
  %cb_saved.sroa.8.0..sroa_idx25 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %92 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx25 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %cb_saved.sroa.8.0, ptr %cb_saved.sroa.8.0..sroa_idx25, align 1
  %cb_saved.sroa.9.0..sroa_idx27 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %93 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx27 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %cb_saved.sroa.9.0, ptr %cb_saved.sroa.9.0..sroa_idx27, align 1
  %cb_saved.sroa.10.0..sroa_idx29 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %94 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx29 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %cb_saved.sroa.10.0, ptr %cb_saved.sroa.10.0..sroa_idx29, align 1
  %cb_saved.sroa.11.0..sroa_idx31 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %95 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx31 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %cb_saved.sroa.11.0, ptr %cb_saved.sroa.11.0..sroa_idx31, align 1
  %cb_saved.sroa.12.0..sroa_idx33 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %96 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx33 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %cb_saved.sroa.12.0, ptr %cb_saved.sroa.12.0..sroa_idx33, align 1
  %cb_saved.sroa.13.0..sroa_idx35 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %97 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx35 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %cb_saved.sroa.13.0, ptr %cb_saved.sroa.13.0..sroa_idx35, align 1
  %cb_saved.sroa.14.0..sroa_idx37 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %98 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx37 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %cb_saved.sroa.14.0, ptr %cb_saved.sroa.14.0..sroa_idx37, align 1
  %cb_saved.sroa.15.0..sroa_idx39 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %99 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx39 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %cb_saved.sroa.15.0, ptr %cb_saved.sroa.15.0..sroa_idx39, align 1
  %cb_saved.sroa.16.0..sroa_idx41 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %100 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx41 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %cb_saved.sroa.16.0, ptr %cb_saved.sroa.16.0..sroa_idx41, align 1
  %cb_saved.sroa.17.0..sroa_idx43 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %101 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx43 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %cb_saved.sroa.17.0, ptr %cb_saved.sroa.17.0..sroa_idx43, align 1
  %cb_saved.sroa.18.0..sroa_idx45 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %102 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx45 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %cb_saved.sroa.18.0, ptr %cb_saved.sroa.18.0..sroa_idx45, align 1
  %cb_saved.sroa.19.0..sroa_idx47 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %103 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx47 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %cb_saved.sroa.19.0, ptr %cb_saved.sroa.19.0..sroa_idx47, align 1
  %cb_saved.sroa.20.0..sroa_idx49 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %104 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx49 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cb_saved.sroa.20.0, ptr %cb_saved.sroa.20.0..sroa_idx49, align 1
  %cb_saved.sroa.21.0..sroa_idx51 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %105 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx51 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %cb_saved.sroa.21.0, ptr %cb_saved.sroa.21.0..sroa_idx51, align 1
  %cb_saved.sroa.22.0..sroa_idx53 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %106 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx53 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %cb_saved.sroa.22.0, ptr %cb_saved.sroa.22.0..sroa_idx53, align 1
  %cb_saved.sroa.23.0..sroa_idx55 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %107 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx55 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %cb_saved.sroa.23.0, ptr %cb_saved.sroa.23.0..sroa_idx55, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %bpf_prog_run.exit.if.end17_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_sk(ptr noundef %sk, i32 noundef %atype) #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_cgrp_data, align 4
  %bpf = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %4 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %5 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %11 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 217
  %16 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %18 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %19, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %20 = phi ptr [ %86, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %19, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %item.036.i, ptr %5, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_sk, %if.then.i.i4)) #16
          to label %if.else.i.i [label %if.then.i.i4], !srcloc !105

if.then.i.i4:                                     ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %22 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %23(ptr noundef %sk, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 7
  %24 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats9.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i3 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i3 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 3
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i4.do.body12.i.i.i_crit_edge

if.then.i.i4.do.body12.i.i.i_crit_edge:           ; preds = %if.then.i.i4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i4
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i4.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %36 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %40 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i5 = add i32 %45, ptrtoint (ptr @lockdep_recursion to i32)
  %46 = inttoptr i32 %add.i.i.i.i5 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %49 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not.i.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %53 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i6 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i6 to ptr
  %preempt_count.i.i.i.i.i7 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %57 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %61 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %64, ptrtoint (ptr @hardirqs_enabled to i32)
  %65 = inttoptr i32 %add47.i.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %68 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool54.not.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %72 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 3, i32 0, i32 1
  %74 = call ptr @llvm.returnaddress(i32 0) #16
  %75 = ptrtoint ptr %74 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %75) #16
  %76 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %33, align 8
  %inc.i.i.i = add i64 %77, 1
  store i64 %inc.i.i.i, ptr %33, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %78 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %79
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %75) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %80 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %81, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %83 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %84(ptr noundef %sk, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %85 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %86, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %87 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 217
  %91 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %17, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %92 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.lcssa.i)
  %cmp = icmp ne i32 %ret.0.lcssa.i, 1
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %atype, ptr noundef %t_ctx, ptr nocapture noundef %flags) #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %ctx = alloca %struct.bpf_sock_addr_kern, align 8
  %unspec = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #16
  %0 = getelementptr inbounds i8, ptr %ctx, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sk, ptr %ctx, align 8
  %uaddr2 = getelementptr inbounds %struct.bpf_sock_addr_kern, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %uaddr2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %uaddr, ptr %uaddr2, align 4
  %tmp_reg = getelementptr inbounds %struct.bpf_sock_addr_kern, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %tmp_reg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tmp_reg, align 8
  %t_ctx3 = getelementptr inbounds %struct.bpf_sock_addr_kern, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %t_ctx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %t_ctx, ptr %t_ctx3, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %unspec) #16
  %6 = call ptr @memset(ptr %unspec, i32 255, i32 128)
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %8, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge28
  ]

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge28
  %tobool.not = icmp eq ptr %uaddr, null
  br i1 %tobool.not, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %10 = call ptr @memset(ptr %unspec, i32 0, i32 128)
  %11 = ptrtoint ptr %uaddr2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %unspec, ptr %uaddr2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %12 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_cgrp_data, align 4
  %bpf = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %16 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %17 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %17, align 4, !annotation !99
  call void @migrate_disable() #16
  %19 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end13.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end13.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end13
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end13.rcu_read_lock.exit.i_crit_edge
  %23 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG_FLAGS.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG_FLAGS.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1300, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %24 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 217
  %28 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %30 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not36.i = icmp eq ptr %31, null
  br i1 %tobool16.not36.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %32 = phi ptr [ %100, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %31, %do.end7.i.while.body.i_crit_edge ]
  %item.038.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.037.i = phi i32 [ %and18.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %item.038.i, ptr %17, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_sock_addr, %if.then.i.i24)) #16
          to label %if.else.i.i [label %if.then.i.i24], !srcloc !105

if.then.i.i24:                                    ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %32, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %32, i32 0, i32 9
  %34 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %35(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %32, i32 0, i32 7
  %36 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stats9.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i23 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i23 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %45, i32 0, i32 3
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i24.do.body12.i.i.i_crit_edge

if.then.i.i24.do.body12.i.i.i_crit_edge:          ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i24.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %48 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %52 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i25 = add i32 %57, ptrtoint (ptr @lockdep_recursion to i32)
  %58 = inttoptr i32 %add.i.i.i.i25 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %61 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool20.not.i.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %65 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i26 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %69 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %72, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %73 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %76, ptrtoint (ptr @hardirqs_enabled to i32)
  %77 = inttoptr i32 %add47.i.i.i.i to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %80 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %83, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool54.not.i.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %84 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %45, i32 0, i32 3, i32 0, i32 1
  %86 = call ptr @llvm.returnaddress(i32 0) #16
  %87 = ptrtoint ptr %86 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %87) #16
  %88 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %45, align 8
  %inc.i.i.i = add i64 %89, 1
  store i64 %inc.i.i.i, ptr %45, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %45, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %90 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %91
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %87) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %92 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %94 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %32, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %32, i32 0, i32 9
  %95 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %96(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and18.i = and i32 %ret.0.i.i, %ret.037.i
  %shr.i = lshr i32 %ret.0.i.i, 1
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  %or.i = or i32 %98, %shr.i
  store i32 %or.i, ptr %flags, align 4
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.038.i, i32 1
  %99 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %100, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and18.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %101 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i24.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i24.i to ptr
  %task.i25.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i25.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i25.i, align 8
  %bpf_ctx.i26.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 217
  %105 = ptrtoint ptr %bpf_ctx.i26.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %29, ptr %bpf_ctx.i26.i, align 8
  %call.i27.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i27.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %land.lhs.true.i30.i

while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

land.lhs.true.i30.i:                              ; preds = %while.end.i
  %call1.i28.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %land.lhs.true2.i32.i

land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

land.lhs.true2.i32.i:                             ; preds = %land.lhs.true.i30.i
  %.b4.i31.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31.i, label %land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, label %if.then.i33.i

land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge: ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

if.then.i33.i:                                    ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit

BPF_PROG_RUN_ARRAY_CG_FLAGS.exit:                 ; preds = %if.then.i33.i, %land.lhs.true2.i32.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, %land.lhs.true.i30.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG_FLAGS.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %106 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i34.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i34.i to ptr
  %preempt_count.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i35.i, align 4
  %sub.i.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i35.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.lcssa.i)
  %cmp15 = icmp ne i32 %ret.0.lcssa.i, 1
  %cond = sext i1 %cmp15 to i32
  br label %cleanup

cleanup:                                          ; preds = %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %BPF_PROG_RUN_ARRAY_CG_FLAGS.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %unspec) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_sock_ops(ptr nocapture noundef readonly %sk, ptr noundef %sock_ops, i32 noundef %atype) #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_cgrp_data, align 4
  %bpf = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %4 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %5 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %11 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 217
  %16 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %18 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %19, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %20 = phi ptr [ %86, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %19, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %item.036.i, ptr %5, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_sock_ops, %if.then.i.i3)) #16
          to label %if.else.i.i [label %if.then.i.i3], !srcloc !105

if.then.i.i3:                                     ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %22 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %23(ptr noundef %sock_ops, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 7
  %24 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats9.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i2 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i2 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 3
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i3.do.body12.i.i.i_crit_edge

if.then.i.i3.do.body12.i.i.i_crit_edge:           ; preds = %if.then.i.i3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i3
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i3.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %36 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %40 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i4 = add i32 %45, ptrtoint (ptr @lockdep_recursion to i32)
  %46 = inttoptr i32 %add.i.i.i.i4 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %49 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not.i.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %53 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i5 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i5 to ptr
  %preempt_count.i.i.i.i.i6 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %57 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %61 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %64, ptrtoint (ptr @hardirqs_enabled to i32)
  %65 = inttoptr i32 %add47.i.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %68 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool54.not.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %72 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 3, i32 0, i32 1
  %74 = call ptr @llvm.returnaddress(i32 0) #16
  %75 = ptrtoint ptr %74 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %75) #16
  %76 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %33, align 8
  %inc.i.i.i = add i64 %77, 1
  store i64 %inc.i.i.i, ptr %33, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %33, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %78 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %79
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %75) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %80 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %81, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %83 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %84(ptr noundef %sock_ops, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %85 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %86, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %87 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 217
  %91 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %17, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %92 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.lcssa.i)
  %cmp = icmp ne i32 %ret.0.lcssa.i, 1
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_check_dev_permission(i16 noundef signext %dev_type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %ctx = alloca %struct.bpf_cgroup_dev_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #16
  %0 = getelementptr inbounds %struct.bpf_cgroup_dev_ctx, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bpf_cgroup_dev_ctx, ptr %ctx, i32 0, i32 2
  %conv6 = zext i16 %access to i32
  %shl = shl nuw i32 %conv6, 16
  %conv1 = sext i16 %dev_type to i32
  %or = or i32 %shl, %conv1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %ctx, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %major, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %minor, ptr %1, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i18 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i18 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 164
  %13 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i19 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i.i19, 0
  br i1 %tobool.not.i.i20, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge

rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i18.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i21, label %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

land.lhs.true.i.i21:                              ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i21.task_dfl_cgroup.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i21.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i21
  %.b17.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, label %if.then.i.i22

land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

if.then.i.i22:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 481, ptr noundef nonnull @.str.5) #16
  br label %task_dfl_cgroup.exit

task_dfl_cgroup.exit:                             ; preds = %if.then.i.i22, %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, %land.lhs.true.i.i21.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge, %rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %dfl_cgrp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfl_cgrp.i, align 4
  %bpf = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %21 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %22 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %22, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %24 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %task_dfl_cgroup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %task_dfl_cgroup.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge
  %28 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i7 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i9.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i9.do.end7.i_crit_edge:             ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i9
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i10

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i10:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i10, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i9.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %29 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 217
  %33 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %35 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %36, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %37 = phi ptr [ %103, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %36, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %item.036.i, ptr %22, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_check_dev_permission, %if.then.i.i12)) #16
          to label %if.else.i.i [label %if.then.i.i12], !srcloc !105

if.then.i.i12:                                    ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %37, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %37, i32 0, i32 9
  %39 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %40(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %37, i32 0, i32 7
  %41 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stats9.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i11 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i11 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %50, i32 0, i32 3
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i12.do.body12.i.i.i_crit_edge

if.then.i.i12.do.body12.i.i.i_crit_edge:          ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i12.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %53 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %57 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i13 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i14 = add i32 %62, ptrtoint (ptr @lockdep_recursion to i32)
  %63 = inttoptr i32 %add.i.i.i.i14 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %66 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool20.not.i.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %70 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i15 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %74 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %77, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %78 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %81, ptrtoint (ptr @hardirqs_enabled to i32)
  %82 = inttoptr i32 %add47.i.i.i.i to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %85 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool54.not.i.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %89 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %90, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %50, i32 0, i32 3, i32 0, i32 1
  %91 = call ptr @llvm.returnaddress(i32 0) #16
  %92 = ptrtoint ptr %91 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %92) #16
  %93 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %50, align 8
  %inc.i.i.i = add i64 %94, 1
  store i64 %inc.i.i.i, ptr %50, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %50, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %95 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i17 = add i64 %conv.i.i.i, %96
  store i64 %add.i.i.i17, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %92) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %97 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %98, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %37, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %37, i32 0, i32 9
  %100 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %101(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %102 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %103, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %104 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 217
  %108 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %34, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %109 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %112, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %call.i23 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i23, label %BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge: ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  %call1.i24 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %113 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i30 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool.not = icmp eq i32 %ret.0.lcssa.i, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #16
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroup_dev_func_proto(i32 noundef %func_id, ptr nocapture noundef readnone %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %func_id, label %sw.default.i [
    i32 15, label %entry.cgroup_base_func_proto.exit_crit_edge
    i32 81, label %sw.bb1.i
    i32 80, label %sw.bb2.i
    i32 25, label %sw.bb3.i
  ]

entry.cgroup_base_func_proto.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_base_func_proto.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_base_func_proto.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_base_func_proto.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_base_func_proto.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @bpf_base_func_proto(i32 noundef %func_id) #16
  br label %cgroup_base_func_proto.exit

cgroup_base_func_proto.exit:                      ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.cgroup_base_func_proto.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %sw.default.i ], [ @bpf_event_output_data_proto, %sw.bb3.i ], [ @bpf_get_current_cgroup_id_proto, %sw.bb2.i ], [ @bpf_get_local_storage_proto, %sw.bb1.i ], [ @bpf_get_current_uid_gid_proto, %entry.cgroup_base_func_proto.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @cgroup_dev_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr nocapture noundef readnone %prog, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp1 = icmp slt i32 %off, 0
  %add = add i32 %size, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %add)
  %cmp2 = icmp ugt i32 %add, 12
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rem = srem i32 %off, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp eq i32 %rem, 0
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %off)
  %switch = icmp ult i32 %off, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end7
  %0 = getelementptr inbounds %struct.bpf_insn_access_aux, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp.i = icmp ult i32 %size, 5
  %2 = tail call i32 @llvm.ctpop.i32(i32 %size) #16, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.i = icmp ult i32 %2, 2
  %or.cond20 = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond20, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp10.not = icmp eq i32 %size, 4
  br i1 %cmp10.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_sysctl(ptr noundef %head, ptr noundef %table, i32 noundef %write, ptr nocapture noundef %buf, ptr nocapture noundef %pcount, ptr noundef %ppos, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %ctx = alloca %struct.bpf_sysctl_kern, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ctx) #16
  %0 = getelementptr inbounds i8, ptr %ctx, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !99
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %ctx, align 8
  %table2 = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %table2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %table, ptr %table2, align 4
  %cur_val = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 2
  %cur_len = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %cur_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %cur_len, align 4
  %new_val = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 4
  %5 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %new_val, align 8
  %new_len = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %new_len, align 4
  %new_updated = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 6
  %7 = ptrtoint ptr %new_updated to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %new_updated, align 8
  %write3 = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %write3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %write, ptr %write3, align 4
  %ppos4 = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 8
  %9 = ptrtoint ptr %ppos4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ppos, ptr %ppos4, align 8
  %tmp_reg = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %ctx, i32 0, i32 9
  %10 = ptrtoint ptr %tmp_reg to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %tmp_reg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #16
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %pos, align 8
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = ptrtoint ptr %12 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef 4096, i32 noundef 3264, i32 noundef %13) #16
  %14 = ptrtoint ptr %cur_val to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %cur_val, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %15 = ptrtoint ptr %proc_handler to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proc_handler, align 4
  %call10 = call i32 %16(ptr noundef %table, i32 noundef 0, ptr noundef nonnull %call, ptr noundef %cur_len, ptr noundef nonnull %pos) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %cur_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cur_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool13.not = icmp eq i32 %write, 0
  br i1 %tobool13.not, label %if.end.if.end28_crit_edge, label %land.lhs.true

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true15

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true15:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %pcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %land.lhs.true15.if.end28_crit_edge, label %if.then17

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then17:                                        ; preds = %land.lhs.true15
  %call18 = call ptr @__kmalloc_track_caller(i32 noundef 4096, i32 noundef 3264, i32 noundef %13) #16
  %22 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call18, ptr %new_val, align 8
  %23 = ptrtoint ptr %pcount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcount, align 4
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 4096)
  %26 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %new_len, align 4
  %tobool22.not = icmp eq ptr %call18, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %29 = call ptr @memcpy(ptr %call18, ptr %28, i32 %25)
  br label %if.end28

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %new_len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23, %land.lhs.true15.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %31 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end28.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end28.rcu_read_lock.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end28
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end28.rcu_read_lock.exit_crit_edge
  %35 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i68 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i68 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 164
  %39 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i69 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %call.i.i.i69, 0
  br i1 %tobool.not.i.i70, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge

rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i18.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i71, label %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

land.lhs.true.i.i71:                              ; preds = %lor.lhs.false6.i.i
  %call9.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i71.task_dfl_cgroup.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i71.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i71
  %.b17.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, label %if.then.i.i72

land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %task_dfl_cgroup.exit

if.then.i.i72:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @task_css_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 481, ptr noundef nonnull @.str.5) #16
  br label %task_dfl_cgroup.exit

task_dfl_cgroup.exit:                             ; preds = %if.then.i.i72, %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, %land.lhs.true.i.i71.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge, %rcu_read_lock.exit.task_dfl_cgroup.exit_crit_edge
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %dfl_cgrp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dfl_cgrp.i, align 4
  %bpf = getelementptr inbounds %struct.cgroup, ptr %44, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %47 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %48 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %48, align 4, !annotation !99
  call void @migrate_disable() #16
  %50 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %task_dfl_cgroup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %task_dfl_cgroup.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %task_dfl_cgroup.exit.rcu_read_lock.exit.i_crit_edge
  %54 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i57 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i59:                                ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i59.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i59.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i59
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i60

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i60:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i60, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i59.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %55 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 217
  %59 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %61 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %62, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %63 = phi ptr [ %127, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %62, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %item.036.i, ptr %48, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_sysctl, %if.then.i.i62)) #16
          to label %if.else.i.i [label %if.then.i.i62], !srcloc !105

if.then.i.i62:                                    ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %63, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %63, i32 0, i32 9
  %65 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %66(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %63, i32 0, i32 7
  %67 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stats9.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i61 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i61 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %75, %69
  %76 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %76, i32 0, i32 3
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i62.do.body12.i.i.i_crit_edge

if.then.i.i62.do.body12.i.i.i_crit_edge:          ; preds = %if.then.i.i62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i62
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i62.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %78 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %79 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %82, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %83 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i63 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i64 = add i32 %88, ptrtoint (ptr @lockdep_recursion to i32)
  %89 = inttoptr i32 %add.i.i.i.i64 to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %92 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool20.not.i.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %96 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i65 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i.i.i.i = icmp eq i32 %99, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %100 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %103, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %104 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %107, ptrtoint (ptr @hardirqs_enabled to i32)
  %108 = inttoptr i32 %add47.i.i.i.i to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %108, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %111 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %114, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool54.not.i.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %115 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %116, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %76, i32 0, i32 3, i32 0, i32 1
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %13) #16
  %117 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %76, align 8
  %inc.i.i.i = add i64 %118, 1
  store i64 %inc.i.i.i, ptr %76, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %76, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %119 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i67 = add i64 %conv.i.i.i, %120
  store i64 %add.i.i.i67, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %13) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %121 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %122, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %123 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %63, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %63, i32 0, i32 9
  %124 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %125(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %126 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %127, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %128 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 217
  %132 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %60, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %133 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %call.i73 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i73, label %BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge: ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  %call1.i74 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %BPF_PROG_RUN_ARRAY_CG.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %137 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i80 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %140, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %141 = ptrtoint ptr %cur_val to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur_val, align 8
  call void @kfree(ptr noundef %142) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.lcssa.i)
  %cmp33 = icmp eq i32 %ret.0.lcssa.i, 1
  br i1 %cmp33, label %land.lhs.true34, label %rcu_read_unlock.exit.if.else40_crit_edge

rcu_read_unlock.exit.if.else40_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else40

land.lhs.true34:                                  ; preds = %rcu_read_unlock.exit
  %143 = ptrtoint ptr %new_updated to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %new_updated, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool36.not = icmp eq i32 %144, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.else40_crit_edge, label %if.then37

land.lhs.true34.if.else40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else40

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  %145 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %146) #16
  %147 = ptrtoint ptr %new_val to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %new_val, align 8
  %149 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %buf, align 4
  %150 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %new_len, align 4
  %152 = ptrtoint ptr %pcount to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %pcount, align 4
  br label %if.end42

if.else40:                                        ; preds = %land.lhs.true34.if.else40_crit_edge, %rcu_read_unlock.exit.if.else40_crit_edge
  %153 = ptrtoint ptr %new_val to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %new_val, align 8
  call void @kfree(ptr noundef %154) #16
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then37
  %not.cmp33 = xor i1 %cmp33, true
  %cond44 = sext i1 %not.cmp33 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctx) #16
  ret i32 %cond44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_setsockopt(ptr noundef %sk, ptr nocapture noundef %level, ptr nocapture noundef %optname, ptr noundef %optval, ptr nocapture noundef %optlen, ptr nocapture noundef writeonly %kernel_optval) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %buf = alloca %struct.bpf_sockopt_buf, align 1
  %ctx = alloca %struct.bpf_sockopt_kern, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_cgrp_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx) #16
  %3 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 1
  %4 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 4
  %7 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 5
  %8 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 6
  %9 = getelementptr inbounds i8, ptr %ctx, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %9, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sk, ptr %ctx, align 4
  %12 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %5, align 4
  %15 = ptrtoint ptr %optname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %optname, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %6, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %8, align 4
  %call7 = tail call fastcc zeroext i1 @__cgroup_bpf_prog_array_is_empty(ptr noundef %1, i32 noundef 17)
  br i1 %call7, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %optlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %optlen, align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp2.i = icmp ugt i32 %21, 4096
  br i1 %cmp2.i, label %if.end.if.end8.i.i.i_crit_edge, label %if.end10.i, !prof !103

if.end.if.end8.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

if.end10.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %21)
  %cmp11.i = icmp ult i32 %21, 33
  br i1 %cmp11.i, label %if.then12.i, label %if.end10.i.if.end8.i.i.i_crit_edge

if.end10.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %21
  br label %if.end11

if.end8.i.i.i:                                    ; preds = %if.end10.i.if.end8.i.i.i_crit_edge, %if.end.if.end8.i.i.i_crit_edge
  %max_optlen.addr.038.i = phi i32 [ %20, %if.end10.i.if.end8.i.i.i_crit_edge ], [ 4096, %if.end.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_optlen.addr.038.i, i32 noundef 1052096) #21
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i.i, ptr %3, align 4
  %tobool17.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool17.not.i, label %if.end8.i.i.i.cleanup57_crit_edge, label %if.end19.i

if.end8.i.i.i.cleanup57_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end19.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr21.i = getelementptr i8, ptr %call9.i.i.i, i32 %max_optlen.addr.038.i
  br label %if.end11

if.end11:                                         ; preds = %if.end19.i, %if.then12.i
  %add.ptr21.sink.i = phi ptr [ %add.ptr21.i, %if.end19.i ], [ %add.ptr.i, %if.then12.i ]
  %retval.0.ph.i = phi i32 [ %max_optlen.addr.038.i, %if.end19.i ], [ %21, %if.then12.i ]
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr21.sink.i, ptr %4, align 4
  %25 = ptrtoint ptr %optlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %optlen, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %7, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %30 = call i32 @llvm.smin.i32(i32 %26, i32 %retval.0.ph.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.i.i = icmp slt i32 %30, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end11
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !97

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %out

if.then.i.i.i:                                    ; preds = %if.end11
  call void @__check_object_size(ptr noundef %29, i32 noundef %30, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %30, i32 -1226833920) #20, !srcloc !116
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !97

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef %30) #16
  %32 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !117
  %and.i.i.i.i = and i32 %34, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %29, ptr noundef %optval, i32 noundef %30) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %30, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %30, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end23, label %if.then11.i.i, !prof !97

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %30, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %sub.i.i
  %35 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end23:                                         ; preds = %if.end.i.i
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #16
  %arrayidx = getelementptr %struct.cgroup, ptr %1, i32 0, i32 34, i32 0, i32 17
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %38 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %39 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %39, align 4, !annotation !99
  call void @migrate_disable() #16
  %41 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i87 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i88 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i88, label %if.end23.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i89

if.end23.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i89:                              ; preds = %if.end23
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i89.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i89.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i89
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i90

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i90:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i90, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i89.rcu_read_lock.exit.i_crit_edge, %if.end23.rcu_read_lock.exit.i_crit_edge
  %45 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i91

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i91:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i91, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %46 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 217
  %50 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %52 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %53, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %54 = phi ptr [ %120, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %53, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %item.036.i, ptr %39, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_setsockopt, %if.then.i.i102)) #16
          to label %if.else.i.i108 [label %if.then.i.i102], !srcloc !105

if.then.i.i102:                                   ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %54, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %54, i32 0, i32 9
  %56 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i99 = call i32 %57(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %54, i32 0, i32 7
  %58 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stats9.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i100 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i100 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %66, %60
  %67 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %67, i32 0, i32 3
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i101 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i101)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i101, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i103, label %if.then.i.i102.do.body12.i.i.i_crit_edge

if.then.i.i102.do.body12.i.i.i_crit_edge:         ; preds = %if.then.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i103:                                 ; preds = %if.then.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i103, %if.then.i.i102.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %69 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %70 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %73, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %74 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i104 = add i32 %79, ptrtoint (ptr @lockdep_recursion to i32)
  %80 = inttoptr i32 %add.i.i.i.i104 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %83 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool20.not.i.i.i.i = icmp eq i32 %82, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %87 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i105 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i105 to ptr
  %preempt_count.i.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %91 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %94, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %95 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %98, ptrtoint (ptr @hardirqs_enabled to i32)
  %99 = inttoptr i32 %add47.i.i.i.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %102 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool54.not.i.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %106 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %67, i32 0, i32 3, i32 0, i32 1
  %108 = call ptr @llvm.returnaddress(i32 0) #16
  %109 = ptrtoint ptr %108 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %109) #16
  %110 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %67, align 8
  %inc.i.i.i = add i64 %111, 1
  store i64 %inc.i.i.i, ptr %67, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %67, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i107 = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i107, 4294967295
  %112 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %113
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %109) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %114 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %115, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i108:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %54, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %54, i32 0, i32 9
  %117 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %118(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i108, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i99, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i108 ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %119 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %120, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %121 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 217
  %125 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %51, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %126 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %129, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @release_sock(ptr noundef %sk) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool.not, label %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge, label %if.end26

BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge:         ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end26:                                         ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  %130 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp28 = icmp eq i32 %131, -1
  br i1 %cmp28, label %if.end26.out_crit_edge, label %if.else

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %retval.0.ph.i)
  %cmp31 = icmp sgt i32 %131, %retval.0.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp33 = icmp slt i32 %131, -1
  %or.cond = or i1 %cmp31, %cmp33
  br i1 %or.cond, label %if.else.out_crit_edge, label %if.else35

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else35:                                        ; preds = %if.else
  %132 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %5, align 4
  %134 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %level, align 4
  %135 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %6, align 4
  %137 = ptrtoint ptr %optname to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %optname, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp39.not = icmp eq i32 %131, 0
  br i1 %cmp39.not, label %if.else35.out_crit_edge, label %if.then40

if.else35.out_crit_edge:                          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then40:                                        ; preds = %if.else35
  %138 = ptrtoint ptr %optlen to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %131, ptr %optlen, align 4
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %3, align 4
  %cmp.i112.not = icmp eq ptr %140, %buf
  br i1 %cmp.i112.not, label %if.end8.i, label %if.else51

if.end8.i:                                        ; preds = %if.then40
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %131, i32 noundef 1051840) #21
  %tobool46.not = icmp eq ptr %call9.i, null
  br i1 %tobool46.not, label %if.end8.i.out_crit_edge, label %cleanup.thread

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

cleanup.thread:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %3, align 4
  %143 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %7, align 4
  %145 = call ptr @memcpy(ptr %call9.i, ptr %142, i32 %144)
  %146 = ptrtoint ptr %kernel_optval to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call9.i, ptr %kernel_optval, align 4
  br label %cleanup57

if.else51:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %147 = ptrtoint ptr %kernel_optval to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %140, ptr %kernel_optval, align 4
  br label %cleanup57

out:                                              ; preds = %if.end8.i.out_crit_edge, %if.else35.out_crit_edge, %if.else.out_crit_edge, %if.end26.out_crit_edge, %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.else35.out_crit_edge ], [ -1, %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge ], [ 1, %if.end26.out_crit_edge ], [ -14, %if.else.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ]
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %3, align 4
  %cmp.i114 = icmp eq ptr %149, %buf
  br i1 %cmp.i114, label %out.cleanup57_crit_edge, label %if.end.i115

out.cleanup57_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end.i115:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef %149) #16
  br label %cleanup57

cleanup57:                                        ; preds = %if.end.i115, %out.cleanup57_crit_edge, %if.else51, %cleanup.thread, %if.end8.i.i.i.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup57_crit_edge ], [ 0, %if.else51 ], [ 0, %cleanup.thread ], [ %ret.1, %out.cleanup57_crit_edge ], [ %ret.1, %if.end.i115 ], [ -12, %if.end8.i.i.i.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__cgroup_bpf_prog_array_is_empty(ptr noundef %cgrp, i32 noundef %attach_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %bpf = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 34
  %arrayidx = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %attach_type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @__cgroup_bpf_prog_array_is_empty.__warned, align 1
  br i1 %.b11, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__cgroup_bpf_prog_array_is_empty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1364, ptr noundef nonnull @.str.5) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %call9 = tail call zeroext i1 @bpf_prog_array_is_empty(ptr noundef %5) #16
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i12, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %do.end7
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %6 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i19 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i1 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen, i32 noundef %max_optlen, i32 noundef %retval1) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %buf = alloca %struct.bpf_sockopt_buf, align 1
  %ctx = alloca %struct.bpf_sockopt_kern, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_cgrp_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx) #16
  %3 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 1
  %4 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 4
  %7 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 5
  %8 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 6
  %9 = getelementptr inbounds i8, ptr %ctx, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %9, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sk, ptr %ctx, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %level, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %optname, ptr %6, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval1, ptr %8, align 4
  %call8 = tail call fastcc zeroext i1 @__cgroup_bpf_prog_array_is_empty(ptr noundef %1, i32 noundef 16)
  br i1 %call8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max_optlen, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_optlen)
  %cmp.i = icmp slt i32 %max_optlen, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !103

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %max_optlen)
  %cmp2.i = icmp ugt i32 %max_optlen, 4096
  br i1 %cmp2.i, label %if.end.i.if.end8.i.i.i_crit_edge, label %if.end10.i, !prof !103

if.end.i.if.end8.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %max_optlen)
  %cmp11.i = icmp ult i32 %max_optlen, 33
  br i1 %cmp11.i, label %if.then12.i, label %if.end10.i.if.end8.i.i.i_crit_edge

if.end10.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %max_optlen
  br label %if.end12

if.end8.i.i.i:                                    ; preds = %if.end10.i.if.end8.i.i.i_crit_edge, %if.end.i.if.end8.i.i.i_crit_edge
  %max_optlen.addr.038.i = phi i32 [ %max_optlen, %if.end10.i.if.end8.i.i.i_crit_edge ], [ 4096, %if.end.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_optlen.addr.038.i, i32 noundef 1052096) #21
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %3, align 4
  %tobool17.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool17.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end19.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr21.i = getelementptr i8, ptr %call9.i.i.i, i32 %max_optlen.addr.038.i
  br label %if.end12

if.end12:                                         ; preds = %if.end19.i, %if.then12.i
  %add.ptr21.sink.i = phi ptr [ %add.ptr21.i, %if.end19.i ], [ %add.ptr.i, %if.then12.i ]
  %retval.0.ph.i = phi i32 [ %max_optlen.addr.038.i, %if.end19.i ], [ %max_optlen, %if.then12.i ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr21.sink.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1)
  %tobool.not = icmp eq i32 %retval1, 0
  br i1 %tobool.not, label %if.then13, label %if.end12.if.end33_crit_edge

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then13:                                        ; preds = %if.end12
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1546) #16
  %19 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !117
  %and.i = and i32 %21, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  %22 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #16, !srcloc !120
  %asmresult = extractvalue { i32, i32 } %22, 0
  %asmresult15 = extractvalue { i32, i32 } %22, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %asmresult15, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool18.not = icmp ne i32 %asmresult, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult15)
  %cmp22 = icmp slt i32 %asmresult15, 0
  %or.cond96 = select i1 %tobool18.not, i1 true, i1 %cmp22
  br i1 %or.cond96, label %if.then13.out_crit_edge, label %if.end24

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24:                                         ; preds = %if.then13
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = call i32 @llvm.umin.i32(i32 %asmresult15, i32 %retval.0.ph.i)
  call void @__check_object_size(ptr noundef %25, i32 noundef %26, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end24.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end24.if.end.i.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end24
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %26, i32 -1226833920) #20, !srcloc !116
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !97

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef %26) #16
  %28 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !117
  %and.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %25, ptr noundef %optval, i32 noundef %26) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end24.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %26, %if.end24.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %26, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end33_crit_edge, label %if.then11.i.i, !prof !97

if.end.i.i.if.end33_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %26, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %sub.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end33:                                         ; preds = %if.end.i.i.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #16
  %arrayidx = getelementptr %struct.cgroup, ptr %1, i32 0, i32 34, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %34 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %35 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !99
  call void @migrate_disable() #16
  %37 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i97 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i98 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i98, label %if.end33.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i99

if.end33.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i99:                              ; preds = %if.end33
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i99.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i99.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i99
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i99
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i100

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i100:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i100, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i99.rcu_read_lock.exit.i_crit_edge, %if.end33.rcu_read_lock.exit.i_crit_edge
  %41 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i101

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i101:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i101, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %42 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i102 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i102 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 217
  %46 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %48 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %49, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %50 = phi ptr [ %116, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %49, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i103, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %item.036.i, ptr %35, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_getsockopt, %if.then.i.i131)) #16
          to label %if.else.i.i137 [label %if.then.i.i131], !srcloc !105

if.then.i.i131:                                   ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %50, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %50, i32 0, i32 9
  %52 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i128 = call i32 %53(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %50, i32 0, i32 7
  %54 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stats9.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i129 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i129 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %62, %56
  %63 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %63, i32 0, i32 3
  %64 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i130 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i130)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i130, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i132, label %if.then.i.i131.do.body12.i.i.i_crit_edge

if.then.i.i131.do.body12.i.i.i_crit_edge:         ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i132:                                 ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i132, %if.then.i.i131.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %65 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %66 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %70 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i133 = add i32 %75, ptrtoint (ptr @lockdep_recursion to i32)
  %76 = inttoptr i32 %add.i.i.i.i133 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %79 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool20.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %83 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i134 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i.i.i.i = icmp eq i32 %86, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %87 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %90, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %91 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %94, ptrtoint (ptr @hardirqs_enabled to i32)
  %95 = inttoptr i32 %add47.i.i.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %98 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool54.not.i.i.i.i = icmp eq i32 %97, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %102 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %103, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %63, i32 0, i32 3, i32 0, i32 1
  %104 = call ptr @llvm.returnaddress(i32 0) #16
  %105 = ptrtoint ptr %104 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %105) #16
  %106 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %63, align 8
  %inc.i.i.i = add i64 %107, 1
  store i64 %inc.i.i.i, ptr %63, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %63, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i136 = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i136, 4294967295
  %108 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %109
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %105) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %110 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %111, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i137:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %50, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %50, i32 0, i32 9
  %113 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %114(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i137, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i128, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i137 ]
  %and.i103 = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %115 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %116, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i103, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %117 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 217
  %121 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %47, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %122 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %125, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @release_sock(ptr noundef %sk) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool35.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool35.not, label %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge, label %if.end37

BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge:         ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end37:                                         ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  %126 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %retval.0.ph.i)
  %cmp39 = icmp sgt i32 %127, %retval.0.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp41 = icmp slt i32 %127, 0
  %or.cond = or i1 %cmp39, %cmp41
  br i1 %or.cond, label %if.end37.out_crit_edge, label %if.end43

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end43:                                         ; preds = %if.end37
  %128 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp45.not = icmp eq i32 %129, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %retval1)
  %cmp47.not = icmp eq i32 %129, %retval1
  %or.cond95 = or i1 %cmp45.not, %cmp47.not
  br i1 %or.cond95, label %if.end49, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp51.not = icmp eq i32 %127, 0
  br i1 %cmp51.not, label %if.end49.if.end71_crit_edge, label %if.then52

if.end49.if.end71_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then52:                                        ; preds = %if.end49
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %3, align 4
  call void @__check_object_size(ptr noundef %131, i32 noundef %127, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #16
  %call.i.i117 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i117, label %if.then52.out_crit_edge, label %if.end.i.i121

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i.i121:                                    ; preds = %if.then52
  %132 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %127, i32 -1226833920) #20, !srcloc !98
  %asmresult.i.i119 = extractvalue { i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i119)
  %cmp.i6.i120 = icmp eq i32 %asmresult.i.i119, 0
  br i1 %cmp.i6.i120, label %copy_to_user.exit, label %if.end.i.i121.out_crit_edge

if.end.i.i121.out_crit_edge:                      ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i121
  %call.i.i.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %131, i32 noundef %127) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %131, i32 noundef %127) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool56.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false57:                                  ; preds = %copy_to_user.exit
  %133 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %7, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1588) #16
  %135 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i124 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i124 to ptr
  %cpu_domain.i.i125 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 4
  %137 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i125) #12, !srcloc !117
  %and.i126 = and i32 %137, -13
  %or.i127 = or i32 %and.i126, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i127) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  %138 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %134, i32 -1226833921) #16, !srcloc !121
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #16, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool68.not = icmp eq i32 %138, 0
  br i1 %tobool68.not, label %lor.lhs.false57.if.end71_crit_edge, label %lor.lhs.false57.out_crit_edge

lor.lhs.false57.out_crit_edge:                    ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false57.if.end71_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.end71:                                         ; preds = %lor.lhs.false57.if.end71_crit_edge, %if.end49.if.end71_crit_edge
  %139 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %8, align 4
  br label %out

out:                                              ; preds = %if.end71, %lor.lhs.false57.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.end.i.i121.out_crit_edge, %if.then52.out_crit_edge, %if.end43.out_crit_edge, %if.end37.out_crit_edge, %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge, %if.then11.i.i, %if.then13.out_crit_edge
  %ret.0 = phi i32 [ %140, %if.end71 ], [ -14, %if.then13.out_crit_edge ], [ -1, %BPF_PROG_RUN_ARRAY_CG.exit.out_crit_edge ], [ -14, %if.end37.out_crit_edge ], [ -14, %if.end43.out_crit_edge ], [ -14, %lor.lhs.false57.out_crit_edge ], [ -14, %copy_to_user.exit.out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then52.out_crit_edge ], [ -14, %if.end.i.i121.out_crit_edge ]
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %3, align 4
  %cmp.i140 = icmp eq ptr %142, %buf
  br i1 %cmp.i140, label %out.cleanup_crit_edge, label %if.end.i141

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i141:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef %142) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i141, %out.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %if.end.i141 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cgroup_bpf_run_filter_getsockopt_kern(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr nocapture noundef %optlen, i32 noundef %retval1) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_cg_run_ctx, align 4
  %ctx = alloca %struct.bpf_sockopt_kern, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_cgrp_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx) #16
  %2 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 1
  %3 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 2
  %4 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 3
  %5 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 4
  %6 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 5
  %7 = getelementptr inbounds %struct.bpf_sockopt_kern, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sk, ptr %ctx, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %optval, ptr %2, align 4
  %10 = ptrtoint ptr %optlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %optlen, align 4
  %add.ptr = getelementptr i8, ptr %optval, i32 %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %level, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %optname, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval1, ptr %7, align 4
  %arrayidx = getelementptr %struct.cgroup, ptr %1, i32 0, i32 34, i32 0, i32 16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %19 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx.i) #16
  %20 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %20, align 4, !annotation !99
  tail call void @migrate_disable() #16
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %26 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @BPF_PROG_RUN_ARRAY_CG.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1329, ptr noundef nonnull @.str.5) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %27 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 217
  %31 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %33 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %items.i, align 8
  %tobool16.not34.i = icmp eq ptr %34, null
  br i1 %tobool16.not34.i, label %do.end7.i.while.end.i_crit_edge, label %do.end7.i.while.body.i_crit_edge

do.end7.i.while.body.i_crit_edge:                 ; preds = %do.end7.i
  br label %while.body.i

do.end7.i.while.end.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.while.body.i_crit_edge, %do.end7.i.while.body.i_crit_edge
  %35 = phi ptr [ %101, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %34, %do.end7.i.while.body.i_crit_edge ]
  %item.036.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ %items.i, %do.end7.i.while.body.i_crit_edge ]
  %ret.035.i = phi i32 [ %and.i, %bpf_prog_run.exit.while.body.i_crit_edge ], [ 1, %do.end7.i.while.body.i_crit_edge ]
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %item.036.i, ptr %20, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.6, i32 noundef 613) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__cgroup_bpf_run_filter_getsockopt_kern, %if.then.i.i34)) #16
          to label %if.else.i.i [label %if.then.i.i34], !srcloc !105

if.then.i.i34:                                    ; preds = %while.body.i
  %call3.i.i = call i64 @sched_clock() #16
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 0, i32 9
  %37 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %38(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #16
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 0, i32 7
  %39 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stats9.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i33 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i33 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %48, i32 0, i32 3
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i34.do.body12.i.i.i_crit_edge

if.then.i.i34.do.body12.i.i.i_crit_edge:          ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i34.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %50 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %51 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !107
  %55 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i35 = add i32 %60, ptrtoint (ptr @lockdep_recursion to i32)
  %61 = inttoptr i32 %add.i.i.i.i35 to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !108
  %64 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i7.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool20.not.i.i.i.i = icmp eq i32 %63, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %68 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i36 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %72 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i9.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %75, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %76 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %79, ptrtoint (ptr @hardirqs_enabled to i32)
  %80 = inttoptr i32 %add47.i.i.i.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  %83 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i12.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool54.not.i.i.i.i = icmp eq i32 %82, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %87 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %48, i32 0, i32 3, i32 0, i32 1
  %89 = call ptr @llvm.returnaddress(i32 0) #16
  %90 = ptrtoint ptr %89 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %90) #16
  %91 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %48, align 8
  %inc.i.i.i = add i64 %92, 1
  store i64 %inc.i.i.i, ptr %48, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %48, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #16
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %93 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %94
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %90) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %95 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %96, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_on() #16
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i4.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !103

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #16, !srcloc !114
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 0, i32 9
  %98 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %99(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #16
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %ret.035.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.036.i, i32 1
  %100 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool16.not.i = icmp eq ptr %101, null
  br i1 %tobool16.not.i, label %bpf_prog_run.exit.while.end.i_crit_edge, label %bpf_prog_run.exit.while.body.i_crit_edge

bpf_prog_run.exit.while.body.i_crit_edge:         ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bpf_prog_run.exit.while.end.i_crit_edge:          ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.while.end.i_crit_edge, %do.end7.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %do.end7.i.while.end.i_crit_edge ], [ %and.i, %bpf_prog_run.exit.while.end.i_crit_edge ]
  %102 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i22.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i22.i to ptr
  %task.i23.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i23.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i23.i, align 8
  %bpf_ctx.i24.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 217
  %106 = ptrtoint ptr %bpf_ctx.i24.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %32, ptr %bpf_ctx.i24.i, align 8
  %call.i25.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i25.i, label %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true.i28.i

while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true.i28.i:                              ; preds = %while.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %BPF_PROG_RUN_ARRAY_CG.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %BPF_PROG_RUN_ARRAY_CG.exit

BPF_PROG_RUN_ARRAY_CG.exit:                       ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %land.lhs.true.i28.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge, %while.end.i.BPF_PROG_RUN_ARRAY_CG.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %107 = call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i32.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %110, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @migrate_enable() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool.not, label %BPF_PROG_RUN_ARRAY_CG.exit.cleanup_crit_edge, label %if.end

BPF_PROG_RUN_ARRAY_CG.exit.cleanup_crit_edge:     ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %BPF_PROG_RUN_ARRAY_CG.exit
  %111 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %6, align 4
  %113 = ptrtoint ptr %optlen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp = icmp sgt i32 %112, %114
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp13.not = icmp eq i32 %116, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %retval1)
  %cmp15.not = icmp eq i32 %116, %retval1
  %or.cond = or i1 %cmp13.not, %cmp15.not
  br i1 %or.cond, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp19.not = icmp eq i32 %112, 0
  br i1 %cmp19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %optlen to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %112, ptr %optlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %BPF_PROG_RUN_ARRAY_CG.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %BPF_PROG_RUN_ARRAY_CG.exit.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ %116, %if.then20 ], [ %116, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sysctl_get_name(i64 noundef %ctx, i64 noundef %buf, i64 noundef %buf_len, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  %buf.addr.i = alloca ptr, align 4
  %buf_len.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %buf_len to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_len.addr.i)
  %2 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %buf.addr.i, align 4
  %3 = ptrtoint ptr %buf_len.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv2, ptr %buf_len.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not.i = icmp eq i32 %conv1, 0
  br i1 %tobool.not.i, label %entry.____bpf_sysctl_get_name.exit_crit_edge, label %if.end.i

entry.____bpf_sysctl_get_name.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_get_name.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.then2.i.____bpf_sysctl_get_name.exit_crit_edge, label %if.end5.i

if.then2.i.____bpf_sysctl_get_name.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_get_name.exit

if.end5.i:                                        ; preds = %if.then2.i
  %parent.i = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %call.i = call fastcc i32 @sysctl_cpy_dir(ptr noundef %7, ptr noundef nonnull %buf.addr.i, ptr noundef nonnull %buf_len.addr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = sext i32 %call.i to i64
  br label %____bpf_sysctl_get_name.exit

if.end9.i:                                        ; preds = %if.end5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %tmp_ret.0.i = phi i32 [ 0, %if.end.i.if.end9.i_crit_edge ], [ %call.i, %if.end5.i.if.end9.i_crit_edge ]
  %8 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.addr.i, align 4
  %table.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %buf_len.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_len.addr.i, align 4
  %call10.i = tail call i32 @strscpy(ptr noundef %9, ptr noundef %13, i32 noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  %add.i = select i1 %cmp11.i, i32 0, i32 %tmp_ret.0.i
  %cond.i = add i32 %add.i, %call10.i
  %conv13.i = sext i32 %cond.i to i64
  br label %____bpf_sysctl_get_name.exit

____bpf_sysctl_get_name.exit:                     ; preds = %if.end9.i, %if.then7.i, %if.then2.i.____bpf_sysctl_get_name.exit_crit_edge, %entry.____bpf_sysctl_get_name.exit_crit_edge
  %retval.0.i = phi i64 [ %conv13.i, %if.end9.i ], [ %conv.i, %if.then7.i ], [ -22, %entry.____bpf_sysctl_get_name.exit_crit_edge ], [ -22, %if.then2.i.____bpf_sysctl_get_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_len.addr.i)
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_sysctl_get_current_value(i64 noundef %ctx, i64 noundef %buf, i64 noundef %buf_len, i64 %__ur_1, i64 %__ur_2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %buf_len to i32
  %cur_val.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cur_val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_val.i, align 8
  %cur_len.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %cur_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not.i.i = icmp eq i32 %conv1, 0
  br i1 %tobool.not.i.i, label %entry.____bpf_sysctl_get_current_value.exit_crit_edge, label %if.end.i.i

entry.____bpf_sysctl_get_current_value.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_get_current_value.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool1.not.i.i = icmp eq i32 %conv2, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.____bpf_sysctl_get_current_value.exit_crit_edge, label %if.end3.i.i

if.end.i.i.____bpf_sysctl_get_current_value.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_get_current_value.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %tobool4.not.i.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i.i = icmp eq i32 %5, 0
  %or.cond.i.i = or i1 %tobool4.not.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %____bpf_sysctl_get_current_value.exit

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %7 = tail call i32 @llvm.umin.i32(i32 %conv2, i32 %5) #16
  %8 = call ptr @memcpy(ptr %1, ptr %3, i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv2)
  %cmp8.i.i = icmp ult i32 %5, %conv2
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %5
  %sub.i.i = sub i32 %conv2, %5
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  br label %____bpf_sysctl_get_current_value.exit

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub11.i.i = add i32 %conv2, -1
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %sub11.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i.i, align 1
  br label %____bpf_sysctl_get_current_value.exit

____bpf_sysctl_get_current_value.exit:            ; preds = %if.end10.i.i, %if.then9.i.i, %if.then6.i.i, %if.end.i.i.____bpf_sysctl_get_current_value.exit_crit_edge, %entry.____bpf_sysctl_get_current_value.exit_crit_edge
  %retval.0.i.i = phi i32 [ %5, %if.then9.i.i ], [ -7, %if.end10.i.i ], [ -22, %if.then6.i.i ], [ -22, %entry.____bpf_sysctl_get_current_value.exit_crit_edge ], [ -7, %if.end.i.i.____bpf_sysctl_get_current_value.exit_crit_edge ]
  %conv.i = sext i32 %retval.0.i.i to i64
  ret i64 %conv.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_sysctl_get_new_value(i64 noundef %ctx, i64 noundef %buf, i64 noundef %buf_len, i64 %__ur_1, i64 %__ur_2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %buf_len to i32
  %write.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool1.not.i = icmp eq i32 %conv1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool2.not.i = icmp eq i32 %conv2, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.then.i.____bpf_sysctl_get_new_value.exit_crit_edge, label %if.then3.i

if.then.i.____bpf_sysctl_get_new_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_get_new_value.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %____bpf_sysctl_get_new_value.exit

if.end4.i:                                        ; preds = %entry
  %new_val.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %new_val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %new_val.i, align 8
  %new_len.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 5
  %7 = ptrtoint ptr %new_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not.i.i = icmp eq i32 %conv1, 0
  br i1 %tobool.not.i.i, label %if.end4.i.copy_sysctl_value.exit.i_crit_edge, label %if.end.i.i

if.end4.i.copy_sysctl_value.exit.i_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_sysctl_value.exit.i

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool1.not.i.i = icmp eq i32 %conv2, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.copy_sysctl_value.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.copy_sysctl_value.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_sysctl_value.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %tobool4.not.i.i = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.i.i = icmp eq i32 %8, 0
  %or.cond.i.i = or i1 %tobool4.not.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %copy_sysctl_value.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %10 = tail call i32 @llvm.umin.i32(i32 %conv2, i32 %8) #16
  %11 = call ptr @memcpy(ptr %1, ptr %6, i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv2)
  %cmp8.i.i = icmp ult i32 %8, %conv2
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %8
  %sub.i.i = sub i32 %conv2, %8
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  br label %copy_sysctl_value.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub11.i.i = add i32 %conv2, -1
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %sub11.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx.i.i, align 1
  br label %copy_sysctl_value.exit.i

copy_sysctl_value.exit.i:                         ; preds = %if.end10.i.i, %if.then9.i.i, %if.then6.i.i, %if.end.i.i.copy_sysctl_value.exit.i_crit_edge, %if.end4.i.copy_sysctl_value.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %8, %if.then9.i.i ], [ -7, %if.end10.i.i ], [ -22, %if.then6.i.i ], [ -22, %if.end4.i.copy_sysctl_value.exit.i_crit_edge ], [ -7, %if.end.i.i.copy_sysctl_value.exit.i_crit_edge ]
  %conv.i = sext i32 %retval.0.i.i to i64
  br label %____bpf_sysctl_get_new_value.exit

____bpf_sysctl_get_new_value.exit:                ; preds = %copy_sysctl_value.exit.i, %if.then3.i, %if.then.i.____bpf_sysctl_get_new_value.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %copy_sysctl_value.exit.i ], [ -22, %if.then3.i ], [ -22, %if.then.i.____bpf_sysctl_get_new_value.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_sysctl_set_new_value(i64 noundef %ctx, i64 noundef %buf, i64 noundef %buf_len, i64 %__ur_1, i64 %__ur_2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %buf_len to i32
  %write.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.____bpf_sysctl_set_new_value.exit_crit_edge, label %lor.lhs.false.i

entry.____bpf_sysctl_set_new_value.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_set_new_value.exit

lor.lhs.false.i:                                  ; preds = %entry
  %new_val.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 4
  %4 = ptrtoint ptr %new_val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_val.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.____bpf_sysctl_set_new_value.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.____bpf_sysctl_set_new_value.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_set_new_value.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %new_len.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 5
  %6 = ptrtoint ptr %new_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool5.not.i = icmp eq i32 %conv1, 0
  %or.cond.i = or i1 %tobool5.not.i, %tobool3.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool7.not.i = icmp eq i32 %conv2, 0
  %or.cond21.i = or i1 %tobool7.not.i, %or.cond.i
  br i1 %or.cond21.i, label %lor.lhs.false2.i.____bpf_sysctl_set_new_value.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.____bpf_sysctl_set_new_value.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_set_new_value.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %conv2)
  %cmp.i = icmp ugt i32 %conv2, 4095
  br i1 %cmp.i, label %if.end.i.____bpf_sysctl_set_new_value.exit_crit_edge, label %if.end9.i

if.end.i.____bpf_sysctl_set_new_value.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_sysctl_set_new_value.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memcpy(ptr %5, ptr %1, i32 %conv2)
  %9 = ptrtoint ptr %new_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %new_len.i, align 4
  %new_updated.i = getelementptr inbounds %struct.bpf_sysctl_kern, ptr %0, i32 0, i32 6
  %10 = ptrtoint ptr %new_updated.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %new_updated.i, align 8
  br label %____bpf_sysctl_set_new_value.exit

____bpf_sysctl_set_new_value.exit:                ; preds = %if.end9.i, %if.end.i.____bpf_sysctl_set_new_value.exit_crit_edge, %lor.lhs.false2.i.____bpf_sysctl_set_new_value.exit_crit_edge, %lor.lhs.false.i.____bpf_sysctl_set_new_value.exit_crit_edge, %entry.____bpf_sysctl_set_new_value.exit_crit_edge
  %retval.0.i = phi i64 [ 0, %if.end9.i ], [ -22, %lor.lhs.false2.i.____bpf_sysctl_set_new_value.exit_crit_edge ], [ -22, %lor.lhs.false.i.____bpf_sysctl_set_new_value.exit_crit_edge ], [ -22, %entry.____bpf_sysctl_set_new_value.exit_crit_edge ], [ -7, %if.end.i.____bpf_sysctl_set_new_value.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sysctl_func_proto(i32 noundef %func_id, ptr nocapture noundef readnone %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %func_id, label %sw.default.i [
    i32 105, label %entry.return_crit_edge
    i32 106, label %sw.bb1
    i32 101, label %sw.bb2
    i32 102, label %sw.bb3
    i32 103, label %sw.bb4
    i32 104, label %sw.bb5
    i32 160, label %sw.bb6
    i32 15, label %return.fold.split
    i32 81, label %sw.bb1.i
    i32 80, label %sw.bb2.i
    i32 25, label %sw.bb3.i
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @bpf_base_func_proto(i32 noundef %func_id) #16
  br label %return

return.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %return.fold.split, %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @bpf_ktime_get_coarse_ns_proto, %sw.bb6 ], [ @bpf_sysctl_set_new_value_proto, %sw.bb5 ], [ @bpf_sysctl_get_new_value_proto, %sw.bb4 ], [ @bpf_sysctl_get_current_value_proto, %sw.bb3 ], [ @bpf_sysctl_get_name_proto, %sw.bb2 ], [ @bpf_strtoul_proto, %sw.bb1 ], [ @bpf_strtol_proto, %entry.return_crit_edge ], [ %call.i, %sw.default.i ], [ @bpf_event_output_data_proto, %sw.bb3.i ], [ @bpf_get_current_cgroup_id_proto, %sw.bb2.i ], [ @bpf_get_local_storage_proto, %sw.bb1.i ], [ @bpf_get_current_uid_gid_proto, %return.fold.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @sysctl_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr nocapture noundef readnone %prog, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp slt i32 %off, 0
  %add = add i32 %size, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp1 = icmp ugt i32 %add, 8
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %rem = srem i32 %off, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %0 = zext i32 %off to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %off, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge26
    i32 2, label %if.end.sw.bb_crit_edge27
    i32 3, label %if.end.sw.bb_crit_edge28
    i32 4, label %if.end.sw.bb6_crit_edge
    i32 5, label %if.end.sw.bb6_crit_edge29
    i32 6, label %if.end.sw.bb6_crit_edge30
    i32 7, label %if.end.sw.bb6_crit_edge31
  ]

if.end.sw.bb6_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

if.end.sw.bb6_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

if.end.sw.bb6_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

if.end.sw.bb_crit_edge28:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge27:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge26:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge26, %if.end.sw.bb_crit_edge27, %if.end.sw.bb_crit_edge28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp3.not = icmp eq i32 %type, 1
  br i1 %cmp3.not, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %1 = getelementptr inbounds %struct.bpf_insn_access_aux, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp.i = icmp ult i32 %size, 5
  br i1 %cmp.i, label %land.rhs.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %3 = tail call i32 @llvm.ctpop.i32(i32 %size) #16, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i = icmp ult i32 %3, 2
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge29, %if.end.sw.bb6_crit_edge30, %if.end.sw.bb6_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp7 = icmp eq i32 %type, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb6
  %4 = getelementptr inbounds %struct.bpf_insn_access_aux, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp.i22 = icmp ult i32 %size, 5
  br i1 %cmp.i22, label %land.rhs.i24, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.i24:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.ctpop.i32(i32 %size) #16, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1.i23 = icmp ult i32 %6, 2
  br label %cleanup

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp10 = icmp eq i32 %size, 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.rhs.i24, %if.then8.cleanup_crit_edge, %land.rhs.i, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp10, %if.else ], [ false, %lor.lhs.false2.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ %cmp1.i, %land.rhs.i ], [ false, %if.then8.cleanup_crit_edge ], [ %cmp1.i23, %land.rhs.i24 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sysctl_convert_ctx_access(i32 noundef %type, ptr nocapture noundef readonly %si, ptr noundef %insn_buf, ptr nocapture noundef readnone %prog, ptr nocapture noundef writeonly %target_size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %off = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 2
  %0 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %off, align 2
  %conv = sext i16 %1 to i32
  %2 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %3 = ptrtoint ptr %si to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %si, align 4
  %5 = and i8 %4, 24
  %6 = or i8 %5, 97
  %dst_reg6 = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 1
  %7 = ptrtoint ptr %dst_reg6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %dst_reg6, align 1
  %8 = ptrtoint ptr %target_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %target_size, align 4
  %9 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.load, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %11 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 28, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %12 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb17
  %src_reg19 = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 1
  %13 = ptrtoint ptr %src_reg19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load20 = load i8, ptr %src_reg19, align 1
  %bf.clear21 = and i8 %bf.load20, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %bf.clear21)
  %cmp23 = icmp eq i8 %bf.clear21, 9
  %bf.lshr27.mask = and i8 %bf.load20, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %bf.lshr27.mask)
  %cmp29 = icmp eq i8 %bf.lshr27.mask, -112
  %or.cond = or i1 %cmp23, %cmp29
  %treg.0 = select i1 %or.cond, i32 8, i32 9
  %conv35 = zext i8 %bf.clear21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %treg.0, i32 %conv35)
  %cmp36 = icmp eq i32 %treg.0, %conv35
  br i1 %cmp36, label %if.then.if.then45_crit_edge, label %lor.lhs.false38

if.then.if.then45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

lor.lhs.false38:                                  ; preds = %if.then
  %bf.lshr41 = lshr i8 %bf.load20, 4
  %conv42 = zext i8 %bf.lshr41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %treg.0, i32 %conv42)
  %cmp43 = icmp eq i32 %treg.0, %conv42
  br i1 %cmp43, label %lor.lhs.false38.if.then45_crit_edge, label %lor.lhs.false38.if.end47_crit_edge

lor.lhs.false38.if.end47_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

lor.lhs.false38.if.then45_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false38.if.then45_crit_edge, %if.then.if.then45_crit_edge
  %dec46 = add nsw i32 %treg.0, -1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %lor.lhs.false38.if.end47_crit_edge
  %treg.1 = phi i32 [ %dec46, %if.then45 ], [ %treg.0, %lor.lhs.false38.if.end47_crit_edge ]
  %conv61 = trunc i32 %treg.1 to i8
  %bf.set65 = or i8 %bf.lshr27.mask, %conv61
  %14 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 123, ptr %insn_buf, align 4
  %.compoundliteral49.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %15 = ptrtoint ptr %.compoundliteral49.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set65, ptr %.compoundliteral49.sroa.2.0..sroa_idx, align 1
  %.compoundliteral49.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %16 = ptrtoint ptr %.compoundliteral49.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 40, ptr %.compoundliteral49.sroa.6.0..sroa_idx, align 2
  %.compoundliteral49.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %17 = ptrtoint ptr %.compoundliteral49.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %.compoundliteral49.sroa.7.0..sroa_idx, align 4
  %incdec.ptr68 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %incdec.ptr48 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %bf.shl88 = shl nuw i8 %conv61, 4
  %18 = ptrtoint ptr %src_reg19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load93 = load i8, ptr %src_reg19, align 1
  %bf.lshr94 = lshr i8 %bf.load93, 4
  %bf.set98 = or i8 %bf.lshr94, %bf.shl88
  %19 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 97, ptr %incdec.ptr48, align 4
  %.compoundliteral69.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %20 = ptrtoint ptr %.compoundliteral69.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set98, ptr %.compoundliteral69.sroa.2.0..sroa_idx, align 1
  %.compoundliteral69.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %21 = ptrtoint ptr %.compoundliteral69.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 32, ptr %.compoundliteral69.sroa.6.0..sroa_idx, align 2
  %.compoundliteral69.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %22 = ptrtoint ptr %.compoundliteral69.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %.compoundliteral69.sroa.7.0..sroa_idx, align 4
  %incdec.ptr101 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %bf.load128 = load i8, ptr %src_reg19, align 1
  %bf.clear129 = and i8 %bf.load128, 15
  %bf.set133 = or i8 %bf.clear129, %bf.shl88
  %23 = ptrtoint ptr %incdec.ptr68 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 99, ptr %incdec.ptr68, align 4
  %.compoundliteral102.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %24 = ptrtoint ptr %.compoundliteral102.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set133, ptr %.compoundliteral102.sroa.2.0..sroa_idx, align 1
  %.compoundliteral102.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  %25 = ptrtoint ptr %.compoundliteral102.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %.compoundliteral102.sroa.6.0..sroa_idx, align 2
  %.compoundliteral102.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %26 = ptrtoint ptr %.compoundliteral102.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral102.sroa.7.0..sroa_idx, align 4
  %incdec.ptr137 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4
  %bf.load149 = load i8, ptr %src_reg19, align 1
  %bf.lshr150 = lshr i8 %bf.load149, 4
  %bf.set154 = or i8 %bf.lshr150, %bf.shl88
  %27 = ptrtoint ptr %incdec.ptr101 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 121, ptr %incdec.ptr101, align 4
  br label %if.end257

if.else:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr157 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %dst_reg176 = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 1
  %28 = ptrtoint ptr %dst_reg176 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load177 = load i8, ptr %dst_reg176, align 1
  %29 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 97, ptr %insn_buf, align 4
  %.compoundliteral158.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %30 = ptrtoint ptr %.compoundliteral158.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.load177, ptr %.compoundliteral158.sroa.2.0..sroa_idx, align 1
  %.compoundliteral158.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %31 = ptrtoint ptr %.compoundliteral158.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 32, ptr %.compoundliteral158.sroa.6.0..sroa_idx, align 2
  %.compoundliteral158.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %32 = ptrtoint ptr %.compoundliteral158.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %.compoundliteral158.sroa.7.0..sroa_idx, align 4
  %33 = ptrtoint ptr %si to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %si, align 4
  %35 = and i8 %34, 24
  %36 = xor i8 %35, 16
  %switch.shiftamt = zext i8 %36 to i32
  %switch.downshift = lshr i32 100925447, %switch.shiftamt
  %incdec.ptr226 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %37 = or i8 %35, 97
  %bf.load238 = load i8, ptr %dst_reg176, align 1
  %bf.lshr239 = lshr i8 %bf.load238, 4
  %bf.shl242 = and i8 %bf.load238, -16
  %bf.set252 = or i8 %bf.shl242, %bf.lshr239
  %38 = trunc i32 %switch.downshift to i16
  %conv255 = and i16 %38, 7
  %39 = ptrtoint ptr %incdec.ptr157 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %incdec.ptr157, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.else, %if.end47
  %.sink300 = phi i32 [ 1, %if.else ], [ 3, %if.end47 ]
  %bf.set252.sink = phi i8 [ %bf.set252, %if.else ], [ %bf.set154, %if.end47 ]
  %conv255.sink = phi i16 [ %conv255, %if.else ], [ 40, %if.end47 ]
  %insn.0 = phi ptr [ %incdec.ptr226, %if.else ], [ %incdec.ptr137, %if.end47 ]
  %.compoundliteral227.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 %.sink300, i32 1
  %40 = ptrtoint ptr %.compoundliteral227.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set252.sink, ptr %.compoundliteral227.sroa.2.0..sroa_idx, align 1
  %.compoundliteral227.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 %.sink300, i32 2
  %41 = ptrtoint ptr %.compoundliteral227.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv255.sink, ptr %.compoundliteral227.sroa.6.0..sroa_idx, align 2
  %.compoundliteral227.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 %.sink300, i32 3
  %42 = ptrtoint ptr %.compoundliteral227.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %.compoundliteral227.sroa.7.0..sroa_idx, align 4
  %43 = ptrtoint ptr %target_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %target_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end257, %sw.bb, %entry.sw.epilog_crit_edge
  %insn.1 = phi ptr [ %insn_buf, %entry.sw.epilog_crit_edge ], [ %insn.0, %if.end257 ], [ %incdec.ptr, %sw.bb ]
  %sub.ptr.lhs.cast = ptrtoint ptr %insn.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %insn_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  ret i32 %sub.ptr.div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_netns_cookie_sockopt(i64 noundef %ctx, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not.i = icmp eq i32 %conv, 0
  br i1 %tobool.not.i, label %entry.____bpf_get_netns_cookie_sockopt.exit_crit_edge, label %cond.true.i

entry.____bpf_get_netns_cookie_sockopt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %____bpf_get_netns_cookie_sockopt.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = inttoptr i32 %conv to ptr
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i.i, align 4
  br label %____bpf_get_netns_cookie_sockopt.exit

____bpf_get_netns_cookie_sockopt.exit:            ; preds = %cond.true.i, %entry.____bpf_get_netns_cookie_sockopt.exit_crit_edge
  %cond.i = phi ptr [ %4, %cond.true.i ], [ @init_net, %entry.____bpf_get_netns_cookie_sockopt.exit_crit_edge ]
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %cond.i, i32 0, i32 47
  %5 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %net_cookie.i, align 128
  ret i64 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cg_sockopt_func_proto(i32 noundef %func_id, ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %func_id, label %sw.default.i [
    i32 122, label %entry.return_crit_edge
    i32 107, label %sw.bb1
    i32 108, label %sw.bb2
    i32 49, label %sw.bb3
    i32 57, label %sw.bb4
    i32 96, label %sw.bb9
    i32 15, label %return.fold.split
    i32 81, label %sw.bb1.i
    i32 80, label %sw.bb2.i
    i32 25, label %sw.bb3.i
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %1 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %2)
  %cmp = icmp eq i32 %2, 22
  %bpf_sk_setsockopt_proto. = select i1 %cmp, ptr @bpf_sk_setsockopt_proto, ptr null
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %expected_attach_type5 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %3 = ptrtoint ptr %expected_attach_type5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expected_attach_type5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %4)
  %cmp6 = icmp eq i32 %4, 22
  %bpf_sk_getsockopt_proto. = select i1 %cmp6, ptr @bpf_sk_getsockopt_proto, ptr null
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @bpf_base_func_proto(i32 noundef %func_id) #16
  br label %return

return.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %return.fold.split, %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb9, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @bpf_tcp_sock_proto, %sw.bb9 ], [ @bpf_sk_storage_delete_proto, %sw.bb2 ], [ @bpf_sk_storage_get_proto, %sw.bb1 ], [ @bpf_get_netns_cookie_sockopt_proto, %entry.return_crit_edge ], [ %bpf_sk_setsockopt_proto., %sw.bb3 ], [ %bpf_sk_getsockopt_proto., %sw.bb4 ], [ %call.i, %sw.default.i ], [ @bpf_event_output_data_proto, %sw.bb3.i ], [ @bpf_get_current_cgroup_id_proto, %sw.bb2.i ], [ @bpf_get_local_storage_proto, %sw.bb1.i ], [ @bpf_get_current_uid_gid_proto, %return.fold.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cg_sockopt_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr nocapture noundef readonly %prog, ptr nocapture noundef writeonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %off)
  %cmp1 = icmp ugt i32 %off, 39
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = srem i32 %off, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp5 = icmp eq i32 %type, 2
  br i1 %cmp5, label %if.then6, label %if.end20

if.then6:                                         ; preds = %if.end4
  %0 = add nsw i32 %off, -24
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %if.then6.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.then6.sw.bb12_crit_edge
    i32 0, label %if.then6.sw.bb12_crit_edge61
    i32 2, label %sw.bb18
  ]

if.then6.sw.bb12_crit_edge61:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12

if.then6.sw.bb12_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp7.not = icmp eq i32 %size, 4
  br i1 %cmp7.not, label %if.end9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %3 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp10 = icmp eq i32 %4, 21
  br label %cleanup

sw.bb12:                                          ; preds = %if.then6.sw.bb12_crit_edge, %if.then6.sw.bb12_crit_edge61
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp13.not = icmp eq i32 %size, 4
  br i1 %cmp13.not, label %if.end15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #18
  %expected_attach_type16 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %5 = ptrtoint ptr %expected_attach_type16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expected_attach_type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp17 = icmp eq i32 %6, 22
  br label %cleanup

sw.bb18:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp19 = icmp eq i32 %size, 4
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  %7 = tail call i32 @llvm.fshl.i32(i32 %off, i32 %off, i32 30)
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %sw.default41 [
    i32 0, label %sw.bb21
    i32 2, label %sw.bb25
    i32 4, label %sw.bb30
    i32 9, label %sw.bb35
  ]

sw.bb21:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp22.not = icmp eq i32 %size, 8
  br i1 %cmp22.not, label %sw.bb21.sw.epilog.sink.split_crit_edge, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb21.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp26.not = icmp eq i32 %size, 8
  br i1 %cmp26.not, label %sw.bb25.sw.epilog.sink.split_crit_edge, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb25.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp31.not = icmp eq i32 %size, 8
  br i1 %cmp31.not, label %sw.bb30.sw.epilog.sink.split_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb30.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb35:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp36.not = icmp eq i32 %size, 4
  br i1 %cmp36.not, label %if.end38, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end38:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #18
  %expected_attach_type39 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %9 = ptrtoint ptr %expected_attach_type39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expected_attach_type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %10)
  %cmp40 = icmp eq i32 %10, 21
  br label %cleanup

sw.default41:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp42.not = icmp eq i32 %size, 4
  br i1 %cmp42.not, label %sw.default41.sw.epilog_crit_edge, label %sw.default41.cleanup_crit_edge

sw.default41.cleanup_crit_edge:                   ; preds = %sw.default41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default41.sw.epilog_crit_edge:                 ; preds = %sw.default41
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb30.sw.epilog.sink.split_crit_edge, %sw.bb25.sw.epilog.sink.split_crit_edge, %sw.bb21.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 11, %sw.bb21.sw.epilog.sink.split_crit_edge ], [ 8, %sw.bb25.sw.epilog.sink.split_crit_edge ], [ 9, %sw.bb30.sw.epilog.sink.split_crit_edge ]
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %info, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default41.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default41.cleanup_crit_edge, %if.end38, %sw.bb35.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb18, %if.end15, %sw.bb12.cleanup_crit_edge, %if.end9, %sw.bb.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp19, %sw.bb18 ], [ %cmp17, %if.end15 ], [ %cmp10, %if.end9 ], [ true, %sw.epilog ], [ %cmp40, %if.end38 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb12.cleanup_crit_edge ], [ false, %if.then6.cleanup_crit_edge ], [ false, %sw.bb21.cleanup_crit_edge ], [ false, %sw.bb25.cleanup_crit_edge ], [ false, %sw.bb30.cleanup_crit_edge ], [ false, %sw.bb35.cleanup_crit_edge ], [ false, %sw.default41.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cg_sockopt_get_prologue(ptr nocapture noundef readnone %insn_buf, i1 noundef zeroext %direct_write, ptr nocapture noundef readnone %prog) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cg_sockopt_convert_ctx_access(i32 noundef %type, ptr nocapture noundef readonly %si, ptr noundef %insn_buf, ptr nocapture noundef readnone %prog, ptr nocapture noundef readnone %target_size) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %off = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 2
  %0 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %off, align 2
  %conv = sext i16 %1 to i32
  %2 = tail call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 30)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 6, label %sw.bb15
    i32 7, label %sw.bb94
    i32 8, label %sw.bb174
    i32 9, label %sw.bb254
    i32 2, label %do.end347
    i32 4, label %do.end385
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp16 = icmp eq i32 %type, 2
  %. = select i1 %cmp16, i8 99, i8 97
  br label %sw.epilog.sink.split

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp95 = icmp eq i32 %type, 2
  %.459 = select i1 %cmp95, i8 99, i8 97
  br label %sw.epilog.sink.split

sw.bb174:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp175 = icmp eq i32 %type, 2
  %.460 = select i1 %cmp175, i8 99, i8 97
  br label %sw.epilog.sink.split

sw.bb254:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp255 = icmp eq i32 %type, 2
  %.461 = select i1 %cmp255, i8 99, i8 97
  br label %sw.epilog.sink.split

do.end347:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

do.end385:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end385, %do.end347, %sw.bb254, %sw.bb174, %sw.bb94, %sw.bb15, %entry.sw.epilog.sink.split_crit_edge
  %.sink458 = phi i8 [ 97, %do.end385 ], [ 97, %do.end347 ], [ %., %sw.bb15 ], [ %.459, %sw.bb94 ], [ %.460, %sw.bb174 ], [ %.461, %sw.bb254 ], [ 97, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 8, %do.end385 ], [ 4, %do.end347 ], [ 12, %sw.bb15 ], [ 16, %sw.bb94 ], [ 20, %sw.bb174 ], [ 24, %sw.bb254 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %insn.0.ph = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %bf.load278.sink.in = getelementptr inbounds %struct.bpf_insn, ptr %si, i32 0, i32 1
  %4 = ptrtoint ptr %bf.load278.sink.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load278.sink = load i8, ptr %bf.load278.sink.in, align 1
  %5 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink458, ptr %insn_buf, align 4
  %.compoundliteral259.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %6 = ptrtoint ptr %.compoundliteral259.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.load278.sink, ptr %.compoundliteral259.sroa.2.0..sroa_idx, align 1
  %.compoundliteral259.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %7 = ptrtoint ptr %.compoundliteral259.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink, ptr %.compoundliteral259.sroa.6.0..sroa_idx, align 2
  %.compoundliteral259.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %8 = ptrtoint ptr %.compoundliteral259.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %.compoundliteral259.sroa.7.0..sroa_idx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %insn.0 = phi ptr [ %insn_buf, %entry.sw.epilog_crit_edge ], [ %insn.0.ph, %sw.epilog.sink.split ]
  %sub.ptr.lhs.cast = ptrtoint ptr %insn.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %insn_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  ret i32 %sub.ptr.div
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_get(ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !97

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, 1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !103

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !114
  br label %if.end38.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !122
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i3.i, label %if.end38.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end38.i.percpu_ref_get_many.exit_crit_edge:    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_get_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end38.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_get_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_get_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %percpu_ref_get_many.exit

percpu_ref_get_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, %if.end38.i.percpu_ref_get_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %20 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i10.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_bpf_release(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf = getelementptr i8, ptr %work, i32 -388
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %progs3 = getelementptr i8, ptr %work, i32 -296
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry
  %atype.0101 = phi i32 [ 0, %entry ], [ %inc, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.list_head], ptr %progs3, i32 0, i32 %atype.0101
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp13.not97 = icmp eq ptr %1, %arrayidx
  br i1 %cmp13.not97, label %for.body.do.body_crit_edge, label %for.body14.lr.ph

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body14.lr.ph:                                 ; preds = %for.body
  %arrayidx21 = getelementptr [23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 %atype.0101
  br label %for.body14

for.body14:                                       ; preds = %if.end20.for.body14_crit_edge, %for.body14.lr.ph
  %pl.098 = phi ptr [ %1, %for.body14.lr.ph ], [ %pltmp.0100, %if.end20.for.body14_crit_edge ]
  %2 = ptrtoint ptr %pl.098 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pltmp.0100 = load ptr, ptr %pl.098, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pl.098) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body14.list_del.exit_crit_edge

for.body14.list_del.exit_crit_edge:               ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pl.098, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pl.098 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pl.098, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body14.list_del.exit_crit_edge
  %9 = ptrtoint ptr %pl.098 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pl.098, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pl.098, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %prog = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.098, i32 0, i32 1
  %11 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prog, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bpf_prog_put(ptr noundef nonnull %12) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %link = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.098, i32 0, i32 2
  %13 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end.if.end20_crit_edge, label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then18:                                        ; preds = %if.end
  %cgroup.i = getelementptr inbounds %struct.bpf_cgroup_link, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %cgroup.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cgroup.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then18.bpf_cgroup_link_auto_detach.exit_crit_edge

if.then18.bpf_cgroup_link_auto_detach.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %bpf_cgroup_link_auto_detach.exit

if.then.i.i.i:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i.i) #16
  br label %bpf_cgroup_link_auto_detach.exit

bpf_cgroup_link_auto_detach.exit:                 ; preds = %if.then.i.i.i, %if.then18.bpf_cgroup_link_auto_detach.exit_crit_edge
  %19 = ptrtoint ptr %cgroup.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cgroup.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %bpf_cgroup_link_auto_detach.exit, %if.end.if.end20_crit_edge
  tail call void @kfree(ptr noundef %pl.098) #16
  tail call void @static_key_slow_dec(ptr noundef %arrayidx21) #16
  %cmp13.not = icmp eq ptr %pltmp.0100, %arrayidx
  br i1 %cmp13.not, label %if.end20.do.body_crit_edge, label %if.end20.for.body14_crit_edge

if.end20.for.body14_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %for.body.do.body_crit_edge
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true30

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b93 = load i1, ptr @cgroup_bpf_release.__warned, align 1
  br i1 %.b93, label %land.lhs.true30.do.end_crit_edge, label %if.then32

land.lhs.true30.do.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cgroup_bpf_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.2) #16
  br label %do.end

do.end:                                           ; preds = %if.then32, %land.lhs.true30.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx36 = getelementptr [23 x ptr], ptr %bpf, i32 0, i32 %atype.0101
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx36, align 4
  tail call void @bpf_prog_array_free(ptr noundef %21) #16
  %inc = add nuw nsw i32 %atype.0101, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end38, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end38:                                        ; preds = %do.end
  %storages1 = getelementptr i8, ptr %work, i32 -20
  %22 = ptrtoint ptr %storages1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %storages1, align 4
  %cmp49.not103 = icmp eq ptr %23, %storages1
  br i1 %cmp49.not103, label %for.end38.for.end58_crit_edge, label %for.end38.for.body51_crit_edge

for.end38.for.body51_crit_edge:                   ; preds = %for.end38
  br label %for.body51

for.end38.for.end58_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end58

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.end38.for.body51_crit_edge
  %.pn.in104 = phi ptr [ %.pn, %for.body51.for.body51_crit_edge ], [ %23, %for.end38.for.body51_crit_edge ]
  %storage.0 = getelementptr i8, ptr %.pn.in104, i32 -32
  %24 = ptrtoint ptr %.pn.in104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in104, align 8
  tail call void @bpf_cgroup_storage_unlink(ptr noundef %storage.0) #16
  tail call void @bpf_cgroup_storage_free(ptr noundef %storage.0) #16
  %cmp49.not = icmp eq ptr %.pn, %storages1
  br i1 %cmp49.not, label %for.body51.for.end58_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body51

for.body51.for.end58_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end58

for.end58:                                        ; preds = %for.body51.for.end58_crit_edge, %for.end38.for.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %parent.i = getelementptr i8, ptr %work, i32 -1820
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0105 = load ptr, ptr %parent.i, align 8
  %tobool61.not106 = icmp eq ptr %p.0105, null
  br i1 %tobool61.not106, label %for.end58.for.end65_crit_edge, label %for.end58.for.body62_crit_edge

for.end58.for.body62_crit_edge:                   ; preds = %for.end58
  br label %for.body62

for.end58.for.end65_crit_edge:                    ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.end58.for.body62_crit_edge
  %p.0107 = phi ptr [ %p.0, %for.body62.for.body62_crit_edge ], [ %p.0105, %for.end58.for.body62_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.cgroup, ptr %p.0107, i32 0, i32 34, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #16
  %parent.i95 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.0107, i32 0, i32 12
  %26 = ptrtoint ptr %parent.i95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %p.0 = load ptr, ptr %parent.i95, align 8
  %tobool61.not = icmp eq ptr %p.0, null
  br i1 %tobool61.not, label %for.body62.for.end65_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body62

for.body62.for.end65_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.end65:                                        ; preds = %for.body62.for.end65_crit_edge, %for.end58.for.end65_crit_edge
  %refcnt = getelementptr i8, ptr %work, i32 -8
  tail call void @percpu_ref_exit(ptr noundef %refcnt) #16
  %flags.i.i = getelementptr i8, ptr %work, i32 -1936
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.end65.cgroup_put.exit_crit_edge

for.end65.cgroup_put.exit_crit_edge:              ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cgroup_put.exit

if.then.i.i:                                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr i8, ptr %work, i32 -1972
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cgroup_put.exit

cgroup_put.exit:                                  ; preds = %if.then.i.i, %for.end65.cgroup_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_cgroup_storage_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_cgroup_storage_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_array_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !97

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !113
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !103

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !114
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !103

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #16
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  %24 = tail call i32 @llvm.read_register.i32(metadata !86) #16
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_effective_progs(ptr noundef %cgrp, i32 noundef %atype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cgrp) #16
  %tobool.not93 = icmp eq ptr %call, null
  br i1 %tobool.not93, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %css.094 = phi ptr [ %call8, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %refcnt = getelementptr inbounds %struct.cgroup, ptr %css.094, i32 0, i32 34, i32 5
  %call1 = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %refcnt) #16
  br i1 %call1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inactive = getelementptr inbounds %struct.cgroup, ptr %css.094, i32 0, i32 34, i32 4
  %call3 = tail call fastcc i32 @compute_effective_progs(ptr noundef nonnull %css.094, i32 noundef %atype, ptr noundef %inactive)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %cleanup45

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call8 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.094, ptr noundef %cgrp) #16
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call10 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cgrp) #16
  %tobool12.not98 = icmp eq ptr %call10, null
  br i1 %tobool12.not98, label %for.end.cleanup63_crit_edge, label %for.end.for.body13_crit_edge

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.end.cleanup63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

for.body13:                                       ; preds = %cleanup38.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %css.199 = phi ptr [ %call43, %cleanup38.for.body13_crit_edge ], [ %call10, %for.end.for.body13_crit_edge ]
  %refcnt19 = getelementptr inbounds %struct.cgroup, ptr %css.199, i32 0, i32 34, i32 5
  %call20 = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %refcnt19) #16
  %inactive23 = getelementptr inbounds %struct.cgroup, ptr %css.199, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %inactive23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inactive23, align 8
  br i1 %call20, label %if.then21, label %if.end33

if.then21:                                        ; preds = %for.body13
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.then21.cleanup38_crit_edge, label %if.then27, !prof !97

if.then21.cleanup38_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup38

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bpf_prog_array_free(ptr noundef nonnull %1) #16
  br label %cleanup38.sink.split

if.end33:                                         ; preds = %for.body13
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end33.activate_effective_progs.exit_crit_edge

if.end33.activate_effective_progs.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

land.lhs.true.i:                                  ; preds = %if.end33
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.activate_effective_progs.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.activate_effective_progs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b51.i = load i1, ptr @activate_effective_progs.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true3.i.activate_effective_progs.exit_crit_edge, label %if.then.i

land.lhs.true3.i.activate_effective_progs.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %activate_effective_progs.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @activate_effective_progs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.2) #16
  br label %activate_effective_progs.exit

activate_effective_progs.exit:                    ; preds = %if.then.i, %land.lhs.true3.i.activate_effective_progs.exit_crit_edge, %land.lhs.true.i.activate_effective_progs.exit_crit_edge, %if.end33.activate_effective_progs.exit_crit_edge
  %bpf.i = getelementptr inbounds %struct.cgroup, ptr %css.199, i32 0, i32 34
  %arrayidx.i = getelementptr [23 x ptr], ptr %bpf.i, i32 0, i32 %atype
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !96
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %arrayidx.i, align 4
  tail call void @bpf_prog_array_free(ptr noundef %3) #16
  br label %cleanup38.sink.split

cleanup38.sink.split:                             ; preds = %activate_effective_progs.exit, %if.then27
  %5 = ptrtoint ptr %inactive23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %inactive23, align 8
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.sink.split, %if.then21.cleanup38_crit_edge
  %call43 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.199, ptr noundef %cgrp) #16
  %tobool12.not = icmp eq ptr %call43, null
  br i1 %tobool12.not, label %cleanup38.cleanup63_crit_edge, label %cleanup38.for.body13_crit_edge

cleanup38.for.body13_crit_edge:                   ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body13

cleanup38.cleanup63_crit_edge:                    ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

cleanup45:                                        ; preds = %if.end
  %call47 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cgrp) #16
  %tobool49.not96 = icmp eq ptr %call47, null
  br i1 %tobool49.not96, label %cleanup45.cleanup63_crit_edge, label %cleanup45.for.body50_crit_edge

cleanup45.for.body50_crit_edge:                   ; preds = %cleanup45
  br label %for.body50

cleanup45.cleanup63_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %cleanup45.for.body50_crit_edge
  %css.297 = phi ptr [ %call61, %for.body50.for.body50_crit_edge ], [ %call47, %cleanup45.for.body50_crit_edge ]
  %inactive56 = getelementptr inbounds %struct.cgroup, ptr %css.297, i32 0, i32 34, i32 4
  %6 = ptrtoint ptr %inactive56 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inactive56, align 8
  tail call void @bpf_prog_array_free(ptr noundef %7) #16
  %8 = ptrtoint ptr %inactive56 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inactive56, align 8
  %call61 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.297, ptr noundef %cgrp) #16
  %tobool49.not = icmp eq ptr %call61, null
  br i1 %tobool49.not, label %for.body50.cleanup63_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body50

for.body50.cleanup63_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

cleanup63:                                        ; preds = %for.body50.cleanup63_crit_edge, %cleanup45.cleanup63_crit_edge, %cleanup38.cleanup63_crit_edge, %for.end.cleanup63_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup63_crit_edge ], [ %call3, %cleanup45.cleanup63_crit_edge ], [ 0, %cleanup38.cleanup63_crit_edge ], [ %call3, %for.body50.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_storage_lookup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_cgroup_storage_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_cgroup_storage_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cgroup_bpf_detach(ptr noundef %cgrp, ptr noundef readnone %prog, ptr noundef %link, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %type, label %entry.cleanup34_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge77
    i32 2, label %entry.if.end_crit_edge78
    i32 3, label %entry.if.end_crit_edge79
    i32 6, label %sw.bb4.i
    i32 8, label %sw.bb5.i
    i32 9, label %sw.bb6.i
    i32 10, label %sw.bb7.i
    i32 11, label %sw.bb8.i
    i32 12, label %sw.bb9.i
    i32 13, label %sw.bb10.i
    i32 14, label %sw.bb11.i
    i32 15, label %sw.bb12.i
    i32 18, label %sw.bb13.i
    i32 19, label %sw.bb14.i
    i32 20, label %sw.bb15.i
    i32 21, label %sw.bb16.i
    i32 22, label %sw.bb17.i
    i32 29, label %sw.bb18.i
    i32 30, label %sw.bb19.i
    i32 31, label %sw.bb20.i
    i32 32, label %sw.bb21.i
    i32 34, label %sw.bb22.i
  ]

entry.if.end_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge77, %entry.if.end_crit_edge78, %entry.if.end_crit_edge79
  %retval.0.i.ph = phi i32 [ %type, %entry.if.end_crit_edge ], [ 4, %sw.bb4.i ], [ 5, %sw.bb5.i ], [ 6, %sw.bb6.i ], [ 7, %sw.bb7.i ], [ 8, %sw.bb8.i ], [ 9, %sw.bb9.i ], [ 10, %sw.bb10.i ], [ 11, %sw.bb11.i ], [ 12, %sw.bb12.i ], [ 13, %sw.bb13.i ], [ 14, %sw.bb14.i ], [ 15, %sw.bb15.i ], [ 16, %sw.bb16.i ], [ 17, %sw.bb17.i ], [ 18, %sw.bb18.i ], [ 19, %sw.bb19.i ], [ 20, %sw.bb20.i ], [ 21, %sw.bb21.i ], [ 22, %sw.bb22.i ], [ %type, %entry.if.end_crit_edge77 ], [ %type, %entry.if.end_crit_edge78 ], [ %type, %entry.if.end_crit_edge79 ]
  %arrayidx = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 1, i32 %retval.0.i.ph
  %arrayidx4 = getelementptr %struct.cgroup, ptr %cgrp, i32 0, i32 34, i32 2, i32 %retval.0.i.ph
  %tobool.not = icmp eq ptr %prog, null
  %tobool5.not = icmp eq ptr %link, null
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup34_crit_edge

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %if.end7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %4, %arrayidx
  br i1 %cmp.i.not.i, label %if.then.i.if.then11_crit_edge, label %if.then.i.find_detach_entry.exit_crit_edge

if.then.i.find_detach_entry.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_detach_entry.exit

if.then.i.if.then11_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.end4.i:                                        ; preds = %if.end7
  %or.cond.i = and i1 %tobool.not, %tobool5.not
  br i1 %or.cond.i, label %if.end4.i.if.then11_crit_edge, label %for.cond.preheader.i

if.end4.i.if.then11_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

for.cond.preheader.i:                             ; preds = %if.end4.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %pl.036.i = load ptr, ptr %arrayidx, align 4
  %cmp.not37.i = icmp eq ptr %pl.036.i, %arrayidx
  br i1 %cmp.not37.i, label %for.cond.preheader.i.if.then11_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then11_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pl.038.i = phi ptr [ %pl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %pl.036.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %prog14.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.038.i, i32 0, i32 1
  %6 = ptrtoint ptr %prog14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog14.i, align 4
  %cmp15.i = icmp eq ptr %7, %prog
  br i1 %cmp15.i, label %land.lhs.true16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %for.body.i
  %link17.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.038.i, i32 0, i32 2
  %8 = ptrtoint ptr %link17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link17.i, align 4
  %cmp18.i = icmp eq ptr %9, %link
  br i1 %cmp18.i, label %land.lhs.true16.i.find_detach_entry.exit_crit_edge, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true16.i.find_detach_entry.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_detach_entry.exit

for.inc.i:                                        ; preds = %land.lhs.true16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %pl.038.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pl.0.i = load ptr, ptr %pl.038.i, align 4
  %cmp.not.i = icmp eq ptr %pl.0.i, %arrayidx
  br i1 %cmp.not.i, label %for.inc.i.if.then11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.then11_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

find_detach_entry.exit:                           ; preds = %land.lhs.true16.i.find_detach_entry.exit_crit_edge, %if.then.i.find_detach_entry.exit_crit_edge
  %retval.0.i63 = phi ptr [ %4, %if.then.i.find_detach_entry.exit_crit_edge ], [ %pl.038.i, %land.lhs.true16.i.find_detach_entry.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_detach_entry.exit.if.then11_crit_edge, label %if.end13

find_detach_entry.exit.if.then11_crit_edge:       ; preds = %find_detach_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.then11:                                        ; preds = %find_detach_entry.exit.if.then11_crit_edge, %for.inc.i.if.then11_crit_edge, %for.cond.preheader.i.if.then11_crit_edge, %if.end4.i.if.then11_crit_edge, %if.then.i.if.then11_crit_edge
  %retval.0.i6370 = phi ptr [ %retval.0.i63, %find_detach_entry.exit.if.then11_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then11_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end4.i.if.then11_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then.i.if.then11_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then11_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i6370 to i32
  br label %cleanup34

if.end13:                                         ; preds = %find_detach_entry.exit
  %prog14 = getelementptr inbounds %struct.bpf_prog_list, ptr %retval.0.i63, i32 0, i32 1
  %12 = ptrtoint ptr %prog14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prog14, align 4
  store ptr null, ptr %prog14, align 4
  %link16 = getelementptr inbounds %struct.bpf_prog_list, ptr %retval.0.i63, i32 0, i32 2
  %14 = ptrtoint ptr %link16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %link16, align 4
  %call17 = tail call fastcc i32 @update_effective_progs(ptr noundef %cgrp, i32 noundef %retval.0.i.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i63) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del.exit_crit_edge

if.end20.list_del.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i63, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %retval.0.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end20.list_del.exit_crit_edge
  %21 = ptrtoint ptr %retval.0.i63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i63, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i63, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %retval.0.i63) #16
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i64.not = icmp eq ptr %24, %arrayidx
  br i1 %cmp.i64.not, label %if.then23, label %list_del.exit.if.end27_crit_edge

list_del.exit.if.end27_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx4, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %list_del.exit.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %13, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bpf_prog_put(ptr noundef nonnull %13) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %arrayidx31 = getelementptr [23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 %retval.0.i.ph
  tail call void @static_key_slow_dec(ptr noundef %arrayidx31) #16
  br label %cleanup34

cleanup:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %prog14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %13, ptr %prog14, align 4
  %27 = ptrtoint ptr %link16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %link, ptr %link16, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup, %if.end30, %if.then11, %if.end.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %11, %if.then11 ], [ %call17, %cleanup ], [ 0, %if.end30 ], [ -22, %if.end.cleanup34_crit_edge ], [ -22, %entry.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_cgroup_link_release(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cgroup = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgroup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %2 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cgroup, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %call = tail call fastcc i32 @__cgroup_bpf_detach(ptr noundef nonnull %3, ptr noundef null, ptr noundef %link, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end4.if.end21_crit_edge, label %do.end, !prof !97

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef null) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end4.if.end21_crit_edge
  %6 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cgroup, align 8
  store ptr null, ptr %cgroup, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end21.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_cgroup_link_dealloc(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %link) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_cgroup_link_detach(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_cgroup_link_release(ptr noundef %link)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_bpf_replace(ptr noundef %link, ptr noundef %new_prog, ptr noundef readnone %old_prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %cgroup = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgroup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %old_prog, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %prog = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %cmp.not = icmp eq ptr %3, %old_prog
  br i1 %cmp.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %type.i = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %if.end3.out_unlock_crit_edge [
    i32 0, label %if.end3.if.end.i_crit_edge
    i32 1, label %if.end3.if.end.i_crit_edge15
    i32 2, label %if.end3.if.end.i_crit_edge16
    i32 3, label %if.end3.if.end.i_crit_edge17
    i32 6, label %sw.bb4.i.i
    i32 8, label %sw.bb5.i.i
    i32 9, label %sw.bb6.i.i
    i32 10, label %sw.bb7.i.i
    i32 11, label %sw.bb8.i.i
    i32 12, label %sw.bb9.i.i
    i32 13, label %sw.bb10.i.i
    i32 14, label %sw.bb11.i.i
    i32 15, label %sw.bb12.i.i
    i32 18, label %sw.bb13.i.i
    i32 19, label %sw.bb14.i.i
    i32 20, label %sw.bb15.i.i
    i32 21, label %sw.bb16.i.i
    i32 22, label %sw.bb17.i.i
    i32 29, label %sw.bb18.i.i
    i32 30, label %sw.bb19.i.i
    i32 31, label %sw.bb20.i.i
    i32 32, label %sw.bb21.i.i
    i32 34, label %sw.bb22.i.i
  ]

if.end3.if.end.i_crit_edge17:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end3.if.end.i_crit_edge16:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end3.if.end.i_crit_edge15:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

sw.bb4.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb5.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb6.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb7.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb8.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb9.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb10.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb11.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb12.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb13.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb14.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb15.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb16.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb17.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb18.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb19.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb20.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb21.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb22.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %if.end3.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge15, %if.end3.if.end.i_crit_edge16, %if.end3.if.end.i_crit_edge17
  %retval.0.i.ph.i = phi i32 [ %5, %if.end3.if.end.i_crit_edge ], [ 4, %sw.bb4.i.i ], [ 5, %sw.bb5.i.i ], [ 6, %sw.bb6.i.i ], [ 7, %sw.bb7.i.i ], [ 8, %sw.bb8.i.i ], [ 9, %sw.bb9.i.i ], [ 10, %sw.bb10.i.i ], [ 11, %sw.bb11.i.i ], [ 12, %sw.bb12.i.i ], [ 13, %sw.bb13.i.i ], [ 14, %sw.bb14.i.i ], [ 15, %sw.bb15.i.i ], [ 16, %sw.bb16.i.i ], [ 17, %sw.bb17.i.i ], [ 18, %sw.bb18.i.i ], [ 19, %sw.bb19.i.i ], [ 20, %sw.bb20.i.i ], [ 21, %sw.bb21.i.i ], [ 22, %sw.bb22.i.i ], [ %5, %if.end3.if.end.i_crit_edge15 ], [ %5, %if.end3.if.end.i_crit_edge16 ], [ %5, %if.end3.if.end.i_crit_edge17 ]
  %arrayidx.i = getelementptr %struct.cgroup, ptr %1, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i
  %prog.i = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %7 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prog.i, align 4
  %type3.i = getelementptr inbounds %struct.bpf_prog, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type3.i, align 4
  %type4.i = getelementptr inbounds %struct.bpf_prog, ptr %new_prog, i32 0, i32 2
  %11 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5.not.i = icmp eq i32 %10, %12
  br i1 %cmp5.not.i, label %if.end.i.for.cond.i_crit_edge, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %pl.0.in.i = phi ptr [ %pl.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %if.end.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %pl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pl.0.i = load ptr, ptr %pl.0.in.i, align 4
  %cmp8.not.i = icmp eq ptr %pl.0.i, %arrayidx.i
  br i1 %cmp8.not.i, label %for.cond.i.out_unlock_crit_edge, label %for.body.i

for.cond.i.out_unlock_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

for.body.i:                                       ; preds = %for.cond.i
  %link9.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %link9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link9.i, align 4
  %cmp10.i = icmp eq ptr %15, %link
  br i1 %cmp10.i, label %if.end19.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end19.i:                                       ; preds = %for.body.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prog.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !126
  %16 = ptrtoint ptr %new_prog to i32
  tail call void @llvm.prefetch.p0(ptr %prog.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %16, ptr %prog.i) #16, !srcloc !127
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  %18 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !128
  %call.i54.i = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef nonnull %1) #16
  %tobool.not114.i.i = icmp eq ptr %call.i54.i, null
  br i1 %tobool.not114.i.i, label %if.end19.i.replace_effective_prog.exit.i_crit_edge, label %if.end19.i.for.body.i.i_crit_edge

if.end19.i.for.body.i.i_crit_edge:                ; preds = %if.end19.i
  br label %for.body.i.i

if.end19.i.replace_effective_prog.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %replace_effective_prog.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end19.i.for.body.i.i_crit_edge
  %css.0115.i.i = phi ptr [ %call76.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %call.i54.i, %if.end19.i.for.body.i.i_crit_edge ]
  %bpf.i.i = getelementptr inbounds %struct.cgroup, ptr %css.0115.i.i, i32 0, i32 34
  %refcnt.i.i = getelementptr inbounds %struct.cgroup, ptr %css.0115.i.i, i32 0, i32 34, i32 5
  %call1.i.i = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %refcnt.i.i) #16
  br i1 %call1.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %for.body.i.i.for.body4.i.i_crit_edge

for.body.i.i.for.body4.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body4.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

for.body4.i.i:                                    ; preds = %for.inc31.i.i.for.body4.i.i_crit_edge, %for.body.i.i.for.body4.i.i_crit_edge
  %cg.0112.i.i = phi ptr [ %32, %for.inc31.i.i.for.body4.i.i_crit_edge ], [ %css.0115.i.i, %for.body.i.i.for.body4.i.i_crit_edge ]
  %pos.0111.i.i = phi i32 [ %pos.3.i.i, %for.inc31.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i.i.for.body4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0111.i.i)
  %tobool5.not.i.i = icmp eq i32 %pos.0111.i.i, 0
  br i1 %tobool5.not.i.i, label %for.body4.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

for.body4.i.i.if.end9.i.i_crit_edge:              ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %for.body4.i.i
  %arrayidx.i.i = getelementptr %struct.cgroup, ptr %cg.0112.i.i, i32 0, i32 34, i32 2, i32 %retval.0.i.ph.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.for.inc31.i.i_crit_edge, label %land.lhs.true.i.i.if.end9.i.i_crit_edge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i.i

land.lhs.true.i.i.for.inc31.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc31.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %for.body4.i.i.if.end9.i.i_crit_edge
  %arrayidx12.i.i = getelementptr %struct.cgroup, ptr %cg.0112.i.i, i32 0, i32 34, i32 1, i32 %retval.0.i.ph.i
  %21 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pl.0106.i.i = load ptr, ptr %arrayidx12.i.i, align 4
  %cmp.not107.i.i = icmp eq ptr %pl.0106.i.i, %arrayidx12.i.i
  br i1 %cmp.not107.i.i, label %if.end9.i.i.for.inc31.i.i_crit_edge, label %if.end9.i.i.for.body17.i.i_crit_edge

if.end9.i.i.for.body17.i.i_crit_edge:             ; preds = %if.end9.i.i
  br label %for.body17.i.i

if.end9.i.i.for.inc31.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc31.i.i

for.body17.i.i:                                   ; preds = %for.inc.i.i.for.body17.i.i_crit_edge, %if.end9.i.i.for.body17.i.i_crit_edge
  %pl.0109.i.i = phi ptr [ %pl.0.i.i, %for.inc.i.i.for.body17.i.i_crit_edge ], [ %pl.0106.i.i, %if.end9.i.i.for.body17.i.i_crit_edge ]
  %pos.1108.i.i = phi i32 [ %pos.2.i.i, %for.inc.i.i.for.body17.i.i_crit_edge ], [ %pos.0111.i.i, %if.end9.i.i.for.body17.i.i_crit_edge ]
  %prog.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0109.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prog.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body17.i.i.if.end21.i.i_crit_edge

for.body17.i.i.if.end21.i.i_crit_edge:            ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

if.end.i.i.i:                                     ; preds = %for.body17.i.i
  %link.i.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0109.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %link.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.for.inc.i.i_crit_edge, label %prog_list_prog.exit.i.i

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

prog_list_prog.exit.i.i:                          ; preds = %if.end.i.i.i
  %prog6.i.i.i = getelementptr inbounds %struct.bpf_link, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %prog6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog6.i.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %27, null
  br i1 %tobool19.not.i.i, label %prog_list_prog.exit.i.i.for.inc.i.i_crit_edge, label %prog_list_prog.exit.i.i.if.end21.i.i_crit_edge

prog_list_prog.exit.i.i.if.end21.i.i_crit_edge:   ; preds = %prog_list_prog.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

prog_list_prog.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %prog_list_prog.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end21.i.i:                                     ; preds = %prog_list_prog.exit.i.i.if.end21.i.i_crit_edge, %for.body17.i.i.if.end21.i.i_crit_edge
  %link22.i.i = getelementptr inbounds %struct.bpf_prog_list, ptr %pl.0109.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %link22.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link22.i.i, align 4
  %cmp23.i.i = icmp eq ptr %29, %link
  br i1 %cmp23.i.i, label %do.body47.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc.i.i = add i32 %pos.1108.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end25.i.i, %prog_list_prog.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i_crit_edge
  %pos.2.i.i = phi i32 [ %inc.i.i, %if.end25.i.i ], [ %pos.1108.i.i, %prog_list_prog.exit.i.i.for.inc.i.i_crit_edge ], [ %pos.1108.i.i, %if.end.i.i.i.for.inc.i.i_crit_edge ]
  %30 = ptrtoint ptr %pl.0109.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %pl.0.i.i = load ptr, ptr %pl.0109.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pl.0.i.i, %arrayidx12.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.inc31.i.i_crit_edge, label %for.inc.i.i.for.body17.i.i_crit_edge

for.inc.i.i.for.body17.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17.i.i

for.inc.i.i.for.inc31.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc31.i.i

for.inc31.i.i:                                    ; preds = %for.inc.i.i.for.inc31.i.i_crit_edge, %if.end9.i.i.for.inc31.i.i_crit_edge, %land.lhs.true.i.i.for.inc31.i.i_crit_edge
  %pos.3.i.i = phi i32 [ %pos.0111.i.i, %land.lhs.true.i.i.for.inc31.i.i_crit_edge ], [ %pos.0111.i.i, %if.end9.i.i.for.inc31.i.i_crit_edge ], [ %pos.2.i.i, %for.inc.i.i.for.inc31.i.i_crit_edge ]
  %parent.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cg.0112.i.i, i32 0, i32 12
  %31 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i.i, label %do.body40.i.i, label %for.inc31.i.i.for.body4.i.i_crit_edge

for.inc31.i.i.for.body4.i.i_crit_edge:            ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body4.i.i

do.body40.i.i:                                    ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #16, !srcloc !129
  unreachable

do.body47.i.i:                                    ; preds = %if.end21.i.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool49.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool49.not.i.i, label %land.lhs.true50.i.i, label %do.body47.i.i.do.end58.i.i_crit_edge

do.body47.i.i.do.end58.i.i_crit_edge:             ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i.i

land.lhs.true50.i.i:                              ; preds = %do.body47.i.i
  %call51.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %land.lhs.true50.i.i.do.end58.i.i_crit_edge, label %land.lhs.true53.i.i

land.lhs.true50.i.i.do.end58.i.i_crit_edge:       ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i.i

land.lhs.true53.i.i:                              ; preds = %land.lhs.true50.i.i
  %.b96.i.i = load i1, ptr @replace_effective_prog.__warned, align 1
  br i1 %.b96.i.i, label %land.lhs.true53.i.i.do.end58.i.i_crit_edge, label %if.then55.i.i

land.lhs.true53.i.i.do.end58.i.i_crit_edge:       ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i.i

if.then55.i.i:                                    ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @replace_effective_prog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.2) #16
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %if.then55.i.i, %land.lhs.true53.i.i.do.end58.i.i_crit_edge, %land.lhs.true50.i.i.do.end58.i.i_crit_edge, %do.body47.i.i.do.end58.i.i_crit_edge
  %arrayidx61.i.i = getelementptr [23 x ptr], ptr %bpf.i.i, i32 0, i32 %retval.0.i.ph.i
  %33 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx61.i.i, align 4
  %arrayidx62.i.i = getelementptr %struct.bpf_prog_array, ptr %34, i32 0, i32 1, i32 %pos.1108.i.i
  %35 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prog.i, align 4
  %37 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %arrayidx62.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %do.end58.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %call76.i.i = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.0115.i.i, ptr noundef nonnull %1) #16
  %tobool.not.i.i = icmp eq ptr %call76.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.replace_effective_prog.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

cleanup.i.i.replace_effective_prog.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %replace_effective_prog.exit.i

replace_effective_prog.exit.i:                    ; preds = %cleanup.i.i.replace_effective_prog.exit.i_crit_edge, %if.end19.i.replace_effective_prog.exit.i_crit_edge
  tail call void @bpf_prog_put(ptr noundef %18) #16
  br label %out_unlock

out_unlock:                                       ; preds = %replace_effective_prog.exit.i, %for.cond.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -67, %entry.out_unlock_crit_edge ], [ -1, %land.lhs.true.out_unlock_crit_edge ], [ 0, %replace_effective_prog.exit.i ], [ -22, %if.end.i.out_unlock_crit_edge ], [ -22, %if.end3.out_unlock_crit_edge ], [ -2, %for.cond.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_cgroup_link_show_fdinfo(ptr nocapture noundef readonly %link, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %cgroup = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgroup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kn.i, align 8
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cg_id.0 = phi i64 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %type = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i64 noundef %cg_id.0, i32 noundef %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_cgroup_link_fill_link_info(ptr nocapture noundef readonly %link, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #16
  %cgroup = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %cgroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgroup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kn.i, align 8
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cg_id.0 = phi i64 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #16
  %6 = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %cg_id.0, ptr %6, align 8
  %type = getelementptr inbounds %struct.bpf_cgroup_link, ptr %link, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %attach_type = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %attach_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attach_type, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_base_func_proto(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_prog_array_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysctl_cpy_dir(ptr nocapture noundef readonly %dir, ptr nocapture noundef %bufp, ptr nocapture noundef %lenp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.ctl_table_header, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sysctl_cpy_dir(ptr noundef nonnull %1, ptr noundef %bufp, ptr noundef %lenp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %tmp_ret.0 = phi i32 [ %call, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %2 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufp, align 4
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dir, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lenp, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %3, ptr noundef %7, i32 noundef %9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bufp, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %call6
  store ptr %add.ptr, ptr %bufp, align 4
  %12 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lenp, align 4
  %sub = sub i32 %13, %call6
  store i32 %sub, ptr %lenp, align 4
  %add = add nuw i32 %call6, %tmp_ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool10.not = icmp eq i32 %add, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufp, align 4
  %call13 = tail call i32 @strscpy(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bufp, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 %call13
  store ptr %add.ptr17, ptr %bufp, align 4
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lenp, align 4
  %sub18 = sub i32 %19, %call13
  store i32 %sub18, ptr %lenp, align 4
  %add19 = add i32 %call13, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %add19, %if.end16 ], [ %call, %if.then.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @cgroup_bpf_enabled_key, !1, !"cgroup_bpf_enabled_key", i1 false, i1 false}
!1 = !{!"../kernel/bpf/cgroup.c", i32 22, i32 1}
!2 = !{ptr @__ksymtab_cgroup_bpf_enabled_key, !3, !"__ksymtab_cgroup_bpf_enabled_key", i1 false, i1 false}
!3 = !{!"../kernel/bpf/cgroup.c", i32 23, i32 1}
!4 = !{ptr @__ksymtab___cgroup_bpf_run_filter_skb, !5, !"__ksymtab___cgroup_bpf_run_filter_skb", i1 false, i1 false}
!5 = !{!"../kernel/bpf/cgroup.c", i32 1091, i32 1}
!6 = !{ptr @__ksymtab___cgroup_bpf_run_filter_sk, !7, !"__ksymtab___cgroup_bpf_run_filter_sk", i1 false, i1 false}
!7 = !{!"../kernel/bpf/cgroup.c", i32 1115, i32 1}
!8 = !{ptr @__ksymtab___cgroup_bpf_run_filter_sock_addr, !9, !"__ksymtab___cgroup_bpf_run_filter_sock_addr", i1 false, i1 false}
!9 = !{!"../kernel/bpf/cgroup.c", i32 1164, i32 1}
!10 = !{ptr @__ksymtab___cgroup_bpf_run_filter_sock_ops, !11, !"__ksymtab___cgroup_bpf_run_filter_sock_ops", i1 false, i1 false}
!11 = !{!"../kernel/bpf/cgroup.c", i32 1193, i32 1}
!12 = !{ptr @cg_dev_prog_ops, !13, !"cg_dev_prog_ops", i1 false, i1 false}
!13 = !{!"../kernel/bpf/cgroup.c", i32 1268, i32 27}
!14 = !{ptr @cg_dev_verifier_ops, !15, !"cg_dev_verifier_ops", i1 false, i1 false}
!15 = !{!"../kernel/bpf/cgroup.c", i32 1271, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/bpf/cgroup.c", i32 1546, i32 7}
!18 = !{ptr @cg_sysctl_verifier_ops, !19, !"cg_sysctl_verifier_ops", i1 false, i1 false}
!19 = !{!"../kernel/bpf/cgroup.c", i32 1908, i32 31}
!20 = !{ptr @cg_sysctl_prog_ops, !21, !"cg_sysctl_prog_ops", i1 false, i1 false}
!21 = !{!"../kernel/bpf/cgroup.c", i32 1914, i32 27}
!22 = !{ptr @cg_sockopt_verifier_ops, !23, !"cg_sockopt_verifier_ops", i1 false, i1 false}
!23 = !{!"../kernel/bpf/cgroup.c", i32 2085, i32 31}
!24 = !{ptr @cg_sockopt_prog_ops, !25, !"cg_sockopt_prog_ops", i1 false, i1 false}
!25 = !{!"../kernel/bpf/cgroup.c", i32 2092, i32 27}
!26 = !{ptr @cgroup_bpf_release_fn.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../kernel/bpf/cgroup.c", i32 162, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../kernel/bpf/cgroup.c", i32 133, i32 15}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../kernel/bpf/cgroup.c", i32 275, i32 14}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/bpf/cgroup.c", i32 213, i32 3}
!36 = !{ptr @bpf_cgroup_link_lops, !37, !"bpf_cgroup_link_lops", i1 false, i1 false}
!37 = !{!"../kernel/bpf/cgroup.c", i32 961, i32 34}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../kernel/bpf/cgroup.c", i32 577, i32 11}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/bpf/cgroup.c", i32 938, i32 6}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../kernel/bpf/cgroup.c", i32 778, i32 14}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/bpf.h", i32 1300, i32 10}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/bpf.h", i32 1329, i32 10}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/filter.h", i32 613, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!54 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!57 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../kernel/bpf/cgroup.c", i32 1364, i32 15}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!69 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/bpf/cgroup.c", i32 1670, i32 27}
!76 = !{ptr @bpf_sysctl_get_name_proto, !77, !"bpf_sysctl_get_name_proto", i1 false, i1 false}
!77 = !{!"../kernel/bpf/cgroup.c", i32 1700, i32 36}
!78 = !{ptr @bpf_sysctl_get_current_value_proto, !79, !"bpf_sysctl_get_current_value_proto", i1 false, i1 false}
!79 = !{!"../kernel/bpf/cgroup.c", i32 1742, i32 36}
!80 = !{ptr @bpf_sysctl_get_new_value_proto, !81, !"bpf_sysctl_get_new_value_proto", i1 false, i1 false}
!81 = !{!"../kernel/bpf/cgroup.c", i32 1762, i32 36}
!82 = !{ptr @bpf_sysctl_set_new_value_proto, !83, !"bpf_sysctl_set_new_value_proto", i1 false, i1 false}
!83 = !{!"../kernel/bpf/cgroup.c", i32 1787, i32 36}
!84 = !{ptr @bpf_get_netns_cookie_sockopt_proto, !85, !"bpf_get_netns_cookie_sockopt_proto", i1 false, i1 false}
!85 = !{!"../kernel/bpf/cgroup.c", i32 1925, i32 36}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2157947007}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2152256007, i64 2152256032}
!99 = !{!"auto-init"}
!100 = !{i64 2149327771}
!101 = distinct !{ptr @__bpf_prog_run_save_cb, null}
!102 = !{i64 2149328037}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2155617590, i64 2155618078, i64 2155617627, i64 2155617683, i64 2155617717, i64 2155617741, i64 2155617782, i64 2155617803, i64 2155617831, i64 2155617865}
!105 = !{i64 2148743660, i64 2148743665, i64 2148743678, i64 2148743722, i64 2148743756, i64 2148743777}
!106 = !{i64 654326, i64 654387}
!107 = !{i64 2150147554}
!108 = !{i64 2150152488}
!109 = !{i64 2150174206}
!110 = !{i64 2150179100}
!111 = !{i64 2150255627}
!112 = !{i64 2150255952}
!113 = !{i64 657058}
!114 = !{i64 657343}
!115 = !{i32 0, i32 33}
!116 = !{i64 2152255326, i64 2152255351}
!117 = !{i64 4750881}
!118 = !{i64 4751078}
!119 = !{i64 2152236311}
!120 = !{i64 2158025589, i64 2158025869, i64 2158026203, i64 2158026537}
!121 = !{i64 2158036522, i64 2158036802, i64 2158037136, i64 2158037470}
!122 = !{i64 2148261845, i64 2148261871, i64 2148261900, i64 2148261934, i64 2148261965, i64 2148261988}
!123 = !{i64 2148350297}
!124 = !{i64 2148265030, i64 2148265062, i64 2148265091, i64 2148265125, i64 2148265156, i64 2148265179}
!125 = !{i64 2148350526}
!126 = !{i64 2157977048}
!127 = !{i64 768613, i64 768630, i64 768654, i64 768680, i64 768698}
!128 = !{i64 2157977398}
!129 = !{i64 2157968951, i64 2157969435, i64 2157968988, i64 2157969044, i64 2157969078, i64 2157969102, i64 2157969143, i64 2157969164, i64 2157969192, i64 2157969226}
