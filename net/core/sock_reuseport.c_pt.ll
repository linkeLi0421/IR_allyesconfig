; ModuleID = '/llk/IR_all_yes/net/core/sock_reuseport.c_pt.bc'
source_filename = "../net/core/sock_reuseport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+reuseport_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_alloc\09\09\09\09"
module asm "\09.long\09__crc_reuseport_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_add_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_add_sock\09\09\09\09"
module asm "\09.long\09__crc_reuseport_add_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_add_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_add_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_add_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_detach_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_detach_sock\09\09\09\09"
module asm "\09.long\09__crc_reuseport_detach_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_detach_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_detach_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_detach_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_stop_listen_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_stop_listen_sock\09\09\09\09"
module asm "\09.long\09__crc_reuseport_stop_listen_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_stop_listen_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_stop_listen_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_stop_listen_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_select_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_select_sock\09\09\09\09"
module asm "\09.long\09__crc_reuseport_select_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_select_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_select_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_select_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_migrate_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_migrate_sock\09\09\09\09"
module asm "\09.long\09__crc_reuseport_migrate_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_migrate_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_migrate_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_migrate_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_attach_prog\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_attach_prog\09\09\09\09"
module asm "\09.long\09__crc_reuseport_attach_prog\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_attach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_attach_prog\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_attach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reuseport_detach_prog\22, \22a\22\09"
module asm "\09.weak\09__crc_reuseport_detach_prog\09\09\09\09"
module asm "\09.long\09__crc_reuseport_detach_prog\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_detach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_detach_prog\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_detach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.133 }
%struct.atomic_t = type { i32 }
%union.anon.133 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.157, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.158, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.159, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.153, [0 x i32], %union.anon.154, i16, i16, %union.anon.155, %struct.refcount_struct, [0 x i32], %union.anon.156 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { %struct.hlist_node }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.157 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.158 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.159 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
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
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.anon.103, [0 x %struct.sock_filter] }
%struct.anon.103 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reuseport_lock\00", [17 x i8] zeroinitializer }, align 32
@reuseport_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@reuseport_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/core/sock_reuseport.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@reuseport_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_reuseport_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_alloc to i32), ptr @__kstrtab_reuseport_alloc, ptr @__kstrtabns_reuseport_alloc }, section "___ksymtab+reuseport_alloc", align 4
@reuseport_add_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_add_sock.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_add_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_add_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_add_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_add_sock to i32), ptr @__kstrtab_reuseport_add_sock, ptr @__kstrtabns_reuseport_add_sock }, section "___ksymtab+reuseport_add_sock", align 4
@reuseport_detach_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_detach_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_detach_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_detach_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_detach_sock to i32), ptr @__kstrtab_reuseport_detach_sock, ptr @__kstrtabns_reuseport_detach_sock }, section "___ksymtab+reuseport_detach_sock", align 4
@reuseport_stop_listen_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_stop_listen_sock.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_stop_listen_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_stop_listen_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_stop_listen_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_stop_listen_sock to i32), ptr @__kstrtab_reuseport_stop_listen_sock, ptr @__kstrtabns_reuseport_stop_listen_sock }, section "___ksymtab+reuseport_stop_listen_sock", align 4
@reuseport_select_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@reuseport_select_sock.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_select_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_select_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_select_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_select_sock to i32), ptr @__kstrtab_reuseport_select_sock, ptr @__kstrtabns_reuseport_select_sock }, section "___ksymtab+reuseport_select_sock", align 4
@reuseport_migrate_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_migrate_sock.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_reuseport_migrate_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_migrate_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_migrate_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_migrate_sock to i32), ptr @__kstrtab_reuseport_migrate_sock, ptr @__kstrtabns_reuseport_migrate_sock }, section "___ksymtab+reuseport_migrate_sock", align 4
@reuseport_attach_prog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_attach_prog.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_attach_prog = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_attach_prog = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_attach_prog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_attach_prog to i32), ptr @__kstrtab_reuseport_attach_prog, ptr @__kstrtabns_reuseport_attach_prog }, section "___ksymtab+reuseport_attach_prog", align 4
@reuseport_detach_prog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_detach_prog.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_reuseport_detach_prog = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_detach_prog = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_detach_prog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_detach_prog to i32), ptr @__kstrtab_reuseport_detach_prog, ptr @__kstrtabns_reuseport_detach_prog }, section "___ksymtab+reuseport_detach_prog", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reuseport_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"reuseport_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 18, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 118, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"reuseport_ida\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 480, i32 10 }
@___asan_gen_.36 = private constant [29 x i8] c"../net/core/sock_reuseport.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 20, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 613, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 271, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_reuseport_add_sock, ptr @__ksymtab_reuseport_alloc, ptr @__ksymtab_reuseport_attach_prog, ptr @__ksymtab_reuseport_detach_prog, ptr @__ksymtab_reuseport_detach_sock, ptr @__ksymtab_reuseport_migrate_sock, ptr @__ksymtab_reuseport_select_sock, ptr @__ksymtab_reuseport_stop_listen_sock, ptr @.str, ptr @reuseport_lock, ptr @.str.1, ptr @.str.2, ptr @reuseport_ida, ptr @.str.5, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reuseport_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reuseport_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reuseport_alloc(ptr noundef %sk, i1 noundef zeroext %bind_inany) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b93 = load i1, ptr @reuseport_alloc.__warned, align 1
  br i1 %.b93, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %0 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_reuseport_cb, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %do.end
  %num_closed_socks = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_closed_socks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @reuseport_resurrect(ptr noundef %sk, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext %bind_inany)
  br label %out

if.end11:                                         ; preds = %if.then6
  br i1 %bind_inany, label %if.then13, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %bind_inany15 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %bind_inany15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %bind_inany15, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bind_inany15, align 4
  br label %out

