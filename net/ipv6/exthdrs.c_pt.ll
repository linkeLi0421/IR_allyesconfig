; ModuleID = '/llk/IR_all_yes/net/ipv6/exthdrs.c_pt.bc'
source_filename = "../net/ipv6/exthdrs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipv6_push_frag_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_push_frag_opts\09\09\09\09"
module asm "\09.long\09__crc_ipv6_push_frag_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_push_frag_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_push_frag_opts\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_push_frag_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipv6_dup_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_dup_options\09\09\09\09"
module asm "\09.long\09__crc_ipv6_dup_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dup_options\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipv6_fixup_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_fixup_options\09\09\09\09"
module asm "\09.long\09__crc_ipv6_fixup_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_fixup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_fixup_options\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_fixup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fl6_update_dst\22, \22a\22\09"
module asm "\09.weak\09__crc_fl6_update_dst\09\09\09\09"
module asm "\09.long\09__crc_fl6_update_dst\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fl6_update_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22fl6_update_dst\22\09\09\09\09\09"
module asm "__kstrtabns_fl6_update_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ioam6_hdr = type { i8, i8, i8, i8 }
%struct.ioam6_trace_hdr = type { i16, i16, %union.anon.160, [0 x i8] }
%union.anon.160 = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt0_hdr = type { %struct.ipv6_rt_hdr, i32, [0 x %struct.in6_addr] }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon.158 }
%union.anon.158 = type { [0 x %struct.in6_addr] }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>

@rthdr_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_rthdr_rcv, ptr null, i32 1 }, [44 x i8] zeroinitializer }, align 32
@destopt_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_destopt_rcv, ptr null, i32 1 }, [44 x i8] zeroinitializer }, align 32
@nodata_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @dst_discard, ptr null, i32 1 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ipv6_push_frag_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_push_frag_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_push_frag_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_push_frag_opts to i32), ptr @__kstrtab_ipv6_push_frag_opts, ptr @__kstrtabns_ipv6_push_frag_opts }, section "___ksymtab+ipv6_push_frag_opts", align 4
@__kstrtab_ipv6_dup_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dup_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dup_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dup_options to i32), ptr @__kstrtab_ipv6_dup_options, ptr @__kstrtabns_ipv6_dup_options }, section "___ksymtab_gpl+ipv6_dup_options", align 4
@__kstrtab_ipv6_fixup_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_fixup_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_fixup_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_fixup_options to i32), ptr @__kstrtab_ipv6_fixup_options, ptr @__kstrtabns_ipv6_fixup_options }, section "___ksymtab_gpl+ipv6_fixup_options", align 4
@__kstrtab_fl6_update_dst = external dso_local constant [0 x i8], align 1
@__kstrtabns_fl6_update_dst = external dso_local constant [0 x i8], align 1
@__ksymtab_fl6_update_dst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fl6_update_dst to i32), ptr @__kstrtab_fl6_update_dst, ptr @__kstrtabns_fl6_update_dst }, section "___ksymtab_gpl+fl6_update_dst", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@ipv6_hop_ra.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipv6_hop_ra\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/exthdrs.c\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ipv6_hop_ra: wrong RA length %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ipv6_hop_jumbo.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipv6_hop_jumbo\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ipv6_hop_jumbo: wrong jumbo opt length/alignment %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__in6_dev_get_safely.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_dest_hao.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipv6_dest_hao\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hao duplicated\0A\00", [16 x i8] zeroinitializer }, align 32
@ipv6_dest_hao.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.13, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hao invalid option length = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ipv6_dest_hao.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.15, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hao is not an unicast addr: %pI6\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 5, i64 7, i64 49, i64 194]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 41]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"rthdr_protocol\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 865, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"destopt_protocol\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 870, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"nodata_protocol\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 875, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 313, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 271, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1011, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 935, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1005, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 238, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 247, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [22 x i8] c"../net/ipv6/exthdrs.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 253, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_fl6_update_dst, ptr @__ksymtab_ipv6_dup_options, ptr @__ksymtab_ipv6_fixup_options, ptr @__ksymtab_ipv6_push_frag_opts, ptr @rthdr_protocol, ptr @destopt_protocol, ptr @nodata_protocol, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rthdr_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destopt_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodata_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_exthdrs_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_rthdr_crit_edge

if.end.out_rthdr_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rthdr

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %out_destopt

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %out_rthdr, %if.end4.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.1, %out_rthdr ], [ 0, %if.end4.out_crit_edge ]
  ret i32 %ret.0

out_destopt:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #10
  br label %out_rthdr

out_rthdr:                                        ; preds = %out_destopt, %if.end.out_rthdr_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_rthdr_crit_edge ], [ %call5, %out_destopt ]
  %call10 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #10
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_exthdrs_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #10
  %call1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #10
  %call2 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_parse_hopopts(ptr noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 48
  br i1 %cmp.not.i, label %if.end.i, label %entry.lor.lhs.false_crit_edge, !prof !55

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %6)
  %cmp3.i = icmp ult i32 %6, 48
  br i1 %cmp3.i, label %if.end.i.fail_and_free_crit_edge, label %pskb_may_pull.exit, !prof !55

if.end.i.fail_and_free_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 48, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.fail_and_free_crit_edge, label %pskb_may_pull.exit.lor.lhs.false_crit_edge

pskb_may_pull.exit.lor.lhs.false_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

pskb_may_pull.exit.fail_and_free_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %add = shl nuw nsw i32 %conv, 3
  %add3 = add nuw nsw i32 %add, 48
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i41 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %sub.i.i41)
  %cmp.not.i42 = icmp ugt i32 %add3, %sub.i.i41
  br i1 %cmp.not.i42, label %if.end.i44, label %lor.lhs.false.if.end_crit_edge, !prof !55

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i44:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add3)
  %cmp3.i43 = icmp ult i32 %16, %add3
  br i1 %cmp3.i43, label %if.end.i44.fail_and_free_crit_edge, label %pskb_may_pull.exit50, !prof !55

if.end.i44.fail_and_free_crit_edge:               ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

pskb_may_pull.exit50:                             ; preds = %if.end.i44
  %sub.i45 = sub i32 %add3, %sub.i.i41
  %call13.i46 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i45) #10
  %cmp14.i47.not = icmp eq ptr %call13.i46, null
  br i1 %cmp14.i47.not, label %pskb_may_pull.exit50.fail_and_free_crit_edge, label %pskb_may_pull.exit50.if.end_crit_edge

pskb_may_pull.exit50.if.end_crit_edge:            ; preds = %pskb_may_pull.exit50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit50.fail_and_free_crit_edge:     ; preds = %pskb_may_pull.exit50
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

fail_and_free:                                    ; preds = %if.end.fail_and_free_crit_edge, %pskb_may_pull.exit50.fail_and_free_crit_edge, %if.end.i44.fail_and_free_crit_edge, %pskb_may_pull.exit.fail_and_free_crit_edge, %if.end.i.fail_and_free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit50.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %21 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i, align 2
  %conv.i53 = zext i16 %22 to i32
  %add.ptr.i54 = getelementptr i8, ptr %20, i32 %conv.i53
  %arrayidx6 = getelementptr i8, ptr %add.ptr.i54, i32 1
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %24 to i32
  %add8 = shl nuw nsw i32 %conv7, 3
  %shl9 = add nuw nsw i32 %add8, 8
  %max_hbh_opts_len = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 34
  %25 = ptrtoint ptr %max_hbh_opts_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_hbh_opts_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9, i32 %26)
  %cmp = icmp sgt i32 %shl9, %26
  br i1 %cmp, label %if.end.fail_and_free_crit_edge, label %if.end12

if.end.fail_and_free_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

if.end12:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 4
  %29 = or i16 %28, 32
  store i16 %29, ptr %flags, align 4
  %max_hbh_opts_cnt = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 32
  %30 = ptrtoint ptr %max_hbh_opts_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_hbh_opts_cnt, align 4
  %call17 = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext true, ptr noundef %skb, i32 noundef %31)
  br i1 %call17, label %if.then18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i, align 2
  %34 = trunc i32 %shl9 to i16
  %conv21 = add i16 %33, %34
  store i16 %conv21, ptr %transport_header.i, align 2
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %35 = ptrtoint ptr %nhoff to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 40, ptr %nhoff, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end12.cleanup_crit_edge, %fail_and_free
  %retval.0 = phi i32 [ -1, %fail_and_free ], [ 1, %if.then18 ], [ -1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext %hopbyhop, ptr noundef %skb, i32 noundef %max_count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = shl nuw nsw i32 %conv, 3
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i, align 4
  %conv.i168 = zext i16 %7 to i32
  %add.ptr.i169 = getelementptr i8, ptr %1, i32 %conv.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count)
  %cmp = icmp slt i32 %max_count, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %max_count
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_count.addr.0 = phi i32 [ %sub, %if.then ], [ %max_count, %entry.if.end_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = add nuw nsw i32 %add, 8
  %shl = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %add6 = sub i32 %shl, %sub.ptr.rhs.cast.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  %sub.i173 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %sub.i173)
  %cmp8 = icmp ugt i32 %add6, %sub.i173
  br i1 %cmp8, label %if.end.bad_crit_edge, label %if.end11

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end11:                                         ; preds = %if.end
  %sub.i = add nuw nsw i32 %conv.i, 2
  %add12 = sub nsw i32 %sub.i, %conv.i168
  %sub13 = or i32 %add, 6
  %14 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %ra.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end11
  %padlen.0268 = phi i32 [ 0, %if.end11 ], [ %padlen.2, %cleanup.while.body_crit_edge ]
  %tlv_count.0267 = phi i32 [ 0, %if.end11 ], [ %tlv_count.2, %cleanup.while.body_crit_edge ]
  %off.0265 = phi i32 [ %add12, %if.end11 ], [ %off.1, %cleanup.while.body_crit_edge ]
  %len.0264 = phi i32 [ %sub13, %if.end11 ], [ %len.1, %cleanup.while.body_crit_edge ]
  %arrayidx16 = getelementptr i8, ptr %add.ptr.i169, i32 %off.0265
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp18 = icmp eq i8 %16, 0
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %while.body
  %inc = add i32 %padlen.0268, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp21 = icmp sgt i32 %inc, 7
  br i1 %cmp21, label %if.then20.bad_crit_edge, label %if.end24

if.then20.bad_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %inc25 = add i32 %off.0265, 1
  %dec = add i32 %len.0264, -1
  br label %cleanup

if.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.0264)
  %cmp27 = icmp ult i32 %len.0264, 2
  br i1 %cmp27, label %if.end26.bad_crit_edge, label %if.end30

if.end26.bad_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end30:                                         ; preds = %if.end26
  %add31 = add i32 %off.0265, 1
  %arrayidx32 = getelementptr i8, ptr %add.ptr.i169, i32 %add31
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %18 to i32
  %add34 = add nuw nsw i32 %conv33, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0264, i32 %add34)
  %cmp35 = icmp ult i32 %len.0264, %add34
  br i1 %cmp35, label %if.end30.bad_crit_edge, label %if.end38

if.end30.bad_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp41 = icmp eq i8 %16, 1
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end38
  %add44 = add i32 %add34, %padlen.0268
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add44)
  %cmp45 = icmp sgt i32 %add44, 7
  br i1 %cmp45, label %if.then43.bad_crit_edge, label %for.cond.preheader

if.then43.bad_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

for.cond.preheader:                               ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp49262.not = icmp eq i8 %18, 0
  br i1 %cmp49262.not, label %for.cond.preheader.if.end101_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end101_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

for.cond:                                         ; preds = %for.body
  %inc58 = add nuw nsw i32 %i.0263, 1
  %exitcond.not = icmp eq i32 %inc58, %add34
  br i1 %exitcond.not, label %for.cond.if.end101_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end101_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0263 = phi i32 [ %inc58, %for.cond.for.body_crit_edge ], [ 2, %for.cond.preheader.for.body_crit_edge ]
  %add51 = add i32 %i.0263, %off.0265
  %arrayidx52 = getelementptr i8, ptr %add.ptr.i169, i32 %add51
  %19 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp54.not = icmp eq i8 %20, 0
  br i1 %cmp54.not, label %for.cond, label %for.body.bad_crit_edge

for.body.bad_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.else:                                          ; preds = %if.end38
  %inc59 = add i32 %tlv_count.0267, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc59, i32 %max_count.addr.0)
  %cmp60 = icmp sgt i32 %inc59, %max_count.addr.0
  br i1 %cmp60, label %if.else.bad_crit_edge, label %if.end63

if.else.bad_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end63:                                         ; preds = %if.else
  br i1 %hopbyhop, label %if.then65, label %if.else87

if.then65:                                        ; preds = %if.end63
  %21 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %sw.default [
    i8 5, label %sw.bb
    i8 49, label %sw.bb71
    i8 -62, label %sw.bb75
    i8 7, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.then65
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %24 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i, align 4
  %conv.i.i175 = zext i16 %25 to i32
  %add.ptr.i.i176 = getelementptr i8, ptr %23, i32 %conv.i.i175
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i.i176, i32 %add31
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i = icmp eq i8 %27, 2
  br i1 %cmp.i, label %ipv6_hop_ra.exit.thread, label %do.body.i

ipv6_hop_ra.exit.thread:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 8
  %30 = or i16 %29, 8
  store i16 %30, ptr %flags.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %add.ptr.i.i176, i32 2
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i177, i32 %off.0265
  %31 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr6.i, align 1
  %33 = ptrtoint ptr %ra.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ra.i, align 4
  br label %if.end101

do.body.i:                                        ; preds = %sw.bb
  %arrayidx.i.le = getelementptr i8, ptr %add.ptr.i.i176, i32 %add31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_hop_ra.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_parse_tlv, %land.lhs.true.i)) #10
          to label %ipv6_hop_ra.exit [label %land.lhs.true.i], !srcloc !56

land.lhs.true.i:                                  ; preds = %do.body.i
  %call10.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.ipv6_hop_ra.exit_crit_edge, label %if.then12.i

land.lhs.true.i.ipv6_hop_ra.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_ra.exit

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.le, align 1
  %conv15.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_hop_ra.descriptor, ptr noundef nonnull @.str.7, i32 noundef %conv15.i) #10
  br label %ipv6_hop_ra.exit

ipv6_hop_ra.exit:                                 ; preds = %if.then12.i, %land.lhs.true.i.ipv6_hop_ra.exit_crit_edge, %do.body.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

sw.bb71:                                          ; preds = %if.then65
  %and.i = and i32 %off.0265, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb71.ipv6_hop_ioam.exit_crit_edge

sw.bb71.ipv6_hop_ioam.exit_crit_edge:             ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_ioam.exit

if.end.i:                                         ; preds = %sw.bb71
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %14, align 8
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 80
  %38 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i.i, label %if.end.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.__in6_dev_get.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.end.i.__in6_dev_get.exit.i_crit_edge
  %ioam6_enabled.i = getelementptr inbounds %struct.inet6_dev, ptr %39, i32 0, i32 32, i32 55
  %40 = ptrtoint ptr %ioam6_enabled.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ioam6_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %__in6_dev_get.exit.i.if.end101_crit_edge, label %if.end3.i

__in6_dev_get.exit.i.if.end101_crit_edge:         ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end3.i:                                        ; preds = %__in6_dev_get.exit.i
  %42 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i, align 8
  %44 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i, align 4
  %conv.i.i180 = zext i16 %45 to i32
  %add.ptr.i.i181 = getelementptr i8, ptr %43, i32 %conv.i.i180
  %add.ptr.i182 = getelementptr i8, ptr %add.ptr.i.i181, i32 %off.0265
  %opt_len.i = getelementptr inbounds %struct.ioam6_hdr, ptr %add.ptr.i182, i32 0, i32 1
  %46 = ptrtoint ptr %opt_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %opt_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i183 = icmp ult i8 %47, 2
  br i1 %cmp.i183, label %if.end3.i.ipv6_hop_ioam.exit_crit_edge, label %if.end7.i

if.end3.i.ipv6_hop_ioam.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_ioam.exit

if.end7.i:                                        ; preds = %if.end3.i
  %type.i = getelementptr inbounds %struct.ioam6_hdr, ptr %add.ptr.i182, i32 0, i32 3
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cond.i = icmp eq i8 %49, 0
  br i1 %cond.i, label %sw.bb.i, label %if.end7.i.if.end101_crit_edge

if.end7.i.if.end101_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %47)
  %cmp11.i = icmp ult i8 %47, 10
  br i1 %cmp11.i, label %sw.bb.i.ipv6_hop_ioam.exit_crit_edge, label %if.end14.i

sw.bb.i.ipv6_hop_ioam.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_ioam.exit

if.end14.i:                                       ; preds = %sw.bb.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i182, i32 4
  %remlen.i = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %add.ptr15.i, i32 0, i32 1
  %50 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load.i = load i16, ptr %remlen.i, align 1
  %51 = shl i16 %bf.load.i, 2
  %52 = and i16 %51, 508
  %narrow.i = add nuw nsw i16 %52, 10
  %53 = zext i8 %47 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow.i, i16 %53)
  %cmp19.i = icmp ugt i16 %narrow.i, %53
  br i1 %cmp19.i, label %if.end14.i.ipv6_hop_ioam.exit_crit_edge, label %if.end22.i

if.end14.i.ipv6_hop_ioam.exit_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_ioam.exit

if.end22.i:                                       ; preds = %if.end14.i
  %call23.i = tail call fastcc ptr @ipv6_skb_net(ptr noundef %skb) #10
  %54 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr15.i, align 1
  %call24.i = tail call ptr @ioam6_namespace(ptr noundef %call23.i, i16 noundef zeroext %55) #10
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.if.end101_crit_edge, label %if.end27.i

if.end22.i.if.end101_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end27.i:                                       ; preds = %if.end22.i
  %call28.i = tail call fastcc zeroext i1 @skb_valid_dst(ptr noundef %skb) #10
  br i1 %call28.i, label %if.end27.i.if.end30.i_crit_edge, label %if.then29.i

if.end27.i.if.end30.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ip6_route_input(ptr noundef %skb) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end30.i_crit_edge
  tail call void @ioam6_fill_trace_data(ptr noundef %skb, ptr noundef nonnull %call24.i, ptr noundef %add.ptr15.i, i1 noundef zeroext true) #10
  br label %if.end101

ipv6_hop_ioam.exit:                               ; preds = %if.end14.i.ipv6_hop_ioam.exit_crit_edge, %sw.bb.i.ipv6_hop_ioam.exit_crit_edge, %if.end3.i.ipv6_hop_ioam.exit_crit_edge, %sw.bb71.ipv6_hop_ioam.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

sw.bb75:                                          ; preds = %if.then65
  %call76 = tail call fastcc zeroext i1 @ipv6_hop_jumbo(ptr noundef %skb, i32 noundef %off.0265)
  br i1 %call76, label %sw.bb75.if.end101_crit_edge, label %sw.bb75.cleanup109_crit_edge

sw.bb75.cleanup109_crit_edge:                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

sw.bb75.if.end101_crit_edge:                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

sw.bb79:                                          ; preds = %if.then65
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i, align 8
  %58 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i, align 4
  %conv.i.i186 = zext i16 %59 to i32
  %add.ptr.i.i187 = getelementptr i8, ptr %57, i32 %conv.i.i186
  %arrayidx.i189 = getelementptr i8, ptr %add.ptr.i.i187, i32 %add31
  %60 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %61)
  %cmp.i190 = icmp ult i8 %61, 8
  br i1 %cmp.i190, label %sw.bb79.ipv6_hop_calipso.exit_crit_edge, label %if.end.i192

sw.bb79.ipv6_hop_calipso.exit_crit_edge:          ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_calipso.exit

if.end.i192:                                      ; preds = %sw.bb79
  %conv.i191 = zext i8 %61 to i32
  %add2.i = add i32 %off.0265, 6
  %arrayidx3.i = getelementptr i8, ptr %add.ptr.i.i187, i32 %add2.i
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %63 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 2
  %add5.i = add nuw nsw i32 %mul.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %conv.i191)
  %cmp9.i = icmp ugt i32 %add5.i, %conv.i191
  br i1 %cmp9.i, label %if.end.i192.ipv6_hop_calipso.exit_crit_edge, label %if.end12.i

if.end.i192.ipv6_hop_calipso.exit_crit_edge:      ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_calipso.exit

if.end12.i:                                       ; preds = %if.end.i192
  %add.ptr.i193 = getelementptr i8, ptr %add.ptr.i.i187, i32 %off.0265
  %call13.i = tail call zeroext i1 @calipso_validate(ptr noundef %skb, ptr noundef %add.ptr.i193) #10
  br i1 %call13.i, label %if.end12.i.if.end101_crit_edge, label %if.end12.i.ipv6_hop_calipso.exit_crit_edge

if.end12.i.ipv6_hop_calipso.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_hop_calipso.exit

if.end12.i.if.end101_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

ipv6_hop_calipso.exit:                            ; preds = %if.end12.i.ipv6_hop_calipso.exit_crit_edge, %if.end.i192.ipv6_hop_calipso.exit_crit_edge, %sw.bb79.ipv6_hop_calipso.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

sw.default:                                       ; preds = %if.then65
  br i1 %cmp, label %sw.default.drop.i202_crit_edge, label %if.end.i201

sw.default.drop.i202_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i202

if.end.i201:                                      ; preds = %sw.default
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i, align 8
  %66 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i, align 4
  %conv.i.i198 = zext i16 %67 to i32
  %add.ptr.i.i199 = getelementptr i8, ptr %65, i32 %conv.i.i198
  %arrayidx.i200 = getelementptr i8, ptr %add.ptr.i.i199, i32 %off.0265
  %68 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i200, align 1
  %70 = lshr i8 %69, 6
  %71 = zext i8 %70 to i32
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %71, label %if.end.i201.drop.i202_crit_edge [
    i32 0, label %if.end.i201.if.end101_crit_edge
    i32 2, label %if.end.i201.sw.bb6.i_crit_edge
    i32 3, label %sw.bb1.i
  ]

if.end.i201.sw.bb6.i_crit_edge:                   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.end.i201.if.end101_crit_edge:                  ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end.i201.drop.i202_crit_edge:                  ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i202

sw.bb1.i:                                         ; preds = %if.end.i201
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i199, i32 0, i32 6
  %73 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %74)
  %cmp.i.i = icmp ugt i32 %74, -16777217
  br i1 %cmp.i.i, label %sw.bb1.i.drop.i202_crit_edge, label %sw.bb1.i.sw.bb6.i_crit_edge

sw.bb1.i.sw.bb6.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

sw.bb1.i.drop.i202_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i202

sw.bb6.i:                                         ; preds = %sw.bb1.i.sw.bb6.i_crit_edge, %if.end.i201.sw.bb6.i_crit_edge
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 2, i32 noundef %off.0265) #10
  br label %cleanup109

drop.i202:                                        ; preds = %sw.bb1.i.drop.i202_crit_edge, %if.end.i201.drop.i202_crit_edge, %sw.default.drop.i202_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

if.else87:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %16)
  %cond = icmp eq i8 %16, -55
  br i1 %cond, label %sw.bb90, label %sw.default94

sw.bb90:                                          ; preds = %if.else87
  %call91 = tail call fastcc zeroext i1 @ipv6_dest_hao(ptr noundef %skb, i32 noundef %off.0265)
  br i1 %call91, label %sw.bb90.if.end101_crit_edge, label %sw.bb90.cleanup109_crit_edge

sw.bb90.cleanup109_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

sw.bb90.if.end101_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

sw.default94:                                     ; preds = %if.else87
  br i1 %cmp, label %sw.default94.drop.i214_crit_edge, label %if.end.i209

sw.default94.drop.i214_crit_edge:                 ; preds = %sw.default94
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i214

if.end.i209:                                      ; preds = %sw.default94
  %75 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i, align 8
  %77 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i, align 4
  %conv.i.i206 = zext i16 %78 to i32
  %add.ptr.i.i207 = getelementptr i8, ptr %76, i32 %conv.i.i206
  %arrayidx.i208 = getelementptr i8, ptr %add.ptr.i.i207, i32 %off.0265
  %79 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i208, align 1
  %81 = lshr i8 %80, 6
  %82 = zext i8 %81 to i32
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %82, label %if.end.i209.drop.i214_crit_edge [
    i32 0, label %if.end.i209.if.end101_crit_edge
    i32 2, label %if.end.i209.sw.bb6.i213_crit_edge
    i32 3, label %sw.bb1.i212
  ]

if.end.i209.sw.bb6.i213_crit_edge:                ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i213

if.end.i209.if.end101_crit_edge:                  ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end.i209.drop.i214_crit_edge:                  ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i214

sw.bb1.i212:                                      ; preds = %if.end.i209
  %daddr.i210 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i207, i32 0, i32 6
  %84 = ptrtoint ptr %daddr.i210 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %daddr.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %85)
  %cmp.i.i211 = icmp ugt i32 %85, -16777217
  br i1 %cmp.i.i211, label %sw.bb1.i212.drop.i214_crit_edge, label %sw.bb1.i212.sw.bb6.i213_crit_edge

sw.bb1.i212.sw.bb6.i213_crit_edge:                ; preds = %sw.bb1.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i213

sw.bb1.i212.drop.i214_crit_edge:                  ; preds = %sw.bb1.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop.i214

sw.bb6.i213:                                      ; preds = %sw.bb1.i212.sw.bb6.i213_crit_edge, %if.end.i209.sw.bb6.i213_crit_edge
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 2, i32 noundef %off.0265) #10
  br label %cleanup109

drop.i214:                                        ; preds = %sw.bb1.i212.drop.i214_crit_edge, %if.end.i209.drop.i214_crit_edge, %sw.default94.drop.i214_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

if.end101:                                        ; preds = %if.end.i209.if.end101_crit_edge, %sw.bb90.if.end101_crit_edge, %if.end.i201.if.end101_crit_edge, %if.end12.i.if.end101_crit_edge, %sw.bb75.if.end101_crit_edge, %if.end30.i, %if.end22.i.if.end101_crit_edge, %if.end7.i.if.end101_crit_edge, %__in6_dev_get.exit.i.if.end101_crit_edge, %ipv6_hop_ra.exit.thread, %for.cond.if.end101_crit_edge, %for.cond.preheader.if.end101_crit_edge
  %tlv_count.1 = phi i32 [ %inc59, %sw.bb90.if.end101_crit_edge ], [ %inc59, %sw.bb75.if.end101_crit_edge ], [ %inc59, %ipv6_hop_ra.exit.thread ], [ %inc59, %if.end.i201.if.end101_crit_edge ], [ %inc59, %if.end.i209.if.end101_crit_edge ], [ %inc59, %if.end30.i ], [ %inc59, %if.end7.i.if.end101_crit_edge ], [ %inc59, %if.end22.i.if.end101_crit_edge ], [ %inc59, %__in6_dev_get.exit.i.if.end101_crit_edge ], [ %inc59, %if.end12.i.if.end101_crit_edge ], [ %tlv_count.0267, %for.cond.preheader.if.end101_crit_edge ], [ %tlv_count.0267, %for.cond.if.end101_crit_edge ]
  %padlen.1 = phi i32 [ 0, %sw.bb90.if.end101_crit_edge ], [ 0, %sw.bb75.if.end101_crit_edge ], [ 0, %ipv6_hop_ra.exit.thread ], [ %71, %if.end.i201.if.end101_crit_edge ], [ %82, %if.end.i209.if.end101_crit_edge ], [ 0, %if.end30.i ], [ 0, %if.end7.i.if.end101_crit_edge ], [ 0, %if.end22.i.if.end101_crit_edge ], [ 0, %__in6_dev_get.exit.i.if.end101_crit_edge ], [ 0, %if.end12.i.if.end101_crit_edge ], [ %add44, %for.cond.preheader.if.end101_crit_edge ], [ %add44, %for.cond.if.end101_crit_edge ]
  %add102 = add i32 %add34, %off.0265
  %sub103 = sub i32 %len.0264, %add34
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end24
  %len.1 = phi i32 [ %dec, %if.end24 ], [ %sub103, %if.end101 ]
  %off.1 = phi i32 [ %inc25, %if.end24 ], [ %add102, %if.end101 ]
  %tlv_count.2 = phi i32 [ %tlv_count.0267, %if.end24 ], [ %tlv_count.1, %if.end101 ]
  %padlen.2 = phi i32 [ %inc, %if.end24 ], [ %padlen.1, %if.end101 ]
  %cmp14 = icmp sgt i32 %len.1, 0
  br i1 %cmp14, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp105 = icmp eq i32 %len.1, 0
  br i1 %cmp105, label %while.end.cleanup109_crit_edge, label %while.end.bad_crit_edge

while.end.bad_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

while.end.cleanup109_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

bad:                                              ; preds = %while.end.bad_crit_edge, %if.else.bad_crit_edge, %for.body.bad_crit_edge, %if.then43.bad_crit_edge, %if.end30.bad_crit_edge, %if.end26.bad_crit_edge, %if.then20.bad_crit_edge, %if.end.bad_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup109

cleanup109:                                       ; preds = %bad, %while.end.cleanup109_crit_edge, %drop.i214, %sw.bb6.i213, %sw.bb90.cleanup109_crit_edge, %drop.i202, %sw.bb6.i, %ipv6_hop_calipso.exit, %sw.bb75.cleanup109_crit_edge, %ipv6_hop_ioam.exit, %ipv6_hop_ra.exit
  %retval.2 = phi i1 [ false, %bad ], [ true, %while.end.cleanup109_crit_edge ], [ false, %ipv6_hop_ra.exit ], [ false, %ipv6_hop_ioam.exit ], [ false, %ipv6_hop_calipso.exit ], [ false, %drop.i202 ], [ false, %sw.bb6.i ], [ false, %drop.i214 ], [ false, %sw.bb6.i213 ], [ false, %sw.bb75.cleanup109_crit_edge ], [ false, %sw.bb90.cleanup109_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_push_nfrag_opts(ptr noundef %skb, ptr nocapture noundef readonly %opt, ptr nocapture noundef %proto, ptr nocapture noundef %daddr, ptr noundef %saddr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  %0 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srcrt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %3, label %if.then.ipv6_push_rthdr.exit_crit_edge [
    i8 0, label %if.then.sw.bb.i_crit_edge
    i8 1, label %if.then.sw.bb.i_crit_edge29
    i8 2, label %if.then.sw.bb.i_crit_edge30
    i8 4, label %sw.bb1.i
  ]

if.then.sw.bb.i_crit_edge30:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge29:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.ipv6_push_rthdr.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_push_rthdr.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge29, %if.then.sw.bb.i_crit_edge30
  %hdrlen.i.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdrlen.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 3
  %shl.i.i = add nuw nsw i32 %add.i.i, 8
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %shl.i.i) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %1, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %call.i.i, align 4
  %10 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdrlen.i.i, align 1
  %12 = lshr i8 %11, 1
  %13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i.i = icmp ugt i8 %11, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i.ipv6_push_rthdr0.exit.i_crit_edge

sw.bb.i.ipv6_push_rthdr0.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_push_rthdr0.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i.i = getelementptr inbounds %struct.rt0_hdr, ptr %call.i.i, i32 0, i32 2
  %add.ptr.i.i = getelementptr %struct.rt0_hdr, ptr %1, i32 3
  %sub.i.i = shl nuw nsw i32 %13, 4
  %mul.i.i = add nsw i32 %sub.i.i, -16
  %14 = call ptr @memcpy(ptr %addr.i.i, ptr %add.ptr.i.i, i32 %mul.i.i)
  br label %ipv6_push_rthdr0.exit.i

ipv6_push_rthdr0.exit.i:                          ; preds = %if.then.i.i, %sw.bb.i.ipv6_push_rthdr0.exit.i_crit_edge
  %sub8.i.i = add nsw i32 %13, -1
  %arrayidx.i.i = getelementptr %struct.rt0_hdr, ptr %call.i.i, i32 0, i32 2, i32 %sub8.i.i
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %daddr, align 4
  %17 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %16, i32 16)
  %addr9.i.i = getelementptr inbounds %struct.rt0_hdr, ptr %1, i32 0, i32 2
  store ptr %addr9.i.i, ptr %daddr, align 4
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.then
  %hdrlen.i8.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %hdrlen.i8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdrlen.i8.i, align 1
  %conv.i9.i = zext i8 %19 to i32
  %add.i10.i = shl nuw nsw i32 %conv.i9.i, 3
  %shl.i11.i = add nuw nsw i32 %add.i10.i, 8
  %call.i12.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %shl.i11.i) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %1, align 4
  %22 = ptrtoint ptr %call.i12.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %call.i12.i, align 4
  %first_segment.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %first_segment.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_segment.i.i, align 4
  %conv1.i.i = zext i8 %24 to i32
  %segments.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i12.i, i32 0, i32 7
  %add.ptr.i13.i = getelementptr %struct.ipv6_sr_hdr, ptr %call.i12.i, i32 3
  %add.ptr5.i.i = getelementptr %struct.ipv6_sr_hdr, ptr %1, i32 3
  %mul.i14.i = shl nuw nsw i32 %conv1.i.i, 4
  %25 = call ptr @memcpy(ptr %add.ptr.i13.i, ptr %add.ptr5.i.i, i32 %mul.i14.i)
  %26 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %daddr, align 4
  %28 = call ptr @memcpy(ptr %segments.i.i, ptr %27, i32 16)
  %segments_left.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %segments_left.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %segments_left.i.i, align 1
  %idxprom.i.i = zext i8 %30 to i32
  %arrayidx8.i.i = getelementptr %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 7, i32 %idxprom.i.i
  store ptr %arrayidx8.i.i, ptr %daddr, align 4
  %31 = ptrtoint ptr %hdrlen.i8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hdrlen.i8.i, align 1
  %conv10.i.i = zext i8 %32 to i32
  %add2.i.i = shl nuw nsw i32 %conv1.i.i, 1
  %mul11.i.i = add nuw nsw i32 %add2.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.i.i, i32 %conv10.i.i)
  %cmp.i15.i = icmp ult i32 %mul11.i.i, %conv10.i.i
  br i1 %cmp.i15.i, label %if.then.i16.i, label %sw.bb1.i.if.end.i.i_crit_edge