if.end17:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 544) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end17
  %max_socks1.i = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %max_socks1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 128, ptr %max_socks1.i, align 8
  %prog.i = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %prog.i, align 4
  %call.i94 = tail call i32 @ida_alloc_range(ptr noundef nonnull @reuseport_ida, i32 noundef 0, i32 noundef -1, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp = icmp slt i32 %call.i94, 0
  br i1 %cmp, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %out

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %reuseport_id = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %reuseport_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i94, ptr %reuseport_id, align 4
  %bind_inany28 = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %bind_inany28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load29 = load i8, ptr %bind_inany28, align 8
  %bf.shl31 = select i1 %bind_inany, i8 -128, i8 0
  %bf.clear32 = and i8 %bf.load29, 127
  %bf.set33 = or i8 %bf.clear32, %bf.shl31
  store i8 %bf.set33, ptr %bind_inany28, align 8
  %socks = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %socks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %socks, align 8
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %num_socks to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %num_socks, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  %12 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i.i, ptr %sk_reuseport_cb, align 8
  br label %out

out:                                              ; preds = %if.end25, %if.then24, %if.end17.out_crit_edge, %if.then13, %if.end11.out_crit_edge, %if.then8
  %ret.0 = phi i32 [ %call10, %if.then8 ], [ 0, %if.then13 ], [ 0, %if.end11.out_crit_edge ], [ %call.i94, %if.then24 ], [ 0, %if.end25 ], [ -12, %if.end17.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reuseport_resurrect(ptr noundef %sk, ptr noundef %old_reuse, ptr noundef %reuse, i1 noundef zeroext %bind_inany) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %old_reuse, %reuse
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %max_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 1
  %0 = ptrtoint ptr %max_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_socks.i.i, align 4
  %conv1.i.i = zext i16 %1 to i32
  %num_closed_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 3
  %2 = ptrtoint ptr %num_closed_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_closed_socks.i.i, align 4
  %conv2.i.i = zext i16 %3 to i32
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp18.i.not.i = icmp eq i16 %3, 0
  br i1 %cmp18.i.not.i, label %if.then.__reuseport_detach_closed_sock.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.__reuseport_detach_closed_sock.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %left.119.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %sub.i.i, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 8, i32 %left.119.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp6.i.i = icmp eq ptr %5, %sk
  br i1 %cmp6.i.i, label %reuseport_sock_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %left.119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv1.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.__reuseport_detach_closed_sock.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.__reuseport_detach_closed_sock.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit

reuseport_sock_index.exit.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %left.119.i.i)
  %cmp.i = icmp eq i32 %left.119.i.i, -1
  br i1 %cmp.i, label %reuseport_sock_index.exit.i.__reuseport_detach_closed_sock.exit_crit_edge, label %if.end.i

reuseport_sock_index.exit.i.__reuseport_detach_closed_sock.exit_crit_edge: ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit

if.end.i:                                         ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 8, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %num_closed_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_closed_socks.i.i, align 4
  %sub8.i = add i16 %10, -1
  store volatile i16 %sub8.i, ptr %num_closed_socks.i.i, align 4
  br label %__reuseport_detach_closed_sock.exit

__reuseport_detach_closed_sock.exit:              ; preds = %if.end.i, %reuseport_sock_index.exit.i.__reuseport_detach_closed_sock.exit_crit_edge, %for.inc.i.i.__reuseport_detach_closed_sock.exit_crit_edge, %if.then.__reuseport_detach_closed_sock.exit_crit_edge
  %num_socks.i = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 2
  %11 = ptrtoint ptr %num_socks.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_socks.i, align 2
  %idxprom.i = zext i16 %12 to i32
  %arrayidx.i94 = getelementptr %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 8, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sk, ptr %arrayidx.i94, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %14 = ptrtoint ptr %num_socks.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_socks.i, align 2
  %inc.i = add i16 %15, 1
  store i16 %inc.i, ptr %num_socks.i, align 2
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %reuse, null
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 544) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then1.return_crit_edge, label %if.end5

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.then1
  %max_socks1.i = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %max_socks1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 128, ptr %max_socks1.i, align 8
  %prog.i = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %prog.i, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @reuseport_ida, i32 noundef 0, i32 noundef -1, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %return

cleanup:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %reuseport_id = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %reuseport_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %reuseport_id, align 4
  %bind_inany11 = getelementptr inbounds %struct.sock_reuseport, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %bind_inany11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %bind_inany11, align 8
  %bf.shl = select i1 %bind_inany, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %bind_inany11, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 2
  %21 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_socks, align 2
  %conv12 = zext i16 %22 to i32
  %num_closed_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 3
  %23 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_closed_socks, align 4
  %conv13 = zext i16 %24 to i32
  %add = add nuw nsw i32 %conv13, %conv12
  %max_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 1
  %25 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_socks, align 4
  %conv14 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv14)
  %cmp15 = icmp eq i32 %add, %conv14
  br i1 %cmp15, label %if.then17, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %if.else
  %call18 = tail call fastcc ptr @reuseport_grow(ptr noundef nonnull %reuse)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.return_crit_edge, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17.return_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %if.else.if.end23_crit_edge, %cleanup
  %reuse.addr.0 = phi ptr [ %call18, %if.then17.if.end23_crit_edge ], [ %reuse, %if.else.if.end23_crit_edge ], [ %call7.i.i.i, %cleanup ]
  %max_socks.i.i96 = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 1
  %27 = ptrtoint ptr %max_socks.i.i96 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_socks.i.i96, align 4
  %conv1.i.i97 = zext i16 %28 to i32
  %num_closed_socks.i.i98 = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 3
  %29 = ptrtoint ptr %num_closed_socks.i.i98 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_closed_socks.i.i98, align 4
  %conv2.i.i99 = zext i16 %30 to i32
  %sub.i.i100 = sub nsw i32 %conv1.i.i97, %conv2.i.i99
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp18.i.not.i101 = icmp eq i16 %30, 0
  br i1 %cmp18.i.not.i101, label %if.end23.__reuseport_detach_closed_sock.exit115_crit_edge, label %if.end23.for.body.i.i105_crit_edge

if.end23.for.body.i.i105_crit_edge:               ; preds = %if.end23
  br label %for.body.i.i105

if.end23.__reuseport_detach_closed_sock.exit115_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit115

for.body.i.i105:                                  ; preds = %for.inc.i.i108.for.body.i.i105_crit_edge, %if.end23.for.body.i.i105_crit_edge
  %left.119.i.i102 = phi i32 [ %inc.i.i106, %for.inc.i.i108.for.body.i.i105_crit_edge ], [ %sub.i.i100, %if.end23.for.body.i.i105_crit_edge ]
  %arrayidx.i.i103 = getelementptr %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 8, i32 %left.119.i.i102
  %31 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i103, align 4
  %cmp6.i.i104 = icmp eq ptr %32, %sk
  br i1 %cmp6.i.i104, label %reuseport_sock_index.exit.i110, label %for.inc.i.i108

for.inc.i.i108:                                   ; preds = %for.body.i.i105
  %inc.i.i106 = add nsw i32 %left.119.i.i102, 1
  %exitcond.not.i.i107 = icmp eq i32 %inc.i.i106, %conv1.i.i97
  br i1 %exitcond.not.i.i107, label %for.inc.i.i108.__reuseport_detach_closed_sock.exit115_crit_edge, label %for.inc.i.i108.for.body.i.i105_crit_edge

for.inc.i.i108.for.body.i.i105_crit_edge:         ; preds = %for.inc.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i105

for.inc.i.i108.__reuseport_detach_closed_sock.exit115_crit_edge: ; preds = %for.inc.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit115

reuseport_sock_index.exit.i110:                   ; preds = %for.body.i.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %left.119.i.i102)
  %cmp.i109 = icmp eq i32 %left.119.i.i102, -1
  br i1 %cmp.i109, label %reuseport_sock_index.exit.i110.__reuseport_detach_closed_sock.exit115_crit_edge, label %if.end.i113

reuseport_sock_index.exit.i110.__reuseport_detach_closed_sock.exit115_crit_edge: ; preds = %reuseport_sock_index.exit.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %__reuseport_detach_closed_sock.exit115

if.end.i113:                                      ; preds = %reuseport_sock_index.exit.i110
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i111 = getelementptr %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 8, i32 %sub.i.i100
  %33 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i111, align 4
  %35 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx.i.i103, align 4
  %36 = ptrtoint ptr %num_closed_socks.i.i98 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_closed_socks.i.i98, align 4
  %sub8.i112 = add i16 %37, -1
  store volatile i16 %sub8.i112, ptr %num_closed_socks.i.i98, align 4
  br label %__reuseport_detach_closed_sock.exit115

__reuseport_detach_closed_sock.exit115:           ; preds = %if.end.i113, %reuseport_sock_index.exit.i110.__reuseport_detach_closed_sock.exit115_crit_edge, %for.inc.i.i108.__reuseport_detach_closed_sock.exit115_crit_edge, %if.end23.__reuseport_detach_closed_sock.exit115_crit_edge
  %num_socks.i116 = getelementptr inbounds %struct.sock_reuseport, ptr %reuse.addr.0, i32 0, i32 2
  %38 = ptrtoint ptr %num_socks.i116 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_socks.i116, align 2
  %idxprom.i117 = zext i16 %39 to i32
  %arrayidx.i118 = getelementptr %struct.sock_reuseport, ptr %reuse.addr.0, i32 0, i32 8, i32 %idxprom.i117
  %40 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sk, ptr %arrayidx.i118, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %41 = ptrtoint ptr %num_socks.i116 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_socks.i116, align 2
  %inc.i119 = add i16 %42, 1
  store i16 %inc.i119, ptr %num_socks.i116, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  %sk_reuseport_cb49 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %43 = ptrtoint ptr %sk_reuseport_cb49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %reuse.addr.0, ptr %sk_reuseport_cb49, align 8
  %num_socks61 = getelementptr inbounds %struct.sock_reuseport, ptr %old_reuse, i32 0, i32 2
  %44 = ptrtoint ptr %num_socks61 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_socks61, align 2
  %conv62 = zext i16 %45 to i32
  %46 = ptrtoint ptr %num_closed_socks.i.i98 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_closed_socks.i.i98, align 4
  %conv64 = zext i16 %47 to i32
  %add65 = sub nsw i32 0, %conv64
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62, i32 %add65)
  %cmp66 = icmp eq i32 %conv62, %add65
  br i1 %cmp66, label %if.then68, label %__reuseport_detach_closed_sock.exit115.return_crit_edge

__reuseport_detach_closed_sock.exit115.return_crit_edge: ; preds = %__reuseport_detach_closed_sock.exit115
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then68:                                        ; preds = %__reuseport_detach_closed_sock.exit115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @call_rcu(ptr noundef %old_reuse, ptr noundef nonnull @reuseport_free_rcu) #9
  br label %return

return:                                           ; preds = %if.then68, %__reuseport_detach_closed_sock.exit115.return_crit_edge, %if.then17.return_crit_edge, %if.then8, %if.then1.return_crit_edge, %__reuseport_detach_closed_sock.exit
  %retval.1 = phi i32 [ 0, %__reuseport_detach_closed_sock.exit ], [ -12, %if.then17.return_crit_edge ], [ 0, %if.then68 ], [ 0, %__reuseport_detach_closed_sock.exit115.return_crit_edge ], [ %call.i, %if.then8 ], [ -12, %if.then1.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reuseport_add_sock(ptr noundef %sk, ptr noundef %sk2, i1 noundef zeroext %bind_inany) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk2, i32 0, i32 83
  %0 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_reuseport_cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @reuseport_alloc(ptr noundef %sk2, i1 noundef zeroext %bind_inany)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup105_crit_edge

if.then.cleanup105_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end5.do.end16_crit_edge

if.end5.do.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true:                                    ; preds = %if.end5
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b129 = load i1, ptr @reuseport_add_sock.__warned, align 1
  br i1 %.b129, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_add_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 248, ptr noundef nonnull @.str.2) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %if.end5.do.end16_crit_edge
  %2 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_reuseport_cb, align 8
  %call.i130 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool21.not = icmp eq i32 %call.i130, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %do.end16.do.end30_crit_edge

do.end16.do.end30_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.end16
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b127128 = load i1, ptr @reuseport_add_sock.__warned.3, align 1
  br i1 %.b127128, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_add_sock.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @.str.2) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.end16.do.end30_crit_edge
  %sk_reuseport_cb32 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %4 = ptrtoint ptr %sk_reuseport_cb32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_reuseport_cb32, align 8
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %do.end30.if.end48_crit_edge, label %land.lhs.true34

do.end30.if.end48_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true34:                                  ; preds = %do.end30
  %num_closed_socks = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_closed_socks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool35.not = icmp eq i16 %7, 0
  br i1 %tobool35.not, label %land.lhs.true44.critedge, label %if.then36

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  %bind_inany38 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %bind_inany38 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %bind_inany38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool39 = icmp slt i8 %bf.load, 0
  %call40 = tail call fastcc i32 @reuseport_resurrect(ptr noundef %sk, ptr noundef nonnull %5, ptr noundef %3, i1 noundef zeroext %tobool39)
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %cleanup105

land.lhs.true44.critedge:                         ; preds = %land.lhs.true34
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_socks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp.not = icmp eq i16 %10, 1
  br i1 %cmp.not, label %land.lhs.true44.critedge.if.end48_crit_edge, label %if.then47

land.lhs.true44.critedge.if.end48_crit_edge:      ; preds = %land.lhs.true44.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true44.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %cleanup105

if.end48:                                         ; preds = %land.lhs.true44.critedge.if.end48_crit_edge, %do.end30.if.end48_crit_edge
  %num_socks49 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %num_socks49 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_socks49, align 2
  %conv50 = zext i16 %12 to i32
  %num_closed_socks51 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %num_closed_socks51 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_closed_socks51, align 4
  %conv52 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv52, %conv50
  %max_socks = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_socks, align 4
  %conv53 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv53)
  %cmp54 = icmp eq i32 %add, %conv53
  br i1 %cmp54, label %if.then56, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then56:                                        ; preds = %if.end48
  %call57 = tail call fastcc ptr @reuseport_grow(ptr noundef %3)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.then59, label %if.then56.if.end61_crit_edge

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %cleanup105

if.end61:                                         ; preds = %if.then56.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %reuse.0 = phi ptr [ %call57, %if.then56.if.end61_crit_edge ], [ %3, %if.end48.if.end61_crit_edge ]
  %num_socks.i = getelementptr inbounds %struct.sock_reuseport, ptr %reuse.0, i32 0, i32 2
  %17 = ptrtoint ptr %num_socks.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_socks.i, align 2
  %idxprom.i = zext i16 %18 to i32
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %reuse.0, i32 0, i32 8, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sk, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %20 = ptrtoint ptr %num_socks.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_socks.i, align 2
  %inc.i = add i16 %21, 1
  store i16 %inc.i, ptr %num_socks.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %22 = ptrtoint ptr %sk_reuseport_cb32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %reuse.0, ptr %sk_reuseport_cb32, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br i1 %tobool33.not, label %if.end61.cleanup105_crit_edge, label %if.then103

if.end61.cleanup105_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.then103:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @call_rcu(ptr noundef nonnull %5, ptr noundef nonnull @reuseport_free_rcu) #9
  br label %cleanup105