sw.bb1.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i16.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl15.i.i = add nuw nsw i32 %mul.i14.i, 24
  %sub19.i.i = sub nsw i32 %conv10.i.i, %mul11.i.i
  %shl20.i.i = shl nsw i32 %sub19.i.i, 3
  %add.ptr21.i.i = getelementptr i8, ptr %call.i12.i, i32 %shl15.i.i
  %add.ptr22.i.i = getelementptr i8, ptr %1, i32 %shl15.i.i
  %33 = call ptr @memcpy(ptr %add.ptr21.i.i, ptr %add.ptr22.i.i, i32 %shl20.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i16.i, %sw.bb1.i.if.end.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i12.i, i32 0, i32 5
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i.i, align 1
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.sw.epilog.sink.split.i_crit_edge, label %if.then24.i.i

if.end.i.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  %37 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %tobool25.not.i.i = icmp eq ptr %39, null
  br i1 %tobool25.not.i.i, label %if.else.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 127
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %if.then24.i.i
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool28.not.i.i = icmp eq ptr %42, null
  br i1 %tobool28.not.i.i, label %if.else.i.i.do.end.i.i_crit_edge, label %if.then29.i.i

if.else.i.i.do.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %42, i32 0, i32 9
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then29.i.i, %if.then26.i.i
  %net.0.in.i.i = phi ptr [ %nd_net.i.i.i, %if.then26.i.i ], [ %skc_net.i.i.i, %if.then29.i.i ]
  %43 = ptrtoint ptr %net.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %net.0.i.i = load ptr, ptr %net.0.in.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %net.0.i.i, null
  br i1 %tobool33.not.i.i, label %if.end32.i.i.do.end.i.i_crit_edge, label %if.then57.critedge.i.i, !prof !55

if.end32.i.i.do.end.i.i_crit_edge:                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end32.i.i.do.end.i.i_crit_edge, %if.else.i.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1168, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog.sink.split.i

if.then57.critedge.i.i:                           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call58.i.i = tail call i32 @seg6_push_hmac(ptr noundef nonnull %net.0.i.i, ptr noundef %saddr, ptr noundef %call.i12.i) #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then57.critedge.i.i, %do.end.i.i, %if.end.i.i.sw.epilog.sink.split.i_crit_edge, %ipv6_push_rthdr0.exit.i
  %call.i12.sink.i = phi ptr [ %call.i.i, %ipv6_push_rthdr0.exit.i ], [ %call.i12.i, %if.end.i.i.sw.epilog.sink.split.i_crit_edge ], [ %call.i12.i, %do.end.i.i ], [ %call.i12.i, %if.then57.critedge.i.i ]
  %44 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %proto, align 1
  %46 = ptrtoint ptr %call.i12.sink.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %call.i12.sink.i, align 4
  store i8 43, ptr %proto, align 1
  br label %ipv6_push_rthdr.exit

ipv6_push_rthdr.exit:                             ; preds = %sw.epilog.sink.split.i, %if.then.ipv6_push_rthdr.exit_crit_edge
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 5
  %47 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst0opt, align 4
  %tobool2.not = icmp eq ptr %48, null
  br i1 %tobool2.not, label %ipv6_push_rthdr.exit.if.end5_crit_edge, label %if.then3

ipv6_push_rthdr.exit.if.end5_crit_edge:           ; preds = %ipv6_push_rthdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %ipv6_push_rthdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %50 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %shl.i) #10
  %51 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hdrlen.i, align 1
  %conv2.i = zext i8 %52 to i32
  %add3.i = shl nuw nsw i32 %conv2.i, 3
  %shl4.i = add nuw nsw i32 %add3.i, 8
  %53 = call ptr @memcpy(ptr %call.i, ptr %48, i32 %shl4.i)
  %54 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %proto, align 1
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %call.i, align 1
  store i8 60, ptr %proto, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %ipv6_push_rthdr.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 4
  %57 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hopopt, align 4
  %tobool6.not = icmp eq ptr %58, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i21 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %hdrlen.i21 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hdrlen.i21, align 1
  %conv.i22 = zext i8 %60 to i32
  %add.i23 = shl nuw nsw i32 %conv.i22, 3
  %shl.i24 = add nuw nsw i32 %add.i23, 8
  %call.i25 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %shl.i24) #10
  %61 = ptrtoint ptr %hdrlen.i21 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hdrlen.i21, align 1
  %conv2.i26 = zext i8 %62 to i32
  %add3.i27 = shl nuw nsw i32 %conv2.i26, 3
  %shl4.i28 = add nuw nsw i32 %add3.i27, 8
  %63 = call ptr @memcpy(ptr %call.i25, ptr %58, i32 %shl4.i28)
  %64 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %proto, align 1
  %66 = ptrtoint ptr %call.i25 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %call.i25, align 1
  store i8 0, ptr %proto, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_push_frag_opts(ptr noundef %skb, ptr nocapture noundef readonly %opt, ptr nocapture noundef %proto) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 7
  %0 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1opt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %3 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %shl.i) #10
  %4 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdrlen.i, align 1
  %conv2.i = zext i8 %5 to i32
  %add3.i = shl nuw nsw i32 %conv2.i, 3
  %shl4.i = add nuw nsw i32 %add3.i, 8
  %6 = call ptr @memcpy(ptr %call.i, ptr %1, i32 %shl4.i)
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %proto, align 1
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call.i, align 1
  store i8 60, ptr %proto, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipv6_dup_options(ptr noundef %sk, ptr noundef %opt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 1
  %0 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tot_len, align 4
  %call = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %1, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %opt to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tot_len, align 4
  %4 = call ptr @memcpy(ptr %call, ptr %opt, i32 %3)
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hopopt, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %6, i32 %sub.ptr.sub
  %7 = ptrtoint ptr %hopopt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %hopopt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst0opt, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8 = getelementptr i8, ptr %9, i32 %sub.ptr.sub
  %10 = ptrtoint ptr %dst0opt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr8, ptr %dst0opt, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1opt, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13 = getelementptr i8, ptr %12, i32 %sub.ptr.sub
  %13 = ptrtoint ptr %dst1opt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr13, ptr %dst1opt, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srcrt, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr18 = getelementptr i8, ptr %15, i32 %sub.ptr.sub
  %16 = ptrtoint ptr %srcrt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr18, ptr %srcrt, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %call, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry.if.end20_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipv6_renew_options(ptr noundef %sk, ptr noundef readonly %opt, i32 noundef %newtype, ptr noundef readonly %newopt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %if.then

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %newtype)
  %cmp.not = icmp eq i32 %newtype, 54
  br i1 %cmp.not, label %if.then.land.lhs.true8_crit_edge, label %land.lhs.true

if.then.land.lhs.true8_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true8

land.lhs.true:                                    ; preds = %if.then
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 4
  %0 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hopopt, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub = add nuw nsw i32 %add, 11
  %and = and i32 %sub, 4088
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge
  %tot_len.0 = phi i32 [ %and, %if.then2 ], [ 0, %land.lhs.true.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %newtype)
  %cmp6.not = icmp eq i32 %newtype, 55
  br i1 %cmp6.not, label %if.end.land.lhs.true23_crit_edge, label %if.end.land.lhs.true8_crit_edge

if.end.land.lhs.true8_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true8

if.end.land.lhs.true23_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true23

land.lhs.true8:                                   ; preds = %if.end.land.lhs.true8_crit_edge, %if.then.land.lhs.true8_crit_edge
  %tot_len.0267 = phi i32 [ %tot_len.0, %if.end.land.lhs.true8_crit_edge ], [ 0, %if.then.land.lhs.true8_crit_edge ]
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 5
  %4 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst0opt, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.lhs.true8.if.end20_crit_edge, label %if.then10

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen12 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdrlen12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdrlen12, align 1
  %conv13 = zext i8 %7 to i32
  %add14 = shl nuw nsw i32 %conv13, 3
  %sub17 = add nuw nsw i32 %add14, 11
  %and18 = and i32 %sub17, 4088
  %add19 = add nuw nsw i32 %and18, %tot_len.0267
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %land.lhs.true8.if.end20_crit_edge
  %tot_len.1 = phi i32 [ %add19, %if.then10 ], [ %tot_len.0267, %land.lhs.true8.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %newtype)
  %cmp21.not = icmp eq i32 %newtype, 57
  br i1 %cmp21.not, label %if.end20.land.lhs.true38_crit_edge, label %if.end20.land.lhs.true23_crit_edge

if.end20.land.lhs.true23_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true23

if.end20.land.lhs.true38_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true38

land.lhs.true23:                                  ; preds = %if.end20.land.lhs.true23_crit_edge, %if.end.land.lhs.true23_crit_edge
  %tot_len.1270 = phi i32 [ %tot_len.1, %if.end20.land.lhs.true23_crit_edge ], [ %tot_len.0, %if.end.land.lhs.true23_crit_edge ]
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  %8 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srcrt, align 4
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %land.lhs.true23.if.end35_crit_edge, label %if.then25

land.lhs.true23.if.end35_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen27 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hdrlen27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdrlen27, align 1
  %conv28 = zext i8 %11 to i32
  %add29 = shl nuw nsw i32 %conv28, 3
  %sub32 = add nuw nsw i32 %add29, 11
  %and33 = and i32 %sub32, 4088
  %add34 = add nuw nsw i32 %and33, %tot_len.1270
  br label %if.end35

if.end35:                                         ; preds = %if.then25, %land.lhs.true23.if.end35_crit_edge
  %tot_len.2 = phi i32 [ %add34, %if.then25 ], [ %tot_len.1270, %land.lhs.true23.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %newtype)
  %cmp36.not = icmp eq i32 %newtype, 59
  br i1 %cmp36.not, label %if.end35.if.end51_crit_edge, label %if.end35.land.lhs.true38_crit_edge

if.end35.land.lhs.true38_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true38

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true38:                                  ; preds = %if.end35.land.lhs.true38_crit_edge, %if.end20.land.lhs.true38_crit_edge
  %tot_len.2273 = phi i32 [ %tot_len.2, %if.end35.land.lhs.true38_crit_edge ], [ %tot_len.1, %if.end20.land.lhs.true38_crit_edge ]
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 7
  %12 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst1opt, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %land.lhs.true38.if.end51_crit_edge, label %if.then40

land.lhs.true38.if.end51_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen42 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hdrlen42 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdrlen42, align 1
  %conv43 = zext i8 %15 to i32
  %add44 = shl nuw nsw i32 %conv43, 3
  %sub47 = add nuw nsw i32 %add44, 11
  %and48 = and i32 %sub47, 4088
  %add49 = add nuw nsw i32 %and48, %tot_len.2273
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %land.lhs.true38.if.end51_crit_edge, %if.end35.if.end51_crit_edge, %entry.if.end51_crit_edge
  %tot_len.3 = phi i32 [ %add49, %if.then40 ], [ %tot_len.2273, %land.lhs.true38.if.end51_crit_edge ], [ %tot_len.2, %if.end35.if.end51_crit_edge ], [ 0, %entry.if.end51_crit_edge ]
  %tobool52.not = icmp eq ptr %newopt, null
  br i1 %tobool52.not, label %if.end51.if.end62_crit_edge, label %if.then53

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen54 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %newopt, i32 0, i32 1
  %16 = ptrtoint ptr %hdrlen54 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdrlen54, align 1
  %conv55 = zext i8 %17 to i32
  %add56 = shl nuw nsw i32 %conv55, 3
  %sub59 = add nuw nsw i32 %add56, 11
  %and60 = and i32 %sub59, 4088
  %add61 = add nuw nsw i32 %and60, %tot_len.3
  br label %if.end62

if.end62:                                         ; preds = %if.then53, %if.end51.if.end62_crit_edge
  %tot_len.4 = phi i32 [ %add61, %if.then53 ], [ %tot_len.3, %if.end51.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_len.4)
  %tobool63.not = icmp eq i32 %tot_len.4, 0
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.end65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end62
  %add66 = add nuw nsw i32 %tot_len.4, 36
  %call = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %add66, i32 noundef 2592) #10
  %tobool67.not = icmp eq ptr %call, null
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %18 = call ptr @memset(ptr %call, i32 0, i32 %add66)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %call, align 4
  %tot_len71 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %tot_len71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add66, ptr %tot_len71, align 4
  %add.ptr = getelementptr %struct.ipv6_txoptions, ptr %call, i32 1
  %hopopt72 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 4
  br i1 %tobool.not, label %if.end70.cond.end_crit_edge, label %cond.true

if.end70.cond.end_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %hopopt74 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 4
  %21 = ptrtoint ptr %hopopt74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hopopt74, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end70.cond.end_crit_edge
  %cond = phi ptr [ %22, %cond.true ], [ null, %if.end70.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %newtype)
  %cmp.i = icmp eq i32 %newtype, 54
  %new.old.i = select i1 %cmp.i, ptr %newopt, ptr %cond
  %tobool.not.i = icmp eq ptr %new.old.i, null
  br i1 %tobool.not.i, label %cond.end.ipv6_renew_option.exit_crit_edge, label %if.end.i

cond.end.ipv6_renew_option.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_renew_option.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %new.old.i, i32 0, i32 1
  %23 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %24 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %new.old.i, i32 %shl.i)
  %26 = ptrtoint ptr %hopopt72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %hopopt72, align 4
  %hdrlen1.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %hdrlen1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdrlen1.i, align 1
  %conv2.i = zext i8 %28 to i32
  %add3.i = shl nuw nsw i32 %conv2.i, 3
  %sub.i = add nuw nsw i32 %add3.i, 11
  %and.i = and i32 %sub.i, 4088
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %and.i
  br label %ipv6_renew_option.exit

ipv6_renew_option.exit:                           ; preds = %if.end.i, %cond.end.ipv6_renew_option.exit_crit_edge
  %p.0 = phi ptr [ %add.ptr, %cond.end.ipv6_renew_option.exit_crit_edge ], [ %add.ptr.i, %if.end.i ]
  %dst0opt75 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 5
  br i1 %tobool.not, label %ipv6_renew_option.exit.cond.end80_crit_edge, label %cond.true77

ipv6_renew_option.exit.cond.end80_crit_edge:      ; preds = %ipv6_renew_option.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end80

cond.true77:                                      ; preds = %ipv6_renew_option.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dst0opt78 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 5
  %29 = ptrtoint ptr %dst0opt78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst0opt78, align 4
  br label %cond.end80

cond.end80:                                       ; preds = %cond.true77, %ipv6_renew_option.exit.cond.end80_crit_edge
  %cond81 = phi ptr [ %30, %cond.true77 ], [ null, %ipv6_renew_option.exit.cond.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %newtype)
  %cmp.i209 = icmp eq i32 %newtype, 55
  %new.old.i210 = select i1 %cmp.i209, ptr %newopt, ptr %cond81
  %tobool.not.i211 = icmp eq ptr %new.old.i210, null
  br i1 %tobool.not.i211, label %cond.end80.ipv6_renew_option.exit223_crit_edge, label %if.end.i222

cond.end80.ipv6_renew_option.exit223_crit_edge:   ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_renew_option.exit223

if.end.i222:                                      ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i212 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %new.old.i210, i32 0, i32 1
  %31 = ptrtoint ptr %hdrlen.i212 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hdrlen.i212, align 1
  %conv.i213 = zext i8 %32 to i32
  %add.i214 = shl nuw nsw i32 %conv.i213, 3
  %shl.i215 = add nuw nsw i32 %add.i214, 8
  %33 = call ptr @memcpy(ptr %p.0, ptr %new.old.i210, i32 %shl.i215)
  %34 = ptrtoint ptr %dst0opt75 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %p.0, ptr %dst0opt75, align 4
  %hdrlen1.i216 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %p.0, i32 0, i32 1
  %35 = ptrtoint ptr %hdrlen1.i216 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hdrlen1.i216, align 1
  %conv2.i217 = zext i8 %36 to i32
  %add3.i218 = shl nuw nsw i32 %conv2.i217, 3
  %sub.i219 = add nuw nsw i32 %add3.i218, 11
  %and.i220 = and i32 %sub.i219, 4088
  %add.ptr.i221 = getelementptr i8, ptr %p.0, i32 %and.i220
  br label %ipv6_renew_option.exit223

ipv6_renew_option.exit223:                        ; preds = %if.end.i222, %cond.end80.ipv6_renew_option.exit223_crit_edge
  %p.1 = phi ptr [ %p.0, %cond.end80.ipv6_renew_option.exit223_crit_edge ], [ %add.ptr.i221, %if.end.i222 ]
  %srcrt82 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 6
  br i1 %tobool.not, label %ipv6_renew_option.exit223.cond.end87_crit_edge, label %cond.true84

ipv6_renew_option.exit223.cond.end87_crit_edge:   ; preds = %ipv6_renew_option.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end87

cond.true84:                                      ; preds = %ipv6_renew_option.exit223
  call void @__sanitizer_cov_trace_pc() #12
  %srcrt85 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  %37 = ptrtoint ptr %srcrt85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %srcrt85, align 4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.true84, %ipv6_renew_option.exit223.cond.end87_crit_edge
  %cond88 = phi ptr [ %38, %cond.true84 ], [ null, %ipv6_renew_option.exit223.cond.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %newtype)
  %cmp.i224 = icmp eq i32 %newtype, 57
  %new.old.i225 = select i1 %cmp.i224, ptr %newopt, ptr %cond88
  %tobool.not.i226 = icmp eq ptr %new.old.i225, null
  br i1 %tobool.not.i226, label %cond.end87.ipv6_renew_option.exit238_crit_edge, label %if.end.i237

cond.end87.ipv6_renew_option.exit238_crit_edge:   ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_renew_option.exit238

if.end.i237:                                      ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i227 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %new.old.i225, i32 0, i32 1
  %39 = ptrtoint ptr %hdrlen.i227 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hdrlen.i227, align 1
  %conv.i228 = zext i8 %40 to i32
  %add.i229 = shl nuw nsw i32 %conv.i228, 3
  %shl.i230 = add nuw nsw i32 %add.i229, 8
  %41 = call ptr @memcpy(ptr %p.1, ptr %new.old.i225, i32 %shl.i230)
  %42 = ptrtoint ptr %srcrt82 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %p.1, ptr %srcrt82, align 4
  %hdrlen1.i231 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %p.1, i32 0, i32 1
  %43 = ptrtoint ptr %hdrlen1.i231 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hdrlen1.i231, align 1
  %conv2.i232 = zext i8 %44 to i32
  %add3.i233 = shl nuw nsw i32 %conv2.i232, 3
  %sub.i234 = add nuw nsw i32 %add3.i233, 11
  %and.i235 = and i32 %sub.i234, 4088
  %add.ptr.i236 = getelementptr i8, ptr %p.1, i32 %and.i235
  br label %ipv6_renew_option.exit238

ipv6_renew_option.exit238:                        ; preds = %if.end.i237, %cond.end87.ipv6_renew_option.exit238_crit_edge
  %p.2 = phi ptr [ %p.1, %cond.end87.ipv6_renew_option.exit238_crit_edge ], [ %add.ptr.i236, %if.end.i237 ]
  %dst1opt89 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 7
  br i1 %tobool.not, label %ipv6_renew_option.exit238.cond.end94_crit_edge, label %cond.true91

ipv6_renew_option.exit238.cond.end94_crit_edge:   ; preds = %ipv6_renew_option.exit238
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end94

cond.true91:                                      ; preds = %ipv6_renew_option.exit238
  call void @__sanitizer_cov_trace_pc() #12
  %dst1opt92 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 7
  %45 = ptrtoint ptr %dst1opt92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst1opt92, align 4
  br label %cond.end94

cond.end94:                                       ; preds = %cond.true91, %ipv6_renew_option.exit238.cond.end94_crit_edge
  %cond95 = phi ptr [ %46, %cond.true91 ], [ null, %ipv6_renew_option.exit238.cond.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %newtype)
  %cmp.i239 = icmp eq i32 %newtype, 59
  %new.old.i240 = select i1 %cmp.i239, ptr %newopt, ptr %cond95
  %tobool.not.i241 = icmp eq ptr %new.old.i240, null
  br i1 %tobool.not.i241, label %cond.end94.ipv6_renew_option.exit253_crit_edge, label %if.end.i252

cond.end94.ipv6_renew_option.exit253_crit_edge:   ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_renew_option.exit253

if.end.i252:                                      ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen.i242 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %new.old.i240, i32 0, i32 1
  %47 = ptrtoint ptr %hdrlen.i242 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hdrlen.i242, align 1
  %conv.i243 = zext i8 %48 to i32
  %add.i244 = shl nuw nsw i32 %conv.i243, 3
  %shl.i245 = add nuw nsw i32 %add.i244, 8
  %49 = call ptr @memcpy(ptr %p.2, ptr %new.old.i240, i32 %shl.i245)
  %50 = ptrtoint ptr %dst1opt89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %p.2, ptr %dst1opt89, align 4
  br label %ipv6_renew_option.exit253

ipv6_renew_option.exit253:                        ; preds = %if.end.i252, %cond.end94.ipv6_renew_option.exit253_crit_edge
  %51 = ptrtoint ptr %hopopt72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hopopt72, align 4
  %tobool97.not = icmp eq ptr %52, null
  br i1 %tobool97.not, label %ipv6_renew_option.exit253.cond.end105_crit_edge, label %cond.true98

ipv6_renew_option.exit253.cond.end105_crit_edge:  ; preds = %ipv6_renew_option.exit253
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end105

cond.true98:                                      ; preds = %ipv6_renew_option.exit253
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen100 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %hdrlen100 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hdrlen100, align 1
  %conv101 = zext i8 %54 to i16
  %add102 = shl nuw nsw i16 %conv101, 3
  %shl103 = add nuw nsw i16 %add102, 8
  br label %cond.end105

cond.end105:                                      ; preds = %cond.true98, %ipv6_renew_option.exit253.cond.end105_crit_edge
  %cond106 = phi i16 [ %shl103, %cond.true98 ], [ 0, %ipv6_renew_option.exit253.cond.end105_crit_edge ]
  %55 = ptrtoint ptr %dst0opt75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dst0opt75, align 4
  %tobool108.not = icmp eq ptr %56, null
  br i1 %tobool108.not, label %cond.end105.cond.end116_crit_edge, label %cond.true109

cond.end105.cond.end116_crit_edge:                ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end116

cond.true109:                                     ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen111 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %hdrlen111 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hdrlen111, align 1
  %conv112 = zext i8 %58 to i16
  %add113 = shl nuw nsw i16 %conv112, 3
  %shl114 = add nuw nsw i16 %add113, 8
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true109, %cond.end105.cond.end116_crit_edge
  %cond117 = phi i16 [ %shl114, %cond.true109 ], [ 0, %cond.end105.cond.end116_crit_edge ]
  %add118 = add nuw nsw i16 %cond117, %cond106
  %59 = ptrtoint ptr %srcrt82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %srcrt82, align 4
  %tobool120.not = icmp eq ptr %60, null
  br i1 %tobool120.not, label %cond.end116.cond.end128_crit_edge, label %cond.true121

cond.end116.cond.end128_crit_edge:                ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end128

cond.true121:                                     ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen123 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %hdrlen123 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hdrlen123, align 1
  %conv124 = zext i8 %62 to i16
  %add125 = shl nuw nsw i16 %conv124, 3
  %shl126 = add nuw nsw i16 %add125, 8
  br label %cond.end128

cond.end128:                                      ; preds = %cond.true121, %cond.end116.cond.end128_crit_edge
  %cond129 = phi i16 [ %shl126, %cond.true121 ], [ 0, %cond.end116.cond.end128_crit_edge ]
  %add130 = add nuw nsw i16 %add118, %cond129
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 3
  %63 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %add130, ptr %opt_nflen, align 2
  %64 = ptrtoint ptr %dst1opt89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dst1opt89, align 4
  %tobool133.not = icmp eq ptr %65, null
  br i1 %tobool133.not, label %cond.end128.cond.end141_crit_edge, label %cond.true134

cond.end128.cond.end141_crit_edge:                ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end141

cond.true134:                                     ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  %hdrlen136 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %hdrlen136 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hdrlen136, align 1
  %conv137 = zext i8 %67 to i16
  %add138 = shl nuw nsw i16 %conv137, 3
  %shl139 = add nuw nsw i16 %add138, 8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.true134, %cond.end128.cond.end141_crit_edge
  %cond142 = phi i16 [ %shl139, %cond.true134 ], [ 0, %cond.end128.cond.end141_crit_edge ]
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call, i32 0, i32 2
  %68 = ptrtoint ptr %opt_flen to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %cond142, ptr %opt_flen, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end141, %if.end65.cleanup_crit_edge, %if.end62.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %cond.end141 ], [ null, %if.end62.cleanup_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end65.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ipv6_fixup_options(ptr noundef %opt_space, ptr noundef %opt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 5
  %0 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst0opt, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true2

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true2:                                   ; preds = %land.lhs.true
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  %2 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srcrt, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true2.if.end9_crit_edge

land.lhs.true2.if.end9_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true2
  %cmp.not = icmp eq ptr %opt_space, %opt
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memcpy(ptr %opt_space, ptr %opt, i32 36)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %opt.addr.0 = phi ptr [ %opt_space, %if.then4 ], [ %opt, %if.then.if.end_crit_edge ]
  %dst0opt5 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt.addr.0, i32 0, i32 5
  %5 = ptrtoint ptr %dst0opt5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst0opt5, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %8 to i16
  %add.neg = mul nsw i16 %conv, -8
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt.addr.0, i32 0, i32 3
  %9 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %opt_nflen, align 2
  %shl.neg = add i16 %10, -8
  %sub = add i16 %shl.neg, %add.neg
  store i16 %sub, ptr %opt_nflen, align 2
  store ptr null, ptr %dst0opt5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true2.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %opt.addr.1 = phi ptr [ %opt, %land.lhs.true2.if.end9_crit_edge ], [ %opt.addr.0, %if.end ], [ %opt, %land.lhs.true.if.end9_crit_edge ], [ null, %entry.if.end9_crit_edge ]
  ret ptr %opt.addr.1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @fl6_update_dst(ptr nocapture noundef %fl6, ptr noundef readonly %opt, ptr noundef writeonly %orig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  %0 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srcrt, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %orig, ptr %daddr, i32 16)
  %3 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %srcrt, align 4
  %type = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %6, label %if.end.return_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge16
    i8 2, label %if.end.sw.bb_crit_edge17
    i8 4, label %sw.bb5
  ]

if.end.sw.bb_crit_edge17:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge16:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge16, %if.end.sw.bb_crit_edge17
  %addr = getelementptr inbounds %struct.rt0_hdr, ptr %4, i32 0, i32 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %segments_left = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %segments_left, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.ipv6_sr_hdr, ptr %4, i32 0, i32 7, i32 %idxprom
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb5, %sw.bb
  %addr.sink = phi ptr [ %addr, %sw.bb ], [ %arrayidx, %sw.bb5 ]
  %10 = call ptr @memcpy(ptr %daddr, ptr %addr.sink, i32 16)
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %orig, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_rthdr_rcv(ptr noundef %skb) #3 align 64 {
entry:
  %diff.i12.i.i = alloca [8 x i32], align 4
  %diff.i.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 80
  %3 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 36, i32 2
  %9 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devconf_all, align 32
  %accept_source_route2 = getelementptr inbounds %struct.ipv6_devconf, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %accept_source_route2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %accept_source_route2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %__in6_dev_get.exit.if.end_crit_edge, label %land.lhs.true

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %accept_source_route3 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 30
  %13 = ptrtoint ptr %accept_source_route3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %accept_source_route3, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 %14)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %__in6_dev_get.exit.if.end_crit_edge
  %accept_source_route.0 = phi i32 [ %12, %__in6_dev_get.exit.if.end_crit_edge ], [ %15, %land.lhs.true ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.lor.lhs.false_crit_edge, !prof !55

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add)
  %cmp3.i = icmp ult i32 %23, %add
  br i1 %cmp3.i, label %if.end.i.if.then13_crit_edge, label %pskb_may_pull.exit, !prof !55

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.then13_crit_edge, label %pskb_may_pull.exit.lor.lhs.false_crit_edge

pskb_may_pull.exit.lor.lhs.false_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

pskb_may_pull.exit.if.then13_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i1006 = zext i16 %29 to i32
  %add.ptr.i.i1007 = getelementptr i8, ptr %27, i32 %conv.i.i1006
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i1009 = ptrtoint ptr %add.ptr.i.i1007 to i32
  %sub.ptr.rhs.cast.i1010 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i1011 = sub i32 %sub.ptr.lhs.cast.i1009, %sub.ptr.rhs.cast.i1010
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i1007, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %33 to i32
  %add10 = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add10, 8
  %add11 = add i32 %shl, %sub.ptr.sub.i1011
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i1014 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %sub.i.i1014)
  %cmp.not.i1015 = icmp ugt i32 %add11, %sub.i.i1014
  br i1 %cmp.not.i1015, label %if.end.i1017, label %lor.lhs.false.if.end57_crit_edge, !prof !55

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end.i1017:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add11)
  %cmp3.i1016 = icmp ult i32 %35, %add11
  br i1 %cmp3.i1016, label %if.end.i1017.if.then13_crit_edge, label %pskb_may_pull.exit1023, !prof !55

if.end.i1017.if.then13_crit_edge:                 ; preds = %if.end.i1017
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

pskb_may_pull.exit1023:                           ; preds = %if.end.i1017
  %sub.i1018 = sub i32 %add11, %sub.i.i1014
  %call13.i1019 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i1018) #10
  %cmp14.i1020.not = icmp eq ptr %call13.i1019, null
  br i1 %cmp14.i1020.not, label %pskb_may_pull.exit1023.if.then13_crit_edge, label %pskb_may_pull.exit1023.if.end57_crit_edge

pskb_may_pull.exit1023.if.end57_crit_edge:        ; preds = %pskb_may_pull.exit1023
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

pskb_may_pull.exit1023.if.then13_crit_edge:       ; preds = %pskb_may_pull.exit1023
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %pskb_may_pull.exit1023.if.then13_crit_edge, %if.end.i1017.if.then13_crit_edge, %pskb_may_pull.exit.if.then13_crit_edge, %if.end.i.if.then13_crit_edge
  br i1 %tobool.not, label %if.then13.do.body34_crit_edge, label %do.body, !prof !55

if.then13.do.body34_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.body:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv621 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %38 = ptrtoint ptr %ipv621 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipv621, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu, align 4
  %arrayidx24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %46, %40
  %47 = inttoptr i32 %add25 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx26 = getelementptr [37 x i64], ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 %49, 1
  store i64 %add27, ptr %arrayidx26, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #10
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %52 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body34

do.body34:                                        ; preds = %do.body, %if.then13.do.body34_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %54 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ipv6_statistics, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1024 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i1024 to ptr
  %cpu45 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu45, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %62, %56
  %63 = inttoptr i32 %add47 to ptr
  %syncp48 = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp48)
  %arrayidx50 = getelementptr [37 x i64], ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx50, align 8
  %add51 = add i64 %65, 1
  store i64 %add51, ptr %arrayidx50, align 8
  %dep_map.i.i1025 = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1, i32 0, i32 1
  %66 = tail call ptr @llvm.returnaddress(i32 0) #10
  %67 = ptrtoint ptr %66 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1025, i32 noundef %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %68 = ptrtoint ptr %syncp48 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp48, align 4
  %inc.i.i.i1026 = add i32 %69, 1
  store i32 %inc.i.i.i1026, ptr %syncp48, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end57:                                         ; preds = %pskb_may_pull.exit1023.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %70 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i, align 8
  %72 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i, align 2
  %conv.i1029 = zext i16 %73 to i32
  %add.ptr.i1030 = getelementptr i8, ptr %71, i32 %conv.i1029
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %74 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1032 = zext i16 %75 to i32
  %add.ptr.i.i1033 = getelementptr i8, ptr %71, i32 %conv.i.i1032
  %daddr60 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1033, i32 0, i32 6
  %76 = ptrtoint ptr %daddr60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %daddr60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %77)
  %cmp.i = icmp ugt i32 %77, -16777217
  br i1 %cmp.i, label %if.end57.if.then67_crit_edge, label %lor.lhs.false63

if.end57.if.then67_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

lor.lhs.false63:                                  ; preds = %if.end57
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %78 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp65.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp65.not, label %if.end129, label %lor.lhs.false63.if.then67_crit_edge

lor.lhs.false63.if.then67_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false63.if.then67_crit_edge, %if.end57.if.then67_crit_edge
  br i1 %tobool.not, label %if.then67.do.body104_crit_edge, label %do.body78, !prof !55

if.then67.do.body104_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body104

do.body78:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv688 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %79 = ptrtoint ptr %ipv688 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ipv688, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1034 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i1034 to ptr
  %cpu91 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu91, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %87, %81
  %88 = inttoptr i32 %add93 to ptr
  %syncp94 = getelementptr inbounds %struct.ipstats_mib, ptr %88, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp94)
  %arrayidx96 = getelementptr [37 x i64], ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx96, align 8
  %add97 = add i64 %90, 1
  store i64 %add97, ptr %arrayidx96, align 8
  %dep_map.i.i1035 = getelementptr inbounds %struct.ipstats_mib, ptr %88, i32 0, i32 1, i32 0, i32 1
  %91 = tail call ptr @llvm.returnaddress(i32 0) #10
  %92 = ptrtoint ptr %91 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1035, i32 noundef %92) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %93 = ptrtoint ptr %syncp94 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %syncp94, align 4
  %inc.i.i.i1036 = add i32 %94, 1
  store i32 %inc.i.i.i1036, ptr %syncp94, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body104

do.body104:                                       ; preds = %do.body78, %if.then67.do.body104_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics114 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %95 = ptrtoint ptr %ipv6_statistics114 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ipv6_statistics114, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1037 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i1037 to ptr
  %cpu117 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu117 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu117, align 4
  %arrayidx118 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %103, %97
  %104 = inttoptr i32 %add119 to ptr
  %syncp120 = getelementptr inbounds %struct.ipstats_mib, ptr %104, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp120)
  %arrayidx122 = getelementptr [37 x i64], ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx122, align 8
  %add123 = add i64 %106, 1
  store i64 %add123, ptr %arrayidx122, align 8
  %dep_map.i.i1038 = getelementptr inbounds %struct.ipstats_mib, ptr %104, i32 0, i32 1, i32 0, i32 1
  %107 = tail call ptr @llvm.returnaddress(i32 0) #10
  %108 = ptrtoint ptr %107 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1038, i32 noundef %108) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %109 = ptrtoint ptr %syncp120 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %syncp120, align 4
  %inc.i.i.i1039 = add i32 %110, 1
  store i32 %inc.i.i.i1039, ptr %syncp120, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end129:                                        ; preds = %lor.lhs.false63
  %type = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr.i1030, i32 0, i32 2
  %111 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %type, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %112, label %looped_back.preheader [
    i8 4, label %sw.bb
    i8 3, label %sw.bb132
  ]

looped_back.preheader:                            ; preds = %if.end129
  %segments_left1375 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr.i1030, i32 0, i32 3
  %114 = ptrtoint ptr %segments_left1375 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %segments_left1375, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp1351376 = icmp eq i8 %115, 0
  br i1 %cmp1351376, label %looped_back.preheader.if.then137_crit_edge, label %if.end218.lr.ph

looped_back.preheader.if.then137_crit_edge:       ; preds = %looped_back.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

if.end218.lr.ph:                                  ; preds = %looped_back.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %accept_source_route.0)
  %cmp222 = icmp slt i32 %accept_source_route.0, 0
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  br label %if.end218

sw.bb:                                            ; preds = %if.end129
  %117 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %0, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 127
  %119 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nd_net.i.i, align 4
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 80
  %121 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i.i, label %sw.bb.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.__in6_dev_get.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %call2.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %sw.bb.__in6_dev_get.exit.i_crit_edge
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %120, i32 0, i32 36, i32 2
  %123 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %devconf_all.i, align 32
  %seg6_enabled.i = getelementptr inbounds %struct.ipv6_devconf, ptr %124, i32 0, i32 46
  %125 = ptrtoint ptr %seg6_enabled.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %seg6_enabled.i, align 4
  %seg6_enabled3.i = getelementptr inbounds %struct.inet6_dev, ptr %122, i32 0, i32 32, i32 46
  %127 = ptrtoint ptr %seg6_enabled3.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %seg6_enabled3.i, align 4
  %129 = tail call i32 @llvm.smin.i32(i32 %126, i32 %128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i1044 = icmp eq i32 %129, 0
  br i1 %tobool.not.i1044, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end7.i:                                        ; preds = %__in6_dev_get.exit.i
  %call8.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #10
  br i1 %call8.i, label %looped_back.preheader.i, label %if.then9.i

looped_back.preheader.i:                          ; preds = %if.end7.i
  %segments_left532.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i1030, i32 0, i32 3
  %130 = ptrtoint ptr %segments_left532.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %segments_left532.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp11533.i = icmp eq i8 %131, 0
  br i1 %cmp11533.i, label %looped_back.preheader.i.if.then13.i_crit_edge, label %if.end51.lr.ph.i

looped_back.preheader.i.if.then13.i_crit_edge:    ; preds = %looped_back.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.end51.lr.ph.i:                                 ; preds = %looped_back.preheader.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %132 = getelementptr inbounds [2 x i32], ptr %diff.i.i.i, i32 0, i32 1
  %133 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %134 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 1
  %135 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 2
  %136 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 3
  %137 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 4
  %138 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 5
  %139 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 6
  %140 = getelementptr inbounds [8 x i32], ptr %diff.i12.i.i, i32 0, i32 7
  %141 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  br label %if.end51.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.then13.i:                                      ; preds = %if.end266.i.if.then13.i_crit_edge, %looped_back.preheader.i.if.then13.i_crit_edge
  %hdr.0.lcssa.i = phi ptr [ %add.ptr.i1030, %looped_back.preheader.i.if.then13.i_crit_edge ], [ %add.ptr.i445.i, %if.end266.i.if.then13.i_crit_edge ]
  %142 = ptrtoint ptr %hdr.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %hdr.0.lcssa.i, align 4
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %143, label %if.end37.i [
    i8 41, label %if.then13.i.if.then21.i_crit_edge
    i8 4, label %if.then13.i.if.then21.i_crit_edge1681
  ]

if.then13.i.if.then21.i_crit_edge1681:            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then13.i.if.then21.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.then13.i.if.then21.i_crit_edge, %if.then13.i.if.then21.i_crit_edge1681
  %hdrlen.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %hdr.0.lcssa.i, i32 0, i32 1
  %145 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %hdrlen.i, align 1
  %conv22.i = zext i8 %146 to i32
  %add.i = shl nuw nsw i32 %conv22.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %147 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i, align 8
  %149 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load.i.i = load i16, ptr %pkt_type, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %150 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.22)
  switch i2 %trunc.i.i, label %if.then21.i.skb_postpull_rcsum.exit.i_crit_edge [
    i2 -2, label %if.then.i371.i
    i2 -1, label %land.lhs.true.i372.i
  ]

if.then21.i.skb_postpull_rcsum.exit.i_crit_edge:  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit.i

if.then.i371.i:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %transport_header.i.i, align 2
  %conv.i368.i = zext i16 %152 to i32
  %153 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %network_header.i.i, align 4
  %conv.i365.i = zext i16 %154 to i32
  %sub.i.i1046 = sub nsw i32 %conv.i368.i, %conv.i365.i
  %add.ptr.i366.i = getelementptr i8, ptr %148, i32 %conv.i365.i
  %155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 8
  %sub.i.i.i = sub i32 0, %157
  %call2.i370.i = call i32 @csum_partial(ptr noundef %add.ptr.i366.i, i32 noundef %sub.i.i1046, i32 noundef %sub.i.i.i) #10
  %sub.i25.i.i = sub i32 0, %call2.i370.i
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub.i25.i.i, ptr %155, align 8
  br label %skb_postpull_rcsum.exit.i

land.lhs.true.i372.i:                             ; preds = %if.then21.i
  %159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %159, align 8
  %conv.i.i.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %163 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %148 to i32
  %sub.ptr.sub.i.neg.i.i.i = add i32 %conv.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.i26.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i.i)
  %cmp13.i.i = icmp slt i32 %sub.i26.i.i, 0
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i372.i.skb_postpull_rcsum.exit.i_crit_edge

land.lhs.true.i372.i.skb_postpull_rcsum.exit.i_crit_edge: ; preds = %land.lhs.true.i372.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i372.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i.i = and i16 %bf.load.i.i, -1537
  %164 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %bf.clear18.i.i, ptr %pkt_type, align 8
  br label %skb_postpull_rcsum.exit.i

skb_postpull_rcsum.exit.i:                        ; preds = %if.then15.i.i, %land.lhs.true.i372.i.skb_postpull_rcsum.exit.i_crit_edge, %if.then.i371.i, %if.then21.i.skb_postpull_rcsum.exit.i_crit_edge
  %165 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %shl.i)
  %cmp.i.i = icmp ult i32 %166, %shl.i
  br i1 %cmp.i.i, label %skb_postpull_rcsum.exit.i.if.then27.i_crit_edge, label %cond.false.i.i, !prof !55

skb_postpull_rcsum.exit.i.if.then27.i_crit_edge:  ; preds = %skb_postpull_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

cond.false.i.i:                                   ; preds = %skb_postpull_rcsum.exit.i
  %167 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i.i = sub i32 %166, %168
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %shl.i, %sub.i.i.i.i
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %cond.false.i.i.pskb_pull.exit.i_crit_edge

cond.false.i.i.pskb_pull.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i
  %sub.i.i373.i = sub i32 %shl.i, %sub.i.i.i.i
  %call2.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i373.i) #10
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.if.then27.i_crit_edge, label %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge

land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i.if.then27.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

pskb_pull.exit.i:                                 ; preds = %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge, %cond.false.i.i.pskb_pull.exit.i_crit_edge
  %169 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len.i.i, align 4
  %sub4.i.i.i = sub i32 %170, %shl.i
  store i32 %sub4.i.i.i, ptr %len.i.i, align 4
  %171 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %172, i32 %shl.i
  store ptr %add.ptr.i.i.i, ptr %data.i, align 4
  %tobool26.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool26.not.i, label %pskb_pull.exit.i.if.then27.i_crit_edge, label %if.end28.i

pskb_pull.exit.i.if.then27.i_crit_edge:           ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

if.then27.i:                                      ; preds = %pskb_pull.exit.i.if.then27.i_crit_edge, %land.lhs.true.i.i.i.if.then27.i_crit_edge, %skb_postpull_rcsum.exit.i.if.then27.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end28.i:                                       ; preds = %pskb_pull.exit.i
  %173 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %head.i.i, align 8
  %175 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %175)
  %bf.load.i379.i = load i16, ptr %pkt_type, align 8
  %bf.lshr.i380.i = lshr i16 %bf.load.i379.i, 9
  %trunc.i381.i = trunc i16 %bf.lshr.i380.i to i2
  %176 = zext i2 %trunc.i381.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.23)
  switch i2 %trunc.i381.i, label %if.end28.i.skb_postpull_rcsum.exit397.i_crit_edge [
    i2 -2, label %if.then.i385.i
    i2 -1, label %land.lhs.true.i394.i
  ]

if.end28.i.skb_postpull_rcsum.exit397.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit397.i

if.then.i385.i:                                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %transport_header.i.i, align 2
  %conv.i376.i = zext i16 %178 to i32
  %add.ptr.i377.i = getelementptr i8, ptr %174, i32 %conv.i376.i
  %179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %sub.i.i382.i = sub i32 0, %181
  %call2.i383.i = call i32 @csum_partial(ptr noundef %add.ptr.i377.i, i32 noundef %shl.i, i32 noundef %sub.i.i382.i) #10
  %sub.i25.i384.i = sub i32 0, %call2.i383.i
  %182 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub.i25.i384.i, ptr %179, align 8
  br label %skb_postpull_rcsum.exit397.i

land.lhs.true.i394.i:                             ; preds = %if.end28.i
  %183 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %183, align 8
  %conv.i.i386.i = zext i16 %185 to i32
  %sub.ptr.lhs.cast.i.i.i389.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i390.i = ptrtoint ptr %174 to i32
  %sub.ptr.sub.i.neg.i.i391.i = sub i32 %sub.ptr.rhs.cast.i.i.i390.i, %sub.ptr.lhs.cast.i.i.i389.i
  %sub.i26.i392.i = add i32 %sub.ptr.sub.i.neg.i.i391.i, %conv.i.i386.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i392.i)
  %cmp13.i393.i = icmp slt i32 %sub.i26.i392.i, 0
  br i1 %cmp13.i393.i, label %if.then15.i396.i, label %land.lhs.true.i394.i.skb_postpull_rcsum.exit397.i_crit_edge

land.lhs.true.i394.i.skb_postpull_rcsum.exit397.i_crit_edge: ; preds = %land.lhs.true.i394.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit397.i

if.then15.i396.i:                                 ; preds = %land.lhs.true.i394.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i395.i = and i16 %bf.load.i379.i, -1537
  %186 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %bf.clear18.i395.i, ptr %pkt_type, align 8
  br label %skb_postpull_rcsum.exit397.i

skb_postpull_rcsum.exit397.i:                     ; preds = %if.then15.i396.i, %land.lhs.true.i394.i.skb_postpull_rcsum.exit397.i_crit_edge, %if.then.i385.i, %if.end28.i.skb_postpull_rcsum.exit397.i_crit_edge
  %187 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i, align 4
  %189 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %188 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %190 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i399.i = trunc i32 %sub.ptr.sub.i.i to i16
  %191 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.i399.i, ptr %network_header.i.i, align 4
  %192 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv.i399.i, ptr %transport_header.i.i, align 2
  %193 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %193)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %bf.clear.i = and i16 %bf.load.i, -5
  store i16 %bf.clear.i, ptr %pkt_type, align 8
  %194 = ptrtoint ptr %hdr.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %hdr.0.lcssa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %195)
  %cmp32.i = icmp eq i8 %195, 4
  br i1 %cmp32.i, label %if.then34.i, label %skb_postpull_rcsum.exit397.i.if.end35.i_crit_edge

skb_postpull_rcsum.exit397.i.if.end35.i_crit_edge: ; preds = %skb_postpull_rcsum.exit397.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then34.i:                                      ; preds = %skb_postpull_rcsum.exit397.i
  call void @__sanitizer_cov_trace_pc() #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %196 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 2048, ptr %protocol.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %skb_postpull_rcsum.exit397.i.if.end35.i_crit_edge
  %197 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %0, align 8
  %199 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool.not.i.i408.i = icmp eq i16 %199, 0
  br i1 %tobool.not.i.i408.i, label %if.then.i.i.i, label %if.end35.i.__skb_tunnel_rx.exit.i_crit_edge

if.end35.i.__skb_tunnel_rx.exit.i_crit_edge:      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_tunnel_rx.exit.i

if.then.i.i.i:                                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %200 = ptrtoint ptr %hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %hash.i.i.i.i, align 4
  %bf.clear2.i.i.i.i = and i16 %bf.load.i, -197
  %201 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %bf.clear2.i.i.i.i, ptr %pkt_type, align 8
  br label %__skb_tunnel_rx.exit.i

__skb_tunnel_rx.exit.i:                           ; preds = %if.then.i.i.i, %if.end35.i.__skb_tunnel_rx.exit.i_crit_edge
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %202 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %queue_mapping1.i.i.i, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 127
  %203 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %nd_net.i.i.i, align 4
  %cmp.i.i409.i = icmp ne ptr %204, %120
  call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i409.i) #10
  %call36.i = call i32 @netif_rx(ptr noundef %skb) #10
  br label %cleanup

if.end37.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %transport_header.i.i, align 2
  %207 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %network_header.i.i, align 4
  %conv1.i413.i = zext i16 %208 to i32
  %sub.i414.i = sub i16 %206, %208
  %srcrt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %209 = ptrtoint ptr %srcrt.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %sub.i414.i, ptr %srcrt.i, align 4
  %lastopt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %210 = ptrtoint ptr %lastopt.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %sub.i414.i, ptr %lastopt.i, align 4
  %hdrlen41.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %hdr.0.lcssa.i, i32 0, i32 1
  %211 = ptrtoint ptr %hdrlen41.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %hdrlen41.i, align 1
  %conv42.i = zext i8 %212 to i16
  %add43.i = shl nuw nsw i16 %conv42.i, 3
  %shl44.i = add i16 %206, 8
  %add46.i = add i16 %shl44.i, %add43.i
  store i16 %add46.i, ptr %transport_header.i.i, align 2
  %213 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i418.i = getelementptr i8, ptr %214, i32 %conv1.i413.i
  %sub.ptr.lhs.cast.i1047 = ptrtoint ptr %hdr.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i1048 = ptrtoint ptr %add.ptr.i418.i to i32
  %sub.ptr.sub.i1049 = sub i32 %sub.ptr.lhs.cast.i1047, %sub.ptr.rhs.cast.i1048
  %conv50.i = trunc i32 %sub.ptr.sub.i1049 to i16
  %nhoff.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %215 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv50.i, ptr %nhoff.i, align 2
  br label %cleanup

if.end51.i:                                       ; preds = %if.end266.i.if.end51.i_crit_edge, %if.end51.lr.ph.i
  %216 = phi i8 [ %131, %if.end51.lr.ph.i ], [ %419, %if.end266.i.if.end51.i_crit_edge ]
  %hdr.0534.i = phi ptr [ %add.ptr.i1030, %if.end51.lr.ph.i ], [ %add.ptr.i445.i, %if.end266.i.if.end51.i_crit_edge ]
  %hdrlen54.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %hdr.0534.i, i32 0, i32 1
  %217 = ptrtoint ptr %hdrlen54.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %hdrlen54.i, align 1
  %219 = lshr i8 %218, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %216, i8 %219)
  %cmp56.not.i = icmp ult i8 %216, %219
  br i1 %cmp56.not.i, label %if.end106.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end51.i
  %segments_left.le.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %hdr.0534.i, i32 0, i32 3
  %cmp59.not.i = icmp eq ptr %122, null
  br i1 %cmp59.not.i, label %if.then58.i.do.body78.i_crit_edge, label %do.body.i, !prof !55

if.then58.i.do.body78.i_crit_edge:                ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78.i

do.body.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable() #10
  %ipv666.i = getelementptr inbounds %struct.inet6_dev, ptr %122, i32 0, i32 33, i32 1
  %220 = ptrtoint ptr %ipv666.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ipv666.i, align 4
  %222 = ptrtoint ptr %221 to i32
  %223 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i = and i32 %223, -16384
  %224 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %226
  %227 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx.i, align 4
  %add69.i = add i32 %228, %222
  %229 = inttoptr i32 %add69.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %229, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #10
  %arrayidx70.i = getelementptr [37 x i64], ptr %229, i32 0, i32 7
  %230 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %arrayidx70.i, align 8
  %add71.i = add i64 %231, 1
  store i64 %add71.i, ptr %arrayidx70.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %229, i32 0, i32 1, i32 0, i32 1
  %232 = call ptr @llvm.returnaddress(i32 0) #10
  %233 = ptrtoint ptr %232 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %233) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %234 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %235, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  call fastcc void @local_bh_enable() #10
  br label %do.body78.i

do.body78.i:                                      ; preds = %do.body.i, %if.then58.i.do.body78.i_crit_edge
  call fastcc void @local_bh_disable() #10
  %ipv6_statistics.i = getelementptr inbounds %struct.net, ptr %120, i32 0, i32 30, i32 1
  %236 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ipv6_statistics.i, align 4
  %238 = ptrtoint ptr %237 to i32
  %239 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i419.i = and i32 %239, -16384
  %240 = inttoptr i32 %and.i419.i to ptr
  %cpu89.i = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %cpu89.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %cpu89.i, align 4
  %arrayidx90.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %242
  %243 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx90.i, align 4
  %add91.i = add i32 %244, %238
  %245 = inttoptr i32 %add91.i to ptr
  %syncp92.i = getelementptr inbounds %struct.ipstats_mib, ptr %245, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp92.i) #10
  %arrayidx94.i = getelementptr [37 x i64], ptr %245, i32 0, i32 7
  %246 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %arrayidx94.i, align 8
  %add95.i = add i64 %247, 1
  store i64 %add95.i, ptr %arrayidx94.i, align 8
  %dep_map.i.i420.i = getelementptr inbounds %struct.ipstats_mib, ptr %245, i32 0, i32 1, i32 0, i32 1
  %248 = call ptr @llvm.returnaddress(i32 0) #10
  %249 = ptrtoint ptr %248 to i32
  call void @lock_release(ptr noundef %dep_map.i.i420.i, i32 noundef %249) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %250 = ptrtoint ptr %syncp92.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %syncp92.i, align 4
  %inc.i.i.i421.i = add i32 %251, 1
  store i32 %inc.i.i.i421.i, ptr %syncp92.i, align 4
  call fastcc void @local_bh_enable() #10
  %252 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %head.i.i, align 8
  %254 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %network_header.i.i, align 4
  %conv.i424.i = zext i16 %255 to i32
  %add.ptr.i425.i = getelementptr i8, ptr %253, i32 %conv.i424.i
  %sub.ptr.lhs.cast103.i = ptrtoint ptr %segments_left.le.i to i32
  %sub.ptr.rhs.cast104.i = ptrtoint ptr %add.ptr.i425.i to i32
  %sub.ptr.sub105.i = sub i32 %sub.ptr.lhs.cast103.i, %sub.ptr.rhs.cast104.i
  call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %sub.ptr.sub105.i) #10
  br label %cleanup

if.end106.i:                                      ; preds = %if.end51.i
  %256 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load.i426.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i426.i)
  %tobool.not.i427.i = icmp sgt i8 %bf.load.i426.i, -1
  br i1 %tobool.not.i427.i, label %if.end106.i.if.end177.i_crit_edge, label %skb_cloned.exit.i

if.end106.i.if.end177.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i

skb_cloned.exit.i:                                ; preds = %if.end106.i
  %257 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %258, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %259 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i428.i = and i32 %260, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i428.i)
  %cmp.i429.not.i = icmp eq i32 %and.i428.i, 1
  br i1 %cmp.i429.not.i, label %skb_cloned.exit.i.if.end177.i_crit_edge, label %if.then109.i

skb_cloned.exit.i.if.end177.i_crit_edge:          ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i

if.then109.i:                                     ; preds = %skb_cloned.exit.i
  %call110.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.then109.i.if.end177.i_crit_edge, label %if.then112.i

if.then109.i.if.end177.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i

if.then112.i:                                     ; preds = %if.then109.i
  %261 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %141, align 8
  %and.i430.i = and i32 %262, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i430.i)
  %tobool.not.i431.i = icmp eq i32 %and.i430.i, 0
  br i1 %tobool.not.i431.i, label %if.then112.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i433.i

if.then112.i.skb_dst.exit.i_crit_edge:            ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i433.i:                             ; preds = %if.then112.i
  %call.i432.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i432.i)
  %tobool1.not.i.i = icmp eq i32 %call.i432.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i435.i, label %land.lhs.true.i433.i.skb_dst.exit.i_crit_edge

land.lhs.true.i433.i.skb_dst.exit.i_crit_edge:    ; preds = %land.lhs.true.i433.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.rhs.i435.i:                                  ; preds = %land.lhs.true.i433.i
  %call2.i434.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i434.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i434.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i435.i.skb_dst.exit.i_crit_edge, !prof !55

land.rhs.i435.i.skb_dst.exit.i_crit_edge:         ; preds = %land.rhs.i435.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i435.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i435.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i433.i.skb_dst.exit.i_crit_edge, %if.then112.i.skb_dst.exit.i_crit_edge
  %263 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %141, align 8
  %and25.i.i = and i32 %264, -2
  %265 = inttoptr i32 %and25.i.i to ptr
  %rt6i_idev.i.i = getelementptr inbounds %struct.rt6_info, ptr %265, i32 0, i32 6
  %266 = ptrtoint ptr %rt6i_idev.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rt6i_idev.i.i, align 4
  %cmp116.not.i = icmp eq ptr %267, null
  br i1 %cmp116.not.i, label %skb_dst.exit.i.do.body151.i_crit_edge, label %do.body125.i, !prof !55

skb_dst.exit.i.do.body151.i_crit_edge:            ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body151.i

do.body125.i:                                     ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable() #10
  %ipv6135.i = getelementptr inbounds %struct.inet6_dev, ptr %267, i32 0, i32 33, i32 1
  %268 = ptrtoint ptr %ipv6135.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ipv6135.i, align 4
  %270 = ptrtoint ptr %269 to i32
  %271 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i436.i = and i32 %271, -16384
  %272 = inttoptr i32 %and.i436.i to ptr
  %cpu138.i = getelementptr inbounds %struct.thread_info, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %cpu138.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %cpu138.i, align 4
  %arrayidx139.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %274
  %275 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx139.i, align 4
  %add140.i = add i32 %276, %270
  %277 = inttoptr i32 %add140.i to ptr
  %syncp141.i = getelementptr inbounds %struct.ipstats_mib, ptr %277, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp141.i) #10
  %arrayidx143.i = getelementptr [37 x i64], ptr %277, i32 0, i32 14
  %278 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %arrayidx143.i, align 8
  %add144.i = add i64 %279, 1
  store i64 %add144.i, ptr %arrayidx143.i, align 8
  %dep_map.i.i437.i = getelementptr inbounds %struct.ipstats_mib, ptr %277, i32 0, i32 1, i32 0, i32 1
  %280 = call ptr @llvm.returnaddress(i32 0) #10
  %281 = ptrtoint ptr %280 to i32
  call void @lock_release(ptr noundef %dep_map.i.i437.i, i32 noundef %281) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %282 = ptrtoint ptr %syncp141.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %syncp141.i, align 4
  %inc.i.i.i438.i = add i32 %283, 1
  store i32 %inc.i.i.i438.i, ptr %syncp141.i, align 4
  call fastcc void @local_bh_enable() #10
  br label %do.body151.i

do.body151.i:                                     ; preds = %do.body125.i, %skb_dst.exit.i.do.body151.i_crit_edge
  call fastcc void @local_bh_disable() #10
  %ipv6_statistics161.i = getelementptr inbounds %struct.net, ptr %120, i32 0, i32 30, i32 1
  %284 = ptrtoint ptr %ipv6_statistics161.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ipv6_statistics161.i, align 4
  %286 = ptrtoint ptr %285 to i32
  %287 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i439.i = and i32 %287, -16384
  %288 = inttoptr i32 %and.i439.i to ptr
  %cpu164.i = getelementptr inbounds %struct.thread_info, ptr %288, i32 0, i32 3
  %289 = ptrtoint ptr %cpu164.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %cpu164.i, align 4
  %arrayidx165.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %290
  %291 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx165.i, align 4
  %add166.i = add i32 %292, %286
  %293 = inttoptr i32 %add166.i to ptr
  %syncp167.i = getelementptr inbounds %struct.ipstats_mib, ptr %293, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp167.i) #10
  %arrayidx169.i = getelementptr [37 x i64], ptr %293, i32 0, i32 14
  %294 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %arrayidx169.i, align 8
  %add170.i = add i64 %295, 1
  store i64 %add170.i, ptr %arrayidx169.i, align 8
  %dep_map.i.i440.i = getelementptr inbounds %struct.ipstats_mib, ptr %293, i32 0, i32 1, i32 0, i32 1
  %296 = call ptr @llvm.returnaddress(i32 0) #10
  %297 = ptrtoint ptr %296 to i32
  call void @lock_release(ptr noundef %dep_map.i.i440.i, i32 noundef %297) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %298 = ptrtoint ptr %syncp167.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %syncp167.i, align 4
  %inc.i.i.i441.i = add i32 %299, 1
  store i32 %inc.i.i.i441.i, ptr %syncp167.i, align 4
  call fastcc void @local_bh_enable() #10
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end177.i:                                      ; preds = %if.then109.i.if.end177.i_crit_edge, %skb_cloned.exit.i.if.end177.i_crit_edge, %if.end106.i.if.end177.i_crit_edge
  %300 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %head.i.i, align 8
  %302 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %transport_header.i.i, align 2
  %conv.i444.i = zext i16 %303 to i32
  %add.ptr.i445.i = getelementptr i8, ptr %301, i32 %conv.i444.i
  %segments_left179.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i445.i, i32 0, i32 3
  %304 = ptrtoint ptr %segments_left179.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %segments_left179.i, align 1
  %dec.i = add i8 %305, -1
  store i8 %dec.i, ptr %segments_left179.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i445.i, i32 0, i32 7
  %conv182.i = zext i8 %dec.i to i32
  %add.ptr.i1050 = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv182.i
  %call183.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 40) #10
  %306 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %306)
  %bf.load184.i = load i16, ptr %pkt_type, align 8
  %307 = and i16 %bf.load184.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %307)
  %cmp187.i = icmp eq i16 %307, 1024
  br i1 %cmp187.i, label %if.then189.i, label %if.end177.i.if.end190.i_crit_edge

if.end177.i.if.end190.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190.i

if.then189.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  %308 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %head.i.i, align 8
  %310 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i446.i = zext i16 %311 to i32
  %add.ptr.i.i447.i = getelementptr i8, ptr %309, i32 %conv.i.i446.i
  %segments.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i.i447.i, i32 0, i32 7
  %segments_left.i.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i.i447.i, i32 0, i32 3
  %312 = ptrtoint ptr %segments_left.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %segments_left.i.i, align 1
  %conv.i448.i = zext i8 %313 to i32
  %add.ptr.i449.i = getelementptr %struct.in6_addr, ptr %segments.i.i, i32 %conv.i448.i
  %inc.i.i = add i8 %313, 1
  store i8 %inc.i.i, ptr %segments_left.i.i, align 1
  %314 = ptrtoint ptr %add.ptr.i.i447.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %add.ptr.i.i447.i, align 4
  store i8 %313, ptr %segments_left.i.i, align 1
  %316 = load i32, ptr %add.ptr.i.i447.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i.i.i) #10
  %neg.i.i.i = xor i32 %315, -1
  %317 = ptrtoint ptr %diff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %neg.i.i.i, ptr %diff.i.i.i, align 4
  %318 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %316, ptr %132, align 4
  %319 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %133, align 8
  %neg1.i.i.i = xor i32 %320, -1
  %call.i.i.i = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i, i32 noundef 8, i32 noundef %neg1.i.i.i) #10
  %neg2.i.i.i = xor i32 %call.i.i.i, -1
  %321 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %neg2.i.i.i, ptr %133, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i.i.i) #10
  %322 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %head.i.i, align 8
  %324 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %325 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %323, i32 %conv.i.i.i.i
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %diff.i12.i.i) #10
  %326 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %daddr.i.i, align 4
  %neg.i13.i.i = xor i32 %327, -1
  %328 = ptrtoint ptr %diff.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %neg.i13.i.i, ptr %diff.i12.i.i, align 4
  %arrayidx1.i.i.i = getelementptr i32, ptr %daddr.i.i, i32 1
  %329 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx1.i.i.i, align 4
  %neg2.i14.i.i = xor i32 %330, -1
  %331 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %neg2.i14.i.i, ptr %134, align 4
  %arrayidx4.i.i.i = getelementptr i32, ptr %daddr.i.i, i32 2
  %332 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx4.i.i.i, align 4
  %neg5.i.i.i = xor i32 %333, -1
  %334 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %neg5.i.i.i, ptr %135, align 4
  %arrayidx7.i.i.i = getelementptr i32, ptr %daddr.i.i, i32 3
  %335 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx7.i.i.i, align 4
  %neg8.i.i.i = xor i32 %336, -1
  %337 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %neg8.i.i.i, ptr %136, align 4
  %338 = ptrtoint ptr %add.ptr.i449.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %add.ptr.i449.i, align 4
  %340 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %137, align 4
  %arrayidx12.i.i.i = getelementptr i32, ptr %add.ptr.i449.i, i32 1
  %341 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx12.i.i.i, align 4
  %343 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %138, align 4
  %arrayidx14.i.i.i = getelementptr i32, ptr %add.ptr.i449.i, i32 2
  %344 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx14.i.i.i, align 4
  %346 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %139, align 4
  %arrayidx16.i.i.i = getelementptr i32, ptr %add.ptr.i449.i, i32 3
  %347 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx16.i.i.i, align 4
  %349 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %140, align 4
  %call.i15.i.i = call i32 @csum_partial(ptr noundef nonnull %diff.i12.i.i, i32 noundef 32, i32 noundef %call.i.i.i) #10
  %neg18.i.i.i = xor i32 %call.i15.i.i, -1
  %350 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %neg18.i.i.i, ptr %133, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %diff.i12.i.i) #10
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then189.i, %if.end177.i.if.end190.i_crit_edge
  %351 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %head.i.i, align 8
  %353 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i451.i = zext i16 %354 to i32
  %add.ptr.i.i452.i = getelementptr i8, ptr %352, i32 %conv.i.i451.i
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i452.i, i32 0, i32 6
  %355 = call ptr @memcpy(ptr %daddr.i, ptr %add.ptr.i1050, i32 16)
  %356 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %141, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool.not.i453.i = icmp eq i32 %357, 0
  br i1 %tobool.not.i453.i, label %if.end190.i.skb_dst_drop.exit.i_crit_edge, label %if.then.i455.i

if.end190.i.skb_dst_drop.exit.i_crit_edge:        ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit.i

if.then.i455.i:                                   ; preds = %if.end190.i
  %and.i.i.i = and i32 %357, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i454.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i454.i, label %if.then.i.i456.i, label %if.then.i455.i.refdst_drop.exit.i.i_crit_edge

if.then.i455.i.refdst_drop.exit.i.i_crit_edge:    ; preds = %if.then.i455.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i.i

if.then.i.i456.i:                                 ; preds = %if.then.i455.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i.i = and i32 %357, -2
  %358 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %358) #10
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i456.i, %if.then.i455.i.refdst_drop.exit.i.i_crit_edge
  %359 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %141, align 8
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %refdst_drop.exit.i.i, %if.end190.i.skb_dst_drop.exit.i_crit_edge
  call void @ip6_route_input(ptr noundef %skb) #10
  %360 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %141, align 8
  %and.i457.i = and i32 %361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i457.i)
  %tobool.not.i458.i = icmp eq i32 %and.i457.i, 0
  br i1 %tobool.not.i458.i, label %skb_dst_drop.exit.i.skb_dst.exit467.i_crit_edge, label %land.lhs.true.i461.i

skb_dst_drop.exit.i.skb_dst.exit467.i_crit_edge:  ; preds = %skb_dst_drop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit467.i

land.lhs.true.i461.i:                             ; preds = %skb_dst_drop.exit.i
  %call.i459.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i459.i)
  %tobool1.not.i460.i = icmp eq i32 %call.i459.i, 0
  br i1 %tobool1.not.i460.i, label %land.rhs.i464.i, label %land.lhs.true.i461.i.skb_dst.exit467.i_crit_edge

land.lhs.true.i461.i.skb_dst.exit467.i_crit_edge: ; preds = %land.lhs.true.i461.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit467.i

land.rhs.i464.i:                                  ; preds = %land.lhs.true.i461.i
  %call2.i462.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i462.i)
  %tobool3.not.i463.i = icmp eq i32 %call2.i462.i, 0
  br i1 %tobool3.not.i463.i, label %do.end.i465.i, label %land.rhs.i464.i.skb_dst.exit467.i_crit_edge, !prof !55

land.rhs.i464.i.skb_dst.exit467.i_crit_edge:      ; preds = %land.rhs.i464.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit467.i

do.end.i465.i:                                    ; preds = %land.rhs.i464.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit467.i

skb_dst.exit467.i:                                ; preds = %do.end.i465.i, %land.rhs.i464.i.skb_dst.exit467.i_crit_edge, %land.lhs.true.i461.i.skb_dst.exit467.i_crit_edge, %skb_dst_drop.exit.i.skb_dst.exit467.i_crit_edge
  %362 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %141, align 8
  %and25.i466.i = and i32 %363, -2
  %364 = inttoptr i32 %and25.i466.i to ptr
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %364, i32 0, i32 15
  %365 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %366)
  %tobool193.not.i = icmp eq i16 %366, 0
  %and.i473.i = and i32 %363, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i473.i)
  %tobool.not.i474.i = icmp eq i32 %and.i473.i, 0
  br i1 %tobool193.not.i, label %if.end196.i, label %if.then194.i

if.then194.i:                                     ; preds = %skb_dst.exit467.i
  br i1 %tobool.not.i474.i, label %if.then194.i.dst_input.exit.i_crit_edge, label %land.lhs.true.i.i471.i

if.then194.i.dst_input.exit.i_crit_edge:          ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i

land.lhs.true.i.i471.i:                           ; preds = %if.then194.i
  %call.i.i470.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i470.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i470.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i471.i.dst_input.exit.i_crit_edge

land.lhs.true.i.i471.i.dst_input.exit.i_crit_edge: ; preds = %land.lhs.true.i.i471.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i471.i
  %call2.i.i472.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i472.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i472.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_input.exit.i_crit_edge, !prof !55

land.rhs.i.i.i.dst_input.exit.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_input.exit.i