cleanup105:                                       ; preds = %if.then103, %if.end61.cleanup105_crit_edge, %if.then59, %if.then47, %if.then36, %if.then.cleanup105_crit_edge
  %retval.1 = phi i32 [ %call40, %if.then36 ], [ -16, %if.then47 ], [ -12, %if.then59 ], [ %call, %if.then.cleanup105_crit_edge ], [ 0, %if.then103 ], [ 0, %if.end61.cleanup105_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @reuseport_grow(ptr noundef %reuse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 1
  %0 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_socks, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp slt i16 %1, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %num_closed_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 3
  %2 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_closed_socks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %conv6 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv6
  %arrayidx = getelementptr %struct.sock_reuseport, ptr %reuse, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %sk_reuseport_cb, align 8
  %7 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_socks, align 4
  %conv1.i.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_closed_socks, align 4
  %conv2.i.i = zext i16 %10 to i32
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp18.i.not.i = icmp eq i16 %10, 0
  br i1 %cmp18.i.not.i, label %if.then2.cleanup_crit_edge, label %if.then2.for.body.i.i_crit_edge

if.then2.for.body.i.i_crit_edge:                  ; preds = %if.then2
  br label %for.body.i.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then2.for.body.i.i_crit_edge
  %left.119.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %sub.i.i, %if.then2.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sock_reuseport, ptr %reuse, i32 0, i32 8, i32 %left.119.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp6.i.i = icmp eq ptr %12, %5
  br i1 %cmp6.i.i, label %reuseport_sock_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %left.119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv1.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

reuseport_sock_index.exit.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %left.119.i.i)
  %cmp.i = icmp eq i32 %left.119.i.i, -1
  br i1 %cmp.i, label %reuseport_sock_index.exit.i.cleanup_crit_edge, label %if.end.i

reuseport_sock_index.exit.i.cleanup_crit_edge:    ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %reuse, i32 0, i32 8, i32 %sub.i.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_closed_socks, align 4
  %sub8.i = add i16 %17, -1
  store volatile i16 %sub8.i, ptr %num_closed_socks, align 4
  br label %cleanup

if.end16:                                         ; preds = %entry
  %mul.i = shl nuw nsw i32 %conv, 3
  %add.i = add nuw nsw i32 %mul.i, 32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2848) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %mul = shl nuw i16 %1, 1
  %max_socks1.i = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %max_socks1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %mul, ptr %max_socks1.i, align 8
  %prog.i = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %prog.i, align 4
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 2
  %20 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_socks, align 2
  %num_socks21 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %num_socks21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %num_socks21, align 2
  %num_closed_socks22 = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 3
  %23 = ptrtoint ptr %num_closed_socks22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_closed_socks22, align 4
  %num_closed_socks23 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_closed_socks23 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %num_closed_socks23, align 4
  %prog = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 7
  %26 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog, align 4
  store ptr %27, ptr %prog.i, align 4
  %reuseport_id = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 5
  %28 = ptrtoint ptr %reuseport_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reuseport_id, align 4
  %reuseport_id25 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %reuseport_id25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reuseport_id25, align 4
  %bind_inany = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 6
  %31 = ptrtoint ptr %bind_inany to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %bind_inany, align 4
  %bind_inany26 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %bind_inany26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load27 = load i8, ptr %bind_inany26, align 8
  %bf.clear = and i8 %bf.load27, 63
  %bf.set = and i8 %bf.load, -64
  %bf.set37 = or i8 %bf.set, %bf.clear
  store i8 %bf.set37, ptr %bind_inany26, align 8
  %socks39 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 8
  %socks40 = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 8
  %conv43 = zext i16 %21 to i32
  %mul44 = shl nuw nsw i32 %conv43, 2
  %33 = call ptr @memcpy(ptr %socks39, ptr %socks40, i32 %mul44)
  %conv48 = zext i16 %mul to i32
  %conv50 = zext i16 %24 to i32
  %sub51 = sub nsw i32 %conv48, %conv50
  %add.ptr = getelementptr ptr, ptr %socks39, i32 %sub51
  %34 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_socks, align 4
  %conv55 = zext i16 %35 to i32
  %sub58 = sub nsw i32 %conv55, %conv50
  %add.ptr59 = getelementptr ptr, ptr %socks40, i32 %sub58
  %mul62 = shl nuw nsw i32 %conv50, 2
  %36 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr59, i32 %mul62)
  %synq_overflow_ts = getelementptr inbounds %struct.sock_reuseport, ptr %reuse, i32 0, i32 4
  %37 = ptrtoint ptr %synq_overflow_ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %synq_overflow_ts, align 4
  %synq_overflow_ts66 = getelementptr inbounds %struct.sock_reuseport, ptr %call9.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %synq_overflow_ts66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %synq_overflow_ts66, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp69169.not = icmp eq i16 %35, 0
  br i1 %cmp69169.not, label %if.end20.do.body114_crit_edge, label %if.end20.do.body71_crit_edge

if.end20.do.body71_crit_edge:                     ; preds = %if.end20
  br label %do.body71

if.end20.do.body114_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

do.body71:                                        ; preds = %do.body71.do.body71_crit_edge, %if.end20.do.body71_crit_edge
  %i.0170 = phi i32 [ %inc, %do.body71.do.body71_crit_edge ], [ 0, %if.end20.do.body71_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  %arrayidx101 = getelementptr %struct.sock_reuseport, ptr %reuse, i32 0, i32 8, i32 %i.0170
  %40 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx101, align 4
  %sk_reuseport_cb102 = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 83
  %42 = ptrtoint ptr %sk_reuseport_cb102 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call9.i.i.i, ptr %sk_reuseport_cb102, align 8
  %inc = add nuw nsw i32 %i.0170, 1
  %43 = ptrtoint ptr %max_socks to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_socks, align 4
  %conv68 = zext i16 %44 to i32
  %cmp69 = icmp ult i32 %inc, %conv68
  br i1 %cmp69, label %do.body71.do.body71_crit_edge, label %do.body71.do.body114_crit_edge

do.body71.do.body114_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

do.body71.do.body71_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

do.body114:                                       ; preds = %do.body71.do.body114_crit_edge, %if.end20.do.body114_crit_edge
  %tobool115.not = icmp eq ptr %reuse, null
  br i1 %tobool115.not, label %do.body114.cleanup_crit_edge, label %do.end119

do.body114.cleanup_crit_edge:                     ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end119:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %reuse, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %do.body114.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.i, %reuseport_sock_index.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call9.i.i.i, %do.end119 ], [ %call9.i.i.i, %do.body114.cleanup_crit_edge ], [ %reuse, %if.then2.cleanup_crit_edge ], [ %reuse, %reuseport_sock_index.exit.i.cleanup_crit_edge ], [ %reuse, %if.end.i ], [ null, %if.end16.cleanup_crit_edge ], [ %reuse, %for.inc.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reuseport_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.sock_reuseport, ptr %head, i32 0, i32 7
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 4
  tail call void @sk_reuseport_prog_free(ptr noundef %1) #9
  %reuseport_id = getelementptr inbounds %struct.sock_reuseport, ptr %head, i32 0, i32 5
  %2 = ptrtoint ptr %reuseport_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reuseport_id, align 4
  tail call void @ida_free(ptr noundef nonnull @reuseport_ida, i32 noundef %3) #9
  tail call void @kfree(ptr noundef %head) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reuseport_detach_sock(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @reuseport_detach_sock.__warned, align 1
  br i1 %.b66, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_detach_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %0 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_reuseport_cb, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.out_crit_edge, label %if.end7

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %do.end
  tail call void @bpf_sk_reuseport_detach(ptr noundef %sk) #9
  %2 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %sk_reuseport_cb, align 8
  %max_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %max_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_socks.i.i, align 4
  %conv1.i.i = zext i16 %4 to i32
  %num_closed_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %num_closed_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_closed_socks.i.i, align 4
  %conv2.i.i = zext i16 %6 to i32
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp18.i.not.i = icmp eq i16 %6, 0
  br i1 %cmp18.i.not.i, label %if.end7.if.then46_crit_edge, label %if.end7.for.body.i.i_crit_edge

if.end7.for.body.i.i_crit_edge:                   ; preds = %if.end7
  br label %for.body.i.i

if.end7.if.then46_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end7.for.body.i.i_crit_edge
  %left.119.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %sub.i.i, %if.end7.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %left.119.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp6.i.i = icmp eq ptr %8, %sk
  br i1 %cmp6.i.i, label %reuseport_sock_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %left.119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv1.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then46_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.then46_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

reuseport_sock_index.exit.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %left.119.i.i)
  %cmp.i = icmp eq i32 %left.119.i.i, -1
  br i1 %cmp.i, label %reuseport_sock_index.exit.i.if.then46_crit_edge, label %__reuseport_detach_closed_sock.exit

reuseport_sock_index.exit.i.if.then46_crit_edge:  ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

__reuseport_detach_closed_sock.exit:              ; preds = %reuseport_sock_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %sub.i.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %num_closed_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_closed_socks.i.i, align 4
  %sub8.i = add i16 %13, -1
  store volatile i16 %sub8.i, ptr %num_closed_socks.i.i, align 4
  br label %if.end48

if.then46:                                        ; preds = %reuseport_sock_index.exit.i.if.then46_crit_edge, %for.inc.i.i.if.then46_crit_edge, %if.end7.if.then46_crit_edge
  %num_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %num_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_socks.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp18.i.not.i67 = icmp eq i16 %15, 0
  br i1 %cmp18.i.not.i67, label %if.then46.if.end48_crit_edge, label %if.then46.for.body.i.i71_crit_edge

if.then46.for.body.i.i71_crit_edge:               ; preds = %if.then46
  br label %for.body.i.i71

if.then46.if.end48_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body.i.i71:                                   ; preds = %for.inc.i.i74.for.body.i.i71_crit_edge, %if.then46.for.body.i.i71_crit_edge
  %left.119.i.i68 = phi i32 [ %inc.i.i72, %for.inc.i.i74.for.body.i.i71_crit_edge ], [ 0, %if.then46.for.body.i.i71_crit_edge ]
  %arrayidx.i.i69 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %left.119.i.i68
  %16 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i69, align 4
  %cmp6.i.i70 = icmp eq ptr %17, %sk
  br i1 %cmp6.i.i70, label %if.end.i76, label %for.inc.i.i74

for.inc.i.i74:                                    ; preds = %for.body.i.i71
  %inc.i.i72 = add nuw nsw i32 %left.119.i.i68, 1
  %exitcond.not.i.i73 = icmp eq i32 %inc.i.i72, %conv.i.i
  br i1 %exitcond.not.i.i73, label %for.inc.i.i74.if.end48_crit_edge, label %for.inc.i.i74.for.body.i.i71_crit_edge

for.inc.i.i74.for.body.i.i71_crit_edge:           ; preds = %for.inc.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i71

for.inc.i.i74.if.end48_crit_edge:                 ; preds = %for.inc.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end.i76:                                       ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i75 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i75, align 4
  %20 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx.i.i69, align 4
  %21 = ptrtoint ptr %num_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_socks.i.i, align 2
  %dec.i = add i16 %22, -1
  store i16 %dec.i, ptr %num_socks.i.i, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.end.i76, %for.inc.i.i74.if.end48_crit_edge, %if.then46.if.end48_crit_edge, %__reuseport_detach_closed_sock.exit
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_socks, align 2
  %conv = zext i16 %24 to i32
  %25 = ptrtoint ptr %num_closed_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_closed_socks.i.i, align 4
  %conv49 = zext i16 %26 to i32
  %add = sub nsw i32 0, %conv49
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %add)
  %cmp50 = icmp eq i32 %conv, %add
  br i1 %cmp50, label %if.then52, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @call_rcu(ptr noundef nonnull %1, ptr noundef nonnull @reuseport_free_rcu) #9
  br label %out

out:                                              ; preds = %if.then52, %if.end48.out_crit_edge, %do.end.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_sk_reuseport_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reuseport_stop_listen_sock(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %0 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %1)
  %cmp = icmp eq i16 %1, 6
  br i1 %cmp, label %if.then, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @reuseport_stop_listen_sock.__warned, align 1
  br i1 %.b44, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_stop_listen_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 386, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %2 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_reuseport_cb, align 8
  %call.i45 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool9.not = icmp eq i32 %call.i45, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %do.end.do.end18_crit_edge

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true10:                                  ; preds = %do.end
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b4243 = load i1, ptr @reuseport_stop_listen_sock.__warned.4, align 1
  br i1 %.b4243, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_stop_listen_sock.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @.str.2) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %do.end.do.end18_crit_edge
  %prog20 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %prog20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prog20, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_migrate_req = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 64
  %8 = ptrtoint ptr %sysctl_tcp_migrate_req to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysctl_tcp_migrate_req, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %do.end18.if.then28_crit_edge

do.end18.if.then28_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %do.end18
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %lor.lhs.false.cleanup.thread_crit_edge, label %land.lhs.true25

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %11)
  %cmp26 = icmp eq i32 %11, 40
  br i1 %cmp26, label %land.lhs.true25.if.then28_crit_edge, label %land.lhs.true25.cleanup.thread_crit_edge

land.lhs.true25.cleanup.thread_crit_edge:         ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true25.if.then28_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true25.if.then28_crit_edge, %do.end18.if.then28_crit_edge
  tail call void @bpf_sk_reuseport_detach(ptr noundef %sk) #9
  %num_socks.i.i = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %num_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_socks.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp18.i.not.i = icmp eq i16 %13, 0
  br i1 %cmp18.i.not.i, label %if.then28.cleanup_crit_edge, label %if.then28.for.body.i.i_crit_edge

if.then28.for.body.i.i_crit_edge:                 ; preds = %if.then28
  br label %for.body.i.i

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then28.for.body.i.i_crit_edge
  %left.119.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then28.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %left.119.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp6.i.i = icmp eq ptr %15, %sk
  br i1 %cmp6.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %left.119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx.i.i, align 4
  %19 = ptrtoint ptr %num_socks.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_socks.i.i, align 2
  %dec.i = add i16 %20, -1
  store i16 %dec.i, ptr %num_socks.i.i, align 2
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true25.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %if.end32

cleanup:                                          ; preds = %if.end.i, %for.inc.i.i.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %max_socks.i = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %max_socks.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_socks.i, align 4
  %conv.i = zext i16 %22 to i32
  %num_closed_socks.i = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %num_closed_socks.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_closed_socks.i, align 4
  %conv1.i = zext i16 %24 to i32
  %25 = xor i32 %conv1.i, -1
  %sub2.i = add nsw i32 %25, %conv.i
  %arrayidx.i46 = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %sub2.i
  %26 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sk, ptr %arrayidx.i46, align 4
  %27 = load i16, ptr %num_closed_socks.i, align 4
  %add.i = add i16 %27, 1
  store volatile i16 %add.i, ptr %num_closed_socks.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %return

if.end32:                                         ; preds = %cleanup.thread, %entry.if.end32_crit_edge
  tail call void @reuseport_detach_sock(ptr noundef %sk)
  br label %return

return:                                           ; preds = %if.end32, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reuseport_select_sock(ptr noundef %sk, i32 noundef %hash, ptr noundef %skb, i32 noundef %hdr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %4 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_reuseport_cb, align 8
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
  %.b76 = load i1, ptr @reuseport_select_sock.__warned, align 1
  br i1 %.b76, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_select_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 480, ptr noundef nonnull @.str.5) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %do.end7
  %prog16 = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %prog16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %prog16, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end11.do.end28_crit_edge