dst_input.exit.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_input.exit.i_crit_edge, %land.lhs.true.i.i471.i.dst_input.exit.i_crit_edge, %if.then194.i.dst_input.exit.i_crit_edge
  %367 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %141, align 8
  %and25.i.i.i = and i32 %368, -2
  %369 = inttoptr i32 %and25.i.i.i to ptr
  %input.i.i = getelementptr inbounds %struct.dst_entry, ptr %369, i32 0, i32 5
  %370 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %input.i.i, align 4
  %call1.i.i = call i32 %371(ptr noundef %skb) #10
  br label %cleanup

if.end196.i:                                      ; preds = %skb_dst.exit467.i
  br i1 %tobool.not.i474.i, label %if.end196.i.skb_dst.exit483.i_crit_edge, label %land.lhs.true.i477.i

if.end196.i.skb_dst.exit483.i_crit_edge:          ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit483.i

land.lhs.true.i477.i:                             ; preds = %if.end196.i
  %call.i475.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i475.i)
  %tobool1.not.i476.i = icmp eq i32 %call.i475.i, 0
  br i1 %tobool1.not.i476.i, label %land.rhs.i480.i, label %land.lhs.true.i477.i.skb_dst.exit483.i_crit_edge

land.lhs.true.i477.i.skb_dst.exit483.i_crit_edge: ; preds = %land.lhs.true.i477.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit483.i

land.rhs.i480.i:                                  ; preds = %land.lhs.true.i477.i
  %call2.i478.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i478.i)
  %tobool3.not.i479.i = icmp eq i32 %call2.i478.i, 0
  br i1 %tobool3.not.i479.i, label %do.end.i481.i, label %land.rhs.i480.i.skb_dst.exit483.i_crit_edge, !prof !55

land.rhs.i480.i.skb_dst.exit483.i_crit_edge:      ; preds = %land.rhs.i480.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit483.i

do.end.i481.i:                                    ; preds = %land.rhs.i480.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit483.i

skb_dst.exit483.i:                                ; preds = %do.end.i481.i, %land.rhs.i480.i.skb_dst.exit483.i_crit_edge, %land.lhs.true.i477.i.skb_dst.exit483.i_crit_edge, %if.end196.i.skb_dst.exit483.i_crit_edge
  %372 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %141, align 8
  %and25.i482.i = and i32 %373, -2
  %374 = inttoptr i32 %and25.i482.i to ptr
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %374, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %376, i32 0, i32 14
  %377 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %flags.i, align 8
  %and.i1051 = and i32 %378, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1051)
  %tobool198.not.i = icmp eq i32 %and.i1051, 0
  br i1 %tobool198.not.i, label %if.end271.i, label %if.then199.i

if.then199.i:                                     ; preds = %skb_dst.exit483.i
  %379 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %head.i.i, align 8
  %381 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i486.i = zext i16 %382 to i32
  %add.ptr.i.i487.i = getelementptr i8, ptr %380, i32 %conv.i.i486.i
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i487.i, i32 0, i32 4
  %383 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %hop_limit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %384)
  %cmp202.i = icmp ult i8 %384, 2
  br i1 %cmp202.i, label %if.then204.i, label %if.end266.i

if.then204.i:                                     ; preds = %if.then199.i
  %cmp206.not.i = icmp eq ptr %122, null
  br i1 %cmp206.not.i, label %if.then204.i.do.body241.i_crit_edge, label %do.body215.i, !prof !55

if.then204.i.do.body241.i_crit_edge:              ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body241.i

do.body215.i:                                     ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable() #10
  %ipv6225.i = getelementptr inbounds %struct.inet6_dev, ptr %122, i32 0, i32 33, i32 1
  %385 = ptrtoint ptr %ipv6225.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %ipv6225.i, align 4
  %387 = ptrtoint ptr %386 to i32
  %388 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i488.i = and i32 %388, -16384
  %389 = inttoptr i32 %and.i488.i to ptr
  %cpu228.i = getelementptr inbounds %struct.thread_info, ptr %389, i32 0, i32 3
  %390 = ptrtoint ptr %cpu228.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %cpu228.i, align 4
  %arrayidx229.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %391
  %392 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx229.i, align 4
  %add230.i = add i32 %393, %387
  %394 = inttoptr i32 %add230.i to ptr
  %syncp231.i = getelementptr inbounds %struct.ipstats_mib, ptr %394, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp231.i) #10
  %arrayidx233.i = getelementptr [37 x i64], ptr %394, i32 0, i32 7
  %395 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %arrayidx233.i, align 8
  %add234.i = add i64 %396, 1
  store i64 %add234.i, ptr %arrayidx233.i, align 8
  %dep_map.i.i489.i = getelementptr inbounds %struct.ipstats_mib, ptr %394, i32 0, i32 1, i32 0, i32 1
  %397 = call ptr @llvm.returnaddress(i32 0) #10
  %398 = ptrtoint ptr %397 to i32
  call void @lock_release(ptr noundef %dep_map.i.i489.i, i32 noundef %398) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %399 = ptrtoint ptr %syncp231.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %syncp231.i, align 4
  %inc.i.i.i490.i = add i32 %400, 1
  store i32 %inc.i.i.i490.i, ptr %syncp231.i, align 4
  call fastcc void @local_bh_enable() #10
  br label %do.body241.i

do.body241.i:                                     ; preds = %do.body215.i, %if.then204.i.do.body241.i_crit_edge
  call fastcc void @local_bh_disable() #10
  %ipv6_statistics251.i = getelementptr inbounds %struct.net, ptr %120, i32 0, i32 30, i32 1
  %401 = ptrtoint ptr %ipv6_statistics251.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ipv6_statistics251.i, align 4
  %403 = ptrtoint ptr %402 to i32
  %404 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i491.i = and i32 %404, -16384
  %405 = inttoptr i32 %and.i491.i to ptr
  %cpu254.i = getelementptr inbounds %struct.thread_info, ptr %405, i32 0, i32 3
  %406 = ptrtoint ptr %cpu254.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %cpu254.i, align 4
  %arrayidx255.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %407
  %408 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx255.i, align 4
  %add256.i = add i32 %409, %403
  %410 = inttoptr i32 %add256.i to ptr
  %syncp257.i = getelementptr inbounds %struct.ipstats_mib, ptr %410, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp257.i) #10
  %arrayidx259.i = getelementptr [37 x i64], ptr %410, i32 0, i32 7
  %411 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load8_noabort(i32 %411)
  %412 = load i64, ptr %arrayidx259.i, align 8
  %add260.i = add i64 %412, 1
  store i64 %add260.i, ptr %arrayidx259.i, align 8
  %dep_map.i.i492.i = getelementptr inbounds %struct.ipstats_mib, ptr %410, i32 0, i32 1, i32 0, i32 1
  %413 = call ptr @llvm.returnaddress(i32 0) #10
  %414 = ptrtoint ptr %413 to i32
  call void @lock_release(ptr noundef %dep_map.i.i492.i, i32 noundef %414) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %415 = ptrtoint ptr %syncp257.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %syncp257.i, align 4
  %inc.i.i.i493.i = add i32 %416, 1
  store i32 %inc.i.i.i493.i, ptr %syncp257.i, align 4
  call fastcc void @local_bh_enable() #10
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb.i.i) #10
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end266.i:                                      ; preds = %if.then199.i
  %dec269.i = add i8 %384, -1
  %417 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %dec269.i, ptr %hop_limit.i, align 1
  %call270.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #10
  %418 = ptrtoint ptr %segments_left179.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %segments_left179.i, align 1
  %cmp11.i = icmp eq i8 %419, 0
  br i1 %cmp11.i, label %if.end266.i.if.then13.i_crit_edge, label %if.end266.i.if.end51.i_crit_edge

if.end266.i.if.end51.i_crit_edge:                 ; preds = %if.end266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.end266.i.if.then13.i_crit_edge:                ; preds = %if.end266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.end271.i:                                      ; preds = %skb_dst.exit483.i
  %and.i.i498.i = and i32 %373, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i498.i)
  %tobool.not.i.i499.i = icmp eq i32 %and.i.i498.i, 0
  br i1 %tobool.not.i.i499.i, label %if.end271.i.dst_input.exit510.i_crit_edge, label %land.lhs.true.i.i502.i

if.end271.i.dst_input.exit510.i_crit_edge:        ; preds = %if.end271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit510.i

land.lhs.true.i.i502.i:                           ; preds = %if.end271.i
  %call.i.i500.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i500.i)
  %tobool1.not.i.i501.i = icmp eq i32 %call.i.i500.i, 0
  br i1 %tobool1.not.i.i501.i, label %land.rhs.i.i505.i, label %land.lhs.true.i.i502.i.dst_input.exit510.i_crit_edge

land.lhs.true.i.i502.i.dst_input.exit510.i_crit_edge: ; preds = %land.lhs.true.i.i502.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit510.i

land.rhs.i.i505.i:                                ; preds = %land.lhs.true.i.i502.i
  %call2.i.i503.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i503.i)
  %tobool3.not.i.i504.i = icmp eq i32 %call2.i.i503.i, 0
  br i1 %tobool3.not.i.i504.i, label %do.end.i.i506.i, label %land.rhs.i.i505.i.dst_input.exit510.i_crit_edge, !prof !55

land.rhs.i.i505.i.dst_input.exit510.i_crit_edge:  ; preds = %land.rhs.i.i505.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit510.i

do.end.i.i506.i:                                  ; preds = %land.rhs.i.i505.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_input.exit510.i

dst_input.exit510.i:                              ; preds = %do.end.i.i506.i, %land.rhs.i.i505.i.dst_input.exit510.i_crit_edge, %land.lhs.true.i.i502.i.dst_input.exit510.i_crit_edge, %if.end271.i.dst_input.exit510.i_crit_edge
  %420 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %141, align 8
  %and25.i.i507.i = and i32 %421, -2
  %422 = inttoptr i32 %and25.i.i507.i to ptr
  %input.i508.i = getelementptr inbounds %struct.dst_entry, ptr %422, i32 0, i32 5
  %423 = ptrtoint ptr %input.i508.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %input.i508.i, align 4
  %call1.i509.i = call i32 %424(ptr noundef %skb) #10
  br label %cleanup

sw.bb132:                                         ; preds = %if.end129
  %425 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %0, align 8
  %nd_net.i.i1052 = getelementptr inbounds %struct.net_device, ptr %426, i32 0, i32 127
  %427 = ptrtoint ptr %nd_net.i.i1052 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %nd_net.i.i1052, align 4
  %ip6_ptr.i.i1053 = getelementptr inbounds %struct.net_device, ptr %426, i32 0, i32 80
  %429 = ptrtoint ptr %ip6_ptr.i.i1053 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load volatile ptr, ptr %ip6_ptr.i.i1053, align 8
  %call.i.i1054 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i.i1054, label %sw.bb132.__in6_dev_get.exit.i1066_crit_edge, label %lor.lhs.false.i.i1057

sw.bb132.__in6_dev_get.exit.i1066_crit_edge:      ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i1066

lor.lhs.false.i.i1057:                            ; preds = %sw.bb132
  %call2.i.i1055 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i1055)
  %tobool.not.i.i1056 = icmp eq i32 %call2.i.i1055, 0
  br i1 %tobool.not.i.i1056, label %land.lhs.true.i.i1060, label %lor.lhs.false.i.i1057.__in6_dev_get.exit.i1066_crit_edge

lor.lhs.false.i.i1057.__in6_dev_get.exit.i1066_crit_edge: ; preds = %lor.lhs.false.i.i1057
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i1066

land.lhs.true.i.i1060:                            ; preds = %lor.lhs.false.i.i1057
  %call3.i.i1058 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i1058)
  %tobool4.not.i.i1059 = icmp eq i32 %call3.i.i1058, 0
  br i1 %tobool4.not.i.i1059, label %land.lhs.true.i.i1060.__in6_dev_get.exit.i1066_crit_edge, label %land.lhs.true5.i.i1062

land.lhs.true.i.i1060.__in6_dev_get.exit.i1066_crit_edge: ; preds = %land.lhs.true.i.i1060
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i1066

land.lhs.true5.i.i1062:                           ; preds = %land.lhs.true.i.i1060
  %.b10.i.i1061 = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i1061, label %land.lhs.true5.i.i1062.__in6_dev_get.exit.i1066_crit_edge, label %if.then.i.i1063

land.lhs.true5.i.i1062.__in6_dev_get.exit.i1066_crit_edge: ; preds = %land.lhs.true5.i.i1062
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i1066

if.then.i.i1063:                                  ; preds = %land.lhs.true5.i.i1062
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get.exit.i1066

__in6_dev_get.exit.i1066:                         ; preds = %if.then.i.i1063, %land.lhs.true5.i.i1062.__in6_dev_get.exit.i1066_crit_edge, %land.lhs.true.i.i1060.__in6_dev_get.exit.i1066_crit_edge, %lor.lhs.false.i.i1057.__in6_dev_get.exit.i1066_crit_edge, %sw.bb132.__in6_dev_get.exit.i1066_crit_edge
  %devconf_all.i1064 = getelementptr inbounds %struct.net, ptr %428, i32 0, i32 36, i32 2
  %431 = ptrtoint ptr %devconf_all.i1064 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %devconf_all.i1064, align 32
  %rpl_seg_enabled.i = getelementptr inbounds %struct.ipv6_devconf, ptr %432, i32 0, i32 52
  %433 = ptrtoint ptr %rpl_seg_enabled.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %rpl_seg_enabled.i, align 4
  %rpl_seg_enabled2.i = getelementptr inbounds %struct.inet6_dev, ptr %430, i32 0, i32 32, i32 52
  %435 = ptrtoint ptr %rpl_seg_enabled2.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %rpl_seg_enabled2.i, align 4
  %437 = tail call i32 @llvm.smin.i32(i32 %434, i32 %436) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %tobool.not.i1065 = icmp eq i32 %437, 0
  br i1 %tobool.not.i1065, label %if.then5.i, label %looped_back.preheader.i1069

looped_back.preheader.i1069:                      ; preds = %__in6_dev_get.exit.i1066
  %438 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %head.i.i, align 8
  %440 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %transport_header.i.i, align 2
  %conv.i1190.i = zext i16 %441 to i32
  %add.ptr.i1191.i = getelementptr i8, ptr %439, i32 %conv.i1190.i
  %segments_left1192.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i1191.i, i32 0, i32 3
  %442 = ptrtoint ptr %segments_left1192.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %segments_left1192.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %cmp81193.i = icmp eq i8 %443, 0
  br i1 %cmp81193.i, label %looped_back.preheader.i1069.if.then10.i_crit_edge, label %if.end38.lr.ph.i

looped_back.preheader.i1069.if.then10.i_crit_edge: ; preds = %looped_back.preheader.i1069
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.end38.lr.ph.i:                                 ; preds = %looped_back.preheader.i1069
  %cloned.i.i1070 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %end.i.i.i1071 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %444 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %445 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  br label %if.end38.i

if.then5.i:                                       ; preds = %__in6_dev_get.exit.i1066
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.then10.i.loopexit:                             ; preds = %if.end571.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i1162.le = zext i16 %767 to i32
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then10.i.loopexit, %looped_back.preheader.i1069.if.then10.i_crit_edge
  %conv.i.le.pre-phi.i = phi i32 [ %conv.i1190.i, %looped_back.preheader.i1069.if.then10.i_crit_edge ], [ %conv.i.i1162.le, %if.then10.i.loopexit ]
  %.lcssa1189.i = phi i16 [ %441, %looped_back.preheader.i1069.if.then10.i_crit_edge ], [ %767, %if.then10.i.loopexit ]
  %.lcssa1152.i = phi ptr [ %439, %looped_back.preheader.i1069.if.then10.i_crit_edge ], [ %765, %if.then10.i.loopexit ]
  %add.ptr.i.lcssa.i = phi ptr [ %add.ptr.i1191.i, %looped_back.preheader.i1069.if.then10.i_crit_edge ], [ %add.ptr.i.i1163, %if.then10.i.loopexit ]
  %446 = ptrtoint ptr %add.ptr.i.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %add.ptr.i.lcssa.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %447)
  %cmp12.i = icmp eq i8 %447, 41
  br i1 %cmp12.i, label %if.then14.i, label %if.end24.i

if.then14.i:                                      ; preds = %if.then10.i
  %hdrlen.i1072 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i.lcssa.i, i32 0, i32 1
  %448 = ptrtoint ptr %hdrlen.i1072 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %hdrlen.i1072, align 1
  %conv15.i = zext i8 %449 to i32
  %add.i1073 = shl nuw nsw i32 %conv15.i, 3
  %shl.i1074 = add nuw nsw i32 %add.i1073, 8
  %450 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %450)
  %bf.load.i.i1077 = load i16, ptr %pkt_type, align 8
  %bf.lshr.i.i1078 = lshr i16 %bf.load.i.i1077, 9
  %trunc.i.i1079 = trunc i16 %bf.lshr.i.i1078 to i2
  %451 = zext i2 %trunc.i.i1079 to i64
  call void @__sanitizer_cov_trace_switch(i64 %451, ptr @__sancov_gen_cov_switch_values.24)
  switch i2 %trunc.i.i1079, label %if.then14.i.skb_postpull_rcsum.exit.i1094_crit_edge [
    i2 -2, label %if.then.i815.i
    i2 -1, label %land.lhs.true.i816.i
  ]

if.then14.i.skb_postpull_rcsum.exit.i1094_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit.i1094

if.then.i815.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %452 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %network_header.i.i, align 4
  %conv.i809.i = zext i16 %453 to i32
  %sub.i.i1080 = sub nsw i32 %conv.i.le.pre-phi.i, %conv.i809.i
  %add.ptr.i810.i = getelementptr i8, ptr %.lcssa1152.i, i32 %conv.i809.i
  %454 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %454, align 8
  %sub.i.i.i1081 = sub i32 0, %456
  %call2.i814.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i810.i, i32 noundef %sub.i.i1080, i32 noundef %sub.i.i.i1081) #10
  %sub.i25.i.i1082 = sub i32 0, %call2.i814.i
  %457 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %sub.i25.i.i1082, ptr %454, align 8
  br label %skb_postpull_rcsum.exit.i1094

land.lhs.true.i816.i:                             ; preds = %if.then14.i
  %458 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %458, align 8
  %conv.i.i.i1083 = zext i16 %460 to i32
  %461 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i1085 = ptrtoint ptr %462 to i32
  %sub.ptr.rhs.cast.i.i.i.i1086 = ptrtoint ptr %.lcssa1152.i to i32
  %sub.ptr.sub.i.neg.i.i.i1087 = add i32 %conv.i.i.i1083, %sub.ptr.rhs.cast.i.i.i.i1086
  %sub.i26.i.i1088 = sub i32 %sub.ptr.sub.i.neg.i.i.i1087, %sub.ptr.lhs.cast.i.i.i.i1085
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i.i1088)
  %cmp13.i.i1089 = icmp slt i32 %sub.i26.i.i1088, 0
  br i1 %cmp13.i.i1089, label %if.then15.i.i1091, label %land.lhs.true.i816.i.skb_postpull_rcsum.exit.i1094_crit_edge

land.lhs.true.i816.i.skb_postpull_rcsum.exit.i1094_crit_edge: ; preds = %land.lhs.true.i816.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit.i1094

if.then15.i.i1091:                                ; preds = %land.lhs.true.i816.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i.i1090 = and i16 %bf.load.i.i1077, -1537
  %463 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 %bf.clear18.i.i1090, ptr %pkt_type, align 8
  br label %skb_postpull_rcsum.exit.i1094

skb_postpull_rcsum.exit.i1094:                    ; preds = %if.then15.i.i1091, %land.lhs.true.i816.i.skb_postpull_rcsum.exit.i1094_crit_edge, %if.then.i815.i, %if.then14.i.skb_postpull_rcsum.exit.i1094_crit_edge
  %464 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %465, i32 %shl.i1074)
  %cmp.i.i1093 = icmp ult i32 %465, %shl.i1074
  br i1 %cmp.i.i1093, label %skb_postpull_rcsum.exit.i1094.if.then20.i_crit_edge, label %cond.false.i.i1098, !prof !55

skb_postpull_rcsum.exit.i1094.if.then20.i_crit_edge: ; preds = %skb_postpull_rcsum.exit.i1094
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

cond.false.i.i1098:                               ; preds = %skb_postpull_rcsum.exit.i1094
  %466 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i.i1096 = sub i32 %465, %467
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i1074, i32 %sub.i.i.i.i1096)
  %cmp.i.i.i1097 = icmp ugt i32 %shl.i1074, %sub.i.i.i.i1096
  br i1 %cmp.i.i.i1097, label %land.lhs.true.i.i.i1101, label %cond.false.i.i1098.pskb_pull.exit.i1105_crit_edge

cond.false.i.i1098.pskb_pull.exit.i1105_crit_edge: ; preds = %cond.false.i.i1098
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit.i1105

land.lhs.true.i.i.i1101:                          ; preds = %cond.false.i.i1098
  %sub.i.i817.i = sub i32 %shl.i1074, %sub.i.i.i.i1096
  %call2.i.i.i1099 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i817.i) #10
  %tobool.not.i.i.i1100 = icmp eq ptr %call2.i.i.i1099, null
  br i1 %tobool.not.i.i.i1100, label %land.lhs.true.i.i.i1101.if.then20.i_crit_edge, label %land.lhs.true.i.i.i1101.pskb_pull.exit.i1105_crit_edge

land.lhs.true.i.i.i1101.pskb_pull.exit.i1105_crit_edge: ; preds = %land.lhs.true.i.i.i1101
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit.i1105

land.lhs.true.i.i.i1101.if.then20.i_crit_edge:    ; preds = %land.lhs.true.i.i.i1101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

pskb_pull.exit.i1105:                             ; preds = %land.lhs.true.i.i.i1101.pskb_pull.exit.i1105_crit_edge, %cond.false.i.i1098.pskb_pull.exit.i1105_crit_edge
  %468 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %len.i.i, align 4
  %sub4.i.i.i1102 = sub i32 %469, %shl.i1074
  store i32 %sub4.i.i.i1102, ptr %len.i.i, align 4
  %470 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i1104 = getelementptr i8, ptr %471, i32 %shl.i1074
  store ptr %add.ptr.i.i.i1104, ptr %data.i, align 4
  %tobool19.not.i = icmp eq ptr %add.ptr.i.i.i1104, null
  br i1 %tobool19.not.i, label %pskb_pull.exit.i1105.if.then20.i_crit_edge, label %if.end21.i

pskb_pull.exit.i1105.if.then20.i_crit_edge:       ; preds = %pskb_pull.exit.i1105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then20.i:                                      ; preds = %pskb_pull.exit.i1105.if.then20.i_crit_edge, %land.lhs.true.i.i.i1101.if.then20.i_crit_edge, %skb_postpull_rcsum.exit.i1094.if.then20.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end21.i:                                       ; preds = %pskb_pull.exit.i1105
  call void @__sanitizer_cov_trace_pc() #12
  %472 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %head.i.i, align 8
  %474 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %transport_header.i.i, align 2
  %conv.i820.i = zext i16 %475 to i32
  %add.ptr.i821.i = getelementptr i8, ptr %473, i32 %conv.i820.i
  tail call fastcc void @skb_postpull_rcsum(ptr noundef %skb, ptr noundef %add.ptr.i821.i, i32 noundef %shl.i1074) #10
  %476 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %data.i, align 4
  %478 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i1106 = ptrtoint ptr %477 to i32
  %sub.ptr.rhs.cast.i.i1107 = ptrtoint ptr %479 to i32
  %sub.ptr.sub.i.i1108 = sub i32 %sub.ptr.lhs.cast.i.i1106, %sub.ptr.rhs.cast.i.i1107
  %conv.i823.i = trunc i32 %sub.ptr.sub.i.i1108 to i16
  %480 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %conv.i823.i, ptr %network_header.i.i, align 4
  %481 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 %conv.i823.i, ptr %transport_header.i.i, align 2
  %482 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %482)
  %bf.load.i1109 = load i16, ptr %pkt_type, align 8
  %bf.clear.i1110 = and i16 %bf.load.i1109, -5
  store i16 %bf.clear.i1110, ptr %pkt_type, align 8
  %483 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %0, align 8
  tail call fastcc void @__skb_tunnel_rx(ptr noundef %skb, ptr noundef %484, ptr noundef %428) #10
  %call23.i = tail call i32 @netif_rx(ptr noundef %skb) #10
  br label %cleanup

if.end24.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %485 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %network_header.i.i, align 4
  %conv1.i835.i = zext i16 %486 to i32
  %sub.i836.i = sub i16 %.lcssa1189.i, %486
  %srcrt.i1111 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %487 = ptrtoint ptr %srcrt.i1111 to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %sub.i836.i, ptr %srcrt.i1111, align 4
  %lastopt.i1112 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %488 = ptrtoint ptr %lastopt.i1112 to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %sub.i836.i, ptr %lastopt.i1112, align 4
  %hdrlen28.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i.lcssa.i, i32 0, i32 1
  %489 = ptrtoint ptr %hdrlen28.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %hdrlen28.i, align 1
  %conv29.i = zext i8 %490 to i16
  %add30.i = shl nuw nsw i16 %conv29.i, 3
  %shl31.i = add i16 %.lcssa1189.i, 8
  %add33.i = add i16 %shl31.i, %add30.i
  %491 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %add33.i, ptr %transport_header.i.i, align 2
  %add.ptr.i840.i = getelementptr i8, ptr %.lcssa1152.i, i32 %conv1.i835.i
  %sub.ptr.lhs.cast.i1113 = ptrtoint ptr %add.ptr.i.lcssa.i to i32
  %sub.ptr.rhs.cast.i1114 = ptrtoint ptr %add.ptr.i840.i to i32
  %sub.ptr.sub.i1115 = sub i32 %sub.ptr.lhs.cast.i1113, %sub.ptr.rhs.cast.i1114
  %conv37.i = trunc i32 %sub.ptr.sub.i1115 to i16
  %nhoff.i1116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %492 = ptrtoint ptr %nhoff.i1116 to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 %conv37.i, ptr %nhoff.i1116, align 2
  br label %cleanup

if.end38.i:                                       ; preds = %if.end571.i.if.end38.i_crit_edge, %if.end38.lr.ph.i
  %segments_left1195.i = phi ptr [ %segments_left1192.i, %if.end38.lr.ph.i ], [ %segments_left.i, %if.end571.i.if.end38.i_crit_edge ]
  %add.ptr.i1194.i = phi ptr [ %add.ptr.i1191.i, %if.end38.lr.ph.i ], [ %add.ptr.i.i1163, %if.end571.i.if.end38.i_crit_edge ]
  %493 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %len.i.i, align 4
  %495 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i841.i = sub i32 %494, %496
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i841.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i841.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end38.i.if.end41.i_crit_edge, !prof !55

if.end38.i.if.end41.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.end.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %494)
  %cmp3.i.i = icmp ult i32 %494, 8
  br i1 %cmp3.i.i, label %if.end.i.i.if.then40.i_crit_edge, label %pskb_may_pull.exit.i, !prof !55

if.end.i.i.if.then40.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i842.i = sub nuw nsw i32 8, %sub.i.i841.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i842.i) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then40.i_crit_edge, label %pskb_may_pull.exit.i.if.end41.i_crit_edge

pskb_may_pull.exit.i.if.end41.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

pskb_may_pull.exit.i.if.then40.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i

if.then40.i:                                      ; preds = %pskb_may_pull.exit.i.if.then40.i_crit_edge, %if.end.i.i.if.then40.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end41.i:                                       ; preds = %pskb_may_pull.exit.i.if.end41.i_crit_edge, %if.end38.i.if.end41.i_crit_edge
  %hdrlen42.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i1194.i, i32 0, i32 1
  %497 = ptrtoint ptr %hdrlen42.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %hdrlen42.i, align 1
  %conv43.i = zext i8 %498 to i32
  %shl44.i1117 = shl nuw nsw i32 %conv43.i, 3
  %pad.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i1194.i, i32 0, i32 4
  %499 = ptrtoint ptr %pad.i to i32
  call void @__asan_loadN_noabort(i32 %499, i32 4)
  %bf.load45.i = load i32, ptr %pad.i, align 1
  %bf.lshr.i = lshr i32 %bf.load45.i, 20
  %bf.clear46.i = and i32 %bf.lshr.i, 15
  %sub.i1118 = sub nsw i32 %shl44.i1117, %bf.clear46.i
  %bf.lshr48.i = lshr i32 %bf.load45.i, 24
  %sub50.neg.i = or i32 %bf.lshr48.i, -16
  %sub51.i = add nsw i32 %sub.i1118, %sub50.neg.i
  %bf.lshr54.i = lshr i32 %bf.load45.i, 28
  %sub55.i = sub nuw nsw i32 16, %bf.lshr54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub51.i)
  %cmp229.i = icmp sgt i32 %sub51.i, -1
  br i1 %cmp229.i, label %if.then233.i, label %if.else239.i, !prof !58

if.then233.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem235.lhs.trunc.i = trunc i32 %sub51.i to i16
  %rem235.rhs.trunc.i = trunc i32 %sub55.i to i16
  %rem235.lhs.trunc.i.frozen = freeze i16 %rem235.lhs.trunc.i
  %rem235.rhs.trunc.i.frozen = freeze i16 %rem235.rhs.trunc.i
  %div2371228.i = udiv i16 %rem235.lhs.trunc.i.frozen, %rem235.rhs.trunc.i.frozen
  %500 = mul i16 %div2371228.i, %rem235.rhs.trunc.i.frozen
  %rem2351227.i.decomposed = sub i16 %rem235.lhs.trunc.i.frozen, %500
  %rem235.zext.i = zext i16 %rem2351227.i.decomposed to i32
  %conv238.i = zext i16 %div2371228.i to i64
  br label %if.end243.i

if.else239.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv52.i = sext i32 %sub51.i to i64
  %501 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub55.i, i64 %conv52.i) #13, !srcloc !59
  %asmresult.i845.i = extractvalue { i64, i64 } %501, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %501, 1
  %shr.i.i = lshr i64 %asmresult.i845.i, 32
  %conv.i846.i = trunc i64 %shr.i.i to i32
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.else239.i, %if.then233.i
  %n.0.i = phi i64 [ %conv238.i, %if.then233.i ], [ %asmresult1.i.i, %if.else239.i ]
  %__rem.0.i = phi i32 [ %rem235.zext.i, %if.then233.i ], [ %conv.i846.i, %if.else239.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool245.not.i = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool245.not.i, label %lor.lhs.false.i1124, label %if.end243.i.if.then249.i_crit_edge

if.end243.i.if.then249.i_crit_edge:               ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then249.i

lor.lhs.false.i1124:                              ; preds = %if.end243.i
  %add246.i = add i64 %n.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %add246.i)
  %cmp247.i = icmp ugt i64 %add246.i, 255
  br i1 %cmp247.i, label %lor.lhs.false.i1124.if.then249.i_crit_edge, label %if.end250.i

lor.lhs.false.i1124.if.then249.i_crit_edge:       ; preds = %lor.lhs.false.i1124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then249.i

if.then249.i:                                     ; preds = %lor.lhs.false.i1124.if.then249.i_crit_edge, %if.end243.i.if.then249.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end250.i:                                      ; preds = %lor.lhs.false.i1124
  %502 = ptrtoint ptr %segments_left1195.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %segments_left1195.i, align 1
  %conv252.i = zext i8 %503 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add246.i, i64 %conv252.i)
  %cmp254.i = icmp ult i64 %add246.i, %conv252.i
  br i1 %cmp254.i, label %if.then256.i, label %if.end309.i

if.then256.i:                                     ; preds = %if.end250.i
  %cmp257.not.i = icmp eq ptr %430, null
  br i1 %cmp257.not.i, label %if.then256.i.do.body281.i_crit_edge, label %do.body.i1130, !prof !55

if.then256.i.do.body281.i_crit_edge:              ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body281.i

do.body.i1130:                                    ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable() #10
  %ipv6269.i = getelementptr inbounds %struct.inet6_dev, ptr %430, i32 0, i32 33, i32 1
  %504 = ptrtoint ptr %ipv6269.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %ipv6269.i, align 4
  %506 = ptrtoint ptr %505 to i32
  %507 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i847.i = and i32 %507, -16384
  %508 = inttoptr i32 %and.i847.i to ptr
  %cpu.i1125 = getelementptr inbounds %struct.thread_info, ptr %508, i32 0, i32 3
  %509 = ptrtoint ptr %cpu.i1125 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %cpu.i1125, align 4
  %arrayidx.i1126 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %510
  %511 = ptrtoint ptr %arrayidx.i1126 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i1126, align 4
  %add272.i = add i32 %512, %506
  %513 = inttoptr i32 %add272.i to ptr
  %syncp.i1127 = getelementptr inbounds %struct.ipstats_mib, ptr %513, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i1127) #10
  %arrayidx273.i = getelementptr [37 x i64], ptr %513, i32 0, i32 7
  %514 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_load8_noabort(i32 %514)
  %515 = load i64, ptr %arrayidx273.i, align 8
  %add274.i = add i64 %515, 1
  store i64 %add274.i, ptr %arrayidx273.i, align 8
  %dep_map.i.i.i1128 = getelementptr inbounds %struct.ipstats_mib, ptr %513, i32 0, i32 1, i32 0, i32 1
  %516 = tail call ptr @llvm.returnaddress(i32 0) #10
  %517 = ptrtoint ptr %516 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i1128, i32 noundef %517) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %518 = ptrtoint ptr %syncp.i1127 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %syncp.i1127, align 4
  %inc.i.i.i.i1129 = add i32 %519, 1
  store i32 %inc.i.i.i.i1129, ptr %syncp.i1127, align 4
  tail call fastcc void @local_bh_enable() #10
  br label %do.body281.i