if.end11.do.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.end11
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b7475 = load i1, ptr @reuseport_select_sock.__warned.6, align 1
  br i1 %.b7475, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_select_sock.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 486, ptr noundef nonnull @.str.5) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.end11.do.end28_crit_edge
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load volatile i16, ptr %num_socks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool34.not = icmp eq i16 %9, 0
  br i1 %tobool34.not, label %do.end28.out_crit_edge, label %do.end41, !prof !85

do.end28.out_crit_edge:                           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end41:                                         ; preds = %do.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  %tobool44.not = icmp eq ptr %7, null
  %tobool45.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool45.not, %tobool44.not
  br i1 %or.cond, label %do.end41.if.then53_crit_edge, label %if.end47

do.end41.if.then53_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end47:                                         ; preds = %do.end41
  %type = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %11)
  %cmp = icmp eq i32 %11, 21
  br i1 %cmp, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %5, ptr noundef %sk, ptr noundef nonnull %7, ptr noundef nonnull %skb, ptr noundef null, i32 noundef %hash) #9
  br label %select_by_hash

if.else:                                          ; preds = %if.end47
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 1
  br i1 %cmp.i.not.i, label %if.else.if.end4.i_crit_edge, label %if.then.i78

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i78:                                      ; preds = %if.else
  %call1.i77 = tail call ptr @skb_clone(ptr noundef nonnull %skb, i32 noundef 2592) #9
  %tobool2.not.i = icmp eq ptr %call1.i77, null
  br i1 %tobool2.not.i, label %if.then.i78.if.then53_crit_edge, label %if.then.i78.if.end4.i_crit_edge

if.then.i78.if.end4.i_crit_edge:                  ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i78.if.then53_crit_edge:                  ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end4.i:                                        ; preds = %if.then.i78.if.end4.i_crit_edge, %if.else.if.end4.i_crit_edge
  %skb.addr.0.i = phi ptr [ %skb, %if.else.if.end4.i_crit_edge ], [ %call1.i77, %if.then.i78.if.end4.i_crit_edge ]
  %nskb.0.i = phi ptr [ null, %if.else.if.end4.i_crit_edge ], [ %call1.i77, %if.then.i78.if.end4.i_crit_edge ]
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %hdr_len)
  %cmp.i25.i = icmp ult i32 %15, %hdr_len
  br i1 %cmp.i25.i, label %if.end4.i.if.then7.i_crit_edge, label %cond.false.i.i, !prof !85

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

cond.false.i.i:                                   ; preds = %if.end4.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %hdr_len)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i.i, %hdr_len
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %cond.false.i.i.pskb_pull.exit.i_crit_edge

cond.false.i.i.pskb_pull.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i
  %sub.i.i.i = sub i32 %hdr_len, %sub.i.i.i.i
  %call2.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i, i32 noundef %sub.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.if.then7.i_crit_edge, label %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge

land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

pskb_pull.exit.i:                                 ; preds = %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge, %cond.false.i.i.pskb_pull.exit.i_crit_edge
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i.i, align 4
  %sub4.i.i.i = sub i32 %19, %hdr_len
  store i32 %sub4.i.i.i, ptr %len1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %hdr_len
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tobool6.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool6.not.i, label %pskb_pull.exit.i.if.then7.i_crit_edge, label %if.end8.i

pskb_pull.exit.i.if.then7.i_crit_edge:            ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %pskb_pull.exit.i.if.then7.i_crit_edge, %land.lhs.true.i.i.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %nskb.0.i, i32 noundef 0) #9
  br label %if.then53

if.end8.i:                                        ; preds = %pskb_pull.exit.i
  tail call void @migrate_disable() #9
  %call.i.i = tail call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef nonnull %7, ptr noundef nonnull %skb.addr.0.i) #9
  tail call void @migrate_enable() #9
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %idx.neg.i.i = sub i32 0, %hdr_len
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %idx.neg.i.i
  store ptr %add.ptr.i.i, ptr %data.i.i.i, align 4
  %24 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i.i, align 4
  %add.i.i = add i32 %25, %hdr_len
  store i32 %add.i.i, ptr %len1.i.i, align 4
  tail call void @consume_skb(ptr noundef %nskb.0.i) #9
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %call.i.i, %conv.i
  br i1 %cmp.not.i, label %if.end13.i, label %if.end8.i.if.then53_crit_edge

if.end8.i.if.then53_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %5, i32 0, i32 8, i32 %call.i.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  br label %select_by_hash

select_by_hash:                                   ; preds = %if.end13.i, %if.then48
  %sk2.0 = phi ptr [ %call49, %if.then48 ], [ %27, %if.end13.i ]
  %tobool52.not = icmp eq ptr %sk2.0, null
  br i1 %tobool52.not, label %select_by_hash.if.then53_crit_edge, label %select_by_hash.out_crit_edge

select_by_hash.out_crit_edge:                     ; preds = %select_by_hash
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

select_by_hash.if.then53_crit_edge:               ; preds = %select_by_hash
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then53:                                        ; preds = %select_by_hash.if.then53_crit_edge, %if.end8.i.if.then53_crit_edge, %if.then7.i, %if.then.i78.if.then53_crit_edge, %do.end41.if.then53_crit_edge
  %conv.i79 = zext i16 %9 to i32
  %conv.i.i = zext i32 %hash to i64
  %conv1.i.i = zext i16 %9 to i64
  %mul.i.i = mul nuw nsw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then53
  %i.0.i = phi i32 [ %conv2.i.i, %if.then53 ], [ %spec.store.select.i, %while.body.i.while.cond.i_crit_edge ]
  %arrayidx.i80 = getelementptr %struct.sock_reuseport, ptr %5, i32 0, i32 8, i32 %i.0.i
  %28 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i80, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp.i = icmp eq i8 %31, 1
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.out_crit_edge

while.cond.i.out_crit_edge:                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i79)
  %cmp4.not.i = icmp slt i32 %inc.i, %conv.i79
  %spec.store.select.i = select i1 %cmp4.not.i, i32 %inc.i, i32 0
  %cmp6.i = icmp eq i32 %spec.store.select.i, %conv2.i.i
  br i1 %cmp6.i, label %while.body.i.out_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %while.body.i.out_crit_edge, %while.cond.i.out_crit_edge, %select_by_hash.out_crit_edge, %do.end28.out_crit_edge, %do.end7.out_crit_edge
  %sk2.1 = phi ptr [ %sk2.0, %select_by_hash.out_crit_edge ], [ null, %do.end28.out_crit_edge ], [ null, %do.end7.out_crit_edge ], [ %29, %while.cond.i.out_crit_edge ], [ null, %while.body.i.out_crit_edge ]
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i82, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i85

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i85:                                ; preds = %out
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.16) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %32 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i89 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i91 = add i32 %35, -1
  store volatile i32 %sub.i.i.i91, ptr %preempt_count.i.i.i.i90, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %sk2.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_run_sk_reuseport(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reuseport_migrate_sock(ptr noundef %sk, ptr noundef %migrating_sk, ptr noundef %skb) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %4 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_reuseport_cb, align 8
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
  %.b122 = load i1, ptr @reuseport_migrate_sock.__warned, align 1
  br i1 %.b122, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_migrate_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @.str.5) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %do.end14

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end14:                                         ; preds = %do.end7
  %num_socks = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num_socks to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %num_socks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool16.not = icmp eq i16 %7, 0
  br i1 %tobool16.not, label %do.end14.failure_crit_edge, label %do.end25, !prof !85

do.end14.failure_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

do.end25:                                         ; preds = %do.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  %8 = getelementptr inbounds %struct.sock_common, ptr %migrating_sk, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %prog32 = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %prog32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %prog32, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %do.end25.do.end44_crit_edge

do.end25.do.end44_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true36:                                  ; preds = %do.end25
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b120121 = load i1, ptr @reuseport_migrate_sock.__warned.7, align 1
  br i1 %.b120121, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_migrate_sock.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @.str.5) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %do.end25.do.end44_crit_edge
  %tobool46.not = icmp eq ptr %12, null
  br i1 %tobool46.not, label %do.end44.if.then47_crit_edge, label %lor.lhs.false

do.end44.if.then47_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false:                                    ; preds = %do.end44
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %14)
  %cmp.not = icmp eq i32 %14, 40
  br i1 %cmp.not, label %if.end52, label %lor.lhs.false.if.then47_crit_edge

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false.if.then47_crit_edge, %do.end44.if.then47_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_migrate_req = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 64
  %17 = ptrtoint ptr %sysctl_tcp_migrate_req to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sysctl_tcp_migrate_req, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool49.not = icmp eq i8 %18, 0
  br i1 %tobool49.not, label %if.then47.failure_crit_edge, label %if.then47.if.then65_crit_edge

if.then47.if.then65_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.then47.failure_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end52:                                         ; preds = %lor.lhs.false
  %tobool53.not = icmp eq ptr %skb, null
  br i1 %tobool53.not, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end52
  %call.i123 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool56.not = icmp eq ptr %call.i123, null
  br i1 %tobool56.not, label %if.then54.failure_crit_edge, label %if.then62

if.then54.failure_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %5, ptr noundef %sk, ptr noundef nonnull %12, ptr noundef nonnull %skb, ptr noundef %migrating_sk, i32 noundef %10) #9
  br label %select_by_hash

if.then62:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %call60138 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %5, ptr noundef %sk, ptr noundef nonnull %12, ptr noundef nonnull %call.i123, ptr noundef %migrating_sk, i32 noundef %10) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i123, i32 noundef 0) #9
  br label %select_by_hash

select_by_hash:                                   ; preds = %if.then62, %if.end59
  %nsk.0 = phi ptr [ %call60138, %if.then62 ], [ %call60, %if.end59 ]
  %tobool64.not = icmp eq ptr %nsk.0, null
  br i1 %tobool64.not, label %select_by_hash.if.then65_crit_edge, label %select_by_hash.if.end67_crit_edge

select_by_hash.if.end67_crit_edge:                ; preds = %select_by_hash
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