do.body281.i:                                     ; preds = %do.body.i1130, %if.then256.i.do.body281.i_crit_edge
  tail call fastcc void @local_bh_disable() #10
  %ipv6_statistics.i1131 = getelementptr inbounds %struct.net, ptr %428, i32 0, i32 30, i32 1
  %520 = ptrtoint ptr %ipv6_statistics.i1131 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %ipv6_statistics.i1131, align 4
  %522 = ptrtoint ptr %521 to i32
  %523 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i848.i = and i32 %523, -16384
  %524 = inttoptr i32 %and.i848.i to ptr
  %cpu292.i = getelementptr inbounds %struct.thread_info, ptr %524, i32 0, i32 3
  %525 = ptrtoint ptr %cpu292.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %cpu292.i, align 4
  %arrayidx293.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %526
  %527 = ptrtoint ptr %arrayidx293.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx293.i, align 4
  %add294.i = add i32 %528, %522
  %529 = inttoptr i32 %add294.i to ptr
  %syncp295.i = getelementptr inbounds %struct.ipstats_mib, ptr %529, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp295.i) #10
  %arrayidx297.i = getelementptr [37 x i64], ptr %529, i32 0, i32 7
  %530 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load8_noabort(i32 %530)
  %531 = load i64, ptr %arrayidx297.i, align 8
  %add298.i = add i64 %531, 1
  store i64 %add298.i, ptr %arrayidx297.i, align 8
  %dep_map.i.i849.i = getelementptr inbounds %struct.ipstats_mib, ptr %529, i32 0, i32 1, i32 0, i32 1
  %532 = tail call ptr @llvm.returnaddress(i32 0) #10
  %533 = ptrtoint ptr %532 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i849.i, i32 noundef %533) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %534 = ptrtoint ptr %syncp295.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %syncp295.i, align 4
  %inc.i.i.i850.i = add i32 %535, 1
  store i32 %inc.i.i.i850.i, ptr %syncp295.i, align 4
  tail call fastcc void @local_bh_enable() #10
  %536 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %head.i.i, align 8
  %538 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %network_header.i.i, align 4
  %conv.i853.i = zext i16 %539 to i32
  %add.ptr.i854.i = getelementptr i8, ptr %537, i32 %conv.i853.i
  %sub.ptr.lhs.cast306.i = ptrtoint ptr %segments_left1195.i to i32
  %sub.ptr.rhs.cast307.i = ptrtoint ptr %add.ptr.i854.i to i32
  %sub.ptr.sub308.i = sub i32 %sub.ptr.lhs.cast306.i, %sub.ptr.rhs.cast307.i
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %sub.ptr.sub308.i) #10
  br label %cleanup

if.end309.i:                                      ; preds = %if.end250.i
  %540 = ptrtoint ptr %cloned.i.i1070 to i32
  call void @__asan_load1_noabort(i32 %540)
  %bf.load.i855.i = load i8, ptr %cloned.i.i1070, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i855.i)
  %tobool.not.i856.i = icmp sgt i8 %bf.load.i855.i, -1
  br i1 %tobool.not.i856.i, label %if.end309.i.skb_header_cloned.exit.thread.i.i_crit_edge, label %skb_cloned.exit.i1134

if.end309.i.skb_header_cloned.exit.thread.i.i_crit_edge: ; preds = %if.end309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit.thread.i.i

skb_cloned.exit.i1134:                            ; preds = %if.end309.i
  %541 = ptrtoint ptr %end.i.i.i1071 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %end.i.i.i1071, align 4
  %dataref.i.i1132 = getelementptr inbounds %struct.skb_shared_info, ptr %542, i32 0, i32 10
  %call.i.i.i.i1133 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i1132, i32 noundef 4) #10
  %543 = ptrtoint ptr %dataref.i.i1132 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load volatile i32, ptr %dataref.i.i1132, align 4
  %and.i857.i = and i32 %544, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i857.i)
  %cmp.i858.not.i = icmp eq i32 %and.i857.i, 1
  br i1 %cmp.i858.not.i, label %if.else380.i, label %if.then312.i

if.then312.i:                                     ; preds = %skb_cloned.exit.i1134
  %call313.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 23, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313.i)
  %tobool314.not.i = icmp eq i32 %call313.i, 0
  br i1 %tobool314.not.i, label %if.then312.i.if.end391.i_crit_edge, label %if.then315.i

if.then312.i.if.end391.i_crit_edge:               ; preds = %if.then312.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391.i

if.then315.i:                                     ; preds = %if.then312.i
  %545 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %445, align 8
  %and.i859.i = and i32 %546, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i859.i)
  %tobool.not.i860.i = icmp eq i32 %and.i859.i, 0
  br i1 %tobool.not.i860.i, label %if.then315.i.skb_dst.exit.i1139_crit_edge, label %land.lhs.true.i863.i

if.then315.i.skb_dst.exit.i1139_crit_edge:        ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i1139

land.lhs.true.i863.i:                             ; preds = %if.then315.i
  %call.i861.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i861.i)
  %tobool1.not.i862.i = icmp eq i32 %call.i861.i, 0
  br i1 %tobool1.not.i862.i, label %land.rhs.i865.i, label %land.lhs.true.i863.i.skb_dst.exit.i1139_crit_edge

land.lhs.true.i863.i.skb_dst.exit.i1139_crit_edge: ; preds = %land.lhs.true.i863.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i1139

land.rhs.i865.i:                                  ; preds = %land.lhs.true.i863.i
  %call2.i864.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i864.i)
  %tobool3.not.i.i1135 = icmp eq i32 %call2.i864.i, 0
  br i1 %tobool3.not.i.i1135, label %do.end.i.i1136, label %land.rhs.i865.i.skb_dst.exit.i1139_crit_edge, !prof !55

land.rhs.i865.i.skb_dst.exit.i1139_crit_edge:     ; preds = %land.rhs.i865.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i1139

do.end.i.i1136:                                   ; preds = %land.rhs.i865.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i1139

skb_dst.exit.i1139:                               ; preds = %do.end.i.i1136, %land.rhs.i865.i.skb_dst.exit.i1139_crit_edge, %land.lhs.true.i863.i.skb_dst.exit.i1139_crit_edge, %if.then315.i.skb_dst.exit.i1139_crit_edge
  %547 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %445, align 8
  %and25.i.i1137 = and i32 %548, -2
  %549 = inttoptr i32 %and25.i.i1137 to ptr
  %rt6i_idev.i.i1138 = getelementptr inbounds %struct.rt6_info, ptr %549, i32 0, i32 6
  %550 = ptrtoint ptr %rt6i_idev.i.i1138 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %rt6i_idev.i.i1138, align 4
  %cmp319.not.i = icmp eq ptr %551, null
  br i1 %cmp319.not.i, label %skb_dst.exit.i1139.do.body354.i_crit_edge, label %do.body328.i, !prof !55

skb_dst.exit.i1139.do.body354.i_crit_edge:        ; preds = %skb_dst.exit.i1139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body354.i

do.body328.i:                                     ; preds = %skb_dst.exit.i1139
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable() #10
  %ipv6338.i = getelementptr inbounds %struct.inet6_dev, ptr %551, i32 0, i32 33, i32 1
  %552 = ptrtoint ptr %ipv6338.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %ipv6338.i, align 4
  %554 = ptrtoint ptr %553 to i32
  %555 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i867.i = and i32 %555, -16384
  %556 = inttoptr i32 %and.i867.i to ptr
  %cpu341.i = getelementptr inbounds %struct.thread_info, ptr %556, i32 0, i32 3
  %557 = ptrtoint ptr %cpu341.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %cpu341.i, align 4
  %arrayidx342.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %558
  %559 = ptrtoint ptr %arrayidx342.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %arrayidx342.i, align 4
  %add343.i = add i32 %560, %554
  %561 = inttoptr i32 %add343.i to ptr
  %syncp344.i = getelementptr inbounds %struct.ipstats_mib, ptr %561, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp344.i) #10
  %arrayidx346.i = getelementptr [37 x i64], ptr %561, i32 0, i32 14
  %562 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_load8_noabort(i32 %562)
  %563 = load i64, ptr %arrayidx346.i, align 8
  %add347.i = add i64 %563, 1
  store i64 %add347.i, ptr %arrayidx346.i, align 8
  %dep_map.i.i868.i = getelementptr inbounds %struct.ipstats_mib, ptr %561, i32 0, i32 1, i32 0, i32 1
  %564 = tail call ptr @llvm.returnaddress(i32 0) #10
  %565 = ptrtoint ptr %564 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i868.i, i32 noundef %565) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %566 = ptrtoint ptr %syncp344.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %syncp344.i, align 4
  %inc.i.i.i869.i = add i32 %567, 1
  store i32 %inc.i.i.i869.i, ptr %syncp344.i, align 4
  tail call fastcc void @local_bh_enable() #10
  br label %do.body354.i

do.body354.i:                                     ; preds = %do.body328.i, %skb_dst.exit.i1139.do.body354.i_crit_edge
  tail call fastcc void @local_bh_disable() #10
  %ipv6_statistics364.i = getelementptr inbounds %struct.net, ptr %428, i32 0, i32 30, i32 1
  %568 = ptrtoint ptr %ipv6_statistics364.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %ipv6_statistics364.i, align 4
  %570 = ptrtoint ptr %569 to i32
  %571 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i870.i = and i32 %571, -16384
  %572 = inttoptr i32 %and.i870.i to ptr
  %cpu367.i = getelementptr inbounds %struct.thread_info, ptr %572, i32 0, i32 3
  %573 = ptrtoint ptr %cpu367.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %cpu367.i, align 4
  %arrayidx368.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %574
  %575 = ptrtoint ptr %arrayidx368.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %arrayidx368.i, align 4
  %add369.i = add i32 %576, %570
  %577 = inttoptr i32 %add369.i to ptr
  %syncp370.i = getelementptr inbounds %struct.ipstats_mib, ptr %577, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp370.i) #10
  %arrayidx372.i = getelementptr [37 x i64], ptr %577, i32 0, i32 14
  %578 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %arrayidx372.i, align 8
  %add373.i = add i64 %579, 1
  store i64 %add373.i, ptr %arrayidx372.i, align 8
  %dep_map.i.i871.i = getelementptr inbounds %struct.ipstats_mib, ptr %577, i32 0, i32 1, i32 0, i32 1
  %580 = tail call ptr @llvm.returnaddress(i32 0) #10
  %581 = ptrtoint ptr %580 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i871.i, i32 noundef %581) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %582 = ptrtoint ptr %syncp370.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %syncp370.i, align 4
  %inc.i.i.i872.i = add i32 %583, 1
  store i32 %inc.i.i.i872.i, ptr %syncp370.i, align 4
  tail call fastcc void @local_bh_enable() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.else380.i:                                     ; preds = %skb_cloned.exit.i1134
  %584 = ptrtoint ptr %cloned.i.i1070 to i32
  call void @__asan_load1_noabort(i32 %584)
  %bf.load.i.i.pr.i = load i8, ptr %cloned.i.i1070, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.pr.i)
  %tobool.not.i.i873.i = icmp sgt i8 %bf.load.i.i.pr.i, -1
  br i1 %tobool.not.i.i873.i, label %if.else380.i.skb_header_cloned.exit.thread.i.i_crit_edge, label %skb_header_cloned.exit.i.i

if.else380.i.skb_header_cloned.exit.thread.i.i_crit_edge: ; preds = %if.else380.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit.thread.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.else380.i
  %585 = ptrtoint ptr %end.i.i.i1071 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %end.i.i.i1071, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %586, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #10
  %587 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %589 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %data.i, align 4
  %591 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i876.i = ptrtoint ptr %590 to i32
  %sub.ptr.rhs.cast.i.i.i877.i = ptrtoint ptr %592 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i876.i, %sub.ptr.rhs.cast.i.i.i877.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 23
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %if.else380.i.skb_header_cloned.exit.thread.i.i_crit_edge, %if.end309.i.skb_header_cloned.exit.thread.i.i_crit_edge
  %593 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %data.i, align 4
  %595 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %594 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %596 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 23
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.if.end391.i_crit_edge

skb_header_cloned.exit.thread.i.i.if.end391.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391.i

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 150, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i1140 = and i32 %588, 65535
  %shr.i.i.i = ashr i32 %588, 16
  %sub.i.i878.i = sub nsw i32 %and.i.i.i1140, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i878.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i878.i, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.if.end391.i_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cow_head.exit.i

if.end.i2.i.i.if.end391.i_crit_edge:              ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391.i

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool382.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool382.not.i, label %skb_cow_head.exit.i.if.end391.i_crit_edge, label %if.then389.i, !prof !58

skb_cow_head.exit.i.if.end391.i_crit_edge:        ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391.i

if.then389.i:                                     ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end391.i:                                      ; preds = %skb_cow_head.exit.i.if.end391.i_crit_edge, %if.end.i2.i.i.if.end391.i_crit_edge, %skb_header_cloned.exit.thread.i.i.if.end391.i_crit_edge, %if.then312.i.if.end391.i_crit_edge
  %597 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %head.i.i, align 8
  %599 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %transport_header.i.i, align 2
  %conv.i881.i = zext i16 %600 to i32
  %add.ptr.i882.i = getelementptr i8, ptr %598, i32 %conv.i881.i
  %conv393.i = trunc i64 %n.0.i to i8
  %cmpri394.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i882.i, i32 0, i32 4
  %601 = ptrtoint ptr %cmpri394.i to i32
  call void @__asan_loadN_noabort(i32 %601, i32 4)
  %bf.load395.i = load i32, ptr %cmpri394.i, align 1
  %bf.lshr396.i = lshr i32 %bf.load395.i, 28
  %conv397.i = trunc i32 %bf.lshr396.i to i8
  %bf.lshr400.i = lshr i32 %bf.load395.i, 24
  %602 = trunc i32 %bf.lshr400.i to i8
  %conv402.i = and i8 %602, 15
  %call403.i = tail call i32 @ipv6_rpl_srh_size(i8 noundef zeroext %conv393.i, i8 noundef zeroext %conv397.i, i8 noundef zeroext %conv402.i) #10
  %603 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %len.i.i, align 4
  %605 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i885.i = sub i32 %604, %606
  call void @__sanitizer_cov_trace_cmp4(i32 %call403.i, i32 %sub.i.i885.i)
  %cmp.not.i886.i = icmp ugt i32 %call403.i, %sub.i.i885.i
  br i1 %cmp.not.i886.i, label %if.end.i888.i, label %if.end391.i.if.end406.i_crit_edge, !prof !55

if.end391.i.if.end406.i_crit_edge:                ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end406.i

if.end.i888.i:                                    ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_cmp4(i32 %604, i32 %call403.i)
  %cmp3.i887.i = icmp ult i32 %604, %call403.i
  br i1 %cmp3.i887.i, label %if.end.i888.i.if.then405.i_crit_edge, label %pskb_may_pull.exit894.i, !prof !55

if.end.i888.i.if.then405.i_crit_edge:             ; preds = %if.end.i888.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then405.i

pskb_may_pull.exit894.i:                          ; preds = %if.end.i888.i
  %sub.i889.i = sub i32 %call403.i, %sub.i.i885.i
  %call13.i890.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i889.i) #10
  %cmp14.i891.not.i = icmp eq ptr %call13.i890.i, null
  br i1 %cmp14.i891.not.i, label %pskb_may_pull.exit894.i.if.then405.i_crit_edge, label %pskb_may_pull.exit894.i.if.end406.i_crit_edge

pskb_may_pull.exit894.i.if.end406.i_crit_edge:    ; preds = %pskb_may_pull.exit894.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end406.i

pskb_may_pull.exit894.i.if.then405.i_crit_edge:   ; preds = %pskb_may_pull.exit894.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then405.i

if.then405.i:                                     ; preds = %pskb_may_pull.exit894.i.if.then405.i_crit_edge, %if.end.i888.i.if.then405.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end406.i:                                      ; preds = %pskb_may_pull.exit894.i.if.end406.i_crit_edge, %if.end391.i.if.end406.i_crit_edge
  %segments_left407.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i882.i, i32 0, i32 3
  %607 = ptrtoint ptr %segments_left407.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %segments_left407.i, align 1
  %dec.i1141 = add i8 %608, -1
  store i8 %dec.i1141, ptr %segments_left407.i, align 1
  %conv409.i = zext i8 %dec.i1141 to i64
  %sub410.i = sub nsw i64 %n.0.i, %conv409.i
  %conv411.i = trunc i64 %sub410.i to i32
  %609 = trunc i64 %n.0.i to i32
  %conv413.i = shl nsw i32 %609, 4
  %610 = add i32 %conv413.i, 40
  %611 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %610, i32 2) #10
  %612 = extractvalue { i32, i1 } %611, 1
  br i1 %612, label %if.end406.i.if.then425.i_crit_edge, label %if.end7.i.i.i, !prof !55

if.end406.i.if.then425.i_crit_edge:               ; preds = %if.end406.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then425.i

if.end7.i.i.i:                                    ; preds = %if.end406.i
  %613 = extractvalue { i32, i1 } %611, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %613, i32 noundef 2848) #14
  %tobool416.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool416.not.i, label %if.end7.i.i.i.if.then425.i_crit_edge, label %if.end426.i, !prof !55

if.end7.i.i.i.if.then425.i_crit_edge:             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then425.i

if.then425.i:                                     ; preds = %if.end7.i.i.i.if.then425.i_crit_edge, %if.end406.i.if.then425.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end426.i:                                      ; preds = %if.end7.i.i.i
  %614 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %head.i.i, align 8
  %616 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %616)
  %617 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i897.i = zext i16 %617 to i32
  %add.ptr.i.i898.i = getelementptr i8, ptr %615, i32 %conv.i.i897.i
  %daddr.i1142 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i898.i, i32 0, i32 6
  tail call void @ipv6_rpl_srh_decompress(ptr noundef nonnull %call8.i.i.i, ptr noundef %add.ptr.i882.i, ptr noundef %daddr.i1142, i8 noundef zeroext %conv393.i) #10
  %hdrlen429.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %call8.i.i.i, i32 0, i32 1
  %618 = ptrtoint ptr %hdrlen429.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %hdrlen429.i, align 1
  %conv430.i = zext i8 %619 to i32
  %add431.i = shl nuw nsw i32 %conv430.i, 3
  %shl432.i = add nuw nsw i32 %add431.i, 8
  %add.ptr.i1143 = getelementptr i8, ptr %call8.i.i.i, i32 %shl432.i
  %620 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %head.i.i, align 8
  %622 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %622)
  %623 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i901.i = zext i16 %623 to i32
  %add.ptr.i.i902.i = getelementptr i8, ptr %621, i32 %conv.i.i901.i
  %daddr434.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i902.i, i32 0, i32 6
  %call.i903.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr434.i) #10
  %and436.i = and i32 %call.i903.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436.i)
  %tobool437.not.i = icmp eq i32 %and436.i, 0
  br i1 %tobool437.not.i, label %lor.lhs.false438.i, label %if.end426.i.if.then443.i_crit_edge

if.end426.i.if.then443.i_crit_edge:               ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then443.i

lor.lhs.false438.i:                               ; preds = %if.end426.i
  %segments.i1144 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %call8.i.i.i, i32 0, i32 5
  %arrayidx439.i = getelementptr [0 x %struct.in6_addr], ptr %segments.i1144, i32 0, i32 %conv411.i
  %call.i905.i = tail call i32 @__ipv6_addr_type(ptr noundef %arrayidx439.i) #10
  %and441.i = and i32 %call.i905.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and441.i)
  %tobool442.not.i = icmp eq i32 %and441.i, 0
  br i1 %tobool442.not.i, label %if.end444.i, label %lor.lhs.false438.i.if.then443.i_crit_edge

lor.lhs.false438.i.if.then443.i_crit_edge:        ; preds = %lor.lhs.false438.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then443.i

if.then443.i:                                     ; preds = %lor.lhs.false438.i.if.then443.i_crit_edge, %if.end426.i.if.then443.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %cleanup

if.end444.i:                                      ; preds = %lor.lhs.false438.i
  %conv448.i = add i8 %conv393.i, 1
  %call449.i = tail call i32 @ipv6_chk_rpl_srh_loop(ptr noundef %428, ptr noundef %segments.i1144, i8 noundef zeroext %conv448.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449.i)
  %tobool450.not.i = icmp eq i32 %call449.i, 0
  br i1 %tobool450.not.i, label %if.end452.i, label %if.then451.i

if.then451.i:                                     ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i.i1145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb.i.i1145) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %cleanup

if.end452.i:                                      ; preds = %if.end444.i
  %624 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %head.i.i, align 8
  %626 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i909.i = zext i16 %627 to i32
  %add.ptr.i.i910.i = getelementptr i8, ptr %625, i32 %conv.i.i909.i
  %daddr454.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i910.i, i32 0, i32 6
  %628 = ptrtoint ptr %daddr454.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %addr.sroa.0.0.copyload.i = load i32, ptr %daddr454.i, align 4
  %addr.sroa.5.0.daddr454.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i910.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %629 = ptrtoint ptr %addr.sroa.5.0.daddr454.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %addr.sroa.5.0.copyload.i = load i32, ptr %addr.sroa.5.0.daddr454.sroa_idx.i, align 4
  %addr.sroa.6.0.daddr454.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i910.i, i32 0, i32 6, i32 0, i32 0, i32 2
  %630 = ptrtoint ptr %addr.sroa.6.0.daddr454.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %addr.sroa.6.0.copyload.i = load i32, ptr %addr.sroa.6.0.daddr454.sroa_idx.i, align 4
  %addr.sroa.7.0.daddr454.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i910.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %631 = ptrtoint ptr %addr.sroa.7.0.daddr454.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %addr.sroa.7.0.copyload.i = load i32, ptr %addr.sroa.7.0.daddr454.sroa_idx.i, align 4
  %632 = call ptr @memcpy(ptr %daddr454.i, ptr %arrayidx439.i, i32 16)
  %633 = ptrtoint ptr %arrayidx439.i to i32
  call void @__asan_store4_noabort(i32 %633)
  store i32 %addr.sroa.0.0.copyload.i, ptr %arrayidx439.i, align 8
  %addr.sroa.5.0.arrayidx460.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i32 4
  %634 = ptrtoint ptr %addr.sroa.5.0.arrayidx460.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %634)
  store i32 %addr.sroa.5.0.copyload.i, ptr %addr.sroa.5.0.arrayidx460.sroa_idx.i, align 4
  %addr.sroa.6.0.arrayidx460.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i32 8
  %635 = ptrtoint ptr %addr.sroa.6.0.arrayidx460.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 %addr.sroa.6.0.copyload.i, ptr %addr.sroa.6.0.arrayidx460.sroa_idx.i, align 16
  %addr.sroa.7.0.arrayidx460.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i32 12
  %636 = ptrtoint ptr %addr.sroa.7.0.arrayidx460.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 %addr.sroa.7.0.copyload.i, ptr %addr.sroa.7.0.arrayidx460.sroa_idx.i, align 4
  %637 = load ptr, ptr %head.i.i, align 8
  %638 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i917.i = zext i16 %638 to i32
  %add.ptr.i.i918.i = getelementptr i8, ptr %637, i32 %conv.i.i917.i
  %daddr462.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i918.i, i32 0, i32 6
  tail call void @ipv6_rpl_srh_compress(ptr noundef %add.ptr.i1143, ptr noundef nonnull %call8.i.i.i, ptr noundef %daddr462.i, i8 noundef zeroext %conv393.i) #10
  %639 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %head.i.i, align 8
  %641 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i921.i = zext i16 %642 to i32
  %add.ptr.i.i922.i = getelementptr i8, ptr %640, i32 %conv.i.i921.i
  %hdrlen465.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i882.i, i32 0, i32 1
  %643 = ptrtoint ptr %hdrlen465.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %hdrlen465.i, align 1
  %conv466.i = zext i8 %644 to i32
  %add467.i = shl nuw nsw i32 %conv466.i, 3
  %shl468.i = add nuw nsw i32 %add467.i, 8
  %call469.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %shl468.i) #10
  %645 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %645)
  %bf.load.i924.i = load i16, ptr %pkt_type, align 8
  %bf.lshr.i925.i = lshr i16 %bf.load.i924.i, 9
  %trunc.i926.i = trunc i16 %bf.lshr.i925.i to i2
  %646 = zext i2 %trunc.i926.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %646, ptr @__sancov_gen_cov_switch_values.25)
  switch i2 %trunc.i926.i, label %if.end452.i.skb_postpull_rcsum.exit942.i_crit_edge [
    i2 -2, label %if.then.i930.i
    i2 -1, label %land.lhs.true.i939.i
  ]

if.end452.i.skb_postpull_rcsum.exit942.i_crit_edge: ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit942.i

if.then.i930.i:                                   ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #12
  %647 = ptrtoint ptr %hdrlen465.i to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %hdrlen465.i, align 1
  %conv471.i = zext i8 %648 to i32
  %add472.i = shl nuw nsw i32 %conv471.i, 3
  %add474.i = add nuw nsw i32 %add472.i, 48
  %649 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %444, align 8
  %sub.i.i927.i = sub i32 0, %650
  %call2.i928.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i922.i, i32 noundef %add474.i, i32 noundef %sub.i.i927.i) #10
  %sub.i25.i929.i = sub i32 0, %call2.i928.i
  %651 = ptrtoint ptr %444 to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 %sub.i25.i929.i, ptr %444, align 8
  br label %skb_postpull_rcsum.exit942.i

land.lhs.true.i939.i:                             ; preds = %if.end452.i
  %652 = ptrtoint ptr %444 to i32
  call void @__asan_load2_noabort(i32 %652)
  %653 = load i16, ptr %444, align 8
  %conv.i.i931.i = zext i16 %653 to i32
  %654 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %data.i, align 4
  %656 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i934.i = ptrtoint ptr %655 to i32
  %sub.ptr.rhs.cast.i.i.i935.i = ptrtoint ptr %657 to i32
  %sub.ptr.sub.i.neg.i.i936.i = sub i32 %conv.i.i931.i, %sub.ptr.lhs.cast.i.i.i934.i
  %sub.i26.i937.i = add i32 %sub.ptr.sub.i.neg.i.i936.i, %sub.ptr.rhs.cast.i.i.i935.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i937.i)
  %cmp13.i938.i = icmp slt i32 %sub.i26.i937.i, 0
  br i1 %cmp13.i938.i, label %if.then15.i941.i, label %land.lhs.true.i939.i.skb_postpull_rcsum.exit942.i_crit_edge

land.lhs.true.i939.i.skb_postpull_rcsum.exit942.i_crit_edge: ; preds = %land.lhs.true.i939.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit942.i

if.then15.i941.i:                                 ; preds = %land.lhs.true.i939.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i940.i = and i16 %bf.load.i924.i, -1537
  %658 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %658)
  store i16 %bf.clear18.i940.i, ptr %pkt_type, align 8
  br label %skb_postpull_rcsum.exit942.i

skb_postpull_rcsum.exit942.i:                     ; preds = %if.then15.i941.i, %land.lhs.true.i939.i.skb_postpull_rcsum.exit942.i_crit_edge, %if.then.i930.i, %if.end452.i.skb_postpull_rcsum.exit942.i_crit_edge
  %hdrlen475.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i1143, i32 0, i32 1
  %659 = ptrtoint ptr %hdrlen475.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %hdrlen475.i, align 1
  %conv476.i = zext i8 %660 to i32
  %add477.i = shl nuw nsw i32 %conv476.i, 3
  %add479.i = add nuw nsw i32 %add477.i, 48
  %call480.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add479.i) #10
  %661 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %data.i, align 4
  %663 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i945.i = ptrtoint ptr %662 to i32
  %sub.ptr.rhs.cast.i946.i = ptrtoint ptr %664 to i32
  %sub.ptr.sub.i947.i = sub i32 %sub.ptr.lhs.cast.i945.i, %sub.ptr.rhs.cast.i946.i
  %conv.i948.i = trunc i32 %sub.ptr.sub.i947.i to i16
  %665 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %665)
  store i16 %conv.i948.i, ptr %network_header.i.i, align 4
  %666 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %666)
  %667 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %667)
  %cmp.i.not.i950.i = icmp eq i16 %667, -1
  br i1 %cmp.i.not.i950.i, label %skb_postpull_rcsum.exit942.i.skb_mac_header_rebuild.exit.i_crit_edge, label %if.then.i959.i

skb_postpull_rcsum.exit942.i.skb_mac_header_rebuild.exit.i_crit_edge: ; preds = %skb_postpull_rcsum.exit942.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_mac_header_rebuild.exit.i

if.then.i959.i:                                   ; preds = %skb_postpull_rcsum.exit942.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i952.i = zext i16 %667 to i32
  %add.ptr.i.i953.i = getelementptr i8, ptr %664, i32 %conv.i.i952.i
  %668 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %668)
  %669 = load i16, ptr %mac_len.i.i, align 4
  %conv.i954.i = zext i16 %669 to i32
  %conv1.i11.i.i = sub i16 %conv.i948.i, %669
  %670 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %670)
  store i16 %conv1.i11.i.i, ptr %mac_header.i.i.i, align 2
  %conv.i14.i.i = zext i16 %conv1.i11.i.i to i32
  %add.ptr.i15.i.i = getelementptr i8, ptr %664, i32 %conv.i14.i.i
  %671 = call ptr @memmove(ptr %add.ptr.i15.i.i, ptr %add.ptr.i.i953.i, i32 %conv.i954.i)
  br label %skb_mac_header_rebuild.exit.i

skb_mac_header_rebuild.exit.i:                    ; preds = %if.then.i959.i, %skb_postpull_rcsum.exit942.i.skb_mac_header_rebuild.exit.i_crit_edge
  %672 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %data.i, align 4
  %674 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %673 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %675 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i963.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %add.i.i = add i16 %conv.i.i963.i, 40
  %676 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %676)
  store i16 %add.i.i, ptr %transport_header.i.i, align 2
  %677 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %677)
  %678 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i966.i = zext i16 %678 to i32
  %add.ptr.i.i967.i = getelementptr i8, ptr %675, i32 %conv.i.i966.i
  %679 = call ptr @memmove(ptr %add.ptr.i.i967.i, ptr %add.ptr.i.i922.i, i32 40)
  %680 = load ptr, ptr %head.i.i, align 8
  %681 = load i16, ptr %transport_header.i.i, align 2
  %conv.i970.i = zext i16 %681 to i32
  %add.ptr.i971.i = getelementptr i8, ptr %680, i32 %conv.i970.i
  %682 = ptrtoint ptr %hdrlen475.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %hdrlen475.i, align 1
  %conv484.i = zext i8 %683 to i32
  %add485.i = shl nuw nsw i32 %conv484.i, 3
  %shl486.i = add nuw nsw i32 %add485.i, 8
  %684 = call ptr @memcpy(ptr %add.ptr.i971.i, ptr %add.ptr.i1143, i32 %shl486.i)
  %685 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %len.i.i, align 4
  %687 = trunc i32 %686 to i16
  %conv488.i = add i16 %687, -40
  %688 = load ptr, ptr %head.i.i, align 8
  %689 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i974.i = zext i16 %689 to i32
  %add.ptr.i.i975.i = getelementptr i8, ptr %688, i32 %conv.i.i974.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i975.i, i32 0, i32 2
  %690 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %690)
  store i16 %conv488.i, ptr %payload_len.i, align 4
  %691 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %691)
  %bf.load.i.i980.i = load i16, ptr %pkt_type, align 8
  %692 = and i16 %bf.load.i.i980.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %692)
  %cmp.i.i981.i = icmp eq i16 %692, 1024
  br i1 %cmp.i.i981.i, label %if.then.i.i.i1147, label %skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge

skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge: ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpush_rcsum.exit.i

if.then.i.i.i1147:                                ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %693 = ptrtoint ptr %hdrlen475.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %hdrlen475.i, align 1
  %conv492.i = zext i8 %694 to i32
  %add493.i = shl nuw nsw i32 %conv492.i, 3
  %add495.i = add nuw nsw i32 %add493.i, 48
  %695 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %head.i.i, align 8
  %697 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %697)
  %698 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i978.i = zext i16 %698 to i32
  %add.ptr.i.i979.i = getelementptr i8, ptr %696, i32 %conv.i.i978.i
  %699 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %444, align 8
  %call.i.i.i1146 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i979.i, i32 noundef %add495.i, i32 noundef 0) #10
  %add.i.i.i.i.i = add i32 %call.i.i.i1146, %700
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i1146)
  %cmp.i.i.i.i982.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i1146
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i982.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %701 = ptrtoint ptr %444 to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 %add1.i.i.i.i.i, ptr %444, align 8
  br label %skb_postpush_rcsum.exit.i

skb_postpush_rcsum.exit.i:                        ; preds = %if.then.i.i.i1147, %skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  %702 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %445, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %703)
  %tobool.not.i983.i = icmp eq i32 %703, 0
  br i1 %tobool.not.i983.i, label %skb_postpush_rcsum.exit.i.skb_dst_drop.exit.i1150_crit_edge, label %if.then.i986.i

skb_postpush_rcsum.exit.i.skb_dst_drop.exit.i1150_crit_edge: ; preds = %skb_postpush_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit.i1150

if.then.i986.i:                                   ; preds = %skb_postpush_rcsum.exit.i
  %and.i.i984.i = and i32 %703, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i984.i)
  %tobool.not.i.i985.i = icmp eq i32 %and.i.i984.i, 0
  br i1 %tobool.not.i.i985.i, label %if.then.i.i987.i, label %if.then.i986.i.refdst_drop.exit.i.i1149_crit_edge

if.then.i986.i.refdst_drop.exit.i.i1149_crit_edge: ; preds = %if.then.i986.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i.i1149

if.then.i.i987.i:                                 ; preds = %if.then.i986.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i.i1148 = and i32 %703, -2
  %704 = inttoptr i32 %and1.i.i.i1148 to ptr
  tail call void @dst_release(ptr noundef %704) #10
  br label %refdst_drop.exit.i.i1149

refdst_drop.exit.i.i1149:                         ; preds = %if.then.i.i987.i, %if.then.i986.i.refdst_drop.exit.i.i1149_crit_edge
  %705 = ptrtoint ptr %445 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 0, ptr %445, align 8
  br label %skb_dst_drop.exit.i1150

skb_dst_drop.exit.i1150:                          ; preds = %refdst_drop.exit.i.i1149, %skb_postpush_rcsum.exit.i.skb_dst_drop.exit.i1150_crit_edge
  tail call void @ip6_route_input(ptr noundef %skb) #10
  %706 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %445, align 8
  %and.i989.i = and i32 %707, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i989.i)
  %tobool.not.i990.i = icmp eq i32 %and.i989.i, 0
  br i1 %tobool.not.i990.i, label %skb_dst_drop.exit.i1150.skb_dst.exit1000.i_crit_edge, label %land.lhs.true.i993.i

skb_dst_drop.exit.i1150.skb_dst.exit1000.i_crit_edge: ; preds = %skb_dst_drop.exit.i1150
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1000.i

land.lhs.true.i993.i:                             ; preds = %skb_dst_drop.exit.i1150
  %call.i991.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i991.i)
  %tobool1.not.i992.i = icmp eq i32 %call.i991.i, 0
  br i1 %tobool1.not.i992.i, label %land.rhs.i996.i, label %land.lhs.true.i993.i.skb_dst.exit1000.i_crit_edge

land.lhs.true.i993.i.skb_dst.exit1000.i_crit_edge: ; preds = %land.lhs.true.i993.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1000.i

land.rhs.i996.i:                                  ; preds = %land.lhs.true.i993.i
  %call2.i994.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i994.i)
  %tobool3.not.i995.i = icmp eq i32 %call2.i994.i, 0
  br i1 %tobool3.not.i995.i, label %do.end.i997.i, label %land.rhs.i996.i.skb_dst.exit1000.i_crit_edge, !prof !55

land.rhs.i996.i.skb_dst.exit1000.i_crit_edge:     ; preds = %land.rhs.i996.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1000.i

do.end.i997.i:                                    ; preds = %land.rhs.i996.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit1000.i

skb_dst.exit1000.i:                               ; preds = %do.end.i997.i, %land.rhs.i996.i.skb_dst.exit1000.i_crit_edge, %land.lhs.true.i993.i.skb_dst.exit1000.i_crit_edge, %skb_dst_drop.exit.i1150.skb_dst.exit1000.i_crit_edge
  %708 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %445, align 8
  %and25.i998.i = and i32 %709, -2
  %710 = inttoptr i32 %and25.i998.i to ptr
  %error.i1151 = getelementptr inbounds %struct.dst_entry, ptr %710, i32 0, i32 15
  %711 = ptrtoint ptr %error.i1151 to i32
  call void @__asan_load2_noabort(i32 %711)
  %712 = load i16, ptr %error.i1151, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %712)
  %tobool497.not.i = icmp eq i16 %712, 0
  %and.i1006.i = and i32 %709, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1006.i)
  %tobool.not.i1007.i = icmp eq i32 %and.i1006.i, 0
  br i1 %tobool497.not.i, label %if.end500.i, label %if.then498.i

if.then498.i:                                     ; preds = %skb_dst.exit1000.i
  br i1 %tobool.not.i1007.i, label %if.then498.i.dst_input.exit.i1159_crit_edge, label %land.lhs.true.i.i1004.i

if.then498.i.dst_input.exit.i1159_crit_edge:      ; preds = %if.then498.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i1159

land.lhs.true.i.i1004.i:                          ; preds = %if.then498.i
  %call.i.i1003.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1003.i)
  %tobool1.not.i.i.i1152 = icmp eq i32 %call.i.i1003.i, 0
  br i1 %tobool1.not.i.i.i1152, label %land.rhs.i.i.i1154, label %land.lhs.true.i.i1004.i.dst_input.exit.i1159_crit_edge

land.lhs.true.i.i1004.i.dst_input.exit.i1159_crit_edge: ; preds = %land.lhs.true.i.i1004.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i1159

land.rhs.i.i.i1154:                               ; preds = %land.lhs.true.i.i1004.i
  %call2.i.i1005.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i1005.i)
  %tobool3.not.i.i.i1153 = icmp eq i32 %call2.i.i1005.i, 0
  br i1 %tobool3.not.i.i.i1153, label %do.end.i.i.i1155, label %land.rhs.i.i.i1154.dst_input.exit.i1159_crit_edge, !prof !55

land.rhs.i.i.i1154.dst_input.exit.i1159_crit_edge: ; preds = %land.rhs.i.i.i1154
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit.i1159

do.end.i.i.i1155:                                 ; preds = %land.rhs.i.i.i1154
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_input.exit.i1159

dst_input.exit.i1159:                             ; preds = %do.end.i.i.i1155, %land.rhs.i.i.i1154.dst_input.exit.i1159_crit_edge, %land.lhs.true.i.i1004.i.dst_input.exit.i1159_crit_edge, %if.then498.i.dst_input.exit.i1159_crit_edge
  %713 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %445, align 8
  %and25.i.i.i1156 = and i32 %714, -2
  %715 = inttoptr i32 %and25.i.i.i1156 to ptr
  %input.i.i1157 = getelementptr inbounds %struct.dst_entry, ptr %715, i32 0, i32 5
  %716 = ptrtoint ptr %input.i.i1157 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %input.i.i1157, align 4
  %call1.i.i1158 = tail call i32 %717(ptr noundef %skb) #10
  br label %cleanup

if.end500.i:                                      ; preds = %skb_dst.exit1000.i
  br i1 %tobool.not.i1007.i, label %if.end500.i.skb_dst.exit1017.i_crit_edge, label %land.lhs.true.i1010.i

if.end500.i.skb_dst.exit1017.i_crit_edge:         ; preds = %if.end500.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1017.i

land.lhs.true.i1010.i:                            ; preds = %if.end500.i
  %call.i1008.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1008.i)
  %tobool1.not.i1009.i = icmp eq i32 %call.i1008.i, 0
  br i1 %tobool1.not.i1009.i, label %land.rhs.i1013.i, label %land.lhs.true.i1010.i.skb_dst.exit1017.i_crit_edge

land.lhs.true.i1010.i.skb_dst.exit1017.i_crit_edge: ; preds = %land.lhs.true.i1010.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1017.i

land.rhs.i1013.i:                                 ; preds = %land.lhs.true.i1010.i
  %call2.i1011.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i1011.i)
  %tobool3.not.i1012.i = icmp eq i32 %call2.i1011.i, 0
  br i1 %tobool3.not.i1012.i, label %do.end.i1014.i, label %land.rhs.i1013.i.skb_dst.exit1017.i_crit_edge, !prof !55

land.rhs.i1013.i.skb_dst.exit1017.i_crit_edge:    ; preds = %land.rhs.i1013.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1017.i

do.end.i1014.i:                                   ; preds = %land.rhs.i1013.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit1017.i

skb_dst.exit1017.i:                               ; preds = %do.end.i1014.i, %land.rhs.i1013.i.skb_dst.exit1017.i_crit_edge, %land.lhs.true.i1010.i.skb_dst.exit1017.i_crit_edge, %if.end500.i.skb_dst.exit1017.i_crit_edge
  %718 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %445, align 8
  %and25.i1015.i = and i32 %719, -2
  %720 = inttoptr i32 %and25.i1015.i to ptr
  %721 = ptrtoint ptr %720 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %720, align 4
  %flags.i1160 = getelementptr inbounds %struct.net_device, ptr %722, i32 0, i32 14
  %723 = ptrtoint ptr %flags.i1160 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %flags.i1160, align 8
  %and502.i = and i32 %724, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502.i)
  %tobool503.not.i = icmp eq i32 %and502.i, 0
  br i1 %tobool503.not.i, label %if.end576.i, label %if.then504.i

if.then504.i:                                     ; preds = %skb_dst.exit1017.i
  %725 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %head.i.i, align 8
  %727 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %727)
  %728 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1020.i = zext i16 %728 to i32
  %add.ptr.i.i1021.i = getelementptr i8, ptr %726, i32 %conv.i.i1020.i
  %hop_limit.i1161 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1021.i, i32 0, i32 4
  %729 = ptrtoint ptr %hop_limit.i1161 to i32
  call void @__asan_load1_noabort(i32 %729)
  %730 = load i8, ptr %hop_limit.i1161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %730)
  %cmp507.i = icmp ult i8 %730, 2
  br i1 %cmp507.i, label %if.then509.i, label %if.end571.i

if.then509.i:                                     ; preds = %if.then504.i
  %cmp511.not.i = icmp eq ptr %430, null
  br i1 %cmp511.not.i, label %if.then509.i.do.body546.i_crit_edge, label %do.body520.i, !prof !55

if.then509.i.do.body546.i_crit_edge:              ; preds = %if.then509.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body546.i

do.body520.i:                                     ; preds = %if.then509.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable() #10
  %ipv6530.i = getelementptr inbounds %struct.inet6_dev, ptr %430, i32 0, i32 33, i32 1
  %731 = ptrtoint ptr %ipv6530.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %ipv6530.i, align 4
  %733 = ptrtoint ptr %732 to i32
  %734 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1022.i = and i32 %734, -16384
  %735 = inttoptr i32 %and.i1022.i to ptr
  %cpu533.i = getelementptr inbounds %struct.thread_info, ptr %735, i32 0, i32 3
  %736 = ptrtoint ptr %cpu533.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %cpu533.i, align 4
  %arrayidx534.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %737
  %738 = ptrtoint ptr %arrayidx534.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %arrayidx534.i, align 4
  %add535.i = add i32 %739, %733
  %740 = inttoptr i32 %add535.i to ptr
  %syncp536.i = getelementptr inbounds %struct.ipstats_mib, ptr %740, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp536.i) #10
  %arrayidx538.i = getelementptr [37 x i64], ptr %740, i32 0, i32 7
  %741 = ptrtoint ptr %arrayidx538.i to i32
  call void @__asan_load8_noabort(i32 %741)
  %742 = load i64, ptr %arrayidx538.i, align 8
  %add539.i = add i64 %742, 1
  store i64 %add539.i, ptr %arrayidx538.i, align 8
  %dep_map.i.i1023.i = getelementptr inbounds %struct.ipstats_mib, ptr %740, i32 0, i32 1, i32 0, i32 1
  %743 = tail call ptr @llvm.returnaddress(i32 0) #10
  %744 = ptrtoint ptr %743 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1023.i, i32 noundef %744) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %745 = ptrtoint ptr %syncp536.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %syncp536.i, align 4
  %inc.i.i.i1024.i = add i32 %746, 1
  store i32 %inc.i.i.i1024.i, ptr %syncp536.i, align 4
  tail call fastcc void @local_bh_enable() #10
  br label %do.body546.i

do.body546.i:                                     ; preds = %do.body520.i, %if.then509.i.do.body546.i_crit_edge
  tail call fastcc void @local_bh_disable() #10
  %ipv6_statistics556.i = getelementptr inbounds %struct.net, ptr %428, i32 0, i32 30, i32 1
  %747 = ptrtoint ptr %ipv6_statistics556.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %ipv6_statistics556.i, align 4
  %749 = ptrtoint ptr %748 to i32
  %750 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1025.i = and i32 %750, -16384
  %751 = inttoptr i32 %and.i1025.i to ptr
  %cpu559.i = getelementptr inbounds %struct.thread_info, ptr %751, i32 0, i32 3
  %752 = ptrtoint ptr %cpu559.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %cpu559.i, align 4
  %arrayidx560.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %753
  %754 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %arrayidx560.i, align 4
  %add561.i = add i32 %755, %749
  %756 = inttoptr i32 %add561.i to ptr
  %syncp562.i = getelementptr inbounds %struct.ipstats_mib, ptr %756, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp562.i) #10
  %arrayidx564.i = getelementptr [37 x i64], ptr %756, i32 0, i32 7
  %757 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_load8_noabort(i32 %757)
  %758 = load i64, ptr %arrayidx564.i, align 8
  %add565.i = add i64 %758, 1
  store i64 %add565.i, ptr %arrayidx564.i, align 8
  %dep_map.i.i1026.i = getelementptr inbounds %struct.ipstats_mib, ptr %756, i32 0, i32 1, i32 0, i32 1
  %759 = tail call ptr @llvm.returnaddress(i32 0) #10
  %760 = ptrtoint ptr %759 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1026.i, i32 noundef %760) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %761 = ptrtoint ptr %syncp562.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %syncp562.i, align 4
  %inc.i.i.i1027.i = add i32 %762, 1
  store i32 %inc.i.i.i1027.i, ptr %syncp562.i, align 4
  tail call fastcc void @local_bh_enable() #10
  %cb.i1028.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb.i1028.i) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end571.i:                                      ; preds = %if.then504.i
  %dec574.i = add i8 %730, -1
  %763 = ptrtoint ptr %hop_limit.i1161 to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 %dec574.i, ptr %hop_limit.i1161, align 1
  %call575.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #10
  %764 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %head.i.i, align 8
  %766 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %766)
  %767 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i1162 = zext i16 %767 to i32
  %add.ptr.i.i1163 = getelementptr i8, ptr %765, i32 %conv.i.i1162
  %segments_left.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i.i1163, i32 0, i32 3
  %768 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %segments_left.i, align 1
  %cmp8.i = icmp eq i8 %769, 0
  br i1 %cmp8.i, label %if.then10.i.loopexit, label %if.end571.i.if.end38.i_crit_edge

if.end571.i.if.end38.i_crit_edge:                 ; preds = %if.end571.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.end576.i:                                      ; preds = %skb_dst.exit1017.i
  %and.i.i1033.i = and i32 %719, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1033.i)
  %tobool.not.i.i1034.i = icmp eq i32 %and.i.i1033.i, 0
  br i1 %tobool.not.i.i1034.i, label %if.end576.i.dst_input.exit1045.i_crit_edge, label %land.lhs.true.i.i1037.i

if.end576.i.dst_input.exit1045.i_crit_edge:       ; preds = %if.end576.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit1045.i

land.lhs.true.i.i1037.i:                          ; preds = %if.end576.i
  %call.i.i1035.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1035.i)
  %tobool1.not.i.i1036.i = icmp eq i32 %call.i.i1035.i, 0
  br i1 %tobool1.not.i.i1036.i, label %land.rhs.i.i1040.i, label %land.lhs.true.i.i1037.i.dst_input.exit1045.i_crit_edge

land.lhs.true.i.i1037.i.dst_input.exit1045.i_crit_edge: ; preds = %land.lhs.true.i.i1037.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit1045.i

land.rhs.i.i1040.i:                               ; preds = %land.lhs.true.i.i1037.i
  %call2.i.i1038.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i1038.i)
  %tobool3.not.i.i1039.i = icmp eq i32 %call2.i.i1038.i, 0
  br i1 %tobool3.not.i.i1039.i, label %do.end.i.i1041.i, label %land.rhs.i.i1040.i.dst_input.exit1045.i_crit_edge, !prof !55

land.rhs.i.i1040.i.dst_input.exit1045.i_crit_edge: ; preds = %land.rhs.i.i1040.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_input.exit1045.i

do.end.i.i1041.i:                                 ; preds = %land.rhs.i.i1040.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_input.exit1045.i

dst_input.exit1045.i:                             ; preds = %do.end.i.i1041.i, %land.rhs.i.i1040.i.dst_input.exit1045.i_crit_edge, %land.lhs.true.i.i1037.i.dst_input.exit1045.i_crit_edge, %if.end576.i.dst_input.exit1045.i_crit_edge
  %770 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %445, align 8
  %and25.i.i1042.i = and i32 %771, -2
  %772 = inttoptr i32 %and25.i.i1042.i to ptr
  %input.i1043.i = getelementptr inbounds %struct.dst_entry, ptr %772, i32 0, i32 5
  %773 = ptrtoint ptr %input.i1043.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %input.i1043.i, align 4
  %call1.i1044.i = tail call i32 %774(ptr noundef %skb) #10
  br label %cleanup

if.then137.loopexit:                              ; preds = %if.end749
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cmp = icmp eq ptr %add.ptr, null
  br label %if.then137

if.then137:                                       ; preds = %if.then137.loopexit, %looped_back.preheader.if.then137_crit_edge
  %hdr.0.lcssa = phi ptr [ %add.ptr.i1030, %looped_back.preheader.if.then137_crit_edge ], [ %hdr.1, %if.then137.loopexit ]
  %addr.0.lcssa = phi i1 [ true, %looped_back.preheader.if.then137_crit_edge ], [ %phi.cmp, %if.then137.loopexit ]
  %type138 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.0.lcssa, i32 0, i32 2
  %775 = ptrtoint ptr %type138 to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %type138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %776)
  %cond837 = icmp eq i8 %776, 2
  %or.cond = select i1 %cond837, i1 %addr.0.lcssa, i1 false
  br i1 %or.cond, label %if.then142, label %sw.epilog206

if.then142:                                       ; preds = %if.then137
  br i1 %tobool.not, label %if.then142.do.body179_crit_edge, label %do.body153, !prof !55

if.then142.do.body179_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body179

do.body153:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6163 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %777 = ptrtoint ptr %ipv6163 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %ipv6163, align 4
  %779 = ptrtoint ptr %778 to i32
  %780 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1165 = and i32 %780, -16384
  %781 = inttoptr i32 %and.i1165 to ptr
  %cpu166 = getelementptr inbounds %struct.thread_info, ptr %781, i32 0, i32 3
  %782 = ptrtoint ptr %cpu166 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load i32, ptr %cpu166, align 4
  %arrayidx167 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %783
  %784 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %arrayidx167, align 4
  %add168 = add i32 %785, %779
  %786 = inttoptr i32 %add168 to ptr
  %syncp169 = getelementptr inbounds %struct.ipstats_mib, ptr %786, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp169)
  %arrayidx171 = getelementptr [37 x i64], ptr %786, i32 0, i32 10
  %787 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load8_noabort(i32 %787)
  %788 = load i64, ptr %arrayidx171, align 8
  %add172 = add i64 %788, 1
  store i64 %add172, ptr %arrayidx171, align 8
  %dep_map.i.i1166 = getelementptr inbounds %struct.ipstats_mib, ptr %786, i32 0, i32 1, i32 0, i32 1
  %789 = tail call ptr @llvm.returnaddress(i32 0) #10
  %790 = ptrtoint ptr %789 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1166, i32 noundef %790) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %791 = ptrtoint ptr %syncp169 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %syncp169, align 4
  %inc.i.i.i1167 = add i32 %792, 1
  store i32 %inc.i.i.i1167, ptr %syncp169, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body179

do.body179:                                       ; preds = %do.body153, %if.then142.do.body179_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics189 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %793 = ptrtoint ptr %ipv6_statistics189 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %ipv6_statistics189, align 4
  %795 = ptrtoint ptr %794 to i32
  %796 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1168 = and i32 %796, -16384
  %797 = inttoptr i32 %and.i1168 to ptr
  %cpu192 = getelementptr inbounds %struct.thread_info, ptr %797, i32 0, i32 3
  %798 = ptrtoint ptr %cpu192 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %cpu192, align 4
  %arrayidx193 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %799
  %800 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %arrayidx193, align 4
  %add194 = add i32 %801, %795
  %802 = inttoptr i32 %add194 to ptr
  %syncp195 = getelementptr inbounds %struct.ipstats_mib, ptr %802, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp195)
  %arrayidx197 = getelementptr [37 x i64], ptr %802, i32 0, i32 10
  %803 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load8_noabort(i32 %803)
  %804 = load i64, ptr %arrayidx197, align 8
  %add198 = add i64 %804, 1
  store i64 %add198, ptr %arrayidx197, align 8
  %dep_map.i.i1169 = getelementptr inbounds %struct.ipstats_mib, ptr %802, i32 0, i32 1, i32 0, i32 1
  %805 = tail call ptr @llvm.returnaddress(i32 0) #10
  %806 = ptrtoint ptr %805 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1169, i32 noundef %806) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %807 = ptrtoint ptr %syncp195 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %syncp195, align 4
  %inc.i.i.i1170 = add i32 %808, 1
  store i32 %inc.i.i.i1170, ptr %syncp195, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

sw.epilog206:                                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  %809 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %809)
  %810 = load i16, ptr %transport_header.i.i, align 2
  %811 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %811)
  %812 = load i16, ptr %network_header.i.i, align 4
  %conv1.i = zext i16 %812 to i32
  %sub.i1173 = sub i16 %810, %812
  %srcrt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %813 = ptrtoint ptr %srcrt to i32
  call void @__asan_store2_noabort(i32 %813)
  store i16 %sub.i1173, ptr %srcrt, align 4
  %lastopt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %814 = ptrtoint ptr %lastopt to i32
  call void @__asan_store2_noabort(i32 %814)
  store i16 %sub.i1173, ptr %lastopt, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.0.lcssa, i32 0, i32 1
  %815 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %815)
  %816 = load i8, ptr %hdrlen, align 1
  %conv209 = zext i8 %816 to i16
  %add210 = shl nuw nsw i16 %conv209, 3
  %shl211 = add i16 %810, 8
  %add213 = add i16 %shl211, %add210
  store i16 %add213, ptr %transport_header.i.i, align 2
  %dst1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %817 = ptrtoint ptr %dst1 to i32
  call void @__asan_load2_noabort(i32 %817)
  %818 = load i16, ptr %dst1, align 2
  %dst0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %819 = ptrtoint ptr %dst0 to i32
  call void @__asan_store2_noabort(i32 %819)
  store i16 %818, ptr %dst0, align 2
  store i16 0, ptr %dst1, align 2
  %820 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i1177 = getelementptr i8, ptr %821, i32 %conv1.i
  %sub.ptr.lhs.cast = ptrtoint ptr %hdr.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i1177 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv217 = trunc i32 %sub.ptr.sub to i16
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %822 = ptrtoint ptr %nhoff to i32
  call void @__asan_store2_noabort(i32 %822)
  store i16 %conv217, ptr %nhoff, align 2
  br label %cleanup

if.end218:                                        ; preds = %if.end749.if.end218_crit_edge, %if.end218.lr.ph
  %823 = phi i8 [ %115, %if.end218.lr.ph ], [ %1099, %if.end749.if.end218_crit_edge ]
  %hdr.01377 = phi ptr [ %add.ptr.i1030, %if.end218.lr.ph ], [ %hdr.1, %if.end749.if.end218_crit_edge ]
  %type219 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.01377, i32 0, i32 2
  %824 = ptrtoint ptr %type219 to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %type219, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %825)
  %cond = icmp ne i8 %825, 2
  %or.cond1002 = select i1 %cond, i1 true, i1 %cmp222
  br i1 %or.cond1002, label %unknown_rh, label %if.end225

if.end225:                                        ; preds = %if.end218
  %hdrlen226 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.01377, i32 0, i32 1
  %826 = ptrtoint ptr %hdrlen226 to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %hdrlen226, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %827)
  %cmp228.not = icmp eq i8 %827, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %823)
  %cmp233.not = icmp eq i8 %823, 1
  %or.cond1003 = select i1 %cmp228.not, i1 %cmp233.not, i1 false
  br i1 %or.cond1003, label %if.end373, label %if.then235

if.then235:                                       ; preds = %if.end225
  br i1 %tobool.not, label %if.then235.do.body272_crit_edge, label %do.body246, !prof !55

if.then235.do.body272_crit_edge:                  ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body272

do.body246:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6256 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %828 = ptrtoint ptr %ipv6256 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %ipv6256, align 4
  %830 = ptrtoint ptr %829 to i32
  %831 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1178 = and i32 %831, -16384
  %832 = inttoptr i32 %and.i1178 to ptr
  %cpu259 = getelementptr inbounds %struct.thread_info, ptr %832, i32 0, i32 3
  %833 = ptrtoint ptr %cpu259 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %cpu259, align 4
  %arrayidx260 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %834
  %835 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %arrayidx260, align 4
  %add261 = add i32 %836, %830
  %837 = inttoptr i32 %add261 to ptr
  %syncp262 = getelementptr inbounds %struct.ipstats_mib, ptr %837, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp262)
  %arrayidx264 = getelementptr [37 x i64], ptr %837, i32 0, i32 7
  %838 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load8_noabort(i32 %838)
  %839 = load i64, ptr %arrayidx264, align 8
  %add265 = add i64 %839, 1
  store i64 %add265, ptr %arrayidx264, align 8
  %dep_map.i.i1179 = getelementptr inbounds %struct.ipstats_mib, ptr %837, i32 0, i32 1, i32 0, i32 1
  %840 = tail call ptr @llvm.returnaddress(i32 0) #10
  %841 = ptrtoint ptr %840 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1179, i32 noundef %841) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %842 = ptrtoint ptr %syncp262 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %syncp262, align 4
  %inc.i.i.i1180 = add i32 %843, 1
  store i32 %inc.i.i.i1180, ptr %syncp262, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body272

do.body272:                                       ; preds = %do.body246, %if.then235.do.body272_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics282 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %844 = ptrtoint ptr %ipv6_statistics282 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %ipv6_statistics282, align 4
  %846 = ptrtoint ptr %845 to i32
  %847 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1181 = and i32 %847, -16384
  %848 = inttoptr i32 %and.i1181 to ptr
  %cpu285 = getelementptr inbounds %struct.thread_info, ptr %848, i32 0, i32 3
  %849 = ptrtoint ptr %cpu285 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %cpu285, align 4
  %arrayidx286 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %850
  %851 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %arrayidx286, align 4
  %add287 = add i32 %852, %846
  %853 = inttoptr i32 %add287 to ptr
  %syncp288 = getelementptr inbounds %struct.ipstats_mib, ptr %853, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp288)
  %arrayidx290 = getelementptr [37 x i64], ptr %853, i32 0, i32 7
  %854 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load8_noabort(i32 %854)
  %855 = load i64, ptr %arrayidx290, align 8
  %add291 = add i64 %855, 1
  store i64 %add291, ptr %arrayidx290, align 8
  %dep_map.i.i1182 = getelementptr inbounds %struct.ipstats_mib, ptr %853, i32 0, i32 1, i32 0, i32 1
  %856 = tail call ptr @llvm.returnaddress(i32 0) #10
  %857 = ptrtoint ptr %856 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1182, i32 noundef %857) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %858 = ptrtoint ptr %syncp288 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %syncp288, align 4
  %inc.i.i.i1183 = add i32 %859, 1
  store i32 %inc.i.i.i1183, ptr %syncp288, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end373:                                        ; preds = %if.end225
  %860 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %bf.load.i1184 = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i1184)
  %tobool.not.i1185 = icmp sgt i8 %bf.load.i1184, -1
  br i1 %tobool.not.i1185, label %if.end373.if.end445_crit_edge, label %skb_cloned.exit

if.end373.if.end445_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445

skb_cloned.exit:                                  ; preds = %if.end373
  %861 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %862, i32 0, i32 10
  %call.i.i.i1186 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %863 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load volatile i32, ptr %dataref.i, align 4
  %and.i1187 = and i32 %864, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i1187)
  %cmp.i1188.not = icmp eq i32 %and.i1187, 1
  br i1 %cmp.i1188.not, label %skb_cloned.exit.if.end445_crit_edge, label %if.then376

skb_cloned.exit.if.end445_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445

if.then376:                                       ; preds = %skb_cloned.exit
  %call377 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %if.end443, label %if.then379

if.then379:                                       ; preds = %if.then376
  %call381 = tail call fastcc ptr @skb_dst(ptr noundef %skb)
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call381, i32 0, i32 6
  %865 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp383.not = icmp eq ptr %866, null
  br i1 %cmp383.not, label %if.then379.do.body418_crit_edge, label %do.body392, !prof !55

if.then379.do.body418_crit_edge:                  ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body418

do.body392:                                       ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6402 = getelementptr inbounds %struct.inet6_dev, ptr %866, i32 0, i32 33, i32 1
  %867 = ptrtoint ptr %ipv6402 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %ipv6402, align 4
  %869 = ptrtoint ptr %868 to i32
  %870 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1189 = and i32 %870, -16384
  %871 = inttoptr i32 %and.i1189 to ptr
  %cpu405 = getelementptr inbounds %struct.thread_info, ptr %871, i32 0, i32 3
  %872 = ptrtoint ptr %cpu405 to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %cpu405, align 4
  %arrayidx406 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %873
  %874 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %arrayidx406, align 4
  %add407 = add i32 %875, %869
  %876 = inttoptr i32 %add407 to ptr
  %syncp408 = getelementptr inbounds %struct.ipstats_mib, ptr %876, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp408)
  %arrayidx410 = getelementptr [37 x i64], ptr %876, i32 0, i32 14
  %877 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load8_noabort(i32 %877)
  %878 = load i64, ptr %arrayidx410, align 8
  %add411 = add i64 %878, 1
  store i64 %add411, ptr %arrayidx410, align 8
  %dep_map.i.i1190 = getelementptr inbounds %struct.ipstats_mib, ptr %876, i32 0, i32 1, i32 0, i32 1
  %879 = tail call ptr @llvm.returnaddress(i32 0) #10
  %880 = ptrtoint ptr %879 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1190, i32 noundef %880) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %881 = ptrtoint ptr %syncp408 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %syncp408, align 4
  %inc.i.i.i1191 = add i32 %882, 1
  store i32 %inc.i.i.i1191, ptr %syncp408, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body418

do.body418:                                       ; preds = %do.body392, %if.then379.do.body418_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics428 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %883 = ptrtoint ptr %ipv6_statistics428 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %ipv6_statistics428, align 4
  %885 = ptrtoint ptr %884 to i32
  %886 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1192 = and i32 %886, -16384
  %887 = inttoptr i32 %and.i1192 to ptr
  %cpu431 = getelementptr inbounds %struct.thread_info, ptr %887, i32 0, i32 3
  %888 = ptrtoint ptr %cpu431 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load i32, ptr %cpu431, align 4
  %arrayidx432 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %889
  %890 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %arrayidx432, align 4
  %add433 = add i32 %891, %885
  %892 = inttoptr i32 %add433 to ptr
  %syncp434 = getelementptr inbounds %struct.ipstats_mib, ptr %892, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp434)
  %arrayidx436 = getelementptr [37 x i64], ptr %892, i32 0, i32 14
  %893 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_load8_noabort(i32 %893)
  %894 = load i64, ptr %arrayidx436, align 8
  %add437 = add i64 %894, 1
  store i64 %add437, ptr %arrayidx436, align 8
  %dep_map.i.i1193 = getelementptr inbounds %struct.ipstats_mib, ptr %892, i32 0, i32 1, i32 0, i32 1
  %895 = tail call ptr @llvm.returnaddress(i32 0) #10
  %896 = ptrtoint ptr %895 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1193, i32 noundef %896) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %897 = ptrtoint ptr %syncp434 to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load i32, ptr %syncp434, align 4
  %inc.i.i.i1194 = add i32 %898, 1
  store i32 %inc.i.i.i1194, ptr %syncp434, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end443:                                        ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #12
  %899 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %head.i.i, align 8
  %901 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %901)
  %902 = load i16, ptr %transport_header.i.i, align 2
  %conv.i1197 = zext i16 %902 to i32
  %add.ptr.i1198 = getelementptr i8, ptr %900, i32 %conv.i1197
  br label %if.end445

if.end445:                                        ; preds = %if.end443, %skb_cloned.exit.if.end445_crit_edge, %if.end373.if.end445_crit_edge
  %hdr.1 = phi ptr [ %add.ptr.i1198, %if.end443 ], [ %hdr.01377, %skb_cloned.exit.if.end445_crit_edge ], [ %hdr.01377, %if.end373.if.end445_crit_edge ]
  %903 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %903)
  %bf.load446 = load i16, ptr %pkt_type, align 8
  %904 = and i16 %bf.load446, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %904)
  %cmp450 = icmp eq i16 %904, 1024
  br i1 %cmp450, label %if.then452, label %if.end445.if.end456_crit_edge

if.end445.if.end456_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end456

if.then452:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear455 = and i16 %bf.load446, -1537
  %905 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %905)
  store i16 %bf.clear455, ptr %pkt_type, align 8
  br label %if.end456

if.end456:                                        ; preds = %if.then452, %if.end445.if.end456_crit_edge
  %segments_left457 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.1, i32 0, i32 3
  %906 = ptrtoint ptr %segments_left457 to i32
  call void @__asan_load1_noabort(i32 %906)
  %907 = load i8, ptr %segments_left457, align 1
  %dec = add i8 %907, -1
  store i8 %dec, ptr %segments_left457, align 1
  %conv458 = zext i8 %dec to i32
  %addr459 = getelementptr inbounds %struct.rt0_hdr, ptr %hdr.1, i32 0, i32 2
  %sub461 = sub nsw i32 0, %conv458
  %add.ptr = getelementptr %struct.in6_addr, ptr %addr459, i32 %sub461
  %type462 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.1, i32 0, i32 2
  %908 = ptrtoint ptr %type462 to i32
  call void @__asan_load1_noabort(i32 %908)
  %909 = load i8, ptr %type462, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %909)
  %cond836 = icmp eq i8 %909, 2
  br i1 %cond836, label %sw.bb464, label %if.end456.sw.epilog600_crit_edge

if.end456.sw.epilog600_crit_edge:                 ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog600

sw.bb464:                                         ; preds = %if.end456
  %910 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %head.i.i, align 8
  %912 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %912)
  %913 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1201 = zext i16 %913 to i32
  %add.ptr.i.i1202 = getelementptr i8, ptr %911, i32 %conv.i.i1201
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1202, i32 0, i32 5
  %call466 = tail call i32 @xfrm6_input_addr(ptr noundef %skb, ptr noundef %add.ptr, ptr noundef %saddr, i8 noundef zeroext 43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %cmp467 = icmp slt i32 %call466, 0
  br i1 %cmp467, label %if.then469, label %if.end531

if.then469:                                       ; preds = %sw.bb464
  br i1 %tobool.not, label %if.then469.do.body506_crit_edge, label %do.body480, !prof !55

if.then469.do.body506_crit_edge:                  ; preds = %if.then469
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body506

do.body480:                                       ; preds = %if.then469
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6490 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %914 = ptrtoint ptr %ipv6490 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %ipv6490, align 4
  %916 = ptrtoint ptr %915 to i32
  %917 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1203 = and i32 %917, -16384
  %918 = inttoptr i32 %and.i1203 to ptr
  %cpu493 = getelementptr inbounds %struct.thread_info, ptr %918, i32 0, i32 3
  %919 = ptrtoint ptr %cpu493 to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load i32, ptr %cpu493, align 4
  %arrayidx494 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %920
  %921 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %arrayidx494, align 4
  %add495 = add i32 %922, %916
  %923 = inttoptr i32 %add495 to ptr
  %syncp496 = getelementptr inbounds %struct.ipstats_mib, ptr %923, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp496)
  %arrayidx498 = getelementptr [37 x i64], ptr %923, i32 0, i32 10
  %924 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load8_noabort(i32 %924)
  %925 = load i64, ptr %arrayidx498, align 8
  %add499 = add i64 %925, 1
  store i64 %add499, ptr %arrayidx498, align 8
  %dep_map.i.i1204 = getelementptr inbounds %struct.ipstats_mib, ptr %923, i32 0, i32 1, i32 0, i32 1
  %926 = tail call ptr @llvm.returnaddress(i32 0) #10
  %927 = ptrtoint ptr %926 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1204, i32 noundef %927) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %928 = ptrtoint ptr %syncp496 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load i32, ptr %syncp496, align 4
  %inc.i.i.i1205 = add i32 %929, 1
  store i32 %inc.i.i.i1205, ptr %syncp496, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body506