select_by_hash.if.then65_crit_edge:               ; preds = %select_by_hash
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.then65:                                        ; preds = %select_by_hash.if.then65_crit_edge, %if.then47.if.then65_crit_edge
  %conv.i = zext i16 %7 to i32
  %conv.i.i = zext i32 %10 to i64
  %conv1.i.i = zext i16 %7 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then65
  %i.0.i = phi i32 [ %conv2.i.i, %if.then65 ], [ %spec.store.select.i, %while.body.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sock_reuseport, ptr %5, i32 0, i32 8, i32 %i.0.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i = icmp eq i8 %22, 1
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.if.end67_crit_edge

while.cond.i.if.end67_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp4.not.i = icmp slt i32 %inc.i, %conv.i
  %spec.store.select.i = select i1 %cmp4.not.i, i32 %inc.i, i32 0
  %cmp6.i = icmp eq i32 %spec.store.select.i, %conv2.i.i
  br i1 %cmp6.i, label %while.body.i.failure_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.failure_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end67:                                         ; preds = %while.cond.i.if.end67_crit_edge, %select_by_hash.if.end67_crit_edge
  %nsk.1 = phi ptr [ %nsk.0, %select_by_hash.if.end67_crit_edge ], [ %20, %while.cond.i.if.end67_crit_edge ]
  %tobool.not.i124 = icmp eq ptr %nsk.1, null
  %cmp.i125 = icmp ugt ptr %nsk.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i124, %cmp.i125
  br i1 %spec.select.i, label %if.end67.failure_crit_edge, label %lor.lhs.false69

if.end67.failure_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

lor.lhs.false69:                                  ; preds = %if.end67
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %nsk.1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %23 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false69
  %25 = phi i32 [ %24, %lor.lhs.false69 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i126 = add i32 %25, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #9
  %27 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %29 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %28, i32 %add.i.i.i126, ptr elementtype(i32) %skc_refcnt) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %28
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !90

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %30 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %31, 1
  %32 = or i32 %add5.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !90

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #9
  %33 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %34 = phi i32 [ %31, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.i.i.i.not = icmp eq i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #9
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.failure_crit_edge, label %refcount_inc_not_zero.exit.out_crit_edge, !prof !85

refcount_inc_not_zero.exit.out_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

refcount_inc_not_zero.exit.failure_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

out:                                              ; preds = %failure, %refcount_inc_not_zero.exit.out_crit_edge, %do.end7.out_crit_edge
  %nsk.2 = phi ptr [ null, %failure ], [ %nsk.1, %refcount_inc_not_zero.exit.out_crit_edge ], [ null, %do.end7.out_crit_edge ]
  %call.i127 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i127, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i130

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i130:                               ; preds = %out
  %call1.i128 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool.not.i129, label %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i132

land.lhs.true.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i132:                              ; preds = %land.lhs.true.i130
  %.b4.i131 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131, label %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, label %if.then.i133

land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i133:                                     ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.16) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i133, %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %35 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i134 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i135, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i135, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %nsk.2

failure:                                          ; preds = %refcount_inc_not_zero.exit.failure_crit_edge, %if.end67.failure_crit_edge, %while.body.i.failure_crit_edge, %if.then54.failure_crit_edge, %if.then47.failure_crit_edge, %do.end14.failure_crit_edge
  %skc_net.i136 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %39 = ptrtoint ptr %skc_net.i136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skc_net.i136, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 30, i32 3
  %41 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %42, i32 0, i32 125
  %43 = ptrtoint ptr %arrayidx to i32
  %44 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu, align 4
  %arrayidx95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx95, align 4
  %add = add i32 %49, %43
  %50 = inttoptr i32 %add to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add96 = add i32 %52, 1
  store i32 %add96, ptr %50, align 4
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reuseport_attach_prog(ptr noundef %sk, ptr noundef %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %skc_reuseport = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %2 = ptrtoint ptr %skc_reuseport to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skc_reuseport, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then.cleanup77_crit_edge, label %cleanup

if.then.cleanup77_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

cleanup:                                          ; preds = %if.then
  %call2 = tail call i32 @reuseport_alloc(ptr noundef %sk, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.if.end10_crit_edge, label %cleanup.cleanup77_crit_edge

cleanup.cleanup77_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %entry
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %4 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_reuseport_cb, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.else.cleanup77_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else.cleanup77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %cleanup.if.end10_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end10.do.end21_crit_edge

if.end10.do.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true:                                    ; preds = %if.end10
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b87 = load i1, ptr @reuseport_attach_prog.__warned, align 1
  br i1 %.b87, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_attach_prog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 605, ptr noundef nonnull @.str.2) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %if.end10.do.end21_crit_edge
  %sk_reuseport_cb23 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %6 = ptrtoint ptr %sk_reuseport_cb23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_reuseport_cb23, align 8
  %call.i88 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool26.not = icmp eq i32 %call.i88, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %do.end21.do.end35_crit_edge

do.end21.do.end35_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

land.lhs.true27:                                  ; preds = %do.end21
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b8586 = load i1, ptr @reuseport_attach_prog.__warned.9, align 1
  br i1 %.b8586, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_attach_prog.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 607, ptr noundef nonnull @.str.2) #9
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %do.end21.do.end35_crit_edge
  %prog37 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %prog37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prog37, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %10 = ptrtoint ptr %prog37 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %prog, ptr %prog37, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  tail call void @sk_reuseport_prog_free(ptr noundef %9) #9
  br label %cleanup77

cleanup77:                                        ; preds = %do.end35, %if.else.cleanup77_crit_edge, %cleanup.cleanup77_crit_edge, %if.then.cleanup77_crit_edge
  %retval.1 = phi i32 [ 0, %do.end35 ], [ %call2, %cleanup.cleanup77_crit_edge ], [ -22, %if.else.cleanup77_crit_edge ], [ -22, %if.then.cleanup77_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reuseport_prog_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reuseport_detach_prog(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #9
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b83 = load i1, ptr @reuseport_detach_prog.__warned, align 1
  br i1 %.b83, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_detach_prog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 624, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %0 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_reuseport_cb, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  %skc_reuseport = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %2 = ptrtoint ptr %skc_reuseport to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skc_reuseport, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool7.not, i32 -22, i32 -2
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %land.lhs.true11, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end8
  %num_closed_socks = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_closed_socks to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_closed_socks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not = icmp eq i16 %7, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then14

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call.i84 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool18.not = icmp eq i32 %call.i84, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end15.do.end27_crit_edge

if.end15.do.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.end15
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b8182 = load i1, ptr @reuseport_detach_prog.__warned.10, align 1
  br i1 %.b8182, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reuseport_detach_prog.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 640, ptr noundef nonnull @.str.2) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.end15.do.end27_crit_edge
  %prog = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prog, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %10 = ptrtoint ptr %prog to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %prog, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #9
  %tobool69.not = icmp eq ptr %9, null
  br i1 %tobool69.not, label %do.end27.cleanup_crit_edge, label %if.end71

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sk_reuseport_prog_free(ptr noundef nonnull %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end27.cleanup_crit_edge, %if.then14, %if.then6
  %retval.0 = phi i32 [ -2, %if.then14 ], [ 0, %if.end71 ], [ %cond, %if.then6 ], [ -2, %do.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 8
  %cb_access = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %0 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cb_access, align 2
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !90

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @__cant_migrate(ptr noundef nonnull @.str.14, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_run_save_cb, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !93

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %23 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %insnsi.i.i) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %25 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats9.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !69) #9
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
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %41 = tail call i32 @llvm.read_register.i32(metadata !69) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %50 = tail call i32 @llvm.read_register.i32(metadata !69) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !69) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i9.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %69 = tail call i32 @llvm.read_register.i32(metadata !69) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !90

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %73 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3, i32 0, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #9
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #9
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %34, align 8
  %inc.i.i.i = add i64 %78, 1
  store i64 %inc.i.i.i, ptr %34, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %79 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %80
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %76) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  %81 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !101
  %and.i.i.i4.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !85

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #9, !srcloc !102
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %84 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %85(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #9
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %86 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load5 = load i16, ptr %cb_access, align 2
  %87 = and i16 %bf.load5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool8.not = icmp eq i16 %87, 0
  br i1 %tobool8.not, label %bpf_prog_run.exit.if.end17_crit_edge, label %if.then15, !prof !90

bpf_prog_run.exit.if.end17_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !63, !65, !66, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/core/sock_reuseport.c", i32 18, i32 1}
!2 = !{ptr @reuseport_lock, !1, !"reuseport_lock", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/core/sock_reuseport.c", i32 118, i32 10}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_reuseport_alloc, !8, !"__ksymtab_reuseport_alloc", i1 false, i1 false}
!8 = !{!"../net/core/sock_reuseport.c", i32 160, i32 1}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/core/sock_reuseport.c", i32 247, i32 10}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/core/sock_reuseport.c", i32 249, i32 14}
!13 = !{ptr @__ksymtab_reuseport_add_sock, !14, !"__ksymtab_reuseport_add_sock", i1 false, i1 false}
!14 = !{!"../net/core/sock_reuseport.c", i32 281, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/core/sock_reuseport.c", i32 347, i32 10}
!17 = !{ptr @__ksymtab_reuseport_detach_sock, !18, !"__ksymtab_reuseport_detach_sock", i1 false, i1 false}
!18 = !{!"../net/core/sock_reuseport.c", i32 375, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/core/sock_reuseport.c", i32 385, i32 11}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/core/sock_reuseport.c", i32 387, i32 10}
!23 = !{ptr @__ksymtab_reuseport_stop_listen_sock, !24, !"__ksymtab_reuseport_stop_listen_sock", i1 false, i1 false}
!24 = !{!"../net/core/sock_reuseport.c", i32 410, i32 1}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/core/sock_reuseport.c", i32 480, i32 10}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/core/sock_reuseport.c", i32 486, i32 9}
!30 = !{ptr @__ksymtab_reuseport_select_sock, !31, !"__ksymtab_reuseport_select_sock", i1 false, i1 false}
!31 = !{!"../net/core/sock_reuseport.c", i32 510, i32 1}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/core/sock_reuseport.c", i32 534, i32 10}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/core/sock_reuseport.c", i32 546, i32 9}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/core/sock_reuseport.c", i32 579, i32 2}
!38 = !{ptr @__ksymtab_reuseport_migrate_sock, !39, !"__ksymtab_reuseport_migrate_sock", i1 false, i1 false}
!39 = !{!"../net/core/sock_reuseport.c", i32 582, i32 1}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/core/sock_reuseport.c", i32 604, i32 10}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/core/sock_reuseport.c", i32 606, i32 13}
!44 = !{ptr @__ksymtab_reuseport_attach_prog, !45, !"__ksymtab_reuseport_attach_prog", i1 false, i1 false}
!45 = !{!"../net/core/sock_reuseport.c", i32 614, i32 1}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/core/sock_reuseport.c", i32 623, i32 10}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/core/sock_reuseport.c", i32 639, i32 13}
!50 = !{ptr @__ksymtab_reuseport_detach_prog, !51, !"__ksymtab_reuseport_detach_prog", i1 false, i1 false}
!51 = !{!"../net/core/sock_reuseport.c", i32 649, i32 1}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/core/sock_reuseport.c", i32 20, i32 8}
!54 = !{ptr @reuseport_ida, !53, !"reuseport_ida", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/core/sock_reuseport.c", i32 222, i32 25}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/filter.h", i32 613, i32 2}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!68 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2158251329}
!80 = !{i64 2158237397}
!81 = !{i64 2158299312}
!82 = !{i64 2158289553}
!83 = !{i64 2158267343}
!84 = !{i64 2149683880}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2158327616}
!87 = !{i64 2149684146}
!88 = !{i64 2158336657}
!89 = !{i64 870979, i64 871003, i64 871024, i64 871041, i64 871058}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2158362113}
!92 = !{i64 2158377388}
!93 = !{i64 2148869058, i64 2148869063, i64 2148869076, i64 2148869120, i64 2148869154, i64 2148869175}
!94 = !{i64 779724, i64 779785}
!95 = !{i64 2150192501}
!96 = !{i64 2150197435}
!97 = !{i64 2150219153}
!98 = !{i64 2150224047}
!99 = !{i64 2150300574}
!100 = !{i64 2150300899}
!101 = !{i64 782456}
!102 = !{i64 782741}