do.body506:                                       ; preds = %do.body480, %if.then469.do.body506_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics516 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %930 = ptrtoint ptr %ipv6_statistics516 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %ipv6_statistics516, align 4
  %932 = ptrtoint ptr %931 to i32
  %933 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1206 = and i32 %933, -16384
  %934 = inttoptr i32 %and.i1206 to ptr
  %cpu519 = getelementptr inbounds %struct.thread_info, ptr %934, i32 0, i32 3
  %935 = ptrtoint ptr %cpu519 to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %cpu519, align 4
  %arrayidx520 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %936
  %937 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %arrayidx520, align 4
  %add521 = add i32 %938, %932
  %939 = inttoptr i32 %add521 to ptr
  %syncp522 = getelementptr inbounds %struct.ipstats_mib, ptr %939, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp522)
  %arrayidx524 = getelementptr [37 x i64], ptr %939, i32 0, i32 10
  %940 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_load8_noabort(i32 %940)
  %941 = load i64, ptr %arrayidx524, align 8
  %add525 = add i64 %941, 1
  store i64 %add525, ptr %arrayidx524, align 8
  %dep_map.i.i1207 = getelementptr inbounds %struct.ipstats_mib, ptr %939, i32 0, i32 1, i32 0, i32 1
  %942 = tail call ptr @llvm.returnaddress(i32 0) #10
  %943 = ptrtoint ptr %942 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1207, i32 noundef %943) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %944 = ptrtoint ptr %syncp522 to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %syncp522, align 4
  %inc.i.i.i1208 = add i32 %945, 1
  store i32 %inc.i.i.i1208, ptr %syncp522, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end531:                                        ; preds = %sw.bb464
  %946 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %116, align 8
  %and.i1209 = and i32 %947, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1209)
  %tobool.not.i1210 = icmp eq i32 %and.i1209, 0
  br i1 %tobool.not.i1210, label %if.end531.skb_dst.exit_crit_edge, label %land.lhs.true.i1212

if.end531.skb_dst.exit_crit_edge:                 ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i1212:                              ; preds = %if.end531
  %call.i1211 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1211)
  %tobool1.not.i = icmp eq i32 %call.i1211, 0
  br i1 %tobool1.not.i, label %land.rhs.i1214, label %land.lhs.true.i1212.skb_dst.exit_crit_edge

land.lhs.true.i1212.skb_dst.exit_crit_edge:       ; preds = %land.lhs.true.i1212
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i1214:                                   ; preds = %land.lhs.true.i1212
  %call2.i1213 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i1213)
  %tobool3.not.i = icmp eq i32 %call2.i1213, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i1214.skb_dst.exit_crit_edge, !prof !55

land.rhs.i1214.skb_dst.exit_crit_edge:            ; preds = %land.rhs.i1214
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i1214
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i1214.skb_dst.exit_crit_edge, %land.lhs.true.i1212.skb_dst.exit_crit_edge, %if.end531.skb_dst.exit_crit_edge
  %948 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %116, align 8
  %and25.i = and i32 %949, -2
  %950 = inttoptr i32 %and25.i to ptr
  %951 = ptrtoint ptr %950 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %950, align 4
  %nd_net.i1216 = getelementptr inbounds %struct.net_device, ptr %952, i32 0, i32 127
  %953 = ptrtoint ptr %nd_net.i1216 to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %nd_net.i1216, align 4
  %call534 = tail call i32 @ipv6_chk_home_addr(ptr noundef %954, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call534)
  %tobool535.not = icmp eq i32 %call534, 0
  br i1 %tobool535.not, label %if.then536, label %skb_dst.exit.sw.epilog600_crit_edge

skb_dst.exit.sw.epilog600_crit_edge:              ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog600

if.then536:                                       ; preds = %skb_dst.exit
  br i1 %tobool.not, label %if.then536.do.body573_crit_edge, label %do.body547, !prof !55

if.then536.do.body573_crit_edge:                  ; preds = %if.then536
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body573

do.body547:                                       ; preds = %if.then536
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6557 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %955 = ptrtoint ptr %ipv6557 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %ipv6557, align 4
  %957 = ptrtoint ptr %956 to i32
  %958 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1217 = and i32 %958, -16384
  %959 = inttoptr i32 %and.i1217 to ptr
  %cpu560 = getelementptr inbounds %struct.thread_info, ptr %959, i32 0, i32 3
  %960 = ptrtoint ptr %cpu560 to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load i32, ptr %cpu560, align 4
  %arrayidx561 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %961
  %962 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load i32, ptr %arrayidx561, align 4
  %add562 = add i32 %963, %957
  %964 = inttoptr i32 %add562 to ptr
  %syncp563 = getelementptr inbounds %struct.ipstats_mib, ptr %964, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp563)
  %arrayidx565 = getelementptr [37 x i64], ptr %964, i32 0, i32 10
  %965 = ptrtoint ptr %arrayidx565 to i32
  call void @__asan_load8_noabort(i32 %965)
  %966 = load i64, ptr %arrayidx565, align 8
  %add566 = add i64 %966, 1
  store i64 %add566, ptr %arrayidx565, align 8
  %dep_map.i.i1218 = getelementptr inbounds %struct.ipstats_mib, ptr %964, i32 0, i32 1, i32 0, i32 1
  %967 = tail call ptr @llvm.returnaddress(i32 0) #10
  %968 = ptrtoint ptr %967 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1218, i32 noundef %968) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %969 = ptrtoint ptr %syncp563 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %syncp563, align 4
  %inc.i.i.i1219 = add i32 %970, 1
  store i32 %inc.i.i.i1219, ptr %syncp563, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body573

do.body573:                                       ; preds = %do.body547, %if.then536.do.body573_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics583 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %971 = ptrtoint ptr %ipv6_statistics583 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %ipv6_statistics583, align 4
  %973 = ptrtoint ptr %972 to i32
  %974 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1220 = and i32 %974, -16384
  %975 = inttoptr i32 %and.i1220 to ptr
  %cpu586 = getelementptr inbounds %struct.thread_info, ptr %975, i32 0, i32 3
  %976 = ptrtoint ptr %cpu586 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %cpu586, align 4
  %arrayidx587 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %977
  %978 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load i32, ptr %arrayidx587, align 4
  %add588 = add i32 %979, %973
  %980 = inttoptr i32 %add588 to ptr
  %syncp589 = getelementptr inbounds %struct.ipstats_mib, ptr %980, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp589)
  %arrayidx591 = getelementptr [37 x i64], ptr %980, i32 0, i32 10
  %981 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_load8_noabort(i32 %981)
  %982 = load i64, ptr %arrayidx591, align 8
  %add592 = add i64 %982, 1
  store i64 %add592, ptr %arrayidx591, align 8
  %dep_map.i.i1221 = getelementptr inbounds %struct.ipstats_mib, ptr %980, i32 0, i32 1, i32 0, i32 1
  %983 = tail call ptr @llvm.returnaddress(i32 0) #10
  %984 = ptrtoint ptr %983 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1221, i32 noundef %984) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %985 = ptrtoint ptr %syncp589 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load i32, ptr %syncp589, align 4
  %inc.i.i.i1222 = add i32 %986, 1
  store i32 %inc.i.i.i1222, ptr %syncp589, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

sw.epilog600:                                     ; preds = %skb_dst.exit.sw.epilog600_crit_edge, %if.end456.sw.epilog600_crit_edge
  %987 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %988)
  %cmp.i1223 = icmp ugt i32 %988, -16777217
  br i1 %cmp.i1223, label %if.then602, label %if.end664

if.then602:                                       ; preds = %sw.epilog600
  br i1 %tobool.not, label %if.then602.do.body639_crit_edge, label %do.body613, !prof !55

if.then602.do.body639_crit_edge:                  ; preds = %if.then602
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body639

do.body613:                                       ; preds = %if.then602
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6623 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %989 = ptrtoint ptr %ipv6623 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %ipv6623, align 4
  %991 = ptrtoint ptr %990 to i32
  %992 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1224 = and i32 %992, -16384
  %993 = inttoptr i32 %and.i1224 to ptr
  %cpu626 = getelementptr inbounds %struct.thread_info, ptr %993, i32 0, i32 3
  %994 = ptrtoint ptr %cpu626 to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load i32, ptr %cpu626, align 4
  %arrayidx627 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %995
  %996 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load i32, ptr %arrayidx627, align 4
  %add628 = add i32 %997, %991
  %998 = inttoptr i32 %add628 to ptr
  %syncp629 = getelementptr inbounds %struct.ipstats_mib, ptr %998, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp629)
  %arrayidx631 = getelementptr [37 x i64], ptr %998, i32 0, i32 10
  %999 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load8_noabort(i32 %999)
  %1000 = load i64, ptr %arrayidx631, align 8
  %add632 = add i64 %1000, 1
  store i64 %add632, ptr %arrayidx631, align 8
  %dep_map.i.i1225 = getelementptr inbounds %struct.ipstats_mib, ptr %998, i32 0, i32 1, i32 0, i32 1
  %1001 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1002 = ptrtoint ptr %1001 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1225, i32 noundef %1002) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1003 = ptrtoint ptr %syncp629 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %syncp629, align 4
  %inc.i.i.i1226 = add i32 %1004, 1
  store i32 %inc.i.i.i1226, ptr %syncp629, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body639

do.body639:                                       ; preds = %do.body613, %if.then602.do.body639_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics649 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %1005 = ptrtoint ptr %ipv6_statistics649 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %ipv6_statistics649, align 4
  %1007 = ptrtoint ptr %1006 to i32
  %1008 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1227 = and i32 %1008, -16384
  %1009 = inttoptr i32 %and.i1227 to ptr
  %cpu652 = getelementptr inbounds %struct.thread_info, ptr %1009, i32 0, i32 3
  %1010 = ptrtoint ptr %cpu652 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load i32, ptr %cpu652, align 4
  %arrayidx653 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1011
  %1012 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load i32, ptr %arrayidx653, align 4
  %add654 = add i32 %1013, %1007
  %1014 = inttoptr i32 %add654 to ptr
  %syncp655 = getelementptr inbounds %struct.ipstats_mib, ptr %1014, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp655)
  %arrayidx657 = getelementptr [37 x i64], ptr %1014, i32 0, i32 10
  %1015 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_load8_noabort(i32 %1015)
  %1016 = load i64, ptr %arrayidx657, align 8
  %add658 = add i64 %1016, 1
  store i64 %add658, ptr %arrayidx657, align 8
  %dep_map.i.i1228 = getelementptr inbounds %struct.ipstats_mib, ptr %1014, i32 0, i32 1, i32 0, i32 1
  %1017 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1018 = ptrtoint ptr %1017 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1228, i32 noundef %1018) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1019 = ptrtoint ptr %syncp655 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %syncp655, align 4
  %inc.i.i.i1229 = add i32 %1020, 1
  store i32 %inc.i.i.i1229, ptr %syncp655, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end664:                                        ; preds = %sw.epilog600
  %daddr.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %1021 = ptrtoint ptr %daddr.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1021)
  %daddr.sroa.5.0.copyload = load i32, ptr %daddr.sroa.5.0..sroa_idx, align 4
  %daddr.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 8
  %1022 = ptrtoint ptr %daddr.sroa.6.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1022)
  %daddr.sroa.6.0.copyload = load i32, ptr %daddr.sroa.6.0..sroa_idx, align 4
  %daddr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 12
  %1023 = ptrtoint ptr %daddr.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1023)
  %daddr.sroa.7.0.copyload = load i32, ptr %daddr.sroa.7.0..sroa_idx, align 4
  %1024 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %head.i.i, align 8
  %1026 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %1026)
  %1027 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1232 = zext i16 %1027 to i32
  %add.ptr.i.i1233 = getelementptr i8, ptr %1025, i32 %conv.i.i1232
  %daddr666 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1233, i32 0, i32 6
  %1028 = call ptr @memcpy(ptr %add.ptr, ptr %daddr666, i32 16)
  %1029 = load ptr, ptr %head.i.i, align 8
  %1030 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1236 = zext i16 %1030 to i32
  %add.ptr.i.i1237 = getelementptr i8, ptr %1029, i32 %conv.i.i1236
  %daddr668 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1237, i32 0, i32 6
  %1031 = ptrtoint ptr %daddr668 to i32
  call void @__asan_store4_noabort(i32 %1031)
  store i32 %988, ptr %daddr668, align 4
  %daddr.sroa.5.0.daddr668.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1237, i32 0, i32 6, i32 0, i32 0, i32 1
  %1032 = ptrtoint ptr %daddr.sroa.5.0.daddr668.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1032)
  store i32 %daddr.sroa.5.0.copyload, ptr %daddr.sroa.5.0.daddr668.sroa_idx, align 4
  %daddr.sroa.6.0.daddr668.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1237, i32 0, i32 6, i32 0, i32 0, i32 2
  %1033 = ptrtoint ptr %daddr.sroa.6.0.daddr668.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1033)
  store i32 %daddr.sroa.6.0.copyload, ptr %daddr.sroa.6.0.daddr668.sroa_idx, align 4
  %daddr.sroa.7.0.daddr668.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1237, i32 0, i32 6, i32 0, i32 0, i32 3
  %1034 = ptrtoint ptr %daddr.sroa.7.0.daddr668.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1034)
  store i32 %daddr.sroa.7.0.copyload, ptr %daddr.sroa.7.0.daddr668.sroa_idx, align 4
  %1035 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load i32, ptr %116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1036)
  %tobool.not.i1238 = icmp eq i32 %1036, 0
  br i1 %tobool.not.i1238, label %if.end664.skb_dst_drop.exit_crit_edge, label %if.then.i1241

if.end664.skb_dst_drop.exit_crit_edge:            ; preds = %if.end664
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i1241:                                    ; preds = %if.end664
  %and.i.i1239 = and i32 %1036, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1239)
  %tobool.not.i.i1240 = icmp eq i32 %and.i.i1239, 0
  br i1 %tobool.not.i.i1240, label %if.then.i.i1242, label %if.then.i1241.refdst_drop.exit.i_crit_edge

if.then.i1241.refdst_drop.exit.i_crit_edge:       ; preds = %if.then.i1241
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i1242:                                  ; preds = %if.then.i1241
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %1036, -2
  %1037 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %1037) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i1242, %if.then.i1241.refdst_drop.exit.i_crit_edge
  %1038 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %1038)
  store i32 0, ptr %116, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end664.skb_dst_drop.exit_crit_edge
  tail call void @ip6_route_input(ptr noundef %skb) #10
  %1039 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %116, align 8
  %and.i1244 = and i32 %1040, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1244)
  %tobool.not.i1245 = icmp eq i32 %and.i1244, 0
  br i1 %tobool.not.i1245, label %skb_dst_drop.exit.skb_dst.exit1255_crit_edge, label %land.lhs.true.i1248

skb_dst_drop.exit.skb_dst.exit1255_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1255

land.lhs.true.i1248:                              ; preds = %skb_dst_drop.exit
  %call.i1246 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1246)
  %tobool1.not.i1247 = icmp eq i32 %call.i1246, 0
  br i1 %tobool1.not.i1247, label %land.rhs.i1251, label %land.lhs.true.i1248.skb_dst.exit1255_crit_edge

land.lhs.true.i1248.skb_dst.exit1255_crit_edge:   ; preds = %land.lhs.true.i1248
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1255

land.rhs.i1251:                                   ; preds = %land.lhs.true.i1248
  %call2.i1249 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i1249)
  %tobool3.not.i1250 = icmp eq i32 %call2.i1249, 0
  br i1 %tobool3.not.i1250, label %do.end.i1252, label %land.rhs.i1251.skb_dst.exit1255_crit_edge, !prof !55

land.rhs.i1251.skb_dst.exit1255_crit_edge:        ; preds = %land.rhs.i1251
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1255

do.end.i1252:                                     ; preds = %land.rhs.i1251
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit1255

skb_dst.exit1255:                                 ; preds = %do.end.i1252, %land.rhs.i1251.skb_dst.exit1255_crit_edge, %land.lhs.true.i1248.skb_dst.exit1255_crit_edge, %skb_dst_drop.exit.skb_dst.exit1255_crit_edge
  %1041 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load i32, ptr %116, align 8
  %and25.i1253 = and i32 %1042, -2
  %1043 = inttoptr i32 %and25.i1253 to ptr
  %error = getelementptr inbounds %struct.dst_entry, ptr %1043, i32 0, i32 15
  %1044 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %1044)
  %1045 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1045)
  %tobool670.not = icmp eq i16 %1045, 0
  br i1 %tobool670.not, label %if.end678, label %if.then671

if.then671:                                       ; preds = %skb_dst.exit1255
  call void @__sanitizer_cov_trace_pc() #12
  %1046 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %data.i, align 4
  %1048 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %head.i.i, align 8
  %1050 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %1050)
  %1051 = load i16, ptr %network_header.i.i, align 4
  %conv.i1258 = zext i16 %1051 to i32
  %add.ptr.i1259 = getelementptr i8, ptr %1049, i32 %conv.i1258
  %sub.ptr.lhs.cast673 = ptrtoint ptr %1047 to i32
  %sub.ptr.rhs.cast674 = ptrtoint ptr %add.ptr.i1259 to i32
  %sub.ptr.sub675 = sub i32 %sub.ptr.lhs.cast673, %sub.ptr.rhs.cast674
  %call676 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub675) #10
  tail call fastcc void @dst_input(ptr noundef %skb)
  br label %cleanup

if.end678:                                        ; preds = %skb_dst.exit1255
  %and.i1260 = and i32 %1042, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1260)
  %tobool.not.i1261 = icmp eq i32 %and.i1260, 0
  br i1 %tobool.not.i1261, label %if.end678.skb_dst.exit1271_crit_edge, label %land.lhs.true.i1264

if.end678.skb_dst.exit1271_crit_edge:             ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1271

land.lhs.true.i1264:                              ; preds = %if.end678
  %call.i1262 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1262)
  %tobool1.not.i1263 = icmp eq i32 %call.i1262, 0
  br i1 %tobool1.not.i1263, label %land.rhs.i1267, label %land.lhs.true.i1264.skb_dst.exit1271_crit_edge

land.lhs.true.i1264.skb_dst.exit1271_crit_edge:   ; preds = %land.lhs.true.i1264
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1271

land.rhs.i1267:                                   ; preds = %land.lhs.true.i1264
  %call2.i1265 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i1265)
  %tobool3.not.i1266 = icmp eq i32 %call2.i1265, 0
  br i1 %tobool3.not.i1266, label %do.end.i1268, label %land.rhs.i1267.skb_dst.exit1271_crit_edge, !prof !55

land.rhs.i1267.skb_dst.exit1271_crit_edge:        ; preds = %land.rhs.i1267
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit1271

do.end.i1268:                                     ; preds = %land.rhs.i1267
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit1271

skb_dst.exit1271:                                 ; preds = %do.end.i1268, %land.rhs.i1267.skb_dst.exit1271_crit_edge, %land.lhs.true.i1264.skb_dst.exit1271_crit_edge, %if.end678.skb_dst.exit1271_crit_edge
  %1052 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load i32, ptr %116, align 8
  %and25.i1269 = and i32 %1053, -2
  %1054 = inttoptr i32 %and25.i1269 to ptr
  %1055 = ptrtoint ptr %1054 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %1054, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1056, i32 0, i32 14
  %1057 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load i32, ptr %flags, align 8
  %and = and i32 %1058, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool681.not = icmp eq i32 %and, 0
  br i1 %tobool681.not, label %if.end753, label %if.then682

if.then682:                                       ; preds = %skb_dst.exit1271
  %1059 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %head.i.i, align 8
  %1061 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %1061)
  %1062 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i1274 = zext i16 %1062 to i32
  %add.ptr.i.i1275 = getelementptr i8, ptr %1060, i32 %conv.i.i1274
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i1275, i32 0, i32 4
  %1063 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %1063)
  %1064 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1064)
  %cmp685 = icmp ult i8 %1064, 2
  br i1 %cmp685, label %if.then687, label %if.end749

if.then687:                                       ; preds = %if.then682
  br i1 %tobool.not, label %if.then687.do.body724_crit_edge, label %do.body698, !prof !55

if.then687.do.body724_crit_edge:                  ; preds = %if.then687
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body724

do.body698:                                       ; preds = %if.then687
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6708 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %1065 = ptrtoint ptr %ipv6708 to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %ipv6708, align 4
  %1067 = ptrtoint ptr %1066 to i32
  %1068 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1276 = and i32 %1068, -16384
  %1069 = inttoptr i32 %and.i1276 to ptr
  %cpu711 = getelementptr inbounds %struct.thread_info, ptr %1069, i32 0, i32 3
  %1070 = ptrtoint ptr %cpu711 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %cpu711, align 4
  %arrayidx712 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1071
  %1072 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load i32, ptr %arrayidx712, align 4
  %add713 = add i32 %1073, %1067
  %1074 = inttoptr i32 %add713 to ptr
  %syncp714 = getelementptr inbounds %struct.ipstats_mib, ptr %1074, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp714)
  %arrayidx716 = getelementptr [37 x i64], ptr %1074, i32 0, i32 7
  %1075 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_load8_noabort(i32 %1075)
  %1076 = load i64, ptr %arrayidx716, align 8
  %add717 = add i64 %1076, 1
  store i64 %add717, ptr %arrayidx716, align 8
  %dep_map.i.i1277 = getelementptr inbounds %struct.ipstats_mib, ptr %1074, i32 0, i32 1, i32 0, i32 1
  %1077 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1078 = ptrtoint ptr %1077 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1277, i32 noundef %1078) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1079 = ptrtoint ptr %syncp714 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load i32, ptr %syncp714, align 4
  %inc.i.i.i1278 = add i32 %1080, 1
  store i32 %inc.i.i.i1278, ptr %syncp714, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body724

do.body724:                                       ; preds = %do.body698, %if.then687.do.body724_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics734 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %1081 = ptrtoint ptr %ipv6_statistics734 to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %ipv6_statistics734, align 4
  %1083 = ptrtoint ptr %1082 to i32
  %1084 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1279 = and i32 %1084, -16384
  %1085 = inttoptr i32 %and.i1279 to ptr
  %cpu737 = getelementptr inbounds %struct.thread_info, ptr %1085, i32 0, i32 3
  %1086 = ptrtoint ptr %cpu737 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load i32, ptr %cpu737, align 4
  %arrayidx738 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1087
  %1088 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load i32, ptr %arrayidx738, align 4
  %add739 = add i32 %1089, %1083
  %1090 = inttoptr i32 %add739 to ptr
  %syncp740 = getelementptr inbounds %struct.ipstats_mib, ptr %1090, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp740)
  %arrayidx742 = getelementptr [37 x i64], ptr %1090, i32 0, i32 7
  %1091 = ptrtoint ptr %arrayidx742 to i32
  call void @__asan_load8_noabort(i32 %1091)
  %1092 = load i64, ptr %arrayidx742, align 8
  %add743 = add i64 %1092, 1
  store i64 %add743, ptr %arrayidx742, align 8
  %dep_map.i.i1280 = getelementptr inbounds %struct.ipstats_mib, ptr %1090, i32 0, i32 1, i32 0, i32 1
  %1093 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1094 = ptrtoint ptr %1093 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1280, i32 noundef %1094) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1095 = ptrtoint ptr %syncp740 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load i32, ptr %syncp740, align 4
  %inc.i.i.i1281 = add i32 %1096, 1
  store i32 %inc.i.i.i1281, ptr %syncp740, align 4
  tail call fastcc void @local_bh_enable()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end749:                                        ; preds = %if.then682
  %dec752 = add i8 %1064, -1
  %1097 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %1097)
  store i8 %dec752, ptr %hop_limit, align 1
  %1098 = ptrtoint ptr %segments_left457 to i32
  call void @__asan_load1_noabort(i32 %1098)
  %1099 = load i8, ptr %segments_left457, align 1
  %cmp135 = icmp eq i8 %1099, 0
  br i1 %cmp135, label %if.then137.loopexit, label %if.end749.if.end218_crit_edge

if.end749.if.end218_crit_edge:                    ; preds = %if.end749
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218

if.end753:                                        ; preds = %skb_dst.exit1271
  call void @__sanitizer_cov_trace_pc() #12
  %1100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %data.i, align 4
  %1102 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %head.i.i, align 8
  %1104 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %1104)
  %1105 = load i16, ptr %network_header.i.i, align 4
  %conv.i1288 = zext i16 %1105 to i32
  %add.ptr.i1289 = getelementptr i8, ptr %1103, i32 %conv.i1288
  %sub.ptr.lhs.cast756 = ptrtoint ptr %1101 to i32
  %sub.ptr.rhs.cast757 = ptrtoint ptr %add.ptr.i1289 to i32
  %sub.ptr.sub758 = sub i32 %sub.ptr.lhs.cast756, %sub.ptr.rhs.cast757
  %call759 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub758) #10
  tail call fastcc void @dst_input(ptr noundef %skb)
  br label %cleanup

unknown_rh:                                       ; preds = %if.end218
  %type219.le = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %hdr.01377, i32 0, i32 2
  br i1 %tobool.not, label %unknown_rh.do.body797_crit_edge, label %do.body771, !prof !55

unknown_rh.do.body797_crit_edge:                  ; preds = %unknown_rh
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body797

do.body771:                                       ; preds = %unknown_rh
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6781 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %1106 = ptrtoint ptr %ipv6781 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %ipv6781, align 4
  %1108 = ptrtoint ptr %1107 to i32
  %1109 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1290 = and i32 %1109, -16384
  %1110 = inttoptr i32 %and.i1290 to ptr
  %cpu784 = getelementptr inbounds %struct.thread_info, ptr %1110, i32 0, i32 3
  %1111 = ptrtoint ptr %cpu784 to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load i32, ptr %cpu784, align 4
  %arrayidx785 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1112
  %1113 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load i32, ptr %arrayidx785, align 4
  %add786 = add i32 %1114, %1108
  %1115 = inttoptr i32 %add786 to ptr
  %syncp787 = getelementptr inbounds %struct.ipstats_mib, ptr %1115, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp787)
  %arrayidx789 = getelementptr [37 x i64], ptr %1115, i32 0, i32 7
  %1116 = ptrtoint ptr %arrayidx789 to i32
  call void @__asan_load8_noabort(i32 %1116)
  %1117 = load i64, ptr %arrayidx789, align 8
  %add790 = add i64 %1117, 1
  store i64 %add790, ptr %arrayidx789, align 8
  %dep_map.i.i1291 = getelementptr inbounds %struct.ipstats_mib, ptr %1115, i32 0, i32 1, i32 0, i32 1
  %1118 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1119 = ptrtoint ptr %1118 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1291, i32 noundef %1119) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1120 = ptrtoint ptr %syncp787 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load i32, ptr %syncp787, align 4
  %inc.i.i.i1292 = add i32 %1121, 1
  store i32 %inc.i.i.i1292, ptr %syncp787, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body797

do.body797:                                       ; preds = %do.body771, %unknown_rh.do.body797_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics807 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %1122 = ptrtoint ptr %ipv6_statistics807 to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %ipv6_statistics807, align 4
  %1124 = ptrtoint ptr %1123 to i32
  %1125 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i1293 = and i32 %1125, -16384
  %1126 = inttoptr i32 %and.i1293 to ptr
  %cpu810 = getelementptr inbounds %struct.thread_info, ptr %1126, i32 0, i32 3
  %1127 = ptrtoint ptr %cpu810 to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %cpu810, align 4
  %arrayidx811 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1128
  %1129 = ptrtoint ptr %arrayidx811 to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load i32, ptr %arrayidx811, align 4
  %add812 = add i32 %1130, %1124
  %1131 = inttoptr i32 %add812 to ptr
  %syncp813 = getelementptr inbounds %struct.ipstats_mib, ptr %1131, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp813)
  %arrayidx815 = getelementptr [37 x i64], ptr %1131, i32 0, i32 7
  %1132 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_load8_noabort(i32 %1132)
  %1133 = load i64, ptr %arrayidx815, align 8
  %add816 = add i64 %1133, 1
  store i64 %add816, ptr %arrayidx815, align 8
  %dep_map.i.i1294 = getelementptr inbounds %struct.ipstats_mib, ptr %1131, i32 0, i32 1, i32 0, i32 1
  %1134 = tail call ptr @llvm.returnaddress(i32 0) #10
  %1135 = ptrtoint ptr %1134 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1294, i32 noundef %1135) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %1136 = ptrtoint ptr %syncp813 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load i32, ptr %syncp813, align 4
  %inc.i.i.i1295 = add i32 %1137, 1
  store i32 %inc.i.i.i1295, ptr %syncp813, align 4
  tail call fastcc void @local_bh_enable()
  %1138 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %head.i.i, align 8
  %1140 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %1140)
  %1141 = load i16, ptr %network_header.i.i, align 4
  %conv.i1298 = zext i16 %1141 to i32
  %add.ptr.i1299 = getelementptr i8, ptr %1139, i32 %conv.i1298
  %sub.ptr.lhs.cast824 = ptrtoint ptr %type219.le to i32
  %sub.ptr.rhs.cast825 = ptrtoint ptr %add.ptr.i1299 to i32
  %sub.ptr.sub826 = sub i32 %sub.ptr.lhs.cast824, %sub.ptr.rhs.cast825
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %sub.ptr.sub826) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body797, %if.end753, %do.body724, %if.then671, %do.body639, %do.body573, %do.body506, %do.body418, %do.body272, %sw.epilog206, %do.body179, %dst_input.exit1045.i, %do.body546.i, %dst_input.exit.i1159, %if.then451.i, %if.then443.i, %if.then425.i, %if.then405.i, %if.then389.i, %do.body354.i, %do.body281.i, %if.then249.i, %if.then40.i, %if.end24.i, %if.end21.i, %if.then20.i, %if.then5.i, %dst_input.exit510.i, %do.body241.i, %dst_input.exit.i, %do.body151.i, %do.body78.i, %if.end37.i, %__skb_tunnel_rx.exit.i, %if.then27.i, %if.then9.i, %if.then6.i, %do.body104, %do.body34
  %retval.0 = phi i32 [ -1, %do.body104 ], [ 1, %sw.epilog206 ], [ -1, %do.body179 ], [ -1, %do.body797 ], [ -1, %do.body272 ], [ -1, %do.body418 ], [ -1, %do.body506 ], [ -1, %do.body639 ], [ -1, %if.then671 ], [ -1, %do.body724 ], [ -1, %if.end753 ], [ -1, %do.body573 ], [ -1, %do.body34 ], [ 1, %if.end37.i ], [ -1, %do.body78.i ], [ -1, %do.body151.i ], [ -1, %dst_input.exit.i ], [ -1, %do.body241.i ], [ -1, %dst_input.exit510.i ], [ -1, %if.then9.i ], [ -1, %if.then6.i ], [ -1, %__skb_tunnel_rx.exit.i ], [ -1, %if.then27.i ], [ 1, %if.end24.i ], [ -1, %if.then249.i ], [ -1, %do.body281.i ], [ -1, %do.body354.i ], [ -1, %if.then425.i ], [ -1, %if.then443.i ], [ -1, %if.then451.i ], [ -1, %dst_input.exit.i1159 ], [ -1, %do.body546.i ], [ -1, %dst_input.exit1045.i ], [ -1, %if.then405.i ], [ -1, %if.then389.i ], [ -1, %if.then40.i ], [ -1, %if.then5.i ], [ -1, %if.end21.i ], [ -1, %if.then20.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %14 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %33 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !58

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #10
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_param_prob(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_dst(ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !55

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25 = and i32 %4, -2
  %5 = inttoptr i32 %and25 to ptr
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_input_addr(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_home_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dst_input(ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !55

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %input = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %call1 = tail call i32 %7(ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_hmac_validate_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_postpull_rcsum(ptr nocapture noundef %skb, ptr noundef %start, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i2 %trunc, label %entry.if.end19_crit_edge [
    i2 -2, label %if.then
    i2 -1, label %land.lhs.true
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %sub.i = sub i32 0, %4
  %call2 = tail call i32 @csum_partial(ptr noundef %start, i32 noundef %len, i32 noundef %sub.i) #10
  %sub.i25 = sub i32 0, %call2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i25, ptr %2, align 8
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %conv.i = zext i16 %8 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i26 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26)
  %cmp13 = icmp slt i32 %sub.i26, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18 = and i16 %bf.load, -1537
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear18, ptr %ip_summed, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.then, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_tunnel_rx(ptr noundef %skb, ptr noundef %dev, ptr noundef readnone %net) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %0, align 8
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %3 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.skb_clear_hash_if_not_l4.exit_crit_edge

entry.skb_clear_hash_if_not_l4.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_clear_hash_if_not_l4.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %4 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hash.i.i, align 4
  %bf.clear2.i.i = and i16 %bf.load.i, -193
  %5 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.clear2.i.i, ptr %l4_hash.i, align 8
  br label %skb_clear_hash_if_not_l4.exit

skb_clear_hash_if_not_l4.exit:                    ; preds = %if.then.i, %entry.skb_clear_hash_if_not_l4.exit_crit_edge
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %queue_mapping1.i, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %8, %net
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_rpl_srh_size(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_decompress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_rpl_srh_loop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_compress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_destopt_rcv(ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 80
  %3 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i171 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i171, label %__in6_dev_get.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i173

__in6_dev_get.exit.skb_dst.exit_crit_edge:        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i173:                               ; preds = %__in6_dev_get.exit
  %call.i172 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool1.not.i = icmp eq i32 %call.i172, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i173.skb_dst.exit_crit_edge

land.lhs.true.i173.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i173
  %call2.i174 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i174)
  %tobool3.not.i = icmp eq i32 %call2.i174, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !55

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i173.skb_dst.exit_crit_edge, %__in6_dev_get.exit.skb_dst.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i = and i32 %9, -2
  %10 = inttoptr i32 %and25.i to ptr
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %skb_dst.exit.lor.lhs.false_crit_edge, !prof !55

skb_dst.exit.lor.lhs.false_crit_edge:             ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end.i:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp3.i = icmp ult i32 %22, %add
  br i1 %cmp3.i, label %if.end.i.if.then_crit_edge, label %pskb_may_pull.exit, !prof !55

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.then_crit_edge, label %pskb_may_pull.exit.lor.lhs.false_crit_edge

pskb_may_pull.exit.lor.lhs.false_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

pskb_may_pull.exit.if.then_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.lor.lhs.false_crit_edge, %skb_dst.exit.lor.lhs.false_crit_edge
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %27 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i177 = zext i16 %28 to i32
  %add.ptr.i.i178 = getelementptr i8, ptr %26, i32 %conv.i.i177
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i180 = ptrtoint ptr %add.ptr.i.i178 to i32
  %sub.ptr.rhs.cast.i181 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i182 = sub i32 %sub.ptr.lhs.cast.i180, %sub.ptr.rhs.cast.i181
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i178, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %32 to i32
  %add7 = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add7, 8
  %add8 = add i32 %shl, %sub.ptr.sub.i182
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i185 = sub i32 %34, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %sub.i.i185)
  %cmp.not.i186 = icmp ugt i32 %add8, %sub.i.i185
  br i1 %cmp.not.i186, label %if.end.i188, label %lor.lhs.false.if.end50_crit_edge, !prof !55

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end.i188:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add8)
  %cmp3.i187 = icmp ult i32 %34, %add8
  br i1 %cmp3.i187, label %if.end.i188.if.then_crit_edge, label %pskb_may_pull.exit194, !prof !55

if.end.i188.if.then_crit_edge:                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

pskb_may_pull.exit194:                            ; preds = %if.end.i188
  %sub.i189 = sub i32 %add8, %sub.i.i185
  %call13.i190 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i189) #10
  %cmp14.i191.not = icmp eq ptr %call13.i190, null
  br i1 %cmp14.i191.not, label %pskb_may_pull.exit194.if.then_crit_edge, label %pskb_may_pull.exit194.if.end50_crit_edge

pskb_may_pull.exit194.if.end50_crit_edge:         ; preds = %pskb_may_pull.exit194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

pskb_may_pull.exit194.if.then_crit_edge:          ; preds = %pskb_may_pull.exit194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %pskb_may_pull.exit194.if.then_crit_edge, %if.end.i188.if.then_crit_edge, %pskb_may_pull.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.then.do.body26_crit_edge, label %do.body, !prof !55

if.then.do.body26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %37 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ipv6, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i195 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i195 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %45, %39
  %46 = inttoptr i32 %add18 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %46, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx19 = getelementptr [37 x i64], ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx19, align 8
  %add20 = add i64 %48, 1
  store i64 %add20, ptr %arrayidx19, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %46, i32 0, i32 1, i32 0, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #10
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %51 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body26

do.body26:                                        ; preds = %do.body, %if.then.do.body26_crit_edge
  tail call fastcc void @local_bh_disable()
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %10, align 4
  %nd_net.i196 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 127
  %55 = ptrtoint ptr %nd_net.i196 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nd_net.i196, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 30, i32 1
  %57 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ipv6_statistics, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i197 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i197 to ptr
  %cpu38 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu38, align 4
  %arrayidx39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %65, %59
  %66 = inttoptr i32 %add40 to ptr
  %syncp41 = getelementptr inbounds %struct.ipstats_mib, ptr %66, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp41)
  %arrayidx43 = getelementptr [37 x i64], ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx43, align 8
  %add44 = add i64 %68, 1
  store i64 %add44, ptr %arrayidx43, align 8
  %dep_map.i.i198 = getelementptr inbounds %struct.ipstats_mib, ptr %66, i32 0, i32 1, i32 0, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #10
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i198, i32 noundef %70) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %71 = ptrtoint ptr %syncp41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp41, align 4
  %inc.i.i.i199 = add i32 %72, 1
  store i32 %inc.i.i.i199, ptr %syncp41, align 4
  tail call fastcc void @local_bh_enable()
  br label %fail_and_free

fail_and_free:                                    ; preds = %if.end50.fail_and_free_crit_edge, %do.body26
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end50:                                         ; preds = %pskb_may_pull.exit194.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge
  %73 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i, align 8
  %75 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %transport_header.i.i, align 2
  %conv.i202 = zext i16 %76 to i32
  %add.ptr.i203 = getelementptr i8, ptr %74, i32 %conv.i202
  %arrayidx52 = getelementptr i8, ptr %add.ptr.i203, i32 1
  %77 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %78 to i32
  %add54 = shl nuw nsw i32 %conv53, 3
  %shl55 = add nuw nsw i32 %add54, 8
  %max_dst_opts_len = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 36, i32 1, i32 33
  %79 = ptrtoint ptr %max_dst_opts_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_dst_opts_len, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %shl55, i32 %80)
  %cmp57 = icmp sgt i32 %shl55, %80
  br i1 %cmp57, label %if.end50.fail_and_free_crit_edge, label %if.end60

if.end50.fail_and_free_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_and_free

if.end60:                                         ; preds = %if.end50
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %81 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i, align 4
  %sub.i206 = sub i16 %76, %82
  %dst1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %83 = ptrtoint ptr %dst1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %sub.i206, ptr %dst1, align 2
  %lastopt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %84 = ptrtoint ptr %lastopt to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %sub.i206, ptr %lastopt, align 4
  %max_dst_opts_cnt = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 36, i32 1, i32 31
  %85 = ptrtoint ptr %max_dst_opts_cnt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_dst_opts_cnt, align 8
  %call66 = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext false, ptr noundef %skb, i32 noundef %86)
  br i1 %call66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %transport_header.i.i, align 2
  %89 = trunc i32 %shl55 to i16
  %conv70 = add i16 %88, %89
  store i16 %conv70, ptr %transport_header.i.i, align 2
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %90 = ptrtoint ptr %nhoff to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %sub.i206, ptr %nhoff, align 2
  br label %cleanup

if.end73:                                         ; preds = %if.end60
  %cmp75.not = icmp eq ptr %4, null
  br i1 %cmp75.not, label %if.end73.do.body110_crit_edge, label %do.body84, !prof !55

if.end73.do.body110_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body110

do.body84:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv694 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %91 = ptrtoint ptr %ipv694 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ipv694, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i207 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i207 to ptr
  %cpu97 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu97 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu97, align 4
  %arrayidx98 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %99, %93
  %100 = inttoptr i32 %add99 to ptr
  %syncp100 = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp100)
  %arrayidx102 = getelementptr [37 x i64], ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx102, align 8
  %add103 = add i64 %102, 1
  store i64 %add103, ptr %arrayidx102, align 8
  %dep_map.i.i208 = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1, i32 0, i32 1
  %103 = tail call ptr @llvm.returnaddress(i32 0) #10
  %104 = ptrtoint ptr %103 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i208, i32 noundef %104) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %105 = ptrtoint ptr %syncp100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %syncp100, align 4
  %inc.i.i.i209 = add i32 %106, 1
  store i32 %inc.i.i.i209, ptr %syncp100, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body110

do.body110:                                       ; preds = %do.body84, %if.end73.do.body110_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics120 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 30, i32 1
  %107 = ptrtoint ptr %ipv6_statistics120 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ipv6_statistics120, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i210 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i210 to ptr
  %cpu123 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu123 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu123, align 4
  %arrayidx124 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx124, align 4
  %add125 = add i32 %115, %109
  %116 = inttoptr i32 %add125 to ptr
  %syncp126 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp126)
  %arrayidx128 = getelementptr [37 x i64], ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx128, align 8
  %add129 = add i64 %118, 1
  store i64 %add129, ptr %arrayidx128, align 8
  %dep_map.i.i211 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1, i32 0, i32 1
  %119 = tail call ptr @llvm.returnaddress(i32 0) #10
  %120 = ptrtoint ptr %119 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i211, i32 noundef %120) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %121 = ptrtoint ptr %syncp126 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %syncp126, align 4
  %inc.i.i.i212 = add i32 %122, 1
  store i32 %inc.i.i.i212, ptr %syncp126, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %do.body110, %if.then67, %fail_and_free
  %retval.0 = phi i32 [ -1, %fail_and_free ], [ 1, %if.then67 ], [ -1, %do.body110 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef %skb) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipv6_hop_jumbo(ptr noundef %skb, i32 noundef %optoff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.__in6_dev_get_safely.exit_crit_edge, label %if.then.i, !prof !55

entry.__in6_dev_get_safely.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

if.then.i:                                        ; preds = %entry
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 80
  %7 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.then.i.__in6_dev_get_safely.exit_crit_edge, label %lor.lhs.false.i

if.then.i.__in6_dev_get_safely.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %call4.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge

lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.__in6_dev_get_safely.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #10
  br label %__in6_dev_get_safely.exit

__in6_dev_get_safely.exit:                        ; preds = %if.then10.i, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, %land.lhs.true.i.__in6_dev_get_safely.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge, %if.then.i.__in6_dev_get_safely.exit_crit_edge, %entry.__in6_dev_get_safely.exit_crit_edge
  %retval.0.i317 = phi ptr [ %8, %if.then10.i ], [ %8, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge ], [ %8, %land.lhs.true.i.__in6_dev_get_safely.exit_crit_edge ], [ %8, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge ], [ %8, %if.then.i.__in6_dev_get_safely.exit_crit_edge ], [ null, %entry.__in6_dev_get_safely.exit_crit_edge ]
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %__in6_dev_get_safely.exit.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

__in6_dev_get_safely.exit.skb_dst.exit.i_crit_edge: ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %__in6_dev_get_safely.exit
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !55

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %9, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %__in6_dev_get_safely.exit.skb_dst.exit.i_crit_edge
  %13 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %11, %__in6_dev_get_safely.exit.skb_dst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %tobool.not.i318 = icmp ult i32 %13, 2
  br i1 %tobool.not.i318, label %skb_dst.exit.i.ipv6_skb_net.exit_crit_edge, label %cond.true.i

skb_dst.exit.i.ipv6_skb_net.exit_crit_edge:       ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_skb_net.exit

cond.true.i:                                      ; preds = %skb_dst.exit.i
  %and.i6.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %cond.true.i.skb_dst.exit16.i_crit_edge, label %land.lhs.true.i10.i

cond.true.i.skb_dst.exit16.i_crit_edge:           ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16.i

land.lhs.true.i10.i:                              ; preds = %cond.true.i
  %call.i8.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool1.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool1.not.i9.i, label %land.rhs.i13.i, label %land.lhs.true.i10.i.skb_dst.exit16.i_crit_edge

land.lhs.true.i10.i.skb_dst.exit16.i_crit_edge:   ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16.i

land.rhs.i13.i:                                   ; preds = %land.lhs.true.i10.i
  %call2.i11.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i11.i)
  %tobool3.not.i12.i = icmp eq i32 %call2.i11.i, 0
  br i1 %tobool3.not.i12.i, label %do.end.i14.i, label %land.rhs.i13.i.skb_dst.exit16.i_crit_edge, !prof !55

land.rhs.i13.i.skb_dst.exit16.i_crit_edge:        ; preds = %land.rhs.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16.i

do.end.i14.i:                                     ; preds = %land.rhs.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit16.i

skb_dst.exit16.i:                                 ; preds = %do.end.i14.i, %land.rhs.i13.i.skb_dst.exit16.i_crit_edge, %land.lhs.true.i10.i.skb_dst.exit16.i_crit_edge, %cond.true.i.skb_dst.exit16.i_crit_edge
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 8
  %and25.i15.i = and i32 %15, -2
  %16 = inttoptr i32 %and25.i15.i to ptr
  br label %ipv6_skb_net.exit

ipv6_skb_net.exit:                                ; preds = %skb_dst.exit16.i, %skb_dst.exit.i.ipv6_skb_net.exit_crit_edge
  %.pn.in.i = phi ptr [ %16, %skb_dst.exit16.i ], [ %4, %skb_dst.exit.i.ipv6_skb_net.exit_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cond.in.i = getelementptr inbounds %struct.net_device, ptr %.pn.i, i32 0, i32 127
  %18 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %add = add i32 %optoff, 1
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %add
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp.not = icmp eq i8 %20, 4
  %and = and i32 %optoff, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp4.not = icmp eq i32 %and, 2
  %or.cond = and i1 %cmp4.not, %cmp.not
  br i1 %or.cond, label %if.end65, label %do.body

do.body:                                          ; preds = %ipv6_skb_net.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_hop_jumbo.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipv6_hop_jumbo, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !56

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %if.then11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_hop_jumbo.descriptor, ptr noundef nonnull @.str.9, i32 noundef %conv14) #10
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true.do.end_crit_edge, %do.body
  %cmp15.not = icmp eq ptr %retval.0.i317, null
  br i1 %cmp15.not, label %do.end.do.body42_crit_edge, label %do.body24, !prof !55

do.end.do.body42_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

do.body24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i317, i32 0, i32 33, i32 1
  %23 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipv6, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %31, %25
  %32 = inttoptr i32 %add33 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %32, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx34 = getelementptr [37 x i64], ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %34, 1
  store i64 %add35, ptr %arrayidx34, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %32, i32 0, i32 1, i32 0, i32 1
  %35 = tail call ptr @llvm.returnaddress(i32 0) #10
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body42

do.body42:                                        ; preds = %do.body24, %do.end.do.body42_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %cond.i, i32 0, i32 30, i32 1
  %39 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ipv6_statistics, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i319 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i319 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu53, align 4
  %arrayidx54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %47, %41
  %48 = inttoptr i32 %add55 to ptr
  %syncp56 = getelementptr inbounds %struct.ipstats_mib, ptr %48, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp56)
  %arrayidx58 = getelementptr [37 x i64], ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx58, align 8
  %add59 = add i64 %50, 1
  store i64 %add59, ptr %arrayidx58, align 8
  %dep_map.i.i320 = getelementptr inbounds %struct.ipstats_mib, ptr %48, i32 0, i32 1, i32 0, i32 1
  %51 = tail call ptr @llvm.returnaddress(i32 0) #10
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i320, i32 noundef %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  br label %drop.sink.split

if.end65:                                         ; preds = %ipv6_skb_net.exit
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %optoff
  %add.ptr66 = getelementptr i8, ptr %add.ptr, i32 2
  %53 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %54)
  %cmp67 = icmp ult i32 %54, 65536
  br i1 %cmp67, label %if.then69, label %if.end132

if.then69:                                        ; preds = %if.end65
  %cmp71.not = icmp eq ptr %retval.0.i317, null
  br i1 %cmp71.not, label %if.then69.do.body106_crit_edge, label %do.body80, !prof !55

if.then69.do.body106_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

do.body80:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv690 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i317, i32 0, i32 33, i32 1
  %55 = ptrtoint ptr %ipv690 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ipv690, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i322 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i322 to ptr
  %cpu93 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu93, align 4
  %arrayidx94 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx94, align 4
  %add95 = add i32 %63, %57
  %64 = inttoptr i32 %add95 to ptr
  %syncp96 = getelementptr inbounds %struct.ipstats_mib, ptr %64, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp96)
  %arrayidx98 = getelementptr [37 x i64], ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx98, align 8
  %add99 = add i64 %66, 1
  store i64 %add99, ptr %arrayidx98, align 8
  %dep_map.i.i323 = getelementptr inbounds %struct.ipstats_mib, ptr %64, i32 0, i32 1, i32 0, i32 1
  %67 = tail call ptr @llvm.returnaddress(i32 0) #10
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i323, i32 noundef %68) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %69 = ptrtoint ptr %syncp96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %syncp96, align 4
  %inc.i.i.i324 = add i32 %70, 1
  store i32 %inc.i.i.i324, ptr %syncp96, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body106

do.body106:                                       ; preds = %do.body80, %if.then69.do.body106_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics116 = getelementptr inbounds %struct.net, ptr %cond.i, i32 0, i32 30, i32 1
  %71 = ptrtoint ptr %ipv6_statistics116 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ipv6_statistics116, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i325 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i325 to ptr
  %cpu119 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu119, align 4
  %arrayidx120 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx120, align 4
  %add121 = add i32 %79, %73
  %80 = inttoptr i32 %add121 to ptr
  %syncp122 = getelementptr inbounds %struct.ipstats_mib, ptr %80, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp122)
  %arrayidx124 = getelementptr [37 x i64], ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx124, align 8
  %add125 = add i64 %82, 1
  store i64 %add125, ptr %arrayidx124, align 8
  %dep_map.i.i326 = getelementptr inbounds %struct.ipstats_mib, ptr %80, i32 0, i32 1, i32 0, i32 1
  %83 = tail call ptr @llvm.returnaddress(i32 0) #10
  %84 = ptrtoint ptr %83 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i326, i32 noundef %84) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %85 = ptrtoint ptr %syncp122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %syncp122, align 4
  %inc.i.i.i327 = add i32 %86, 1
  store i32 %inc.i.i.i327, ptr %syncp122, align 4
  tail call fastcc void @local_bh_enable()
  %add131 = add i32 %optoff, 2
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %add131) #10
  br label %cleanup

if.end132:                                        ; preds = %if.end65
  %87 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i, align 8
  %89 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %90 to i32
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool134.not = icmp eq i16 %92, 0
  br i1 %tobool134.not, label %if.end197, label %if.then135

if.then135:                                       ; preds = %if.end132
  %cmp137.not = icmp eq ptr %retval.0.i317, null
  br i1 %cmp137.not, label %if.then135.do.body172_crit_edge, label %do.body146, !prof !55

if.then135.do.body172_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body172

do.body146:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6156 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i317, i32 0, i32 33, i32 1
  %93 = ptrtoint ptr %ipv6156 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ipv6156, align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i328 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i328 to ptr
  %cpu159 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %cpu159 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu159, align 4
  %arrayidx160 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %101, %95
  %102 = inttoptr i32 %add161 to ptr
  %syncp162 = getelementptr inbounds %struct.ipstats_mib, ptr %102, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp162)
  %arrayidx164 = getelementptr [37 x i64], ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx164, align 8
  %add165 = add i64 %104, 1
  store i64 %add165, ptr %arrayidx164, align 8
  %dep_map.i.i329 = getelementptr inbounds %struct.ipstats_mib, ptr %102, i32 0, i32 1, i32 0, i32 1
  %105 = tail call ptr @llvm.returnaddress(i32 0) #10
  %106 = ptrtoint ptr %105 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i329, i32 noundef %106) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %107 = ptrtoint ptr %syncp162 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %syncp162, align 4
  %inc.i.i.i330 = add i32 %108, 1
  store i32 %inc.i.i.i330, ptr %syncp162, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body172

do.body172:                                       ; preds = %do.body146, %if.then135.do.body172_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics182 = getelementptr inbounds %struct.net, ptr %cond.i, i32 0, i32 30, i32 1
  %109 = ptrtoint ptr %ipv6_statistics182 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ipv6_statistics182, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i331 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i331 to ptr
  %cpu185 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %cpu185 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cpu185, align 4
  %arrayidx186 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx186, align 4
  %add187 = add i32 %117, %111
  %118 = inttoptr i32 %add187 to ptr
  %syncp188 = getelementptr inbounds %struct.ipstats_mib, ptr %118, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp188)
  %arrayidx190 = getelementptr [37 x i64], ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx190, align 8
  %add191 = add i64 %120, 1
  store i64 %add191, ptr %arrayidx190, align 8
  %dep_map.i.i332 = getelementptr inbounds %struct.ipstats_mib, ptr %118, i32 0, i32 1, i32 0, i32 1
  %121 = tail call ptr @llvm.returnaddress(i32 0) #10
  %122 = ptrtoint ptr %121 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i332, i32 noundef %122) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %123 = ptrtoint ptr %syncp188 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %syncp188, align 4
  %inc.i.i.i333 = add i32 %124, 1
  store i32 %inc.i.i.i333, ptr %syncp188, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %optoff) #10
  br label %cleanup

if.end197:                                        ; preds = %if.end132
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %125 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len, align 4
  %sub = add i32 %126, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub)
  %cmp198 = icmp ugt i32 %54, %sub
  br i1 %cmp198, label %if.then200, label %if.end262

if.then200:                                       ; preds = %if.end197
  %cmp202.not = icmp eq ptr %retval.0.i317, null
  br i1 %cmp202.not, label %if.then200.do.body237_crit_edge, label %do.body211, !prof !55

if.then200.do.body237_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body237

do.body211:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6221 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i317, i32 0, i32 33, i32 1
  %127 = ptrtoint ptr %ipv6221 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ipv6221, align 4
  %129 = ptrtoint ptr %128 to i32
  %130 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i334 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i334 to ptr
  %cpu224 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu224 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu224, align 4
  %arrayidx225 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx225, align 4
  %add226 = add i32 %135, %129
  %136 = inttoptr i32 %add226 to ptr
  %syncp227 = getelementptr inbounds %struct.ipstats_mib, ptr %136, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp227)
  %arrayidx229 = getelementptr [37 x i64], ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx229, align 8
  %add230 = add i64 %138, 1
  store i64 %add230, ptr %arrayidx229, align 8
  %dep_map.i.i335 = getelementptr inbounds %struct.ipstats_mib, ptr %136, i32 0, i32 1, i32 0, i32 1
  %139 = tail call ptr @llvm.returnaddress(i32 0) #10
  %140 = ptrtoint ptr %139 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i335, i32 noundef %140) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %141 = ptrtoint ptr %syncp227 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %syncp227, align 4
  %inc.i.i.i336 = add i32 %142, 1
  store i32 %inc.i.i.i336, ptr %syncp227, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body237

do.body237:                                       ; preds = %do.body211, %if.then200.do.body237_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics247 = getelementptr inbounds %struct.net, ptr %cond.i, i32 0, i32 30, i32 1
  %143 = ptrtoint ptr %ipv6_statistics247 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ipv6_statistics247, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i337 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i337 to ptr
  %cpu250 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %cpu250 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cpu250, align 4
  %arrayidx251 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx251, align 4
  %add252 = add i32 %151, %145
  %152 = inttoptr i32 %add252 to ptr
  %syncp253 = getelementptr inbounds %struct.ipstats_mib, ptr %152, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp253)
  %arrayidx255 = getelementptr [37 x i64], ptr %152, i32 0, i32 12
  %153 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx255, align 8
  %add256 = add i64 %154, 1
  store i64 %add256, ptr %arrayidx255, align 8
  %dep_map.i.i338 = getelementptr inbounds %struct.ipstats_mib, ptr %152, i32 0, i32 1, i32 0, i32 1
  %155 = tail call ptr @llvm.returnaddress(i32 0) #10
  %156 = ptrtoint ptr %155 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i338, i32 noundef %156) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  br label %drop.sink.split

if.end262:                                        ; preds = %if.end197
  %add263 = add i32 %54, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %add263)
  %cmp.not.i = icmp ugt i32 %126, %add263
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end262.if.end267_crit_edge, !prof !55

if.end262.if.end267_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

pskb_trim_rcsum.exit:                             ; preds = %if.end262
  %call.i340 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %add263) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool265.not = icmp eq i32 %call.i340, 0
  br i1 %tobool265.not, label %pskb_trim_rcsum.exit.if.end267_crit_edge, label %pskb_trim_rcsum.exit.drop_crit_edge

pskb_trim_rcsum.exit.drop_crit_edge:              ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

pskb_trim_rcsum.exit.if.end267_crit_edge:         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

if.end267:                                        ; preds = %pskb_trim_rcsum.exit.if.end267_crit_edge, %if.end262.if.end267_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %157 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %flags, align 8
  %159 = or i16 %158, 128
  store i16 %159, ptr %flags, align 8
  br label %cleanup

drop.sink.split:                                  ; preds = %do.body237, %do.body42
  %syncp253.sink345 = phi ptr [ %syncp253, %do.body237 ], [ %syncp56, %do.body42 ]
  %160 = ptrtoint ptr %syncp253.sink345 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %syncp253.sink345, align 4
  %inc.i.i.i339 = add i32 %161, 1
  store i32 %inc.i.i.i339, ptr %syncp253.sink345, align 4
  tail call fastcc void @local_bh_enable()
  br label %drop

drop:                                             ; preds = %drop.sink.split, %pskb_trim_rcsum.exit.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end267, %do.body172, %do.body106
  %retval.0 = phi i1 [ false, %drop ], [ false, %do.body106 ], [ false, %do.body172 ], [ true, %if.end267 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipv6_dest_hao(ptr noundef %skb, i32 noundef %optoff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %dsthao = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %dsthao to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dsthao, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_dest_hao.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipv6_dest_hao, %land.lhs.true)) #10
          to label %discard [label %land.lhs.true], !srcloc !56

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.discard_crit_edge, label %if.then7

land.lhs.true.discard_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_dest_hao.descriptor, ptr noundef nonnull @.str.11) #10
  br label %discard

if.end8:                                          ; preds = %entry
  %dst1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %dst1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dst1, align 2
  %8 = ptrtoint ptr %dsthao to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %dsthao, align 2
  store i16 0, ptr %dst1, align 2
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %optoff
  %length = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp.not = icmp eq i8 %10, 16
  br i1 %cmp.not, label %if.end35, label %do.body14

do.body14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_dest_hao.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipv6_dest_hao, %land.lhs.true26)) #10
          to label %discard [label %land.lhs.true26], !srcloc !56

land.lhs.true26:                                  ; preds = %do.body14
  %call27 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.discard_crit_edge, label %if.then29

land.lhs.true26.discard_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %length, align 1
  %conv31 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_dest_hao.descriptor.12, ptr noundef nonnull @.str.13, i32 noundef %conv31) #10
  br label %discard

if.end35:                                         ; preds = %if.end8
  %addr = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %add.ptr, i32 0, i32 2
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %addr) #10
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.body39, label %if.end59

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_dest_hao.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipv6_dest_hao, %land.lhs.true51)) #10
          to label %discard [label %land.lhs.true51], !srcloc !56

land.lhs.true51:                                  ; preds = %do.body39
  %call52 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.discard_crit_edge, label %if.then54

land.lhs.true51.discard_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_dest_hao.descriptor.14, ptr noundef nonnull @.str.15, ptr noundef %addr) #10
  br label %discard

if.end59:                                         ; preds = %if.end35
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call61 = tail call i32 @xfrm6_input_addr(ptr noundef %skb, ptr noundef %daddr, ptr noundef %addr, i8 noundef zeroext 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end59.discard_crit_edge, label %if.end71, !prof !55

if.end59.discard_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end71:                                         ; preds = %if.end59
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %13 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end71.if.end82_crit_edge, label %skb_cloned.exit

if.end71.if.end82_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

skb_cloned.exit:                                  ; preds = %if.end71
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dataref.i, align 4
  %and.i138 = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i138)
  %cmp.i.not = icmp eq i32 %and.i138, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.end82_crit_edge, label %if.then74

skb_cloned.exit.if.end82_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then74:                                        ; preds = %skb_cloned.exit
  %call75 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then74.discard_crit_edge

if.then74.discard_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end78:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i141 = zext i16 %21 to i32
  %add.ptr.i142 = getelementptr i8, ptr %19, i32 %conv.i141
  br label %if.end82

if.end82:                                         ; preds = %if.end78, %skb_cloned.exit.if.end82_crit_edge, %if.end71.if.end82_crit_edge
  %ipv6h.0 = phi ptr [ %add.ptr.i142, %if.end78 ], [ %add.ptr.i.i, %skb_cloned.exit.if.end82_crit_edge ], [ %add.ptr.i.i, %if.end71.if.end82_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %23)
  %cmp84 = icmp eq i16 %23, 1024
  br i1 %cmp84, label %if.then86, label %if.end82.do.body91_crit_edge

if.end82.do.body91_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body91

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear89 = and i16 %bf.load, -1537
  %24 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %bf.clear89, ptr %ip_summed, align 8
  br label %do.body91

do.body91:                                        ; preds = %if.then86, %if.end82.do.body91_crit_edge
  %25 = getelementptr i8, ptr %ipv6h.0, i32 %optoff
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %ipv6h.0, i32 0, i32 5
  %26 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %__tmp.sroa.0.0.copyload = load i32, ptr %saddr, align 4
  %__tmp.sroa.5.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %ipv6h.0, i32 0, i32 5, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %__tmp.sroa.5.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %__tmp.sroa.5.0.copyload = load i32, ptr %__tmp.sroa.5.0.saddr.sroa_idx, align 4
  %__tmp.sroa.6.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %ipv6h.0, i32 0, i32 5, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %__tmp.sroa.6.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %__tmp.sroa.6.0.copyload = load i32, ptr %__tmp.sroa.6.0.saddr.sroa_idx, align 4
  %__tmp.sroa.7.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %ipv6h.0, i32 0, i32 5, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %__tmp.sroa.7.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %__tmp.sroa.7.0.copyload = load i32, ptr %__tmp.sroa.7.0.saddr.sroa_idx, align 4
  %addr93 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %25, i32 0, i32 2
  %30 = call ptr @memcpy(ptr %saddr, ptr %addr93, i32 16)
  %31 = ptrtoint ptr %addr93 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %__tmp.sroa.0.0.copyload, ptr %addr93, align 1
  %__tmp.sroa.5.0.addr94.sroa_idx = getelementptr inbounds i8, ptr %addr93, i32 4
  %32 = ptrtoint ptr %__tmp.sroa.5.0.addr94.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.addr94.sroa_idx, align 1
  %__tmp.sroa.6.0.addr94.sroa_idx = getelementptr inbounds i8, ptr %addr93, i32 8
  %33 = ptrtoint ptr %__tmp.sroa.6.0.addr94.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %__tmp.sroa.6.0.copyload, ptr %__tmp.sroa.6.0.addr94.sroa_idx, align 1
  %__tmp.sroa.7.0.addr94.sroa_idx = getelementptr inbounds i8, ptr %addr93, i32 12
  %34 = ptrtoint ptr %__tmp.sroa.7.0.addr94.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %__tmp.sroa.7.0.copyload, ptr %__tmp.sroa.7.0.addr94.sroa_idx, align 1
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp97 = icmp eq i64 %37, 0
  br i1 %cmp97, label %if.then99, label %do.body91.cleanup_crit_edge

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then99:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i.i, ptr %35, align 8
  br label %cleanup

discard:                                          ; preds = %if.then74.discard_crit_edge, %if.end59.discard_crit_edge, %if.then54, %land.lhs.true51.discard_crit_edge, %do.body39, %if.then29, %land.lhs.true26.discard_crit_edge, %do.body14, %if.then7, %land.lhs.true.discard_crit_edge, %do.body
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %discard, %if.then99, %do.body91.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %discard ], [ true, %if.then99 ], [ true, %do.body91.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioam6_namespace(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipv6_skb_net(ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !55

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %0, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %entry.skb_dst.exit_crit_edge
  %4 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %2, %entry.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %tobool.not = icmp ult i32 %4, 2
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %skb_dst.exit
  %and.i6 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %cond.true.skb_dst.exit16_crit_edge, label %land.lhs.true.i10

cond.true.skb_dst.exit16_crit_edge:               ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16

land.lhs.true.i10:                                ; preds = %cond.true
  %call.i8 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool1.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool1.not.i9, label %land.rhs.i13, label %land.lhs.true.i10.skb_dst.exit16_crit_edge

land.lhs.true.i10.skb_dst.exit16_crit_edge:       ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16

land.rhs.i13:                                     ; preds = %land.lhs.true.i10
  %call2.i11 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i11)
  %tobool3.not.i12 = icmp eq i32 %call2.i11, 0
  br i1 %tobool3.not.i12, label %do.end.i14, label %land.rhs.i13.skb_dst.exit16_crit_edge, !prof !55

land.rhs.i13.skb_dst.exit16_crit_edge:            ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit16

do.end.i14:                                       ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit16

skb_dst.exit16:                                   ; preds = %do.end.i14, %land.rhs.i13.skb_dst.exit16_crit_edge, %land.lhs.true.i10.skb_dst.exit16_crit_edge, %cond.true.skb_dst.exit16_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 8
  %and25.i15 = and i32 %6, -2
  %7 = inttoptr i32 %and25.i15 to ptr
  br label %cond.end

cond.false:                                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %skb_dst.exit16
  %.pn.in = phi ptr [ %7, %skb_dst.exit16 ], [ %8, %cond.false ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cond.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 127
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load ptr, ptr %cond.in, align 4
  ret ptr %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @skb_valid_dst(ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !55

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.land.end_crit_edge, label %land.rhs

skb_dst.exit.land.end_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = inttoptr i32 %and25.i to ptr
  %flags = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not = icmp eq i16 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %skb_dst.exit.land.end_crit_edge
  %9 = phi i1 [ false, %skb_dst.exit.land.end_crit_edge ], [ %tobool1.not, %land.rhs ]
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioam6_fill_trace_data(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @calipso_validate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_push_hmac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_ipv6_push_frag_opts, !1, !"__ksymtab_ipv6_push_frag_opts", i1 false, i1 false}
!1 = !{!"../net/ipv6/exthdrs.c", i32 1228, i32 1}
!2 = !{ptr @__ksymtab_ipv6_dup_options, !3, !"__ksymtab_ipv6_dup_options", i1 false, i1 false}
!3 = !{!"../net/ipv6/exthdrs.c", i32 1251, i32 1}
!4 = !{ptr @__ksymtab_ipv6_fixup_options, !5, !"__ksymtab_ipv6_fixup_options", i1 false, i1 false}
!5 = !{!"../net/ipv6/exthdrs.c", i32 1365, i32 1}
!6 = !{ptr @__ksymtab_fl6_update_dst, !7, !"__ksymtab_fl6_update_dst", i1 false, i1 false}
!7 = !{!"../net/ipv6/exthdrs.c", i32 1406, i32 1}
!8 = !{ptr @rthdr_protocol, !9, !"rthdr_protocol", i1 false, i1 false}
!9 = !{!"../net/ipv6/exthdrs.c", i32 865, i32 36}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!19 = !{ptr @destopt_protocol, !20, !"destopt_protocol", i1 false, i1 false}
!20 = !{!"../net/ipv6/exthdrs.c", i32 870, i32 36}
!21 = !{ptr @nodata_protocol, !22, !"nodata_protocol", i1 false, i1 false}
!22 = !{!"../net/ipv6/exthdrs.c", i32 875, i32 36}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv6/exthdrs.c", i32 935, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ipv6_hop_ra.descriptor, !24, !"descriptor", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/ipv6/exthdrs.c", i32 1005, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ipv6_hop_jumbo.descriptor, !30, !"descriptor", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/net/addrconf.h", i32 341, i32 10}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ipv6/exthdrs.c", i32 238, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ipv6_dest_hao.descriptor, !36, !"descriptor", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/exthdrs.c", i32 247, i32 3}
!41 = !{ptr @ipv6_dest_hao.descriptor.12, !40, !"descriptor", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv6/exthdrs.c", i32 253, i32 3}
!44 = !{ptr @ipv6_dest_hao.descriptor.14, !43, !"descriptor", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2148760238, i64 2148760243, i64 2148760256, i64 2148760300, i64 2148760334, i64 2148760355}
!57 = !{i64 2149994692}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148668957, i64 2148669237, i64 2148669571, i64 2148669905}
!60 = !{i64 2149886374}
!61 = !{i64 2149891306}
!62 = !{i64 2149913018}
!63 = !{i64 2149917910}
!64 = !{i64 2149994367}
