; ModuleID = '/llk/IR_all_yes/net/rds/send.c_pt.bc'
source_filename = "../net/rds/send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_send_path_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_send_path_reset\09\09\09\09"
module asm "\09.long\09__crc_rds_send_path_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_send_path_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_send_path_reset\22\09\09\09\09\09"
module asm "__kstrtabns_rds_send_path_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_send_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_send_xmit\09\09\09\09"
module asm "\09.long\09__crc_rds_send_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_send_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_send_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_rds_send_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_rdma_send_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_rdma_send_complete\09\09\09\09"
module asm "\09.long\09__crc_rds_rdma_send_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_rdma_send_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_rdma_send_complete\22\09\09\09\09\09"
module asm "__kstrtabns_rds_rdma_send_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_atomic_send_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_atomic_send_complete\09\09\09\09"
module asm "\09.long\09__crc_rds_atomic_send_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_atomic_send_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_atomic_send_complete\22\09\09\09\09\09"
module asm "__kstrtabns_rds_atomic_send_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_send_path_drop_acked\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_send_path_drop_acked\09\09\09\09"
module asm "\09.long\09__crc_rds_send_path_drop_acked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_send_path_drop_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_send_path_drop_acked\22\09\09\09\09\09"
module asm "__kstrtabns_rds_send_path_drop_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_send_drop_acked\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_send_drop_acked\09\09\09\09"
module asm "\09.long\09__crc_rds_send_drop_acked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_send_drop_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_send_drop_acked\22\09\09\09\09\09"
module asm "__kstrtabns_rds_send_drop_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_send_ping\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_send_ping\09\09\09\09"
module asm "\09.long\09__crc_rds_send_ping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_send_ping:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_send_ping\22\09\09\09\09\09"
module asm "__kstrtabns_rds_send_ping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.149, ptr }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.anon.149 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_atomic_op = type { i32, %union.anon.150, i32, i64, i8, ptr, ptr, ptr }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i64, i64, i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.rds_notifier = type { %struct.list_head, i64, i32 }
%struct.rds_iov_vector_arr = type { ptr, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.rds_iov_vector = type { ptr, i32 }
%struct.rds_znotifier = type { %struct.mmpin, i32 }
%struct.mmpin = type { ptr, i32 }

@__param_str_send_batch_count = internal constant [21 x i8] c"rds.send_batch_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@send_batch_count = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_send_batch_count = internal constant %struct.kernel_param { ptr @__param_str_send_batch_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @send_batch_count } }, section "__param", align 4
@__UNIQUE_ID_send_batch_counttype544 = internal constant [34 x i8] c"rds.parmtype=send_batch_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_send_batch_count545 = internal constant [68 x i8] c"rds.parm=send_batch_count: batch factor when working the send queue\00", section ".modinfo", align 1
@rds_sysctl_max_unacked_packets = external dso_local local_unnamed_addr global i32, align 4
@rds_sysctl_max_unacked_bytes = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_rds_send_path_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_send_path_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_send_path_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_send_path_reset to i32), ptr @__kstrtab_rds_send_path_reset, ptr @__kstrtabns_rds_send_path_reset }, section "___ksymtab_gpl+rds_send_path_reset", align 4
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_rds_send_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_send_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_send_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_send_xmit to i32), ptr @__kstrtab_rds_send_xmit, ptr @__kstrtabns_rds_send_xmit }, section "___ksymtab_gpl+rds_send_xmit", align 4
@__kstrtab_rds_rdma_send_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_rdma_send_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_rdma_send_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_rdma_send_complete to i32), ptr @__kstrtab_rds_rdma_send_complete, ptr @__kstrtabns_rds_rdma_send_complete }, section "___ksymtab_gpl+rds_rdma_send_complete", align 4
@__kstrtab_rds_atomic_send_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_atomic_send_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_atomic_send_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_atomic_send_complete to i32), ptr @__kstrtab_rds_atomic_send_complete, ptr @__kstrtabns_rds_atomic_send_complete }, section "___ksymtab_gpl+rds_atomic_send_complete", align 4
@__kstrtab_rds_send_path_drop_acked = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_send_path_drop_acked = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_send_path_drop_acked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_send_path_drop_acked to i32), ptr @__kstrtab_rds_send_path_drop_acked, ptr @__kstrtabns_rds_send_path_drop_acked }, section "___ksymtab_gpl+rds_send_path_drop_acked", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/send.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_rds_send_drop_acked = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_send_drop_acked = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_send_drop_acked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_send_drop_acked to i32), ptr @__kstrtab_rds_send_drop_acked, ptr @__kstrtabns_rds_send_drop_acked }, section "___ksymtab_gpl+rds_send_drop_acked", align 4
@rds_sendmsg._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rds_sendmsg = private unnamed_addr constant [12 x i8] c"rds_sendmsg\00", align 1
@rds_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.rds_sendmsg, ptr @.str, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015rdma_op %p conn xmit_rdma %p\0A\00", [32 x i8] zeroinitializer }, align 32
@rds_sendmsg._entry_ptr = internal global ptr @rds_sendmsg._entry, section ".printk_index", align 4
@rds_sendmsg._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rds_sendmsg._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.rds_sendmsg, ptr @.str, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015atomic_op %p conn xmit_atomic %p\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_sendmsg._entry_ptr.6 = internal global ptr @rds_sendmsg._entry.4, section ".printk_index", align 4
@rds_sendmsg.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.rds_sendmsg, ptr @.str, ptr @.str.8, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): sendmsg woke queued %d timeo %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_rds_send_ping = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_send_ping = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_send_ping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_send_ping to i32), ptr @__kstrtab_rds_send_ping, ptr @__kstrtabns_rds_send_ping }, section "___ksymtab_gpl+rds_send_ping", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rds_send_queue_rm.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_send_queue_rm\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): queued msg %p len %d, rs %p bytes %d seq %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 12]
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"send_batch_count\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 55, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 717, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1325, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1332, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1366, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [18 x i8] c"../net/rds/send.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 873, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_send_batch_count545, ptr @__UNIQUE_ID_send_batch_counttype544, ptr @__ksymtab_rds_atomic_send_complete, ptr @__ksymtab_rds_rdma_send_complete, ptr @__ksymtab_rds_send_drop_acked, ptr @__ksymtab_rds_send_path_drop_acked, ptr @__ksymtab_rds_send_path_reset, ptr @__ksymtab_rds_send_ping, ptr @__ksymtab_rds_send_xmit, ptr @__param_send_batch_count, ptr @rds_sendmsg._entry, ptr @rds_sendmsg._entry.4, ptr @rds_sendmsg._entry_ptr, ptr @rds_sendmsg._entry_ptr.6, ptr @send_batch_count, ptr @.str, ptr @rds_sendmsg._rs, ptr @.str.1, ptr @.str.2, ptr @rds_sendmsg._rs.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_batch_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sendmsg._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sendmsg._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sendmsg._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_path_reset(ptr noundef %cp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_xmit_rm = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cp_xmit_rm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_xmit_rm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cp_xmit_rm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cp_xmit_rm, align 4
  tail call void @rds_message_unmapped(ptr noundef nonnull %1) #9
  tail call void @rds_message_put(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cp_xmit_sg = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 2
  %3 = call ptr @memset(ptr %cp_xmit_sg, i32 0, i32 24)
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 8
  %c_map_queued = getelementptr inbounds %struct.rds_connection, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %c_map_queued to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %c_map_queued, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_max_unacked_packets to i32))
  %7 = load i32, ptr @rds_sysctl_max_unacked_packets, align 4
  %cp_unacked_packets = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 24
  %8 = ptrtoint ptr %cp_unacked_packets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cp_unacked_packets, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_max_unacked_bytes to i32))
  %9 = load i32, ptr @rds_sysctl_max_unacked_bytes, align 4
  %cp_unacked_bytes = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 25
  %10 = ptrtoint ptr %cp_unacked_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cp_unacked_bytes, align 8
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %cp_retrans = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 11
  %11 = ptrtoint ptr %cp_retrans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cp_retrans, align 8
  %cmp15.not49 = icmp eq ptr %12, %cp_retrans
  br i1 %cmp15.not49, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in50 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %12, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in50, align 4
  %m_flags = getelementptr i8, ptr %.pn.in50, i32 180
  tail call void @_set_bit(i32 noundef 4, ptr noundef %m_flags) #9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %m_flags) #9
  %cmp15.not = icmp eq ptr %.pn, %cp_retrans
  br i1 %cmp15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %14 = ptrtoint ptr %cp_retrans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %cp_retrans, align 4
  %cmp.i.not.i = icmp eq ptr %15, %cp_retrans
  br i1 %cmp.i.not.i, label %for.end.list_splice_init.exit_crit_edge, label %if.then.i

for.end.list_splice_init.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %cp_send_queue = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10
  %16 = ptrtoint ptr %cp_send_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cp_send_queue, align 4
  %prev2.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cp_send_queue, ptr %prev3.i.i, align 4
  store ptr %15, ptr %cp_send_queue, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  %23 = ptrtoint ptr %cp_retrans to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cp_retrans, ptr %cp_retrans, align 4
  store ptr %cp_retrans, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.end.list_splice_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_unmapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_send_xmit(ptr noundef %cp) #0 align 64 {
entry:
  %to_be_dropped = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_be_dropped) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %to_be_dropped, i32 0, i32 1
  %3 = ptrtoint ptr %to_be_dropped to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %to_be_dropped, ptr %to_be_dropped, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %to_be_dropped, ptr %2, align 4
  %cp_flags.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 16
  %cp_send_gen = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 15
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 14
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %cp_xmit_rm = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 1
  %c_map_queued = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 16
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 8
  %cp_send_queue = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10
  %cp_retrans = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 11
  %prev.i2.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 11, i32 1
  %cp_unacked_packets = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 24
  %cp_unacked_bytes = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 25
  %cp_xmit_rdma_sent = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 6
  %cp_xmit_atomic_sent = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 5
  %cp_xmit_data_sent = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 7
  %cp_xmit_hdr_off = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 3
  %cp_xmit_sg = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 2
  %cp_xmit_data_off = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 4
  %head.i.i704 = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 23, i32 1
  %cp_waitq.i706 = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 23
  br label %restart

restart:                                          ; preds = %if.then442.restart_crit_edge, %entry
  %same_rm.0 = phi i32 [ 0, %entry ], [ %same_rm.3, %if.then442.restart_crit_edge ]
  %call.i678 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %cp_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i678)
  %cmp.i.not = icmp eq i32 %call.i678, 0
  br i1 %cmp.i.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %9 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @rds_stats to i32)
  %15 = inttoptr i32 %add to ptr
  %s_send_lock_contention = getelementptr inbounds %struct.rds_statistics, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %s_send_lock_contention to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_send_lock_contention, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %s_send_lock_contention, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %18 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i655 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i655 to ptr
  %preempt_count.i.i656 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i656 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i656, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i656, align 4
  br label %cleanup484

if.end:                                           ; preds = %restart
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.not.i = icmp eq i32 %27, 0
  br i1 %cmp.i.not.i, label %if.end.if.then16_crit_edge, label %lor.rhs.i

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.rhs.i:                                        ; preds = %if.end
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end20_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.do.end20_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = call zeroext i1 %31(ptr noundef %23) #9
  br i1 %call5.i, label %rds_destroy_pending.exit.if.then16_crit_edge, label %rds_destroy_pending.exit.do.end20_crit_edge

rds_destroy_pending.exit.do.end20_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

rds_destroy_pending.exit.if.then16_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %rds_destroy_pending.exit.if.then16_crit_edge, %if.end.if.then16_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %cp_flags.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %32 = ptrtoint ptr %head.i.i704 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %head.i.i704, align 4
  %cmp.i.i.not.i = icmp eq ptr %33, %head.i.i704
  br i1 %cmp.i.i.not.i, label %if.then16.cleanup484_crit_edge, label %if.then.i680

if.then16.cleanup484_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup484

if.then.i680:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %cp_waitq.i706, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %cleanup484

do.end20:                                         ; preds = %rds_destroy_pending.exit.do.end20_crit_edge, %lor.rhs.i.do.end20_crit_edge
  %34 = ptrtoint ptr %cp_send_gen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %cp_send_gen, align 8
  %add22 = add i32 %35, 1
  store volatile i32 %add22, ptr %cp_send_gen, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #9
  %36 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i681.not = icmp eq i32 %37, 3
  br i1 %cmp.i681.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %do.end20
  call void @_clear_bit(i32 noundef 2, ptr noundef %cp_flags.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %38 = ptrtoint ptr %head.i.i704 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %head.i.i704, align 4
  %cmp.i.i.not.i685 = icmp eq ptr %39, %head.i.i704
  br i1 %cmp.i.i.not.i685, label %if.then35.cleanup484_crit_edge, label %if.then.i687

if.then35.cleanup484_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup484

if.then.i687:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %cp_waitq.i706, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %cleanup484

if.end36:                                         ; preds = %do.end20
  %40 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c_trans, align 4
  %xmit_path_prepare = getelementptr inbounds %struct.rds_transport, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %xmit_path_prepare to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xmit_path_prepare, align 4
  %tobool37.not = icmp eq ptr %43, null
  br i1 %tobool37.not, label %if.end36.while.cond.preheader_crit_edge, label %if.then38

if.end36.while.cond.preheader_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void %43(ptr noundef %cp) #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then38, %if.end36.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %same_rm.1 = phi i32 [ %same_rm.0, %while.cond.preheader ], [ %same_rm.1.be, %while.cond.backedge ]
  %batch_count.0 = phi i32 [ 0, %while.cond.preheader ], [ %batch_count.0.be, %while.cond.backedge ]
  %44 = ptrtoint ptr %cp_xmit_rm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cp_xmit_rm, align 4
  %tobool42.not = icmp eq ptr %45, null
  br i1 %tobool42.not, label %land.lhs.true, label %if.else

if.else:                                          ; preds = %while.cond
  %inc44 = add i32 %same_rm.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc44)
  %cmp = icmp sgt i32 %inc44, 4095
  br i1 %cmp, label %do.body47, label %if.else.if.end179_crit_edge

if.else.if.end179_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

do.body47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %46 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i657 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i657 to ptr
  %preempt_count.i.i658 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i658 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i658, align 4
  %add.i659 = add i32 %49, 1
  store volatile i32 %add.i659, ptr %preempt_count.i.i658, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %50 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i689 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i689 to ptr
  %cpu59 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu59, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %55, ptrtoint (ptr @rds_stats to i32)
  %56 = inttoptr i32 %add61 to ptr
  %s_send_stuck_rm = getelementptr inbounds %struct.rds_statistics, ptr %56, i32 0, i32 35
  %57 = ptrtoint ptr %s_send_stuck_rm to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %s_send_stuck_rm, align 8
  %inc62 = add i64 %58, 1
  store i64 %inc62, ptr %s_send_stuck_rm, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %59 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i660 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i660 to ptr
  %preempt_count.i.i661 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i661 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i661, align 4
  %sub.i662 = add i32 %62, -1
  store volatile i32 %sub.i662, ptr %preempt_count.i.i661, align 4
  br label %over_batch

land.lhs.true:                                    ; preds = %while.cond
  %call71 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %c_map_queued) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true.if.then84_crit_edge, label %if.then73

land.lhs.true.if.then84_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then73:                                        ; preds = %land.lhs.true
  %call74 = call ptr @rds_cong_update_alloc(ptr noundef %1) #9
  %cmp.i690 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i690, label %if.then76, label %if.end82

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %call74 to i32
  br label %over_batch

if.end82:                                         ; preds = %if.then73
  %data = getelementptr inbounds %struct.rds_message, ptr %call74, i32 0, i32 14, i32 2
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %data, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %data, align 8
  %i_conn_path = getelementptr inbounds %struct.rds_message, ptr %call74, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %i_conn_path to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %cp, ptr %i_conn_path, align 8
  %66 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cp, align 8
  %i_conn = getelementptr inbounds %struct.rds_message, ptr %call74, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %i_conn, align 4
  %69 = ptrtoint ptr %cp_xmit_rm to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call74, ptr %cp_xmit_rm, align 4
  %tobool83.not = icmp eq ptr %call74, null
  br i1 %tobool83.not, label %if.end82.if.then84_crit_edge, label %if.end82.if.end179_crit_edge

if.end82.if.end179_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.end82.if.then84_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then84:                                        ; preds = %if.end82.if.then84_crit_edge, %land.lhs.true.if.then84_crit_edge
  %inc85 = add i32 %batch_count.0, 1
  %70 = load i32, ptr @send_batch_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc85, i32 %70)
  %cmp86.not = icmp slt i32 %inc85, %70
  br i1 %cmp86.not, label %do.body90, label %if.then84.over_batch_crit_edge

if.then84.over_batch_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %over_batch

do.body90:                                        ; preds = %if.then84
  %call94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %71 = ptrtoint ptr %cp_send_queue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %cp_send_queue, align 4
  %cmp.i691.not = icmp eq ptr %72, %cp_send_queue
  br i1 %cmp.i691.not, label %if.end105.thread, label %if.then101

if.end105.thread:                                 ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call94) #9
  br label %over_batch

if.then101:                                       ; preds = %do.body90
  %add.ptr = getelementptr i8, ptr %72, i32 -12
  call void @rds_message_addref(ptr noundef %add.ptr) #9
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %72) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then101.__list_del_entry.exit.i_crit_edge

if.then101.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then101.__list_del_entry.exit.i_crit_edge
  %79 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i693 = call zeroext i1 @__list_add_valid(ptr noundef %72, ptr noundef %80, ptr noundef %cp_retrans) #9
  br i1 %call.i.i.i693, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end105_crit_edge

__list_del_entry.exit.i.if.end105_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %72, ptr %prev.i2.i, align 4
  %82 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cp_retrans, ptr %72, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %72, ptr %80, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end105_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call94) #9
  %tobool107.not = icmp eq ptr %add.ptr, null
  br i1 %tobool107.not, label %if.end105.over_batch_crit_edge, label %if.end109

if.end105.over_batch_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %over_batch

if.end109:                                        ; preds = %if.end105
  %m_flags = getelementptr i8, ptr %72, i32 180
  %85 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %m_flags, align 4
  %87 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool111.not = icmp eq i32 %87, 0
  br i1 %tobool111.not, label %lor.lhs.false, label %if.end109.do.body121_crit_edge

if.end109.do.body121_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

lor.lhs.false:                                    ; preds = %if.end109
  %op_active = getelementptr i8, ptr %72, i32 396
  %88 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load112 = load i8, ptr %op_active, align 8
  %89 = and i8 %bf.load112, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool114.not = icmp eq i8 %89, 0
  br i1 %tobool114.not, label %lor.lhs.false.if.end141_crit_edge, label %land.lhs.true115

lor.lhs.false.if.end141_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

land.lhs.true115:                                 ; preds = %lor.lhs.false
  %90 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %m_flags, align 4
  %92 = and i32 %91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool118.not = icmp eq i32 %92, 0
  br i1 %tobool118.not, label %land.lhs.true115.if.end141_crit_edge, label %land.lhs.true115.do.body121_crit_edge

land.lhs.true115.do.body121_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

land.lhs.true115.if.end141_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

do.body121:                                       ; preds = %land.lhs.true115.do.body121_crit_edge, %if.end109.do.body121_crit_edge
  %call129 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %call135 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %m_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body121.cleanup_crit_edge, label %if.then137

do.body121.cleanup_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then137:                                       ; preds = %do.body121
  %call.i.i694 = call zeroext i1 @__list_del_entry_valid(ptr noundef %72) #9
  br i1 %call.i.i694, label %if.end.i.i697, label %if.then137.__list_del_entry.exit.i699_crit_edge

if.then137.__list_del_entry.exit.i699_crit_edge:  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i699

if.end.i.i697:                                    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i695 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i695 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i695, align 4
  %95 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %72, align 4
  %prev1.i.i.i696 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i696 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i696, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %__list_del_entry.exit.i699

__list_del_entry.exit.i699:                       ; preds = %if.end.i.i697, %if.then137.__list_del_entry.exit.i699_crit_edge
  %99 = ptrtoint ptr %to_be_dropped to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %to_be_dropped, align 4
  %call.i.i.i698 = call zeroext i1 @__list_add_valid(ptr noundef %72, ptr noundef nonnull %to_be_dropped, ptr noundef %100) #9
  br i1 %call.i.i.i698, label %if.end.i.i.i701, label %__list_del_entry.exit.i699.cleanup_crit_edge

__list_del_entry.exit.i699.cleanup_crit_edge:     ; preds = %__list_del_entry.exit.i699
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i701:                                  ; preds = %__list_del_entry.exit.i699
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %72, ptr %prev1.i.i2.i, align 4
  %102 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %72, align 4
  %prev3.i.i.i700 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i700 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %to_be_dropped, ptr %prev3.i.i.i700, align 4
  %104 = ptrtoint ptr %to_be_dropped to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %72, ptr %to_be_dropped, align 4
  br label %cleanup

if.end141:                                        ; preds = %land.lhs.true115.if.end141_crit_edge, %lor.lhs.false.if.end141_crit_edge
  %h_len = getelementptr i8, ptr %72, i32 52
  %105 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %h_len, align 8
  %107 = ptrtoint ptr %cp_unacked_packets to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cp_unacked_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp143 = icmp eq i32 %108, 0
  br i1 %cmp143, label %if.end141.if.then148_crit_edge, label %lor.lhs.false145

if.end141.if.then148_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then148

lor.lhs.false145:                                 ; preds = %if.end141
  %109 = ptrtoint ptr %cp_unacked_bytes to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cp_unacked_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %106)
  %cmp146 = icmp ult i32 %110, %106
  br i1 %cmp146, label %lor.lhs.false145.if.then148_crit_edge, label %if.else174

lor.lhs.false145.if.then148_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then148

if.then148:                                       ; preds = %lor.lhs.false145.if.then148_crit_edge, %if.end141.if.then148_crit_edge
  call void @_set_bit(i32 noundef 4, ptr noundef %m_flags) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_max_unacked_packets to i32))
  %111 = load i32, ptr @rds_sysctl_max_unacked_packets, align 4
  %112 = ptrtoint ptr %cp_unacked_packets to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %cp_unacked_packets, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_max_unacked_bytes to i32))
  %113 = load i32, ptr @rds_sysctl_max_unacked_bytes, align 4
  %114 = ptrtoint ptr %cp_unacked_bytes to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %cp_unacked_bytes, align 8
  %115 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i665 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i665 to ptr
  %preempt_count.i.i666 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i666 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i666, align 4
  %add.i667 = add i32 %118, 1
  store volatile i32 %add.i667, ptr %preempt_count.i.i666, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %119 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i702 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i702 to ptr
  %cpu165 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %cpu165 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu165, align 4
  %arrayidx166 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx166, align 4
  %add167 = add i32 %124, ptrtoint (ptr @rds_stats to i32)
  %125 = inttoptr i32 %add167 to ptr
  %s_send_ack_required = getelementptr inbounds %struct.rds_statistics, ptr %125, i32 0, i32 20
  %126 = ptrtoint ptr %s_send_ack_required to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %s_send_ack_required, align 8
  %inc168 = add i64 %127, 1
  store i64 %inc168, ptr %s_send_ack_required, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %128 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i668 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i668 to ptr
  %preempt_count.i.i669 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %preempt_count.i.i669 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %preempt_count.i.i669, align 4
  %sub.i670 = add i32 %131, -1
  store volatile i32 %sub.i670, ptr %preempt_count.i.i669, align 4
  br label %cleanup.thread754

if.else174:                                       ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %110, %106
  %132 = ptrtoint ptr %cp_unacked_bytes to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub, ptr %cp_unacked_bytes, align 8
  %dec = add i32 %108, -1
  %133 = ptrtoint ptr %cp_unacked_packets to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %dec, ptr %cp_unacked_packets, align 4
  br label %cleanup.thread754

cleanup.thread754:                                ; preds = %if.else174, %if.then148
  %134 = ptrtoint ptr %cp_xmit_rm to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr, ptr %cp_xmit_rm, align 4
  br label %if.end179

cleanup:                                          ; preds = %if.end.i.i.i701, %__list_del_entry.exit.i699.cleanup_crit_edge, %do.body121.cleanup_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call129) #9
  br label %while.cond.backedge

if.end179:                                        ; preds = %cleanup.thread754, %if.end82.if.end179_crit_edge, %if.else.if.end179_crit_edge
  %same_rm.2737742 = phi i32 [ 0, %if.end82.if.end179_crit_edge ], [ 0, %cleanup.thread754 ], [ %inc44, %if.else.if.end179_crit_edge ]
  %batch_count.1 = phi i32 [ %batch_count.0, %if.end82.if.end179_crit_edge ], [ %inc85, %cleanup.thread754 ], [ %batch_count.0, %if.else.if.end179_crit_edge ]
  %rm.3 = phi ptr [ %call74, %if.end82.if.end179_crit_edge ], [ %add.ptr, %cleanup.thread754 ], [ %45, %if.else.if.end179_crit_edge ]
  %135 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14
  %rdma180 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 1
  %op_active181 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 1, i32 2
  %136 = ptrtoint ptr %op_active181 to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load182 = load i8, ptr %op_active181, align 8
  %137 = and i8 %bf.load182, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool186.not = icmp eq i8 %137, 0
  br i1 %tobool186.not, label %if.end179.if.end200_crit_edge, label %land.lhs.true187

if.end179.if.end200_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

land.lhs.true187:                                 ; preds = %if.end179
  %138 = ptrtoint ptr %cp_xmit_rdma_sent to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cp_xmit_rdma_sent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool188.not = icmp eq i32 %139, 0
  br i1 %tobool188.not, label %if.then189, label %land.lhs.true187.if.end200_crit_edge

land.lhs.true187.if.end200_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then189:                                       ; preds = %land.lhs.true187
  %m_final_op = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 13
  %140 = ptrtoint ptr %m_final_op to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %rdma180, ptr %m_final_op, align 8
  %m_flags191 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 6
  call void @_set_bit(i32 noundef 6, ptr noundef %m_flags191) #9
  %141 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %c_trans, align 4
  %xmit_rdma = getelementptr inbounds %struct.rds_transport, ptr %142, i32 0, i32 13
  %143 = ptrtoint ptr %xmit_rdma to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %xmit_rdma, align 4
  %call194 = call i32 %144(ptr noundef %1, ptr noundef %rdma180) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end198, label %if.then196

if.then196:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 6, ptr noundef %m_flags191) #9
  %m_flush_wait = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 8
  call void @__wake_up(ptr noundef %m_flush_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %over_batch

if.end198:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %cp_xmit_rdma_sent to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %cp_xmit_rdma_sent, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.end198, %land.lhs.true187.if.end200_crit_edge, %if.end179.if.end200_crit_edge
  %op_active201 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 0, i32 4
  %146 = ptrtoint ptr %op_active201 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load202 = load i8, ptr %op_active201, align 8
  %147 = and i8 %bf.load202, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool206.not = icmp eq i8 %147, 0
  br i1 %tobool206.not, label %if.end200.if.end222_crit_edge, label %land.lhs.true207

if.end200.if.end222_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

land.lhs.true207:                                 ; preds = %if.end200
  %148 = ptrtoint ptr %cp_xmit_atomic_sent to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cp_xmit_atomic_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool208.not = icmp eq i32 %149, 0
  br i1 %tobool208.not, label %if.then209, label %land.lhs.true207.if.end222_crit_edge

land.lhs.true207.if.end222_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then209:                                       ; preds = %land.lhs.true207
  %m_final_op211 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 13
  %150 = ptrtoint ptr %m_final_op211 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %135, ptr %m_final_op211, align 8
  %m_flags212 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 6
  call void @_set_bit(i32 noundef 6, ptr noundef %m_flags212) #9
  %151 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %c_trans, align 4
  %xmit_atomic = getelementptr inbounds %struct.rds_transport, ptr %152, i32 0, i32 14
  %153 = ptrtoint ptr %xmit_atomic to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %xmit_atomic, align 4
  %call215 = call i32 %154(ptr noundef %1, ptr noundef %135) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end220, label %if.then217

if.then217:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 6, ptr noundef %m_flags212) #9
  %m_flush_wait219 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 8
  call void @__wake_up(ptr noundef %m_flush_wait219, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %over_batch

if.end220:                                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %cp_xmit_atomic_sent to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %cp_xmit_atomic_sent, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.end220, %land.lhs.true207.if.end222_crit_edge, %if.end200.if.end222_crit_edge
  %data223 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 2
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 2, i32 1
  %156 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp224 = icmp eq i32 %157, 0
  br i1 %cmp224, label %if.then226, label %if.end222.if.end285_crit_edge

if.end222.if.end285_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

if.then226:                                       ; preds = %if.end222
  %158 = ptrtoint ptr %op_active201 to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load229 = load i8, ptr %op_active201, align 8
  %159 = and i8 %bf.load229, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool233.not = icmp eq i8 %159, 0
  br i1 %tobool233.not, label %lor.rhs, label %if.then226.lor.end_crit_edge

if.then226.lor.end_crit_edge:                     ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %op_active181 to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load236 = load i8, ptr %op_active181, align 8
  %161 = and i8 %bf.load236, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool240 = icmp ne i8 %161, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then226.lor.end_crit_edge
  %162 = phi i1 [ true, %if.then226.lor.end_crit_edge ], [ %tobool240, %lor.rhs ]
  %163 = and i8 %bf.load229, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %163)
  %164 = icmp eq i8 %163, 8
  %165 = ptrtoint ptr %op_active181 to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load259 = load i8, ptr %op_active181, align 8
  %166 = and i8 %bf.load259, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %166)
  %167 = icmp eq i8 %166, 2
  %.not = xor i1 %162, true
  %168 = select i1 %.not, i1 true, i1 %167
  %or.cond654 = select i1 %168, i1 true, i1 %164
  br i1 %or.cond654, label %lor.end.if.end285_crit_edge, label %land.lhs.true277

lor.end.if.end285_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

land.lhs.true277:                                 ; preds = %lor.end
  %m_rdma_cookie = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 10
  %169 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %m_rdma_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %170)
  %tobool278.not = icmp eq i64 %170, 0
  br i1 %tobool278.not, label %if.end285.thread, label %land.lhs.true277.if.end285_crit_edge

land.lhs.true277.if.end285_crit_edge:             ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

if.end285.thread:                                 ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %data223 to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load281 = load i8, ptr %data223, align 8
  %bf.clear282 = and i8 %bf.load281, 127
  store i8 %bf.clear282, ptr %data223, align 8
  br label %if.then383

if.end285:                                        ; preds = %land.lhs.true277.if.end285_crit_edge, %lor.end.if.end285_crit_edge, %if.end222.if.end285_crit_edge
  %172 = ptrtoint ptr %data223 to i32
  call void @__asan_load1_noabort(i32 %172)
  %bf.load287.pr = load i8, ptr %data223, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load287.pr)
  %tobool290.not = icmp sgt i8 %bf.load287.pr, -1
  br i1 %tobool290.not, label %if.end285.if.then383_crit_edge, label %land.lhs.true291

if.end285.if.then383_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then383

land.lhs.true291:                                 ; preds = %if.end285
  %173 = ptrtoint ptr %cp_xmit_data_sent to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cp_xmit_data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool292.not = icmp eq i32 %174, 0
  br i1 %tobool292.not, label %if.then293, label %land.lhs.true291.if.then383_crit_edge

land.lhs.true291.if.then383_crit_edge:            ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then383

if.then293:                                       ; preds = %land.lhs.true291
  %m_final_op295 = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 13
  %175 = ptrtoint ptr %m_final_op295 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %data223, ptr %m_final_op295, align 8
  %176 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %c_trans, align 4
  %xmit = getelementptr inbounds %struct.rds_transport, ptr %177, i32 0, i32 12
  %178 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %xmit, align 4
  %180 = ptrtoint ptr %cp_xmit_hdr_off to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cp_xmit_hdr_off, align 4
  %182 = ptrtoint ptr %cp_xmit_sg to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cp_xmit_sg, align 8
  %184 = ptrtoint ptr %cp_xmit_data_off to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cp_xmit_data_off, align 8
  %call297 = call i32 %179(ptr noundef %1, ptr noundef nonnull %rm.3, i32 noundef %181, i32 noundef %183, i32 noundef %185) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call297)
  %cmp298 = icmp slt i32 %call297, 1
  br i1 %cmp298, label %if.then293.over_batch_crit_edge, label %if.end301

if.then293.over_batch_crit_edge:                  ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #11
  br label %over_batch

if.end301:                                        ; preds = %if.then293
  %186 = ptrtoint ptr %cp_xmit_hdr_off to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cp_xmit_hdr_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %187)
  %cmp303 = icmp ult i32 %187, 48
  br i1 %cmp303, label %if.end314, label %if.end301.while.body320.preheader_crit_edge

if.end301.while.body320.preheader_crit_edge:      ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body320.preheader

if.end314:                                        ; preds = %if.end301
  %sub307 = sub nuw nsw i32 48, %187
  %188 = call i32 @llvm.umin.i32(i32 %call297, i32 %sub307)
  %add312 = add nuw nsw i32 %188, %187
  %189 = ptrtoint ptr %cp_xmit_hdr_off to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %add312, ptr %cp_xmit_hdr_off, align 4
  %sub313 = sub nsw i32 %call297, %188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub313)
  %tobool319.not792 = icmp eq i32 %sub313, 0
  br i1 %tobool319.not792, label %if.end314.while.end_crit_edge, label %if.end314.while.body320.preheader_crit_edge

if.end314.while.body320.preheader_crit_edge:      ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body320.preheader

if.end314.while.end_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body320.preheader:                          ; preds = %if.end314.while.body320.preheader_crit_edge, %if.end301.while.body320.preheader_crit_edge
  %ret.4817 = phi i32 [ %sub313, %if.end314.while.body320.preheader_crit_edge ], [ %call297, %if.end301.while.body320.preheader_crit_edge ]
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm.3, i32 0, i32 14, i32 2, i32 6
  %190 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %op_sg, align 8
  %192 = ptrtoint ptr %cp_xmit_sg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cp_xmit_sg, align 8
  %arrayidx317 = getelementptr %struct.scatterlist, ptr %191, i32 %193
  br label %while.body320

while.body320:                                    ; preds = %if.end361.while.body320_crit_edge, %while.body320.preheader
  %sg.0794 = phi ptr [ %sg.1, %if.end361.while.body320_crit_edge ], [ %arrayidx317, %while.body320.preheader ]
  %ret.5793 = phi i32 [ %sub332, %if.end361.while.body320_crit_edge ], [ %ret.4817, %while.body320.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0794, i32 0, i32 2
  %194 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %length, align 4
  %196 = ptrtoint ptr %cp_xmit_data_off to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cp_xmit_data_off, align 8
  %sub322 = sub i32 %195, %197
  %198 = call i32 @llvm.smin.i32(i32 %ret.5793, i32 %sub322)
  %add331 = add i32 %198, %197
  %199 = ptrtoint ptr %cp_xmit_data_off to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %add331, ptr %cp_xmit_data_off, align 8
  %sub332 = sub i32 %ret.5793, %198
  %200 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add331, i32 %201)
  %cmp335 = icmp eq i32 %add331, %201
  br i1 %cmp335, label %if.then337, label %while.body320.if.end361_crit_edge

while.body320.if.end361_crit_edge:                ; preds = %while.body320
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end361

if.then337:                                       ; preds = %while.body320
  %202 = ptrtoint ptr %cp_xmit_data_off to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %cp_xmit_data_off, align 8
  %203 = ptrtoint ptr %cp_xmit_sg to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cp_xmit_sg, align 8
  %inc340 = add i32 %204, 1
  store i32 %inc340, ptr %cp_xmit_sg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub332)
  %cmp342.not = icmp eq i32 %sub332, 0
  br i1 %cmp342.not, label %if.then337.while.endthread-pre-split_crit_edge, label %land.rhs

if.then337.while.endthread-pre-split_crit_edge:   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.endthread-pre-split

land.rhs:                                         ; preds = %if.then337
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sg.0794, i32 1
  %205 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc340, i32 %206)
  %cmp347 = icmp eq i32 %inc340, %206
  br i1 %cmp347, label %do.body352, label %land.rhs.if.end361_crit_edge, !prof !68

land.rhs.if.end361_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end361

do.body352:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

if.end361:                                        ; preds = %land.rhs.if.end361_crit_edge, %while.body320.if.end361_crit_edge
  %sg.1 = phi ptr [ %incdec.ptr, %land.rhs.if.end361_crit_edge ], [ %sg.0794, %while.body320.if.end361_crit_edge ]
  %tobool319.not = icmp eq i32 %sub332, 0
  br i1 %tobool319.not, label %if.end361.while.endthread-pre-split_crit_edge, label %if.end361.while.body320_crit_edge

if.end361.while.body320_crit_edge:                ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body320

if.end361.while.endthread-pre-split_crit_edge:    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.endthread-pre-split

while.endthread-pre-split:                        ; preds = %if.end361.while.endthread-pre-split_crit_edge, %if.then337.while.endthread-pre-split_crit_edge
  %207 = ptrtoint ptr %cp_xmit_hdr_off to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr = load i32, ptr %cp_xmit_hdr_off, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end314.while.end_crit_edge
  %208 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %add312, %if.end314.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %208)
  %cmp363 = icmp eq i32 %208, 48
  br i1 %cmp363, label %land.lhs.true365, label %while.end.if.end374_crit_edge

while.end.if.end374_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end374

land.lhs.true365:                                 ; preds = %while.end
  %209 = ptrtoint ptr %cp_xmit_sg to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cp_xmit_sg, align 8
  %211 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %212)
  %cmp369 = icmp eq i32 %210, %212
  br i1 %cmp369, label %if.then371, label %land.lhs.true365.if.end374_crit_edge

land.lhs.true365.if.end374_crit_edge:             ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end374

if.then371:                                       ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %cp_xmit_data_sent to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %cp_xmit_data_sent, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then371, %land.lhs.true365.if.end374_crit_edge, %while.end.if.end374_crit_edge
  %214 = ptrtoint ptr %data223 to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load376.pr.pr = load i8, ptr %data223, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load376.pr.pr)
  %tobool379.not = icmp sgt i8 %bf.load376.pr.pr, -1
  br i1 %tobool379.not, label %if.end374.if.then383_crit_edge, label %lor.lhs.false380

if.end374.if.then383_crit_edge:                   ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then383

lor.lhs.false380:                                 ; preds = %if.end374
  %215 = ptrtoint ptr %cp_xmit_data_sent to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pr822 = load i32, ptr %cp_xmit_data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr822)
  %tobool382.not = icmp eq i32 %.pr822, 0
  br i1 %tobool382.not, label %lor.lhs.false380.while.cond.backedge_crit_edge, label %lor.lhs.false380.if.then383_crit_edge

lor.lhs.false380.if.then383_crit_edge:            ; preds = %lor.lhs.false380
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then383

lor.lhs.false380.while.cond.backedge_crit_edge:   ; preds = %lor.lhs.false380
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then383, %lor.lhs.false380.while.cond.backedge_crit_edge, %cleanup
  %same_rm.1.be = phi i32 [ 0, %cleanup ], [ %same_rm.2737742, %if.then383 ], [ %same_rm.2737742, %lor.lhs.false380.while.cond.backedge_crit_edge ]
  %batch_count.0.be = phi i32 [ %inc85, %cleanup ], [ %batch_count.1, %if.then383 ], [ %batch_count.1, %lor.lhs.false380.while.cond.backedge_crit_edge ]
  br label %while.cond

if.then383:                                       ; preds = %lor.lhs.false380.if.then383_crit_edge, %if.end374.if.then383_crit_edge, %land.lhs.true291.if.then383_crit_edge, %if.end285.if.then383_crit_edge, %if.end285.thread
  %216 = call ptr @memset(ptr %cp_xmit_rm, i32 0, i32 28)
  call void @rds_message_put(ptr noundef %rm.3) #9
  br label %while.cond.backedge

over_batch:                                       ; preds = %if.then293.over_batch_crit_edge, %if.then217, %if.then196, %if.end105.over_batch_crit_edge, %if.end105.thread, %if.then84.over_batch_crit_edge, %if.then76, %do.body47
  %same_rm.3 = phi i32 [ %inc44, %do.body47 ], [ %same_rm.2737742, %if.then217 ], [ %same_rm.2737742, %if.then196 ], [ 0, %if.then76 ], [ 0, %if.end105.thread ], [ 0, %if.end105.over_batch_crit_edge ], [ 0, %if.then84.over_batch_crit_edge ], [ %same_rm.2737742, %if.then293.over_batch_crit_edge ]
  %batch_count.2 = phi i32 [ %batch_count.0, %do.body47 ], [ %batch_count.1, %if.then217 ], [ %batch_count.1, %if.then196 ], [ %batch_count.0, %if.then76 ], [ %inc85, %if.end105.thread ], [ %inc85, %if.end105.over_batch_crit_edge ], [ %inc85, %if.then84.over_batch_crit_edge ], [ %batch_count.1, %if.then293.over_batch_crit_edge ]
  %ret.7 = phi i32 [ -11, %do.body47 ], [ %call215, %if.then217 ], [ %call194, %if.then196 ], [ %63, %if.then76 ], [ 0, %if.end105.thread ], [ 0, %if.end105.over_batch_crit_edge ], [ 0, %if.then84.over_batch_crit_edge ], [ %call297, %if.then293.over_batch_crit_edge ]
  %217 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %c_trans, align 4
  %xmit_path_complete = getelementptr inbounds %struct.rds_transport, ptr %218, i32 0, i32 11
  %219 = ptrtoint ptr %xmit_path_complete to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %xmit_path_complete, align 4
  %tobool394.not = icmp eq ptr %220, null
  br i1 %tobool394.not, label %over_batch.if.end398_crit_edge, label %if.then395

over_batch.if.end398_crit_edge:                   ; preds = %over_batch
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end398

if.then395:                                       ; preds = %over_batch
  call void @__sanitizer_cov_trace_pc() #11
  call void %220(ptr noundef %cp) #9
  br label %if.end398

if.end398:                                        ; preds = %if.then395, %over_batch.if.end398_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %cp_flags.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %221 = ptrtoint ptr %head.i.i704 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile ptr, ptr %head.i.i704, align 4
  %cmp.i.i.not.i705 = icmp eq ptr %222, %head.i.i704
  br i1 %cmp.i.i.not.i705, label %if.end398.release_in_xmit.exit708_crit_edge, label %if.then.i707

if.end398.release_in_xmit.exit708_crit_edge:      ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_in_xmit.exit708

if.then.i707:                                     ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %cp_waitq.i706, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %release_in_xmit.exit708

release_in_xmit.exit708:                          ; preds = %if.then.i707, %if.end398.release_in_xmit.exit708_crit_edge
  %223 = ptrtoint ptr %to_be_dropped to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile ptr, ptr %to_be_dropped, align 4
  %cmp.i709.not = icmp eq ptr %224, %to_be_dropped
  br i1 %cmp.i709.not, label %release_in_xmit.exit708.if.end416_crit_edge, label %for.cond.preheader

release_in_xmit.exit708.if.end416_crit_edge:      ; preds = %release_in_xmit.exit708
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

for.cond.preheader:                               ; preds = %release_in_xmit.exit708
  %225 = ptrtoint ptr %to_be_dropped to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pn795 = load ptr, ptr %to_be_dropped, align 4
  %cmp407.not796 = icmp eq ptr %.pn795, %to_be_dropped
  br i1 %cmp407.not796, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn797 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn795, %for.cond.preheader.for.body_crit_edge ]
  %rm.4 = getelementptr i8, ptr %.pn797, i32 -12
  call void @rds_message_put(ptr noundef %rm.4) #9
  %226 = ptrtoint ptr %.pn797 to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pn = load ptr, ptr %.pn797, align 4
  %cmp407.not = icmp eq ptr %.pn, %to_be_dropped
  br i1 %cmp407.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call fastcc void @rds_send_remove_from_sock(ptr noundef nonnull %to_be_dropped, i32 noundef 3)
  br label %if.end416

if.end416:                                        ; preds = %for.end, %release_in_xmit.exit708.if.end416_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %cmp417 = icmp eq i32 %ret.7, 0
  br i1 %cmp417, label %if.then419, label %if.end416.cleanup484_crit_edge

if.end416.cleanup484_crit_edge:                   ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup484

if.then419:                                       ; preds = %if.end416
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  %227 = ptrtoint ptr %cp_send_gen to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %cp_send_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %228)
  %cmp431.not = icmp eq i32 %add22, %228
  %229 = ptrtoint ptr %c_map_queued to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %c_map_queued, align 4
  %and1.i671 = and i32 %230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i671)
  %tobool435.not = icmp eq i32 %and1.i671, 0
  br i1 %tobool435.not, label %lor.lhs.false436, label %land.lhs.true440

lor.lhs.false436:                                 ; preds = %if.then419
  %231 = ptrtoint ptr %cp_send_queue to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile ptr, ptr %cp_send_queue, align 4
  %cmp.i711.not = icmp eq ptr %232, %cp_send_queue
  %cmp431.not.not = xor i1 %cmp431.not, true
  %brmerge = select i1 %cmp.i711.not, i1 true, i1 %cmp431.not.not
  br i1 %brmerge, label %if.else453, label %lor.lhs.false436.if.then442_crit_edge

lor.lhs.false436.if.then442_crit_edge:            ; preds = %lor.lhs.false436
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then442

land.lhs.true440:                                 ; preds = %if.then419
  br i1 %cmp431.not, label %land.lhs.true440.if.then442_crit_edge, label %land.lhs.true440.do.body457_crit_edge

land.lhs.true440.do.body457_crit_edge:            ; preds = %land.lhs.true440
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body457

land.lhs.true440.if.then442_crit_edge:            ; preds = %land.lhs.true440
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then442

if.then442:                                       ; preds = %land.lhs.true440.if.then442_crit_edge, %lor.lhs.false436.if.then442_crit_edge
  %233 = load i32, ptr @send_batch_count, align 4
  %cmp443 = icmp slt i32 %batch_count.2, %233
  br i1 %cmp443, label %if.then442.restart_crit_edge, label %if.end446

if.then442.restart_crit_edge:                     ; preds = %if.then442
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart

if.end446:                                        ; preds = %if.then442
  %234 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i = and i32 %234, -16384
  %235 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %237, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end446.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end446.rcu_read_lock.exit_crit_edge:           ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end446
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end446.rcu_read_lock.exit_crit_edge
  %238 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cp, align 8
  %c_net.i.i713 = getelementptr inbounds %struct.rds_connection, ptr %239, i32 0, i32 13
  %240 = ptrtoint ptr %c_net.i.i713 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %c_net.i.i713, align 4
  %count.i.i714 = getelementptr inbounds %struct.net, ptr %241, i32 0, i32 14, i32 3
  %call.i.i.i.i.i715 = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i714, i32 noundef 4) #9
  %242 = ptrtoint ptr %count.i.i714 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %count.i.i714, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp.i.not.i716 = icmp eq i32 %243, 0
  br i1 %cmp.i.not.i716, label %rcu_read_lock.exit.if.end452_crit_edge, label %lor.rhs.i720

rcu_read_lock.exit.if.end452_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end452

lor.rhs.i720:                                     ; preds = %rcu_read_lock.exit
  %c_trans.i717 = getelementptr inbounds %struct.rds_connection, ptr %239, i32 0, i32 8
  %244 = ptrtoint ptr %c_trans.i717 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %c_trans.i717, align 4
  %t_unloading.i718 = getelementptr inbounds %struct.rds_transport, ptr %245, i32 0, i32 27
  %246 = ptrtoint ptr %t_unloading.i718 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %t_unloading.i718, align 4
  %tobool2.not.i719 = icmp eq ptr %247, null
  br i1 %tobool2.not.i719, label %lor.rhs.i720.if.else450_crit_edge, label %rds_destroy_pending.exit723

lor.rhs.i720.if.else450_crit_edge:                ; preds = %lor.rhs.i720
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else450

rds_destroy_pending.exit723:                      ; preds = %lor.rhs.i720
  %call5.i721 = call zeroext i1 %247(ptr noundef %239) #9
  br i1 %call5.i721, label %rds_destroy_pending.exit723.if.end452_crit_edge, label %rds_destroy_pending.exit723.if.else450_crit_edge

rds_destroy_pending.exit723.if.else450_crit_edge: ; preds = %rds_destroy_pending.exit723
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else450

rds_destroy_pending.exit723.if.end452_crit_edge:  ; preds = %rds_destroy_pending.exit723
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end452

if.else450:                                       ; preds = %rds_destroy_pending.exit723.if.else450_crit_edge, %lor.rhs.i720.if.else450_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %248 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 18
  %call.i724 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %248, ptr noundef %cp_send_w, i32 noundef 1) #9
  br label %if.end452

if.end452:                                        ; preds = %if.else450, %rds_destroy_pending.exit723.if.end452_crit_edge, %rcu_read_lock.exit.if.end452_crit_edge
  %ret.8 = phi i32 [ 0, %if.else450 ], [ -101, %rds_destroy_pending.exit723.if.end452_crit_edge ], [ -101, %rcu_read_lock.exit.if.end452_crit_edge ]
  %call.i725 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i725, label %if.end452.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i728

if.end452.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i728:                               ; preds = %if.end452
  %call1.i726 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i726)
  %tobool.not.i727 = icmp eq i32 %call1.i726, 0
  br i1 %tobool.not.i727, label %land.lhs.true.i728.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i730

land.lhs.true.i728.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i728
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i730:                              ; preds = %land.lhs.true.i728
  %.b4.i729 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i729, label %land.lhs.true2.i730.rcu_read_unlock.exit_crit_edge, label %if.then.i731

land.lhs.true2.i730.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i730
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i731:                                     ; preds = %land.lhs.true2.i730
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i731, %land.lhs.true2.i730.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i728.rcu_read_unlock.exit_crit_edge, %if.end452.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %249 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i732 = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i.i.i732 to ptr
  %preempt_count.i.i.i.i733 = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %preempt_count.i.i.i.i733 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %preempt_count.i.i.i.i733, align 4
  %sub.i.i.i = add i32 %252, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i733, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup484

if.else453:                                       ; preds = %lor.lhs.false436
  br i1 %cmp431.not, label %if.else453.cleanup484_crit_edge, label %if.else453.do.body457_crit_edge

if.else453.do.body457_crit_edge:                  ; preds = %if.else453
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body457

if.else453.cleanup484_crit_edge:                  ; preds = %if.else453
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup484

do.body457:                                       ; preds = %if.else453.do.body457_crit_edge, %land.lhs.true440.do.body457_crit_edge
  %253 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i672 = and i32 %253, -16384
  %254 = inttoptr i32 %and.i.i.i672 to ptr
  %preempt_count.i.i673 = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %preempt_count.i.i673 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %preempt_count.i.i673, align 4
  %add.i674 = add i32 %256, 1
  store volatile i32 %add.i674, ptr %preempt_count.i.i673, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %257 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i734 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i734 to ptr
  %cpu469 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 3
  %259 = ptrtoint ptr %cpu469 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cpu469, align 4
  %arrayidx470 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %260
  %261 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx470, align 4
  %add471 = add i32 %262, ptrtoint (ptr @rds_stats to i32)
  %263 = inttoptr i32 %add471 to ptr
  %s_send_lock_queue_raced = getelementptr inbounds %struct.rds_statistics, ptr %263, i32 0, i32 16
  %264 = ptrtoint ptr %s_send_lock_queue_raced to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %s_send_lock_queue_raced, align 8
  %inc472 = add i64 %265, 1
  store i64 %inc472, ptr %s_send_lock_queue_raced, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %266 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i675 = and i32 %266, -16384
  %267 = inttoptr i32 %and.i.i.i675 to ptr
  %preempt_count.i.i676 = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %preempt_count.i.i676 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load volatile i32, ptr %preempt_count.i.i676, align 4
  %sub.i677 = add i32 %269, -1
  store volatile i32 %sub.i677, ptr %preempt_count.i.i676, align 4
  br label %cleanup484

cleanup484:                                       ; preds = %do.body457, %if.else453.cleanup484_crit_edge, %rcu_read_unlock.exit, %if.end416.cleanup484_crit_edge, %if.then.i687, %if.then35.cleanup484_crit_edge, %if.then.i680, %if.then16.cleanup484_crit_edge, %do.body1
  %retval.0 = phi i32 [ -12, %do.body1 ], [ -101, %if.then16.cleanup484_crit_edge ], [ -101, %if.then.i680 ], [ 0, %if.then35.cleanup484_crit_edge ], [ 0, %if.then.i687 ], [ %ret.8, %rcu_read_unlock.exit ], [ 0, %if.else453.cleanup484_crit_edge ], [ 0, %do.body457 ], [ %ret.7, %if.end416.cleanup484_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_be_dropped) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rds_destroy_pending(ptr noundef %conn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %c_net.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 13
  %0 = ptrtoint ptr %c_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %4 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_trans, align 4
  %t_unloading = getelementptr inbounds %struct.rds_transport, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %t_unloading to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_unloading, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.rhs.lor.end_crit_edge, label %land.rhs

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call zeroext i1 %7(ptr noundef %conn) #9
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %call5, %land.rhs ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_cong_update_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_addref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_send_remove_from_sock(ptr noundef %messages, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %messages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %messages, align 4
  %cmp.i.not125 = icmp eq ptr %1, %messages
  br i1 %cmp.i.not125, label %entry.if.end62_crit_edge, label %while.body.lr.ph

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool43.not = icmp eq i32 %status, 0
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %70, %if.end58.while.body_crit_edge ]
  %rs.0126 = phi ptr [ null, %while.body.lr.ph ], [ %rs.2, %if.end58.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %m_rs_lock = getelementptr i8, ptr %2, i32 184
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock) #9
  %m_flags = getelementptr i8, ptr %2, i32 180
  %11 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %m_flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %list_del_init.exit.unlock_and_drop_crit_edge, label %if.end

list_del_init.exit.unlock_and_drop_crit_edge:     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_and_drop

if.end:                                           ; preds = %list_del_init.exit
  %m_rs = getelementptr i8, ptr %2, i32 280
  %14 = ptrtoint ptr %m_rs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_rs, align 4
  %cmp9.not = icmp eq ptr %rs.0126, %15
  %tobool22.not = icmp eq ptr %rs.0126, null
  br i1 %cmp9.not, label %if.end21, label %if.then11

if.then11:                                        ; preds = %if.end
  br i1 %tobool22.not, label %if.then11.if.end15_crit_edge, label %if.then13

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.then11
  tail call void @rds_wake_sk_sleep(ptr noundef nonnull %rs.0126) #9
  %skc_refcnt.i96 = getelementptr inbounds %struct.sock_common, ptr %rs.0126, i32 0, i32 19
  %call.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i96, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i96, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i96, ptr %skc_refcnt.i96, i32 1, ptr elementtype(i32) %skc_refcnt.i96) #9, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i98 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i98, label %if.end5.i.i.i.i.if.end15thread-pre-split_crit_edge, label %if.then10.i.i.i.i, !prof !77

if.end5.i.i.i.i.if.end15thread-pre-split_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15thread-pre-split

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i96, i32 noundef 3) #9
  br label %if.end15thread-pre-split

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @sk_free(ptr noundef nonnull %rs.0126) #9
  br label %if.end15thread-pre-split

if.end15thread-pre-split:                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end15thread-pre-split_crit_edge
  %17 = ptrtoint ptr %m_rs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %m_rs, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.then11.if.end15_crit_edge
  %18 = phi ptr [ %.pr, %if.end15thread-pre-split ], [ %15, %if.then11.if.end15_crit_edge ]
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.end15.unlock_and_drop_crit_edge, label %if.then18

if.end15.unlock_and_drop_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_and_drop

if.then18:                                        ; preds = %if.end15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then18.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.then18.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then18
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end24_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end24_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end24

if.end21:                                         ; preds = %if.end
  br i1 %tobool22.not, label %if.end21.unlock_and_drop_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end21.unlock_and_drop_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_and_drop

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end24_crit_edge
  %rs.1119 = phi ptr [ %rs.0126, %if.end21.if.end24_crit_edge ], [ %18, %if.else.i.i.i.i.if.end24_crit_edge ], [ %18, %if.end15.sink.split.i.i.i.i ]
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %rs.1119, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rs_lock) #9
  %call26 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %m_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.if.end53_crit_edge, label %if.then28

if.end24.if.end53_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then28:                                        ; preds = %if.end24
  %m_sock_item = getelementptr i8, ptr %2, i32 -8
  %call.i.i99 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %m_sock_item) #9
  br i1 %call.i.i99, label %if.end.i.i102, label %if.then28.list_del_init.exit104_crit_edge

if.then28.list_del_init.exit104_crit_edge:        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit104

if.end.i.i102:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i100 = getelementptr i8, ptr %2, i32 -4
  %21 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i100, align 4
  %23 = ptrtoint ptr %m_sock_item to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_sock_item, align 4
  %prev1.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i101, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit104

list_del_init.exit104:                            ; preds = %if.end.i.i102, %if.then28.list_del_init.exit104_crit_edge
  %27 = ptrtoint ptr %m_sock_item to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %m_sock_item, ptr %m_sock_item, align 4
  %prev.i3.i103 = getelementptr i8, ptr %2, i32 -4
  %28 = ptrtoint ptr %prev.i3.i103 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m_sock_item, ptr %prev.i3.i103, align 4
  %h_len.i = getelementptr i8, ptr %2, i32 52
  %29 = ptrtoint ptr %h_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_len.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %31 = ptrtoint ptr %rs_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %rs_lock, align 4
  %32 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body10.i, !prof !68

do.body4.i:                                       ; preds = %list_del_init.exit104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

do.body10.i:                                      ; preds = %list_del_init.exit104
  %rs_snd_bytes.i = getelementptr inbounds %struct.rds_sock, ptr %rs.1119, i32 0, i32 14
  %33 = ptrtoint ptr %rs_snd_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rs_snd_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp.i105 = icmp ult i32 %34, %30
  br i1 %cmp.i105, label %do.body18.i, label %do.end26.i, !prof !68

do.body18.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end26.i:                                       ; preds = %do.body10.i
  %sub.i = sub i32 %34, %30
  %35 = ptrtoint ptr %rs_snd_bytes.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %rs_snd_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp29.i = icmp eq i32 %34, %30
  br i1 %cmp29.i, label %do.body32.i, label %do.end26.i.rds_send_sndbuf_remove.exit_crit_edge

do.end26.i.rds_send_sndbuf_remove.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_send_sndbuf_remove.exit

do.body32.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %39, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %40 = tail call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %45, ptrtoint (ptr @rds_stats to i32)
  %46 = inttoptr i32 %add.i to ptr
  %s_send_queue_empty.i = getelementptr inbounds %struct.rds_statistics, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %s_send_queue_empty.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %s_send_queue_empty.i, align 8
  %inc.i = add i64 %48, 1
  store i64 %inc.i, ptr %s_send_queue_empty.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %49 = tail call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i52.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i52.i to ptr
  %preempt_count.i.i53.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i53.i, align 4
  %sub.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i53.i, align 4
  br label %rds_send_sndbuf_remove.exit

rds_send_sndbuf_remove.exit:                      ; preds = %do.body32.i, %do.end26.i.rds_send_sndbuf_remove.exit_crit_edge
  %op_active = getelementptr i8, ptr %2, i32 396
  %53 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %op_active, align 8
  %54 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool29.not = icmp eq i8 %54, 0
  br i1 %tobool29.not, label %rds_send_sndbuf_remove.exit.if.end53_crit_edge, label %land.lhs.true

rds_send_sndbuf_remove.exit.if.end53_crit_edge:   ; preds = %rds_send_sndbuf_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %rds_send_sndbuf_remove.exit
  %op_notifier = getelementptr i8, ptr %2, i32 416
  %55 = ptrtoint ptr %op_notifier to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %op_notifier, align 4
  %tobool30.not = icmp eq ptr %56, null
  br i1 %tobool30.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true31

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true31:                                  ; preds = %land.lhs.true
  %57 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool36.not = icmp eq i8 %57, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %land.lhs.true31.if.then44_crit_edge

land.lhs.true31.if.then44_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %58 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool41.not = icmp eq i8 %58, 0
  %or.cond = or i1 %tobool43.not, %tobool41.not
  br i1 %or.cond, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %land.lhs.true31.if.then44_crit_edge
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %rs.1119, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.rds_sock, ptr %rs.1119, i32 0, i32 16, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i106 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %56, ptr noundef %60, ptr noundef %rs_notify_queue) #9
  br i1 %call.i.i106, label %if.end.i.i107, label %if.then44.list_add_tail.exit_crit_edge

if.then44.list_add_tail.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i107:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %56, ptr %prev.i, align 4
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %rs_notify_queue, ptr %56, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %56, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i107, %if.then44.list_add_tail.exit_crit_edge
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %56, i32 0, i32 2
  %65 = ptrtoint ptr %n_status to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool46.not = icmp eq i32 %66, 0
  br i1 %tobool46.not, label %if.then47, label %list_add_tail.exit.if.end49_crit_edge

list_add_tail.exit.if.end49_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %n_status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %status, ptr %n_status, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %list_add_tail.exit.if.end49_crit_edge
  %68 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %op_notifier, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %lor.lhs.false.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %rds_send_sndbuf_remove.exit.if.end53_crit_edge, %if.end24.if.end53_crit_edge
  %was_on_sock.0 = phi i32 [ 0, %if.end24.if.end53_crit_edge ], [ 1, %if.end49 ], [ 1, %lor.lhs.false.if.end53_crit_edge ], [ 1, %land.lhs.true.if.end53_crit_edge ], [ 1, %rds_send_sndbuf_remove.exit.if.end53_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rs_lock) #9
  br label %unlock_and_drop

unlock_and_drop:                                  ; preds = %if.end53, %if.end21.unlock_and_drop_crit_edge, %if.end15.unlock_and_drop_crit_edge, %list_del_init.exit.unlock_and_drop_crit_edge
  %was_on_sock.1 = phi i32 [ %was_on_sock.0, %if.end53 ], [ 0, %if.end21.unlock_and_drop_crit_edge ], [ 0, %list_del_init.exit.unlock_and_drop_crit_edge ], [ 0, %if.end15.unlock_and_drop_crit_edge ]
  %rs.2 = phi ptr [ %rs.1119, %if.end53 ], [ null, %if.end21.unlock_and_drop_crit_edge ], [ %rs.0126, %list_del_init.exit.unlock_and_drop_crit_edge ], [ null, %if.end15.unlock_and_drop_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call4) #9
  tail call void @rds_message_put(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %was_on_sock.1)
  %tobool56.not = icmp eq i32 %was_on_sock.1, 0
  br i1 %tobool56.not, label %unlock_and_drop.if.end58_crit_edge, label %if.then57

unlock_and_drop.if.end58_crit_edge:               ; preds = %unlock_and_drop
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %unlock_and_drop
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rds_message_put(ptr noundef %add.ptr) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %unlock_and_drop.if.end58_crit_edge
  %69 = ptrtoint ptr %messages to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %messages, align 4
  %cmp.i.not = icmp eq ptr %70, %messages
  br i1 %cmp.i.not, label %while.end, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end58
  %tobool59.not = icmp eq ptr %rs.2, null
  br i1 %tobool59.not, label %while.end.if.end62_crit_edge, label %if.then60

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %while.end
  tail call void @rds_wake_sk_sleep(ptr noundef nonnull %rs.2) #9
  %skc_refcnt.i108 = getelementptr inbounds %struct.sock_common, ptr %rs.2, i32 0, i32 19
  %call.i.i.i.i.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i108, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i108, i32 1, i32 3, i32 1) #9
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i108, ptr %skc_refcnt.i108, i32 1, ptr elementtype(i32) %skc_refcnt.i108) #9, !srcloc !76
  %asmresult.i.i.i.i.i.i.i110 = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i110)
  %cmp.i.i.i.i111 = icmp eq i32 %asmresult.i.i.i.i.i.i.i110, 1
  br i1 %cmp.i.i.i.i111, label %if.then.i115, label %if.end5.i.i.i.i113

if.end5.i.i.i.i113:                               ; preds = %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i110)
  %.not.i.i.i.i112 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i110, 0
  br i1 %.not.i.i.i.i112, label %if.end5.i.i.i.i113.if.end62_crit_edge, label %if.then10.i.i.i.i114, !prof !77

if.end5.i.i.i.i113.if.end62_crit_edge:            ; preds = %if.end5.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then10.i.i.i.i114:                             ; preds = %if.end5.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i108, i32 noundef 3) #9
  br label %if.end62

if.then.i115:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @sk_free(ptr noundef nonnull %rs.2) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then.i115, %if.then10.i.i.i.i114, %if.end5.i.i.i.i113.if.end62_crit_edge, %while.end.if.end62_crit_edge, %entry.if.end62_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_rdma_send_complete(ptr noundef %rm, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rs_lock = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock) #9
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %0 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.lhs.true

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 2
  %3 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %op_active, align 8
  %4 = and i8 %bf.load, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %4)
  %.not = icmp eq i8 %4, 34
  br i1 %.not, label %land.lhs.true13, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

land.lhs.true13:                                  ; preds = %land.lhs.true
  %op_notifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 7
  %5 = ptrtoint ptr %op_notifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_notifier, align 4
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %land.lhs.true13.if.end.thread_crit_edge, label %if.then

land.lhs.true13.if.end.thread_crit_edge:          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then:                                          ; preds = %land.lhs.true13
  %m_rs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 9
  %7 = ptrtoint ptr %m_rs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_rs, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %n_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %n_status, align 8
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rs_lock) #9
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %6, ptr noundef %13, ptr noundef %rs_notify_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit.if.end_crit_edge

sock_hold.exit.if.end_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rs_notify_queue, ptr %6, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %6, ptr %13, align 4
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true13.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call2) #9
  br label %if.end23

if.end:                                           ; preds = %if.end.i.i, %sock_hold.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rs_lock) #9
  %18 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %op_notifier, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call2) #9
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.end
  tail call void @rds_wake_sk_sleep(ptr noundef nonnull %8) #9
  %call.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i41, label %if.end5.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i, !prof !77

if.end5.i.i.i.i.if.end23_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %if.end23

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @sk_free(ptr noundef nonnull %8) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end23_crit_edge, %if.end.if.end23_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_wake_sk_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_atomic_send_complete(ptr noundef %rm, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rs_lock = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock) #9
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %0 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.lhs.true

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 4
  %3 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %op_active, align 8
  %4 = and i8 %bf.load, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %4)
  %.not = icmp eq i8 %4, -120
  br i1 %.not, label %land.lhs.true12, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

land.lhs.true12:                                  ; preds = %land.lhs.true
  %op_notifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 6
  %5 = ptrtoint ptr %op_notifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_notifier, align 8
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %land.lhs.true12.if.end.thread_crit_edge, label %if.then

land.lhs.true12.if.end.thread_crit_edge:          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then:                                          ; preds = %land.lhs.true12
  %m_rs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 9
  %7 = ptrtoint ptr %m_rs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_rs, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %n_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %n_status, align 8
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rs_lock) #9
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.rds_sock, ptr %8, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %6, ptr noundef %13, ptr noundef %rs_notify_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit.if.end_crit_edge

sock_hold.exit.if.end_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rs_notify_queue, ptr %6, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %6, ptr %13, align 4
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true12.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call2) #9
  br label %if.end22

if.end:                                           ; preds = %if.end.i.i, %sock_hold.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rs_lock) #9
  %18 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %op_notifier, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call2) #9
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %if.end.if.end22_crit_edge, label %if.then20

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end
  tail call void @rds_wake_sk_sleep(ptr noundef nonnull %8) #9
  %call.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i.if.end22_crit_edge, label %if.then10.i.i.i.i, !prof !77

if.end5.i.i.i.i.if.end22_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %if.end22

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @sk_free(ptr noundef nonnull %8) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end22_crit_edge, %if.end.if.end22_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_path_drop_acked(ptr noundef %cp, i64 noundef %ack, ptr noundef readonly %is_acked) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 8
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %cp_retrans = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 11
  %3 = ptrtoint ptr %cp_retrans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cp_retrans, align 8
  %cmp14.not46 = icmp eq ptr %4, %cp_retrans
  br i1 %cmp14.not46, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq ptr %is_acked, null
  br label %for.body

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in47 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn51, %list_move.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn51 = load ptr, ptr %.pn.in47, align 4
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %rm.0 = getelementptr i8, ptr %.pn.in47, i32 -12
  %call.i = call i32 %is_acked(ptr noundef %rm.0, i64 noundef %ack) #9
  br label %rds_send_is_acked.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_hdr.i = getelementptr i8, ptr %.pn.in47, i32 36
  %6 = ptrtoint ptr %i_hdr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_hdr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ack)
  %cmp.i = icmp ule i64 %7, %ack
  %conv.i = zext i1 %cmp.i to i32
  br label %rds_send_is_acked.exit

rds_send_is_acked.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %rds_send_is_acked.exit.for.end_crit_edge, label %if.end

rds_send_is_acked.exit.for.end_crit_edge:         ; preds = %rds_send_is_acked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %rds_send_is_acked.exit
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in47, ptr noundef nonnull %list, ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in47, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %.pn.in47, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.in47, ptr %list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %m_flags = getelementptr i8, ptr %.pn.in47, i32 180
  call void @_clear_bit(i32 noundef 2, ptr noundef %m_flags) #9
  %cmp14.not = icmp eq ptr %.pn51, %cp_retrans
  br i1 %cmp14.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %rds_send_is_acked.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %cmp.i43.not = icmp eq ptr %21, %list
  br i1 %cmp.i43.not, label %for.end.if.end32_crit_edge, label %do.end29

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %for.end.if.end32_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call3) #9
  call fastcc void @rds_send_remove_from_sock(ptr noundef nonnull %list, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_drop_acked(ptr nocapture noundef readonly %conn, i64 noundef %ack, ptr noundef %is_acked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %0 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_trans, align 4
  %t_mp_capable = getelementptr inbounds %struct.rds_transport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %t_mp_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %t_mp_capable, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %4 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_path, align 4
  tail call void @rds_send_path_drop_acked(ptr noundef %5, i64 noundef %ack, ptr noundef %is_acked)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_drop_to(ptr noundef %rs, ptr noundef readonly %dest) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 12
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock) #9
  %rs_send_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 13
  %3 = ptrtoint ptr %rs_send_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rs_send_queue, align 8
  %cmp14.not222 = icmp eq ptr %4, %rs_send_queue
  br i1 %cmp14.not222, label %entry.do.end30_crit_edge, label %for.body.lr.ph

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %dest, null
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %dest, i32 0, i32 3
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %dest, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.sockaddr_in6, ptr %dest, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.sockaddr_in6, ptr %dest, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %dest, i32 0, i32 1
  %rs_snd_bytes.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in223 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn224, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn224 = load ptr, ptr %.pn.in223, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %m_daddr = getelementptr i8, ptr %.pn.in223, i32 172
  %6 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin6_addr, align 4
  %8 = ptrtoint ptr %m_daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_daddr, align 4
  %xor.i = xor i32 %9, %7
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %.pn.in223, i32 176
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %13, %11
  %or.i = or i32 %xor7.i, %xor.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %.pn.in223, i32 180
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %17, %15
  %or13.i = or i32 %or.i, %xor12.i
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %.pn.in223, i32 184
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %21, %19
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %lor.lhs.false, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sin6_port, align 2
  %h_dport = getelementptr i8, ptr %.pn.in223, i32 66
  %24 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %h_dport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp19.not = icmp eq i16 %23, %25
  br i1 %cmp19.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in223) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in223, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in223, ptr noundef nonnull %list, ptr noundef %33) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.pn.in223, ptr %prev1.i.i2.i, align 4
  %35 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %.pn.in223, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in223, ptr %list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %h_len.i = getelementptr i8, ptr %.pn.in223, i32 60
  %38 = ptrtoint ptr %h_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_len.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %40 = ptrtoint ptr %rs_lock to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %rs_lock, align 4
  %41 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body10.i, !prof !68

do.body4.i:                                       ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

do.body10.i:                                      ; preds = %list_move.exit
  %42 = ptrtoint ptr %rs_snd_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rs_snd_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp.i171 = icmp ult i32 %43, %39
  br i1 %cmp.i171, label %do.body18.i, label %do.end26.i, !prof !68

do.body18.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end26.i:                                       ; preds = %do.body10.i
  %sub.i = sub i32 %43, %39
  %44 = ptrtoint ptr %rs_snd_bytes.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i, ptr %rs_snd_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp29.i = icmp eq i32 %43, %39
  br i1 %cmp29.i, label %do.body32.i, label %do.end26.i.rds_send_sndbuf_remove.exit_crit_edge

do.end26.i.rds_send_sndbuf_remove.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_send_sndbuf_remove.exit

do.body32.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %48, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %49 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %54, ptrtoint (ptr @rds_stats to i32)
  %55 = inttoptr i32 %add.i to ptr
  %s_send_queue_empty.i = getelementptr inbounds %struct.rds_statistics, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %s_send_queue_empty.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %s_send_queue_empty.i, align 8
  %inc.i = add i64 %57, 1
  store i64 %inc.i, ptr %s_send_queue_empty.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %58 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i52.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i52.i to ptr
  %preempt_count.i.i53.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i53.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i53.i, align 4
  br label %rds_send_sndbuf_remove.exit

rds_send_sndbuf_remove.exit:                      ; preds = %do.body32.i, %do.end26.i.rds_send_sndbuf_remove.exit_crit_edge
  %m_flags = getelementptr i8, ptr %.pn.in223, i32 188
  call void @_clear_bit(i32 noundef 1, ptr noundef %m_flags) #9
  br label %for.inc

for.inc:                                          ; preds = %rds_send_sndbuf_remove.exit, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %.pn224, %rs_send_queue
  br i1 %cmp14.not, label %for.inc.do.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %for.inc.do.end30_crit_edge, %entry.do.end30_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock, i32 noundef %call3) #9
  %62 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %list, align 4
  %cmp.i172.not = icmp eq ptr %63, %list
  br i1 %cmp.i172.not, label %do.end30.cleanup_crit_edge, label %for.cond42.preheader

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond42.preheader:                             ; preds = %do.end30
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn169225 = load ptr, ptr %list, align 4
  %cmp44.not227 = icmp eq ptr %.pn169225, %list
  br i1 %cmp44.not227, label %for.cond42.preheader.for.end95_crit_edge, label %for.body47.lr.ph

for.cond42.preheader.for.end95_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.body47.lr.ph:                                 ; preds = %for.cond42.preheader
  %rs_notify_queue.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 16
  %prev.i.i178 = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 16, i32 1
  br label %for.body47

for.body47:                                       ; preds = %for.inc89.for.body47_crit_edge, %for.body47.lr.ph
  %.pn169228 = phi ptr [ %.pn169225, %for.body47.lr.ph ], [ %.pn169, %for.inc89.for.body47_crit_edge ]
  %rm.1233 = getelementptr i8, ptr %.pn169228, i32 -4
  %i_conn = getelementptr i8, ptr %.pn169228, i32 32
  %65 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_conn, align 4
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %c_trans, align 4
  %t_mp_capable = getelementptr inbounds %struct.rds_transport, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %t_mp_capable to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load = load i8, ptr %t_mp_capable, align 4
  %70 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool49.not = icmp eq i8 %70, 0
  %i_conn_path = getelementptr i8, ptr %.pn169228, i32 36
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %66, i32 0, i32 17
  %cp.0.in = select i1 %tobool49.not, ptr %c_path, ptr %i_conn_path
  %71 = ptrtoint ptr %cp.0.in to i32
  call void @__asan_load4_noabort(i32 %71)
  %cp.0 = load ptr, ptr %cp.0.in, align 4
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp.0, i32 0, i32 8
  %call61 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %m_flags66 = getelementptr i8, ptr %.pn169228, i32 188
  %call67 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %m_flags66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end71

if.then69:                                        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call61) #9
  br label %for.inc89

if.end71:                                         ; preds = %for.body47
  %m_conn_item = getelementptr i8, ptr %.pn169228, i32 8
  %call.i.i173 = call zeroext i1 @__list_del_entry_valid(ptr noundef %m_conn_item) #9
  br i1 %call.i.i173, label %if.end.i.i176, label %if.end71.list_del_init.exit_crit_edge

if.end71.list_del_init.exit_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i176:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i174 = getelementptr i8, ptr %.pn169228, i32 12
  %72 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i174, align 4
  %74 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %m_conn_item, align 4
  %prev1.i.i.i175 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i175, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i176, %if.end71.list_del_init.exit_crit_edge
  %78 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %m_conn_item, ptr %m_conn_item, align 4
  %prev.i3.i = getelementptr i8, ptr %.pn169228, i32 12
  %79 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %m_conn_item, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call61) #9
  %m_rs_lock = getelementptr i8, ptr %.pn169228, i32 192
  %call81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock) #9
  call void @_raw_spin_lock(ptr noundef %rs_lock) #9
  %op_active.i = getelementptr i8, ptr %.pn169228, i32 404
  %80 = ptrtoint ptr %op_active.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %op_active.i, align 8
  %81 = and i8 %bf.load.i, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %81)
  %.not.i = icmp eq i8 %81, 34
  br i1 %.not.i, label %land.lhs.true6.i, label %list_del_init.exit.if.end.i_crit_edge

list_del_init.exit.if.end.i_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %list_del_init.exit
  %op_notifier.i = getelementptr i8, ptr %.pn169228, i32 424
  %82 = ptrtoint ptr %op_notifier.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %op_notifier.i, align 4
  %tobool7.not.i = icmp eq ptr %83, null
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  %n_status.i = getelementptr inbounds %struct.rds_notifier, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %n_status.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %n_status.i, align 8
  %85 = ptrtoint ptr %op_notifier.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %op_notifier.i, align 4
  %87 = ptrtoint ptr %prev.i.i178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i178, align 4
  %call.i.i.i179 = call zeroext i1 @__list_add_valid(ptr noundef %86, ptr noundef %88, ptr noundef %rs_notify_queue.i) #9
  br i1 %call.i.i.i179, label %if.end.i.i.i181, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i181:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %prev.i.i178 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev.i.i178, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %rs_notify_queue.i, ptr %86, align 4
  %prev3.i.i.i180 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i.i180, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %86, ptr %88, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i181, %if.then.i.list_add_tail.exit.i_crit_edge
  %93 = ptrtoint ptr %op_notifier.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %op_notifier.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_add_tail.exit.i, %land.lhs.true6.i.if.end.i_crit_edge, %list_del_init.exit.if.end.i_crit_edge
  %op_active11.i = getelementptr i8, ptr %.pn169228, i32 372
  %94 = ptrtoint ptr %op_active11.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load12.i = load i8, ptr %op_active11.i, align 8
  %95 = and i8 %bf.load12.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %95)
  %.not7.i = icmp eq i8 %95, -120
  br i1 %.not7.i, label %land.lhs.true23.i, label %if.end.i.__rds_send_complete.exit_crit_edge

if.end.i.__rds_send_complete.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rds_send_complete.exit

land.lhs.true23.i:                                ; preds = %if.end.i
  %op_notifier24.i = getelementptr i8, ptr %.pn169228, i32 380
  %96 = ptrtoint ptr %op_notifier24.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %op_notifier24.i, align 8
  %tobool25.not.i = icmp eq ptr %97, null
  br i1 %tobool25.not.i, label %land.lhs.true23.i.__rds_send_complete.exit_crit_edge, label %if.then26.i

land.lhs.true23.i.__rds_send_complete.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rds_send_complete.exit

if.then26.i:                                      ; preds = %land.lhs.true23.i
  %n_status28.i = getelementptr inbounds %struct.rds_notifier, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %n_status28.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %n_status28.i, align 8
  %99 = ptrtoint ptr %op_notifier24.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %op_notifier24.i, align 8
  %101 = ptrtoint ptr %prev.i.i178 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i178, align 4
  %call.i.i3.i = call zeroext i1 @__list_add_valid(ptr noundef %100, ptr noundef %102, ptr noundef %rs_notify_queue.i) #9
  br i1 %call.i.i3.i, label %if.end.i.i5.i, label %if.then26.i.list_add_tail.exit6.i_crit_edge

if.then26.i.list_add_tail.exit6.i_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit6.i

if.end.i.i5.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %prev.i.i178 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev.i.i178, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %rs_notify_queue.i, ptr %100, align 4
  %prev3.i.i4.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev3.i.i4.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %100, ptr %102, align 4
  br label %list_add_tail.exit6.i

list_add_tail.exit6.i:                            ; preds = %if.end.i.i5.i, %if.then26.i.list_add_tail.exit6.i_crit_edge
  %107 = ptrtoint ptr %op_notifier24.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %op_notifier24.i, align 8
  br label %__rds_send_complete.exit

__rds_send_complete.exit:                         ; preds = %list_add_tail.exit6.i, %land.lhs.true23.i.__rds_send_complete.exit_crit_edge, %if.end.i.__rds_send_complete.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rs_lock) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call81) #9
  call void @rds_message_put(ptr noundef %rm.1233) #9
  br label %for.inc89

for.inc89:                                        ; preds = %__rds_send_complete.exit, %if.then69
  %108 = ptrtoint ptr %.pn169228 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn169 = load ptr, ptr %.pn169228, align 4
  %cmp44.not = icmp eq ptr %.pn169, %list
  br i1 %cmp44.not, label %for.inc89.for.end95_crit_edge, label %for.inc89.for.body47_crit_edge

for.inc89.for.body47_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.inc89.for.end95_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.end95:                                        ; preds = %for.inc89.for.end95_crit_edge, %for.cond42.preheader.for.end95_crit_edge
  call void @rds_wake_sk_sleep(ptr noundef %rs) #9
  %109 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %list, align 4
  %cmp.i182.not234 = icmp eq ptr %110, %list
  br i1 %cmp.i182.not234, label %for.end95.cleanup_crit_edge, label %while.body.lr.ph

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.end95
  %rs_notify_queue.i198 = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 16
  %prev.i.i199 = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 16, i32 1
  br label %while.body

while.body:                                       ; preds = %__rds_send_complete.exit220.while.body_crit_edge, %while.body.lr.ph
  %111 = phi ptr [ %110, %while.body.lr.ph ], [ %149, %__rds_send_complete.exit220.while.body_crit_edge ]
  %add.ptr102 = getelementptr i8, ptr %111, i32 -4
  %call.i.i184 = call zeroext i1 @__list_del_entry_valid(ptr noundef %111) #9
  br i1 %call.i.i184, label %if.end.i.i187, label %while.body.list_del_init.exit190_crit_edge

while.body.list_del_init.exit190_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit190

if.end.i.i187:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i185 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i185 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i185, align 4
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %111, align 4
  %prev1.i.i.i186 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i186, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del_init.exit190

list_del_init.exit190:                            ; preds = %if.end.i.i187, %while.body.list_del_init.exit190_crit_edge
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %111, ptr %111, align 4
  %prev.i3.i188 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i3.i188 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %111, ptr %prev.i3.i188, align 4
  call void @rds_message_wait(ptr noundef %add.ptr102) #9
  %m_rs_lock111 = getelementptr i8, ptr %111, i32 192
  %call113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock111) #9
  call void @_raw_spin_lock(ptr noundef %rs_lock) #9
  %op_active.i191 = getelementptr i8, ptr %111, i32 404
  %120 = ptrtoint ptr %op_active.i191 to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load.i192 = load i8, ptr %op_active.i191, align 8
  %121 = and i8 %bf.load.i192, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %121)
  %.not.i193 = icmp eq i8 %121, 34
  br i1 %.not.i193, label %land.lhs.true6.i196, label %list_del_init.exit190.if.end.i208_crit_edge

list_del_init.exit190.if.end.i208_crit_edge:      ; preds = %list_del_init.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i208

land.lhs.true6.i196:                              ; preds = %list_del_init.exit190
  %op_notifier.i194 = getelementptr i8, ptr %111, i32 424
  %122 = ptrtoint ptr %op_notifier.i194 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %op_notifier.i194, align 4
  %tobool7.not.i195 = icmp eq ptr %123, null
  br i1 %tobool7.not.i195, label %land.lhs.true6.i196.if.end.i208_crit_edge, label %if.then.i201

land.lhs.true6.i196.if.end.i208_crit_edge:        ; preds = %land.lhs.true6.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i208

if.then.i201:                                     ; preds = %land.lhs.true6.i196
  %n_status.i197 = getelementptr inbounds %struct.rds_notifier, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %n_status.i197 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %n_status.i197, align 8
  %125 = ptrtoint ptr %op_notifier.i194 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %op_notifier.i194, align 4
  %127 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i199, align 4
  %call.i.i.i200 = call zeroext i1 @__list_add_valid(ptr noundef %126, ptr noundef %128, ptr noundef %rs_notify_queue.i198) #9
  br i1 %call.i.i.i200, label %if.end.i.i.i203, label %if.then.i201.list_add_tail.exit.i204_crit_edge

if.then.i201.list_add_tail.exit.i204_crit_edge:   ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i204

if.end.i.i.i203:                                  ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev.i.i199, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %rs_notify_queue.i198, ptr %126, align 4
  %prev3.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %prev3.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev3.i.i.i202, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %126, ptr %128, align 4
  br label %list_add_tail.exit.i204

list_add_tail.exit.i204:                          ; preds = %if.end.i.i.i203, %if.then.i201.list_add_tail.exit.i204_crit_edge
  %133 = ptrtoint ptr %op_notifier.i194 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %op_notifier.i194, align 4
  br label %if.end.i208

if.end.i208:                                      ; preds = %list_add_tail.exit.i204, %land.lhs.true6.i196.if.end.i208_crit_edge, %list_del_init.exit190.if.end.i208_crit_edge
  %op_active11.i205 = getelementptr i8, ptr %111, i32 372
  %134 = ptrtoint ptr %op_active11.i205 to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load12.i206 = load i8, ptr %op_active11.i205, align 8
  %135 = and i8 %bf.load12.i206, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %135)
  %.not7.i207 = icmp eq i8 %135, -120
  br i1 %.not7.i207, label %land.lhs.true23.i211, label %if.end.i208.__rds_send_complete.exit220_crit_edge

if.end.i208.__rds_send_complete.exit220_crit_edge: ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rds_send_complete.exit220

land.lhs.true23.i211:                             ; preds = %if.end.i208
  %op_notifier24.i209 = getelementptr i8, ptr %111, i32 380
  %136 = ptrtoint ptr %op_notifier24.i209 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %op_notifier24.i209, align 8
  %tobool25.not.i210 = icmp eq ptr %137, null
  br i1 %tobool25.not.i210, label %land.lhs.true23.i211.__rds_send_complete.exit220_crit_edge, label %if.then26.i216

land.lhs.true23.i211.__rds_send_complete.exit220_crit_edge: ; preds = %land.lhs.true23.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rds_send_complete.exit220

if.then26.i216:                                   ; preds = %land.lhs.true23.i211
  %n_status28.i212 = getelementptr inbounds %struct.rds_notifier, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %n_status28.i212 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %n_status28.i212, align 8
  %139 = ptrtoint ptr %op_notifier24.i209 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %op_notifier24.i209, align 8
  %141 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i199, align 4
  %call.i.i3.i215 = call zeroext i1 @__list_add_valid(ptr noundef %140, ptr noundef %142, ptr noundef %rs_notify_queue.i198) #9
  br i1 %call.i.i3.i215, label %if.end.i.i5.i218, label %if.then26.i216.list_add_tail.exit6.i219_crit_edge

if.then26.i216.list_add_tail.exit6.i219_crit_edge: ; preds = %if.then26.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit6.i219

if.end.i.i5.i218:                                 ; preds = %if.then26.i216
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev.i.i199, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %rs_notify_queue.i198, ptr %140, align 4
  %prev3.i.i4.i217 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i4.i217 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i4.i217, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %140, ptr %142, align 4
  br label %list_add_tail.exit6.i219

list_add_tail.exit6.i219:                         ; preds = %if.end.i.i5.i218, %if.then26.i216.list_add_tail.exit6.i219_crit_edge
  %147 = ptrtoint ptr %op_notifier24.i209 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %op_notifier24.i209, align 8
  br label %__rds_send_complete.exit220

__rds_send_complete.exit220:                      ; preds = %list_add_tail.exit6.i219, %land.lhs.true23.i211.__rds_send_complete.exit220_crit_edge, %if.end.i208.__rds_send_complete.exit220_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rs_lock) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock111, i32 noundef %call113) #9
  call void @rds_message_put(ptr noundef %add.ptr102) #9
  %148 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile ptr, ptr %list, align 4
  %cmp.i182.not = icmp eq ptr %149, %list
  br i1 %cmp.i182.not, label %__rds_send_complete.exit220.cleanup_crit_edge, label %__rds_send_complete.exit220.while.body_crit_edge

__rds_send_complete.exit220.while.body_crit_edge: ; preds = %__rds_send_complete.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__rds_send_complete.exit220.cleanup_crit_edge:    ; preds = %__rds_send_complete.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %__rds_send_complete.exit220.cleanup_crit_edge, %for.end95.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %payload_len) local_unnamed_addr #0 align 64 {
entry:
  %queued = alloca i32, align 4
  %allocated_mr = alloca i32, align 4
  %daddr = alloca %struct.in6_addr, align 4
  %vct = alloca %struct.rds_iov_vector_arr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %queued) #9
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %queued, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated_mr) #9
  %5 = ptrtoint ptr %allocated_mr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %allocated_mr, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_flags, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %9, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %daddr) #9
  %10 = getelementptr inbounds [4 x i32], ptr %daddr, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i32], ptr %daddr, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i32], ptr %daddr, i32 0, i32 3
  %and9 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %13 = call ptr @memset(ptr %daddr, i32 255, i32 16)
  br i1 %tobool10.not, label %sock_sndtimeo.exit.land.end_crit_edge, label %land.rhs

sock_sndtimeo.exit.land.end_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i = icmp ne i32 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sock_sndtimeo.exit.land.end_crit_edge
  %18 = phi i1 [ false, %sock_sndtimeo.exit.land.end_crit_edge ], [ %tobool.i, %land.rhs ]
  %sub = add i32 %payload_len, 4095
  %div633 = lshr i32 %sub, 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vct) #9
  %19 = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 3
  %21 = call ptr @memset(ptr %vct, i32 0, i32 12)
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %20, align 4
  %and14 = and i32 %7, -67108929
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end, label %land.end.out_crit_edge

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %land.end
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %23 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp17 = icmp ult i32 %24, 16
  br i1 %cmp17, label %if.then16.out_crit_edge, label %if.end19

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.then16
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i16 %26, label %if.end19.out_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb35
  ]

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.end19
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sin_addr, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %29, label %lor.lhs.false26 [
    i32 0, label %sw.bb.out_crit_edge
    i32 -1, label %sw.bb.out_crit_edge732
  ]

sw.bb.out_crit_edge732:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false26:                                  ; preds = %sw.bb
  %and.i = and i32 %29, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %lor.lhs.false26.out_crit_edge, label %if.end32

lor.lhs.false26.out_crit_edge:                    ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end32:                                         ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %daddr, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %10, align 4
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %11, align 4
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %12, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sin_port, align 2
  br label %if.end73

sw.bb35:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %24)
  %cmp36 = icmp ult i32 %24, 28
  br i1 %cmp36, label %sw.bb35.out_crit_edge, label %if.end39

sw.bb35.out_crit_edge:                            ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %sw.bb35
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 3
  %call.i643 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #9
  %and41 = and i32 %call.i643, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end39.if.end59_crit_edge

if.end39.if.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then43:                                        ; preds = %if.end39
  %and44 = and i32 %call.i643, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then43.out_crit_edge, label %if.end47

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end47:                                         ; preds = %if.then43
  %arrayidx = getelementptr %struct.sockaddr_in6, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %38, label %lor.lhs.false54 [
    i32 0, label %if.end47.out_crit_edge
    i32 -1, label %if.end47.out_crit_edge733
  ]

if.end47.out_crit_edge733:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false54:                                  ; preds = %if.end47
  %and.i645 = and i32 %38, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i645)
  %cmp.i646 = icmp eq i32 %and.i645, -536870912
  br i1 %cmp.i646, label %lor.lhs.false54.out_crit_edge, label %lor.lhs.false54.if.end59_crit_edge

lor.lhs.false54.if.end59_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lor.lhs.false54.out_crit_edge:                    ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end59:                                         ; preds = %lor.lhs.false54.if.end59_crit_edge, %if.end39.if.end59_crit_edge
  %and60 = and i32 %call.i643, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.cleanup70_crit_edge, label %if.then62

if.end59.cleanup70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.then62:                                        ; preds = %if.end59
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp63 = icmp eq i32 %41, 0
  br i1 %cmp63, label %if.then62.out_crit_edge, label %if.then62.cleanup70_crit_edge

if.then62.cleanup70_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup70:                                        ; preds = %if.then62.cleanup70_crit_edge, %if.end59.cleanup70_crit_edge
  %scope_id.0 = phi i32 [ 0, %if.end59.cleanup70_crit_edge ], [ %41, %if.then62.cleanup70_crit_edge ]
  %42 = call ptr @memcpy(ptr %daddr, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sin6_port, align 2
  br label %if.end73

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %rs_conn_addr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %45 = call ptr @memcpy(ptr %daddr, ptr %rs_conn_addr, i32 16)
  %rs_conn_port = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %rs_conn_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rs_conn_port, align 8
  %sin6_scope_id72 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %sin6_scope_id72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sin6_scope_id72, align 4
  tail call void @release_sock(ptr noundef %1) #9
  br label %if.end73

if.end73:                                         ; preds = %if.else, %cleanup70, %if.end32
  %scope_id.2 = phi i32 [ %scope_id.0, %cleanup70 ], [ 0, %if.end32 ], [ %49, %if.else ]
  %dport.1 = phi i16 [ %44, %cleanup70 ], [ %36, %if.end32 ], [ %47, %if.else ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %sin6_addr75 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %sin6_addr75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sin6_addr75, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %53, %51
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %55
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i647 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i647, label %if.end73.if.then81_crit_edge, label %lor.lhs.false78

if.end73.if.then81_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false78:                                  ; preds = %if.end73
  %58 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %daddr, align 4
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %10, align 4
  %or.i649 = or i32 %61, %59
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %11, align 4
  %or5.i651 = or i32 %or.i649, %63
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %12, align 4
  %or8.i653 = or i32 %or5.i651, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i653)
  %cmp.i654 = icmp eq i32 %or8.i653, 0
  br i1 %cmp.i654, label %lor.lhs.false78.if.then81_crit_edge, label %if.else82

lor.lhs.false78.if.then81_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false78.if.then81_crit_edge, %if.end73.if.then81_crit_edge
  tail call void @release_sock(ptr noundef %1) #9
  br label %out

if.else82:                                        ; preds = %lor.lhs.false78
  br i1 %cmp.not, label %if.else82.if.end113_crit_edge, label %if.then85

if.else82.if.end113_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then85:                                        ; preds = %if.else82
  %xor.i = xor i32 %63, 65535
  %or5.i658 = or i32 %xor.i, %or.i649
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i658)
  %cmp.i659 = icmp eq i32 %or5.i658, 0
  %xor.i663 = xor i32 %55, 65535
  %or5.i664 = or i32 %xor.i663, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i664)
  %cmp.i665 = icmp eq i32 %or5.i664, 0
  %xor634 = xor i1 %cmp.i665, %cmp.i659
  br i1 %xor634, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %1) #9
  br label %out

if.end94:                                         ; preds = %if.then85
  %sin6_scope_id96 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %sin6_scope_id96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sin6_scope_id96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %scope_id.2, i32 %67)
  %cmp97.not = icmp eq i32 %scope_id.2, %67
  br i1 %cmp97.not, label %if.end94.if.end113_crit_edge, label %if.then99

if.end94.if.end113_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope_id.2)
  %tobool100.not = icmp eq i32 %scope_id.2, 0
  br i1 %tobool100.not, label %if.then99.if.end113_crit_edge, label %if.else104

if.then99.if.end113_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.else104:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool107.not = icmp eq i32 %67, 0
  br i1 %tobool107.not, label %if.else104.if.end113_crit_edge, label %if.then108

if.else104.if.end113_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %1) #9
  br label %out

if.end113:                                        ; preds = %if.else104.if.end113_crit_edge, %if.then99.if.end113_crit_edge, %if.end94.if.end113_crit_edge, %if.else82.if.end113_crit_edge
  %scope_id.3 = phi i32 [ %scope_id.2, %if.else104.if.end113_crit_edge ], [ %scope_id.2, %if.end94.if.end113_crit_edge ], [ %scope_id.2, %if.else82.if.end113_crit_edge ], [ %67, %if.then99.if.end113_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %68 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %69)
  %cmp.i666 = icmp ugt i32 %69, 11
  br i1 %cmp.i666, label %cond.end.i, label %if.end113.if.end117_crit_edge

if.end113.if.end117_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

cond.end.i:                                       ; preds = %if.end113
  %70 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %tobool.not29.i = icmp eq ptr %72, null
  br i1 %tobool.not29.i, label %cond.end.i.if.end117_crit_edge, label %for.body.i.preheader

cond.end.i.if.end117_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

for.body.i.preheader:                             ; preds = %cond.end.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub.neg.i = add i32 %69, %sub.ptr.rhs.cast.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %rdma_payload_len.0 = phi i32 [ %rdma_payload_len.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %cmsg.030.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.for.body.i_crit_edge ], [ %72, %for.body.i.preheader ]
  %73 = ptrtoint ptr %cmsg.030.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmsg.030.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %74)
  %cmp1.i = icmp ult i32 %74, 12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cmsg.030.i to i32
  %sub.i667 = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %sub.i667)
  %cmp4.not.i = icmp ugt i32 %74, %sub.i667
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond, label %for.body.i.out_crit_edge, label %if.end.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %for.body.i
  %cmsg_level.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.030.i, i32 0, i32 1
  %75 = ptrtoint ptr %cmsg_level.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cmsg_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %76)
  %cmp5.not.i = icmp eq i32 %76, 276
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end.i
  %cmsg_type.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.030.i, i32 0, i32 2
  %77 = ptrtoint ptr %cmsg_type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmsg_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp8.i = icmp eq i32 %78, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %74)
  %cmp11.i = icmp ult i32 %74, 68
  br i1 %cmp11.i, label %if.then9.i.out_crit_edge, label %if.end13.i

if.then9.i.out_crit_edge:                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %bytes.i = getelementptr i8, ptr %cmsg.030.i, i32 28
  %79 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %bytes.i, align 8
  %81 = trunc i64 %80 to i32
  %conv14.i = add i32 %rdma_payload_len.0, %81
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end7.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %rdma_payload_len.1 = phi i32 [ %conv14.i, %if.end13.i ], [ %rdma_payload_len.0, %if.end7.i.for.inc.i_crit_edge ], [ %rdma_payload_len.0, %if.end.i.for.inc.i_crit_edge ]
  %sub.i.i.i = add i32 %74, 3
  %and.i.i.i669 = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %cmsg.030.i, i32 %and.i.i.i669
  %add.ptr1.i.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i.i, i32 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %69)
  %cmp.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %69
  %tobool.not36.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i670 = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not36.i
  br i1 %tobool.not.i670, label %for.inc.i.if.end117_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end117_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.end117:                                        ; preds = %for.inc.i.if.end117_crit_edge, %cond.end.i.if.end117_crit_edge, %if.end113.if.end117_crit_edge
  %rdma_payload_len.2.ph = phi i32 [ 0, %if.end113.if.end117_crit_edge ], [ 0, %cond.end.i.if.end117_crit_edge ], [ %rdma_payload_len.1, %for.inc.i.if.end117_crit_edge ]
  %82 = tail call i32 @llvm.umax.i32(i32 %rdma_payload_len.2.ph, i32 %payload_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %82)
  %cmp122 = icmp ugt i32 %82, 1048576
  br i1 %cmp122, label %if.end117.out_crit_edge, label %if.end125

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end125:                                        ; preds = %if.end117
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %83 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %84, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %payload_len)
  %cmp127 = icmp ult i32 %div.i, %payload_len
  br i1 %cmp127, label %if.end125.out_crit_edge, label %if.end130

if.end125.out_crit_edge:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end130:                                        ; preds = %if.end125
  br i1 %18, label %if.then132, label %if.end130.if.end138_crit_edge

if.end130.if.end138_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then132:                                       ; preds = %if.end130
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rs_transport, align 4
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %t_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp133.not = icmp eq i32 %88, 2
  br i1 %cmp133.not, label %if.end136, label %if.then132.out_crit_edge

if.then132.out_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end136:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call137 = tail call i32 @iov_iter_npages(ptr noundef %msg_iter, i32 noundef 2147483647) #9
  br label %if.end138

if.end138:                                        ; preds = %if.end136, %if.end130.if.end138_crit_edge
  %num_sgs.0 = phi i32 [ %call137, %if.end136 ], [ %div633, %if.end130.if.end138_crit_edge ]
  %call139 = call fastcc i32 @rds_rm_size(ptr noundef %msg, i32 noundef %num_sgs.0, ptr noundef nonnull %vct)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end138.out_crit_edge, label %if.end143

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end143:                                        ; preds = %if.end138
  %call144 = tail call ptr @rds_message_alloc(i32 noundef %call139, i32 noundef 3264) #9
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.end143.out_crit_edge, label %if.end147

if.end143.out_crit_edge:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end147:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_len)
  %tobool148.not = icmp eq i32 %payload_len, 0
  br i1 %tobool148.not, label %if.end147.if.end165_crit_edge, label %if.then149

if.end147.if.end165_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then149:                                       ; preds = %if.end147
  %call150 = tail call ptr @rds_message_alloc_sgs(ptr noundef nonnull %call144, i32 noundef %num_sgs.0) #9
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14, i32 2, i32 6
  %89 = ptrtoint ptr %op_sg to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call150, ptr %op_sg, align 8
  %cmp.i672 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i672, label %if.then154, label %if.end158

if.then154:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %call150 to i32
  br label %out

if.end158:                                        ; preds = %if.then149
  %msg_iter159 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call161 = tail call i32 @rds_message_copy_from_user(ptr noundef nonnull %call144, ptr noundef %msg_iter159, i1 noundef zeroext %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end158.if.end165_crit_edge, label %if.end158.out_crit_edge

if.end158.out_crit_edge:                          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end158.if.end165_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.end165:                                        ; preds = %if.end158.if.end165_crit_edge, %if.end147.if.end165_crit_edge
  %91 = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14
  %data166 = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14, i32 2
  %92 = ptrtoint ptr %data166 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load = load i8, ptr %data166, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %data166, align 8
  %m_daddr = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 5
  %93 = call ptr @memcpy(ptr %m_daddr, ptr %daddr, i32 16)
  %rs_conn = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %rs_conn to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rs_conn, align 8
  %tobool167.not = icmp eq ptr %95, null
  br i1 %tobool167.not, label %if.end165.if.else179_crit_edge, label %land.lhs.true

if.end165.if.else179_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else179

land.lhs.true:                                    ; preds = %if.end165
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %c_faddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %c_faddr, align 4
  %98 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %daddr, align 4
  %xor.i673 = xor i32 %99, %97
  %arrayidx4.i674 = getelementptr %struct.rds_connection, ptr %95, i32 0, i32 2, i32 0, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx4.i674 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx4.i674, align 4
  %102 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %10, align 4
  %xor7.i = xor i32 %103, %101
  %or.i675 = or i32 %xor7.i, %xor.i673
  %arrayidx9.i = getelementptr %struct.rds_connection, ptr %95, i32 0, i32 2, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx9.i, align 4
  %106 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %11, align 4
  %xor12.i = xor i32 %107, %105
  %or13.i = or i32 %or.i675, %xor12.i
  %arrayidx15.i = getelementptr %struct.rds_connection, ptr %95, i32 0, i32 2, i32 0, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx15.i, align 4
  %110 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %12, align 4
  %xor18.i = xor i32 %111, %109
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i676 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i676, label %land.lhs.true171, label %land.lhs.true.if.else179_crit_edge

land.lhs.true.if.else179_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else179

land.lhs.true171:                                 ; preds = %land.lhs.true
  %rs_tos = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 32
  %112 = ptrtoint ptr %rs_tos to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rs_tos, align 8
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %95, i32 0, i32 14
  %114 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %c_tos, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %115)
  %cmp175 = icmp eq i8 %113, %115
  br i1 %cmp175, label %land.lhs.true171.if.end193_crit_edge, label %land.lhs.true171.if.else179_crit_edge

land.lhs.true171.if.else179_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else179

land.lhs.true171.if.end193_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.else179:                                       ; preds = %land.lhs.true171.if.else179_crit_edge, %land.lhs.true.if.else179_crit_edge, %if.end165.if.else179_crit_edge
  %116 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %skc_net.i, align 4
  %rs_transport184 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %120 = ptrtoint ptr %rs_transport184 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rs_transport184, align 4
  %rs_tos185 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 32
  %122 = ptrtoint ptr %rs_tos185 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %rs_tos185, align 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %117, i32 0, i32 41
  %124 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sk_allocation, align 8
  %call187 = call ptr @rds_conn_create_outgoing(ptr noundef %119, ptr noundef %sin6_addr75, ptr noundef nonnull %daddr, ptr noundef %121, i8 noundef zeroext %123, i32 noundef %125, i32 noundef %scope_id.3) #9
  %cmp.i677 = icmp ugt ptr %call187, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i677, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %call187 to i32
  br label %out

if.end191:                                        ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %rs_conn to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call187, ptr %rs_conn, align 8
  br label %if.end193

if.end193:                                        ; preds = %if.end191, %land.lhs.true171.if.end193_crit_edge
  %conn.0 = phi ptr [ %call187, %if.end191 ], [ %95, %land.lhs.true171.if.end193_crit_edge ]
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn.0, i32 0, i32 8
  %128 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %c_trans, align 4
  %t_mp_capable = getelementptr inbounds %struct.rds_transport, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %t_mp_capable to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load194 = load i8, ptr %t_mp_capable, align 4
  %131 = and i8 %bf.load194, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool196.not = icmp eq i8 %131, 0
  %c_path201 = getelementptr inbounds %struct.rds_connection, ptr %conn.0, i32 0, i32 17
  %132 = ptrtoint ptr %c_path201 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %c_path201, align 4
  br i1 %tobool196.not, label %if.end193.if.end203_crit_edge, label %if.then197

if.end193.if.end203_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %call198 = call fastcc i32 @rds_send_mprds_hash(ptr noundef %1, ptr noundef %conn.0, i32 noundef %and)
  %arrayidx199 = getelementptr %struct.rds_conn_path, ptr %133, i32 %call198
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %if.end193.if.end203_crit_edge
  %cpath.0 = phi ptr [ %arrayidx199, %if.then197 ], [ %133, %if.end193.if.end203_crit_edge ]
  %m_conn_path = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 15
  %134 = ptrtoint ptr %m_conn_path to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %cpath.0, ptr %m_conn_path, align 8
  %call204 = call fastcc i32 @rds_cmsg_send(ptr noundef %1, ptr noundef nonnull %call144, ptr noundef %msg, ptr noundef nonnull %allocated_mr, ptr noundef nonnull %vct)
  %135 = zext i32 %call204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call204, label %if.end203.out_crit_edge [
    i32 0, label %if.end211
    i32 -11, label %if.then209
  ]

if.end203.out_crit_edge:                          ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then209:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  call void @rds_conn_connect_if_down(ptr noundef %conn.0) #9
  br label %out

if.end211:                                        ; preds = %if.end203
  %rdma = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14, i32 1
  %op_active = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14, i32 1, i32 2
  %136 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load212 = load i8, ptr %op_active, align 8
  %137 = and i8 %bf.load212, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool216.not = icmp eq i8 %137, 0
  br i1 %tobool216.not, label %if.end211.if.end233_crit_edge, label %land.lhs.true217

if.end211.if.end233_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end233

land.lhs.true217:                                 ; preds = %if.end211
  %138 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %c_trans, align 4
  %xmit_rdma = getelementptr inbounds %struct.rds_transport, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %xmit_rdma to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %xmit_rdma, align 4
  %tobool219.not = icmp eq ptr %141, null
  br i1 %tobool219.not, label %if.then220, label %land.lhs.true217.if.end233_crit_edge

land.lhs.true217.if.end233_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end233

if.then220:                                       ; preds = %land.lhs.true217
  %call221 = call i32 @___ratelimit(ptr noundef nonnull @rds_sendmsg._rs, ptr noundef nonnull @__func__.rds_sendmsg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.then220.out_crit_edge, label %do.end226

if.then220.out_crit_edge:                         ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end226:                                        ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %c_trans, align 4
  %xmit_rdma230 = getelementptr inbounds %struct.rds_transport, ptr %143, i32 0, i32 13
  %144 = ptrtoint ptr %xmit_rdma230 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %xmit_rdma230, align 4
  %call231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %rdma, ptr noundef %145) #12
  br label %out

if.end233:                                        ; preds = %land.lhs.true217.if.end233_crit_edge, %if.end211.if.end233_crit_edge
  %op_active234 = getelementptr inbounds %struct.rds_message, ptr %call144, i32 0, i32 14, i32 0, i32 4
  %146 = ptrtoint ptr %op_active234 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load235 = load i8, ptr %op_active234, align 8
  %147 = and i8 %bf.load235, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool239.not = icmp eq i8 %147, 0
  br i1 %tobool239.not, label %if.end233.if.end256_crit_edge, label %land.lhs.true240

if.end233.if.end256_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

land.lhs.true240:                                 ; preds = %if.end233
  %148 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %c_trans, align 4
  %xmit_atomic = getelementptr inbounds %struct.rds_transport, ptr %149, i32 0, i32 14
  %150 = ptrtoint ptr %xmit_atomic to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %xmit_atomic, align 4
  %tobool242.not = icmp eq ptr %151, null
  br i1 %tobool242.not, label %if.then243, label %land.lhs.true240.if.end256_crit_edge

land.lhs.true240.if.end256_crit_edge:             ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

if.then243:                                       ; preds = %land.lhs.true240
  %call244 = call i32 @___ratelimit(ptr noundef nonnull @rds_sendmsg._rs.3, ptr noundef nonnull @__func__.rds_sendmsg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.then243.out_crit_edge, label %do.end249

if.then243.out_crit_edge:                         ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end249:                                        ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %c_trans, align 4
  %xmit_atomic253 = getelementptr inbounds %struct.rds_transport, ptr %153, i32 0, i32 14
  %154 = ptrtoint ptr %xmit_atomic253 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %xmit_atomic253, align 4
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %91, ptr noundef %155) #12
  br label %out

if.end256:                                        ; preds = %land.lhs.true240.if.end256_crit_edge, %if.end233.if.end256_crit_edge
  %call257 = call fastcc zeroext i1 @rds_destroy_pending(ptr noundef %conn.0)
  br i1 %call257, label %if.end256.out_crit_edge, label %if.end259

if.end256.out_crit_edge:                          ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end259:                                        ; preds = %if.end256
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %cpath.0, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #9
  %156 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i678.not = icmp eq i32 %157, 0
  br i1 %cmp.i678.not, label %if.then262, label %if.end259.if.end263_crit_edge

if.end259.if.end263_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end263

if.then262:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #11
  call void @rds_check_all_paths(ptr noundef %conn.0) #9
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end259.if.end263_crit_edge
  %c_fcong = getelementptr inbounds %struct.rds_connection, ptr %conn.0, i32 0, i32 10
  %158 = ptrtoint ptr %c_fcong to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %c_fcong, align 4
  %call264 = call i32 @rds_cong_wait(ptr noundef %159, i16 noundef zeroext %dport.1, i32 noundef %and, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %while.cond.preheader, label %if.then266

while.cond.preheader:                             ; preds = %if.end263
  %sin6_port269 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 1
  %160 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  br label %while.cond

if.then266:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  %rs_seen_congestion = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 11
  %161 = ptrtoint ptr %rs_seen_congestion to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %rs_seen_congestion, align 8
  br label %out

while.cond:                                       ; preds = %do.end365.while.cond_crit_edge, %while.cond.preheader
  %timeo.0 = phi i32 [ %__ret.1, %do.end365.while.cond_crit_edge ], [ %cond.i, %while.cond.preheader ]
  %162 = ptrtoint ptr %sin6_port269 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %sin6_port269, align 2
  %call270 = call fastcc i32 @rds_send_queue_rm(ptr noundef %1, ptr noundef %conn.0, ptr noundef %cpath.0, ptr noundef %call144, i16 noundef zeroext %163, i16 noundef zeroext %dport.1, ptr noundef nonnull %queued)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  %164 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %167, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9
  %168 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i679 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i679 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cpu, align 4
  %arrayidx283 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx283, align 4
  %add284 = add i32 %173, ptrtoint (ptr @rds_stats to i32)
  %174 = inttoptr i32 %add284 to ptr
  br i1 %tobool271.not, label %do.body273, label %do.body378

do.body273:                                       ; preds = %while.cond
  %s_send_queue_full = getelementptr inbounds %struct.rds_statistics, ptr %174, i32 0, i32 14
  %175 = ptrtoint ptr %s_send_queue_full to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %s_send_queue_full, align 8
  %inc = add i64 %176, 1
  store i64 %inc, ptr %s_send_queue_full, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %177 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i635 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i635 to ptr
  %preempt_count.i.i636 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %preempt_count.i.i636 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %preempt_count.i.i636, align 4
  %sub.i = add i32 %180, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i636, align 4
  br i1 %tobool.not, label %if.end292, label %do.body273.out_crit_edge

do.body273.out_crit_edge:                         ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end292:                                        ; preds = %do.body273
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1365) #9
  %181 = ptrtoint ptr %sin6_port269 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %sin6_port269, align 2
  %call301 = call fastcc i32 @rds_send_queue_rm(ptr noundef %1, ptr noundef %conn.0, ptr noundef %cpath.0, ptr noundef %call144, i16 noundef zeroext %182, i16 noundef zeroext %dport.1, ptr noundef nonnull %queued)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0)
  %tobool307.not = icmp eq i32 %timeo.0, 0
  %spec.store.select = select i1 %tobool307.not, i32 1, i32 %timeo.0
  %__ret.0 = select i1 %tobool302.not, i32 %timeo.0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool313.not = icmp eq i32 %__ret.0, 0
  %not.tobool302.not = xor i1 %tobool302.not, true
  %183 = select i1 %not.tobool302.not, i1 true, i1 %tobool313.not
  br i1 %183, label %if.end292.if.end352_crit_edge, label %if.then316

if.end292.if.end352_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end352

if.then316:                                       ; preds = %if.end292
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %184 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  br label %for.cond

for.cond:                                         ; preds = %cleanup347, %if.then316
  %__ret317.0 = phi i32 [ %timeo.0, %if.then316 ], [ %call346, %cleanup347 ]
  %185 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile ptr, ptr %160, align 8
  %call319 = call i32 @prepare_to_wait_event(ptr noundef %186, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %187 = ptrtoint ptr %sin6_port269 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %sin6_port269, align 2
  %call323 = call fastcc i32 @rds_send_queue_rm(ptr noundef %1, ptr noundef %conn.0, ptr noundef %cpath.0, ptr noundef %call144, i16 noundef zeroext %188, i16 noundef zeroext %dport.1, ptr noundef nonnull %queued)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret317.0)
  %tobool329.not = icmp eq i32 %__ret317.0, 0
  %spec.store.select464 = select i1 %tobool329.not, i32 1, i32 %__ret317.0
  %__ret317.1 = select i1 %tobool324.not, i32 %__ret317.0, i32 %spec.store.select464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret317.1)
  %tobool336.not = icmp eq i32 %__ret317.1, 0
  %not.tobool324.not = xor i1 %tobool324.not, true
  %189 = select i1 %not.tobool324.not, i1 true, i1 %tobool336.not
  br i1 %189, label %for.end, label %if.end342

if.end342:                                        ; preds = %for.cond
  %tobool343.not = icmp eq i32 %call319, 0
  br i1 %tobool343.not, label %cleanup347, label %if.end342.__out_crit_edge

if.end342.__out_crit_edge:                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup347:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #11
  %call346 = call i32 @schedule_timeout(i32 noundef %__ret317.1) #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile ptr, ptr %160, align 8
  call void @finish_wait(ptr noundef %191, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end342.__out_crit_edge
  %__ret317.2697 = phi i32 [ %__ret317.1, %for.end ], [ %call319, %if.end342.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end352

if.end352:                                        ; preds = %__out, %if.end292.if.end352_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end292.if.end352_crit_edge ], [ %__ret317.2697, %__out ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_sendmsg.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_sendmsg, %if.then362)) #9
          to label %do.end365 [label %if.then362], !srcloc !87

if.then362:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %queued, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_sendmsg.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rds_sendmsg, i32 noundef %193, i32 noundef %__ret.1) #9
  br label %do.end365

do.end365:                                        ; preds = %if.then362, %if.end352
  %cmp366 = icmp sgt i32 %__ret.1, 0
  br i1 %cmp366, label %do.end365.while.cond_crit_edge, label %if.end372

do.end365.while.cond_crit_edge:                   ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end372:                                        ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp373 = icmp eq i32 %__ret.1, 0
  %spec.store.select465 = select i1 %cmp373, i32 -110, i32 %__ret.1
  br label %out

do.body378:                                       ; preds = %while.cond
  %194 = inttoptr i32 %add284 to ptr
  %s_send_queued = getelementptr inbounds %struct.rds_statistics, ptr %194, i32 0, i32 21
  %195 = ptrtoint ptr %s_send_queued to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %s_send_queued, align 8
  %inc393 = add i64 %196, 1
  store i64 %inc393, ptr %s_send_queued, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %197 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i640 = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i.i640 to ptr
  %preempt_count.i.i641 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %preempt_count.i.i641 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %preempt_count.i.i641, align 4
  %sub.i642 = add i32 %200, -1
  store volatile i32 %sub.i642, ptr %preempt_count.i.i641, align 4
  %call399 = call i32 @rds_send_xmit(ptr noundef %cpath.0)
  %201 = and i32 %call399, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %201)
  %switch = icmp eq i32 %201, -12
  br i1 %switch, label %if.then405, label %do.body378.if.end411_crit_edge

do.body378.if.end411_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end411

if.then405:                                       ; preds = %do.body378
  %202 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i = and i32 %202, -16384
  %203 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %205, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then405.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then405.rcu_read_lock.exit_crit_edge:          ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then405
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then405.rcu_read_lock.exit_crit_edge
  %206 = ptrtoint ptr %cpath.0 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cpath.0, align 8
  %call406 = call fastcc zeroext i1 @rds_destroy_pending(ptr noundef %207)
  br i1 %call406, label %rcu_read_lock.exit.if.end410_crit_edge, label %if.else408

rcu_read_lock.exit.if.end410_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410

if.else408:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %208 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %cpath.0, i32 0, i32 18
  %call.i681 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %208, ptr noundef %cp_send_w, i32 noundef 1) #9
  br label %if.end410

if.end410:                                        ; preds = %if.else408, %rcu_read_lock.exit.if.end410_crit_edge
  %ret.3 = phi i32 [ 0, %if.else408 ], [ -101, %rcu_read_lock.exit.if.end410_crit_edge ]
  call fastcc void @rcu_read_unlock()
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %do.body378.if.end411_crit_edge
  %ret.4 = phi i32 [ %ret.3, %if.end410 ], [ %call399, %do.body378.if.end411_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool412.not = icmp eq i32 %ret.4, 0
  br i1 %tobool412.not, label %if.end414, label %if.end411.out_crit_edge

if.end411.out_crit_edge:                          ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end414:                                        ; preds = %if.end411
  call void @rds_message_put(ptr noundef %call144) #9
  %209 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp416707 = icmp sgt i32 %210, 0
  br i1 %cmp416707, label %for.body.lr.ph, label %if.end414.for.end420_crit_edge

if.end414.for.end420_crit_edge:                   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end420

for.body.lr.ph:                                   ; preds = %if.end414
  %211 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %vct, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ind.0708 = phi i32 [ 0, %for.body.lr.ph ], [ %inc419, %for.body.for.body_crit_edge ]
  %arrayidx418 = getelementptr %struct.rds_iov_vector, ptr %212, i32 %ind.0708
  %213 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx418, align 4
  call void @kfree(ptr noundef %214) #9
  %inc419 = add nuw nsw i32 %ind.0708, 1
  %exitcond.not = icmp eq i32 %inc419, %210
  br i1 %exitcond.not, label %for.body.for.end420_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end420_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end420

for.end420:                                       ; preds = %for.body.for.end420_crit_edge, %if.end414.for.end420_crit_edge
  %215 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %vct, align 4
  call void @kfree(ptr noundef %216) #9
  br label %cleanup441

out:                                              ; preds = %if.end411.out_crit_edge, %if.end372, %do.body273.out_crit_edge, %if.then266, %if.end256.out_crit_edge, %do.end249, %if.then243.out_crit_edge, %do.end226, %if.then220.out_crit_edge, %if.then209, %if.end203.out_crit_edge, %if.then189, %if.end158.out_crit_edge, %if.then154, %if.end143.out_crit_edge, %if.end138.out_crit_edge, %if.then132.out_crit_edge, %if.end125.out_crit_edge, %if.end117.out_crit_edge, %if.then9.i.out_crit_edge, %for.body.i.out_crit_edge, %if.then108, %if.then93, %if.then81, %if.then62.out_crit_edge, %lor.lhs.false54.out_crit_edge, %if.end47.out_crit_edge, %if.end47.out_crit_edge733, %if.then43.out_crit_edge, %sw.bb35.out_crit_edge, %lor.lhs.false26.out_crit_edge, %sw.bb.out_crit_edge, %sw.bb.out_crit_edge732, %if.end19.out_crit_edge, %if.then16.out_crit_edge, %land.end.out_crit_edge
  %ret.5 = phi i32 [ -107, %if.then81 ], [ -95, %if.then93 ], [ -22, %if.then108 ], [ %call139, %if.end138.out_crit_edge ], [ %90, %if.then154 ], [ %call161, %if.end158.out_crit_edge ], [ -11, %if.then209 ], [ %call264, %if.then266 ], [ %spec.store.select465, %if.end372 ], [ %ret.4, %if.end411.out_crit_edge ], [ %126, %if.then189 ], [ -95, %land.end.out_crit_edge ], [ -22, %if.then16.out_crit_edge ], [ -22, %sw.bb.out_crit_edge ], [ -22, %sw.bb.out_crit_edge732 ], [ -22, %lor.lhs.false26.out_crit_edge ], [ -22, %if.end19.out_crit_edge ], [ -90, %if.end117.out_crit_edge ], [ -90, %if.end125.out_crit_edge ], [ -95, %if.then132.out_crit_edge ], [ -12, %if.end143.out_crit_edge ], [ %call204, %if.end203.out_crit_edge ], [ -95, %do.end226 ], [ -95, %if.then220.out_crit_edge ], [ -95, %do.end249 ], [ -95, %if.then243.out_crit_edge ], [ -11, %if.end256.out_crit_edge ], [ -22, %sw.bb35.out_crit_edge ], [ -22, %if.then62.out_crit_edge ], [ -22, %if.then43.out_crit_edge ], [ -22, %if.end47.out_crit_edge ], [ -22, %if.end47.out_crit_edge733 ], [ -22, %lor.lhs.false54.out_crit_edge ], [ -11, %do.body273.out_crit_edge ], [ -22, %for.body.i.out_crit_edge ], [ -22, %if.then9.i.out_crit_edge ]
  %rm.0 = phi ptr [ null, %if.then81 ], [ null, %if.then93 ], [ null, %if.then108 ], [ null, %if.end138.out_crit_edge ], [ %call144, %if.then154 ], [ %call144, %if.end158.out_crit_edge ], [ %call144, %if.then209 ], [ %call144, %if.then266 ], [ %call144, %if.end372 ], [ %call144, %if.end411.out_crit_edge ], [ %call144, %if.then189 ], [ null, %land.end.out_crit_edge ], [ null, %if.then16.out_crit_edge ], [ null, %sw.bb.out_crit_edge ], [ null, %sw.bb.out_crit_edge732 ], [ null, %lor.lhs.false26.out_crit_edge ], [ null, %if.end19.out_crit_edge ], [ null, %if.end117.out_crit_edge ], [ null, %if.end125.out_crit_edge ], [ null, %if.then132.out_crit_edge ], [ null, %if.end143.out_crit_edge ], [ %call144, %if.end203.out_crit_edge ], [ %call144, %do.end226 ], [ %call144, %if.then220.out_crit_edge ], [ %call144, %do.end249 ], [ %call144, %if.then243.out_crit_edge ], [ %call144, %if.end256.out_crit_edge ], [ null, %sw.bb35.out_crit_edge ], [ null, %if.then62.out_crit_edge ], [ null, %if.then43.out_crit_edge ], [ null, %if.end47.out_crit_edge ], [ null, %if.end47.out_crit_edge733 ], [ null, %lor.lhs.false54.out_crit_edge ], [ %call144, %do.body273.out_crit_edge ], [ null, %for.body.i.out_crit_edge ], [ null, %if.then9.i.out_crit_edge ]
  %217 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp424709 = icmp sgt i32 %218, 0
  br i1 %cmp424709, label %for.body426.lr.ph, label %out.for.end432_crit_edge

out.for.end432_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end432

for.body426.lr.ph:                                ; preds = %out
  %219 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %vct, align 4
  br label %for.body426

for.body426:                                      ; preds = %for.body426.for.body426_crit_edge, %for.body426.lr.ph
  %ind.1710 = phi i32 [ 0, %for.body426.lr.ph ], [ %inc431, %for.body426.for.body426_crit_edge ]
  %arrayidx428 = getelementptr %struct.rds_iov_vector, ptr %220, i32 %ind.1710
  %221 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx428, align 4
  call void @kfree(ptr noundef %222) #9
  %inc431 = add nuw nsw i32 %ind.1710, 1
  %exitcond714.not = icmp eq i32 %inc431, %218
  br i1 %exitcond714.not, label %for.body426.for.end432_crit_edge, label %for.body426.for.body426_crit_edge

for.body426.for.body426_crit_edge:                ; preds = %for.body426
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body426

for.body426.for.end432_crit_edge:                 ; preds = %for.body426
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end432

for.end432:                                       ; preds = %for.body426.for.end432_crit_edge, %out.for.end432_crit_edge
  %223 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vct, align 4
  call void @kfree(ptr noundef %224) #9
  %225 = ptrtoint ptr %allocated_mr to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %allocated_mr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool434.not = icmp eq i32 %226, 0
  br i1 %tobool434.not, label %for.end432.if.end437_crit_edge, label %if.then435

for.end432.if.end437_crit_edge:                   ; preds = %for.end432
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end437

if.then435:                                       ; preds = %for.end432
  call void @__sanitizer_cov_trace_pc() #11
  %m_rdma_cookie = getelementptr inbounds %struct.rds_message, ptr %rm.0, i32 0, i32 10
  %227 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %m_rdma_cookie, align 8
  %conv.i682 = trunc i64 %228 to i32
  call void @rds_rdma_unuse(ptr noundef %1, i32 noundef %conv.i682, i32 noundef 1) #9
  br label %if.end437

if.end437:                                        ; preds = %if.then435, %for.end432.if.end437_crit_edge
  %tobool438.not = icmp eq ptr %rm.0, null
  br i1 %tobool438.not, label %if.end437.cleanup441_crit_edge, label %if.then439

if.end437.cleanup441_crit_edge:                   ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup441

if.then439:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #11
  call void @rds_message_put(ptr noundef nonnull %rm.0) #9
  br label %cleanup441

cleanup441:                                       ; preds = %if.then439, %if.end437.cleanup441_crit_edge, %for.end420
  %retval.0 = phi i32 [ %payload_len, %for.end420 ], [ %ret.5, %if.then439 ], [ %ret.5, %if.end437.cleanup441_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vct) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daddr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated_mr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queued) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_rm_size(ptr nocapture noundef readonly %msg, i32 noundef %num_sgs, ptr nocapture noundef %vct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sgs)
  %cmp = icmp slt i32 %num_sgs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp2 = icmp ugt i32 %1, 11
  br i1 %cmp2, label %cond.end, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not101 = icmp eq ptr %4, null
  br i1 %tobool.not101, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %indx = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 2
  %len = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 1
  %incr = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %zcopy_cookie.0.off0105 = phi i1 [ false, %for.body.lr.ph ], [ %zcopy_cookie.2.off0, %for.inc.for.body_crit_edge ]
  %cmsg_groups.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %cmsg_groups.1, %for.inc.for.body_crit_edge ]
  %size.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %for.inc.for.body_crit_edge ]
  %cmsg.0102 = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr.i.i, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cmsg.0102 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg.0102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp3 = icmp ugt i32 %7, 11
  br i1 %cmp3, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cmsg.0102 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = sub i32 %9, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp6.not = icmp ugt i32 %7, %sub
  br i1 %cmp6.not, label %land.lhs.true.cleanup_crit_edge, label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0102, i32 0, i32 1
  %12 = ptrtoint ptr %cmsg_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmsg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %13)
  %cmp9.not = icmp eq i32 %13, 276
  br i1 %cmp9.not, label %if.end11, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %if.end8
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0102, i32 0, i32 2
  %14 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmsg_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %15, label %if.end11.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 12, label %sw.bb32
    i32 2, label %if.end11.sw.bb33_crit_edge
    i32 3, label %if.end11.sw.bb33_crit_edge111
    i32 7, label %if.end11.sw.bb35_crit_edge
    i32 6, label %if.end11.sw.bb35_crit_edge112
    i32 9, label %if.end11.sw.bb35_crit_edge113
    i32 8, label %if.end11.sw.bb35_crit_edge114
  ]

if.end11.sw.bb35_crit_edge114:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end11.sw.bb35_crit_edge113:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end11.sw.bb35_crit_edge112:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end11.sw.bb35_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end11.sw.bb33_crit_edge111:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.end11.sw.bb33_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %17 = ptrtoint ptr %indx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %indx, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.not = icmp slt i32 %18, %20
  br i1 %cmp12.not, label %sw.bb.if.end23_crit_edge, label %if.then13

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %sw.bb
  %21 = ptrtoint ptr %incr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incr, align 4
  %add = add i32 %22, %20
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %len, align 4
  %24 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vct, align 4
  %mul = shl i32 %add, 3
  %call = tail call noalias ptr @krealloc(ptr noundef %25, i32 noundef %mul, i32 noundef 3264) #13
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %incr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incr, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %sub20 = sub i32 %29, %27
  store i32 %sub20, ptr %len, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %vct to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %vct, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %sw.bb.if.end23_crit_edge
  %31 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vct, align 4
  %33 = ptrtoint ptr %indx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %indx, align 4
  %arrayidx = getelementptr %struct.rds_iov_vector, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %36 = load i32, ptr %indx, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %indx, align 4
  %add.ptr = getelementptr i8, ptr %cmsg.0102, i32 12
  %call27 = tail call i32 @rds_rdma_extra_size(ptr noundef %add.ptr, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %cmsg_groups.0104, 1
  %add31 = add i32 %call27, %size.0103
  br label %for.inc

sw.bb32:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb32, %if.end11.sw.bb33_crit_edge, %if.end11.sw.bb33_crit_edge111
  %zcopy_cookie.1.off0 = phi i1 [ %zcopy_cookie.0.off0105, %if.end11.sw.bb33_crit_edge ], [ %zcopy_cookie.0.off0105, %if.end11.sw.bb33_crit_edge111 ], [ true, %sw.bb32 ]
  %or34 = or i32 %cmsg_groups.0104, 2
  br label %for.inc

sw.bb35:                                          ; preds = %if.end11.sw.bb35_crit_edge, %if.end11.sw.bb35_crit_edge112, %if.end11.sw.bb35_crit_edge113, %if.end11.sw.bb35_crit_edge114
  %or36 = or i32 %cmsg_groups.0104, 1
  %add37 = add i32 %size.0103, 20
  br label %for.inc

for.inc:                                          ; preds = %sw.bb35, %sw.bb33, %if.end30, %if.end8.for.inc_crit_edge
  %size.1 = phi i32 [ %size.0103, %if.end8.for.inc_crit_edge ], [ %add37, %sw.bb35 ], [ %size.0103, %sw.bb33 ], [ %add31, %if.end30 ]
  %cmsg_groups.1 = phi i32 [ %cmsg_groups.0104, %if.end8.for.inc_crit_edge ], [ %or36, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %or, %if.end30 ]
  %zcopy_cookie.2.off0 = phi i1 [ %zcopy_cookie.0.off0105, %if.end8.for.inc_crit_edge ], [ %zcopy_cookie.0.off0105, %sw.bb35 ], [ %zcopy_cookie.1.off0, %sw.bb33 ], [ %zcopy_cookie.0.off0105, %if.end30 ]
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  %39 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_controllen, align 8
  %41 = ptrtoint ptr %cmsg.0102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmsg.0102, align 4
  %sub.i.i = add i32 %42, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %cmsg.0102, i32 %and.i.i
  %add.ptr1.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %40)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, %40
  %tobool.not110 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not110
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %size.1, %for.inc.for.end_crit_edge ]
  %cmsg_groups.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %cmsg_groups.1, %for.inc.for.end_crit_edge ]
  %zcopy_cookie.0.off0.lcssa = phi i1 [ false, %cond.end.for.end_crit_edge ], [ false, %if.end.for.end_crit_edge ], [ %zcopy_cookie.2.off0, %for.inc.for.end_crit_edge ]
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %43 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_flags, align 4
  %and = and i32 %44, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool39.not, i1 true, i1 %zcopy_cookie.0.off0.lcssa
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmsg_groups.0.lcssa)
  %cmp46 = icmp eq i32 %cmsg_groups.0.lcssa, 3
  %or.cond = select i1 %brmerge.not, i1 true, i1 %cmp46
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end48

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul44 = mul i32 %num_sgs, 20
  %add45 = add i32 %size.0.lcssa, %mul44
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %for.end.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then17, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then17 ], [ %add45, %if.end48 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_message_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_message_alloc_sgs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_copy_from_user(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_conn_create_outgoing(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_send_mprds_hash(ptr nocapture noundef readonly %rs, ptr noundef %conn, i32 noundef %nonblock) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_npaths = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 6
  %0 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %sin6_port = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sin6_port, align 2
  %conv = zext i16 %3 to i32
  %rs_hash_initval = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 28
  %4 = ptrtoint ptr %rs_hash_initval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs_hash_initval, align 4
  %add1.i = add i32 %5, -559038733
  %add.i.i = add i32 %add1.i, %conv
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #9
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #9
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #9
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #9
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #9
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  br i1 %cmp, label %land.lhs.true, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i5.i.i83 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #9
  %sub17.i.i84 = sub i32 %xor15.i.i, %or.i5.i.i83
  %xor18.i.i85 = xor i32 %sub17.i.i84, %sub11.i.i
  %or.i6.i.i86 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i84, i32 %sub17.i.i84, i32 24) #9
  %sub20.i.i87 = sub i32 %xor18.i.i85, %or.i6.i.i86
  %sub = add i32 %1, -1
  %and7 = and i32 %sub20.i.i87, %sub
  br label %cleanup50

land.lhs.true:                                    ; preds = %entry
  %or.i5.i.i = lshr i32 %sub14.i.i, 18
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = lshr i32 %sub17.i.i, 8
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  %and = and i32 %sub20.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %land.lhs.true.cleanup50_crit_edge, label %if.then13

land.lhs.true.cleanup50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.then13:                                        ; preds = %land.lhs.true
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %6 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_path.i, align 4
  %cp_lock.i = getelementptr %struct.rds_conn_path, ptr %7, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock.i) #9
  %c_ping_triggered.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %8 = ptrtoint ptr %c_ping_triggered.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %c_ping_triggered.i, align 4
  %9 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i, i32 noundef %call2.i) #9
  br label %rds_send_ping.exit

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i32 %bf.load.i, 536870912
  %10 = ptrtoint ptr %c_ping_triggered.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.set.i, ptr %c_ping_triggered.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i, i32 noundef %call2.i) #9
  %11 = tail call fastcc i32 @rds_send_probe(ptr noundef %7, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  br label %rds_send_ping.exit

rds_send_ping.exit:                               ; preds = %if.end.i, %if.then.i
  %12 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then17, label %rds_send_ping.exit.if.end43_crit_edge

rds_send_ping.exit.if.end43_crit_edge:            ; preds = %rds_send_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then17:                                        ; preds = %rds_send_ping.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not = icmp eq i32 %nonblock, 0
  br i1 %tobool.not, label %if.end19, label %if.then17.cleanup50_crit_edge

if.then17.cleanup50_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.end19:                                         ; preds = %if.then17
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1069) #9
  %14 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.not = icmp eq i32 %15, 0
  br i1 %cmp24.not, label %if.then26, label %if.end19.if.end43_crit_edge

if.end19.if.end43_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then26:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %c_hs_waitq = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 18
  %call28103 = call i32 @prepare_to_wait_event(ptr noundef %c_hs_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %17 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30.not104 = icmp eq i32 %18, 0
  br i1 %cmp30.not104, label %if.then26.if.end33_crit_edge, label %if.then26.if.end38.thread99_crit_edge

if.then26.if.end38.thread99_crit_edge:            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.thread99

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  br label %if.end33

if.end33:                                         ; preds = %cleanup.if.end33_crit_edge, %if.then26.if.end33_crit_edge
  %call28105 = phi i32 [ %call28, %cleanup.if.end33_crit_edge ], [ %call28103, %if.then26.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28105)
  %tobool34.not = icmp eq i32 %call28105, 0
  br i1 %tobool34.not, label %cleanup, label %if.end38

cleanup:                                          ; preds = %if.end33
  call void @schedule() #9
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %c_hs_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %19 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_npaths, align 4
  %cmp30.not = icmp eq i32 %20, 0
  br i1 %cmp30.not, label %cleanup.if.end33_crit_edge, label %cleanup.if.end38.thread99_crit_edge

cleanup.if.end38.thread99_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.thread99

cleanup.if.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end38.thread99:                                ; preds = %cleanup.if.end38.thread99_crit_edge, %if.then26.if.end38.thread99_crit_edge
  call void @finish_wait(ptr noundef %c_hs_waitq, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end43

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.end38.thread99, %if.end19.if.end43_crit_edge, %rds_send_ping.exit.if.end43_crit_edge
  %hash.1 = phi i32 [ %and, %rds_send_ping.exit.if.end43_crit_edge ], [ 0, %if.end38 ], [ %and, %if.end38.thread99 ], [ %and, %if.end19.if.end43_crit_edge ]
  %21 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp45 = icmp eq i32 %22, 1
  %spec.select65 = select i1 %cmp45, i32 0, i32 %hash.1
  br label %cleanup50

cleanup50:                                        ; preds = %if.end43, %if.then17.cleanup50_crit_edge, %land.lhs.true.cleanup50_crit_edge, %if.end
  %retval.0 = phi i32 [ 0, %if.then17.cleanup50_crit_edge ], [ 0, %land.lhs.true.cleanup50_crit_edge ], [ %and7, %if.end ], [ %spec.select65, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_cmsg_send(ptr noundef %rs, ptr noundef %rm, ptr nocapture noundef readonly %msg, ptr nocapture noundef writeonly %allocated_mr, ptr nocapture noundef readonly %vct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %op_mmp_znotifier.i = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 5
  %indx = getelementptr inbounds %struct.rds_iov_vector_arr, ptr %vct, i32 0, i32 2
  %tobool.not68 = icmp eq ptr %4, null
  br i1 %tobool.not68, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ind.070 = phi i32 [ 0, %for.body.lr.ph ], [ %ind.2, %for.inc.for.body_crit_edge ]
  %cmsg.069 = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr.i.i, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cmsg.069 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg.069, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp1 = icmp ugt i32 %7, 11
  br i1 %cmp1, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cmsg.069 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = sub i32 %9, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp4.not = icmp ugt i32 %7, %sub
  br i1 %cmp4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.069, i32 0, i32 1
  %12 = ptrtoint ptr %cmsg_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmsg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %13)
  %cmp5.not = icmp eq i32 %13, 276
  br i1 %cmp5.not, label %if.end7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.069, i32 0, i32 2
  %14 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmsg_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %15, label %if.end7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
    i32 7, label %if.end7.sw.bb21_crit_edge
    i32 6, label %if.end7.sw.bb21_crit_edge83
    i32 9, label %if.end7.sw.bb21_crit_edge84
    i32 8, label %if.end7.sw.bb21_crit_edge85
    i32 12, label %sw.bb23
  ]

if.end7.sw.bb21_crit_edge85:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

if.end7.sw.bb21_crit_edge84:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

if.end7.sw.bb21_crit_edge83:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

if.end7.sw.bb21_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %17 = ptrtoint ptr %indx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %indx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ind.070, i32 %18)
  %cmp8.not = icmp slt i32 %ind.070, %18
  br i1 %cmp8.not, label %if.end10, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %vct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vct, align 4
  %arrayidx = getelementptr %struct.rds_iov_vector, ptr %20, i32 %ind.070
  %call = tail call i32 @rds_cmsg_rdma_args(ptr noundef %rs, ptr noundef %rm, ptr noundef nonnull %cmsg.069, ptr noundef %arrayidx) #9
  %inc = add nsw i32 %ind.070, 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @rds_cmsg_rdma_dest(ptr noundef %rs, ptr noundef %rm, ptr noundef nonnull %cmsg.069) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  %call14 = tail call i32 @rds_cmsg_rdma_map(ptr noundef %rs, ptr noundef %rm, ptr noundef nonnull %cmsg.069) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %allocated_mr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %allocated_mr, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call14)
  %cmp17 = icmp eq i32 %call14, -19
  %spec.store.select = select i1 %cmp17, i32 -11, i32 %call14
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end7.sw.bb21_crit_edge, %if.end7.sw.bb21_crit_edge83, %if.end7.sw.bb21_crit_edge84, %if.end7.sw.bb21_crit_edge85
  %call22 = tail call i32 @rds_cmsg_atomic(ptr noundef %rs, ptr noundef %rm, ptr noundef nonnull %cmsg.069) #9
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp ult i32 %7, 16
  br i1 %cmp.i, label %sw.bb23.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb23
  %22 = ptrtoint ptr %op_mmp_znotifier.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_mmp_znotifier.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %cmsg.069, i32 12
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %z_cookie.i = getelementptr inbounds %struct.rds_znotifier, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %z_cookie.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %z_cookie.i, align 4
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb21, %if.else, %sw.bb11, %if.end10
  %ret.1 = phi i32 [ %call22, %sw.bb21 ], [ %spec.store.select, %if.else ], [ %call12, %sw.bb11 ], [ %call, %if.end10 ]
  %ind.1 = phi i32 [ %ind.070, %sw.bb21 ], [ %ind.070, %if.else ], [ %ind.070, %sw.bb11 ], [ %inc, %if.end10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool25.not = icmp eq i32 %ret.1, 0
  br i1 %tobool25.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %if.end.i, %if.then16, %if.end.for.inc_crit_edge
  %ind.2 = phi i32 [ %ind.070, %if.end.for.inc_crit_edge ], [ %ind.1, %sw.epilog.for.inc_crit_edge ], [ %ind.070, %if.then16 ], [ %ind.070, %if.end.i ]
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_controllen, align 8
  %31 = ptrtoint ptr %cmsg.069 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmsg.069, align 4
  %sub.i.i = add i32 %32, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %cmsg.069, i32 %and.i.i
  %add.ptr1.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %30)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, %30
  %tobool.not82 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not82
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_connect_if_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_check_all_paths(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cong_wait(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_send_queue_rm(ptr noundef %rs, ptr noundef %conn, ptr noundef %cp, ptr noundef %rm, i16 noundef zeroext %sport, i16 noundef zeroext %dport, ptr nocapture noundef %queued) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %i_hdr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %2 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_len, align 8
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock) #9
  %rs_snd_bytes = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 14
  %4 = ptrtoint ptr %rs_snd_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs_snd_bytes, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %rs, i32 0, i32 21
  %6 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div.i)
  %cmp6 = icmp ult i32 %5, %div.i
  br i1 %cmp6, label %if.then8, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then8:                                         ; preds = %if.end
  %add = add i32 %5, %3
  %8 = ptrtoint ptr %rs_snd_bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %rs_snd_bytes, align 8
  %div = sdiv i32 %7, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp12.not = icmp ult i32 %add, %div
  br i1 %cmp12.not, label %if.then8.if.end15_crit_edge, label %if.then14

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %m_flags) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then8.if.end15_crit_edge
  %m_sock_item = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 1
  %rs_send_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %m_sock_item, ptr noundef %10, ptr noundef %rs_send_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m_sock_item, ptr %prev.i, align 4
  %12 = ptrtoint ptr %m_sock_item to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rs_send_queue, ptr %m_sock_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m_sock_item, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  %m_flags16 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %m_flags16) #9
  tail call void @rds_message_addref(ptr noundef %rm) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %rs, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %m_rs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 9
  %17 = ptrtoint ptr %m_rs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rs, ptr %m_rs, align 4
  tail call void @rds_message_populate_header(ptr noundef %i_hdr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i64 noundef 0) #9
  %i_conn = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %conn, ptr %i_conn, align 4
  %i_conn_path = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %i_conn_path to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cp, ptr %i_conn_path, align 8
  tail call void @rds_message_addref(ptr noundef %rm) #9
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %cp_lock) #9
  %cp_next_tx_seq = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 9
  %20 = ptrtoint ptr %cp_next_tx_seq to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cp_next_tx_seq, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %cp_next_tx_seq, align 8
  %22 = ptrtoint ptr %i_hdr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %i_hdr, align 8
  %m_conn_item = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 2
  %cp_send_queue = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10
  %prev.i76 = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i76, align 4
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %m_conn_item, ptr noundef %24, ptr noundef %cp_send_queue) #9
  br i1 %call.i.i77, label %if.end.i.i79, label %sock_hold.exit.list_add_tail.exit80_crit_edge

sock_hold.exit.list_add_tail.exit80_crit_edge:    ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit80

if.end.i.i79:                                     ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m_conn_item, ptr %prev.i76, align 4
  %26 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cp_send_queue, ptr %m_conn_item, align 4
  %prev3.i.i78 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i78, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %m_conn_item, ptr %24, align 4
  br label %list_add_tail.exit80

list_add_tail.exit80:                             ; preds = %if.end.i.i79, %sock_hold.exit.list_add_tail.exit80_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %m_flags16) #9
  tail call void @_raw_spin_unlock(ptr noundef %cp_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_send_queue_rm.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_send_queue_rm, %if.then32)) #9
          to label %do.end39 [label %if.then32], !srcloc !87

if.then32:                                        ; preds = %list_add_tail.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %rs_snd_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rs_snd_bytes, align 8
  %31 = ptrtoint ptr %i_hdr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_hdr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_send_queue_rm.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %rm, i32 noundef %3, ptr noundef %rs, i32 noundef %30, i64 noundef %32) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then32, %list_add_tail.exit80
  %33 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %queued, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.end.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock, i32 noundef %call2) #9
  br label %out

out:                                              ; preds = %if.end40, %entry.out_crit_edge
  %34 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %queued, align 4
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_rdma_unuse(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_send_pong(ptr noundef %cp, i16 noundef zeroext %dport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rds_send_probe(ptr noundef %cp, i16 noundef zeroext 0, i16 noundef zeroext %dport)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_send_probe(ptr noundef %cp, i16 noundef zeroext %sport, i16 noundef zeroext %dport) unnamed_addr #0 align 64 {
entry:
  %npaths = alloca i16, align 2
  %my_gen_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rds_message_alloc(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_daddr = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %m_daddr, ptr %c_faddr, i32 16)
  %data = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %data, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %data, align 8
  tail call void @rds_conn_path_connect_if_down(ptr noundef %cp) #9
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 8
  %c_fcong = getelementptr inbounds %struct.rds_connection, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %c_fcong to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_fcong, align 4
  %call2 = tail call i32 @rds_cong_wait(ptr noundef %7, i16 noundef zeroext %dport, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body6, label %if.then94

do.body6:                                         ; preds = %if.end
  %cp_lock = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 8
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %m_conn_item = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 2
  %cp_send_queue = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %m_conn_item, ptr noundef %9, ptr noundef %cp_send_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body6.list_add_tail.exit_crit_edge

do.body6.list_add_tail.exit_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %m_conn_item, ptr %prev.i, align 4
  %11 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cp_send_queue, ptr %m_conn_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %m_conn_item, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body6.list_add_tail.exit_crit_edge
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %m_flags) #9
  tail call void @rds_message_addref(ptr noundef nonnull %call) #9
  %14 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cp, align 8
  %i_conn = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %i_conn, align 4
  %i_conn_path = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %i_conn_path to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cp, ptr %i_conn_path, align 8
  %i_hdr = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 3, i32 4
  %cp_next_tx_seq = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 9
  %18 = ptrtoint ptr %cp_next_tx_seq to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cp_next_tx_seq, align 8
  tail call void @rds_message_populate_header(ptr noundef %i_hdr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i64 noundef %19) #9
  %20 = ptrtoint ptr %cp_next_tx_seq to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cp_next_tx_seq, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %cp_next_tx_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %sport)
  %cmp22 = icmp eq i16 %sport, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dport)
  %cmp25 = icmp eq i16 %dport, 0
  %or.cond = and i1 %cmp22, %cmp25
  br i1 %or.cond, label %list_add_tail.exit.land.lhs.true34_crit_edge, label %lor.lhs.false

list_add_tail.exit.land.lhs.true34_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sport)
  %cmp28 = icmp eq i16 %sport, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dport)
  %cmp32 = icmp eq i16 %dport, 1
  %or.cond1 = and i1 %cmp28, %cmp32
  br i1 %or.cond1, label %lor.lhs.false.land.lhs.true34_crit_edge, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

lor.lhs.false.land.lhs.true34_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %lor.lhs.false.land.lhs.true34_crit_edge, %list_add_tail.exit.land.lhs.true34_crit_edge
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 8
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c_trans, align 4
  %t_mp_capable = getelementptr inbounds %struct.rds_transport, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %t_mp_capable to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load36 = load i8, ptr %t_mp_capable, align 4
  %27 = and i8 %bf.load36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool38.not = icmp eq i8 %27, 0
  br i1 %tobool38.not, label %land.lhs.true34.if.end47_crit_edge, label %if.then39

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %npaths) #9
  %28 = ptrtoint ptr %npaths to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8, ptr %npaths, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %my_gen_num) #9
  %c_my_gen_num = getelementptr inbounds %struct.rds_connection, ptr %23, i32 0, i32 19
  %29 = ptrtoint ptr %c_my_gen_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_my_gen_num, align 4
  %31 = ptrtoint ptr %my_gen_num to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %my_gen_num, align 4
  %call43 = call i32 @rds_message_add_extension(ptr noundef %i_hdr, i32 noundef 5, ptr noundef nonnull %npaths, i32 noundef 2) #9
  %call46 = call i32 @rds_message_add_extension(ptr noundef %i_hdr, i32 noundef 6, ptr noundef nonnull %my_gen_num, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %my_gen_num) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %npaths) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %land.lhs.true34.if.end47_crit_edge, %lor.lhs.false.if.end47_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call8) #9
  %32 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %35, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %36 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add = add i32 %41, ptrtoint (ptr @rds_stats to i32)
  %42 = inttoptr i32 %add to ptr
  %s_send_queued = getelementptr inbounds %struct.rds_statistics, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %s_send_queued to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %s_send_queued, align 8
  %inc60 = add i64 %44, 1
  store i64 %inc60, ptr %s_send_queued, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %45 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i2 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %48, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i4 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i4 to ptr
  %preempt_count.i.i5 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i5, align 4
  %add.i6 = add i32 %52, 1
  store volatile i32 %add.i6, ptr %preempt_count.i.i5, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %53 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu, align 4
  %arrayidx80 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx80, align 4
  %add81 = add i32 %56, ptrtoint (ptr @rds_stats to i32)
  %57 = inttoptr i32 %add81 to ptr
  %s_send_pong = getelementptr inbounds %struct.rds_statistics, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %s_send_pong to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %s_send_pong, align 8
  %inc82 = add i64 %59, 1
  store i64 %inc82, ptr %s_send_pong, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %60 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i7 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i7 to ptr
  %preempt_count.i.i8 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i8, align 4
  %sub.i9 = add i32 %63, -1
  store volatile i32 %sub.i9, ptr %preempt_count.i.i8, align 4
  %64 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end47.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end47.rcu_read_lock.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end47.rcu_read_lock.exit_crit_edge
  %68 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cp, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %71, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #9
  %72 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.not.i = icmp eq i32 %73, 0
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.if.end92_crit_edge, label %lor.rhs.i

rcu_read_lock.exit.if.end92_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %69, i32 0, i32 8
  %74 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %77, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.then90_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.then90_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = call zeroext i1 %77(ptr noundef %69) #9
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end92_crit_edge, label %rds_destroy_pending.exit.if.then90_crit_edge

rds_destroy_pending.exit.if.then90_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

rds_destroy_pending.exit.if.end92_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %rds_destroy_pending.exit.if.then90_crit_edge, %lor.rhs.i.if.then90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %78 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 18
  %call.i10 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %cp_send_w, i32 noundef 1) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %rds_destroy_pending.exit.if.end92_crit_edge, %rcu_read_lock.exit.if.end92_crit_edge
  %call.i11 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11, label %if.end92.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.end92.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.end92
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.end92.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %79 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i18 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @rds_message_put(ptr noundef nonnull %call) #9
  br label %cleanup

if.then94:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rds_message_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %call2, %if.then94 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_ping(ptr nocapture noundef %conn, i32 noundef %cp_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_lock = getelementptr %struct.rds_conn_path, ptr %1, i32 %cp_index, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #9
  %c_ping_triggered = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %2 = ptrtoint ptr %c_ping_triggered to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %c_ping_triggered, align 4
  %3 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.rds_conn_path, ptr %1, i32 %cp_index
  %bf.set = or i32 %bf.load, 536870912
  %4 = ptrtoint ptr %c_ping_triggered to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set, ptr %c_ping_triggered, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call2) #9
  %5 = tail call fastcc i32 @rds_send_probe(ptr noundef %arrayidx, i16 noundef zeroext 1, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_rdma_extra_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cmsg_rdma_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cmsg_rdma_dest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cmsg_rdma_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cmsg_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_populate_header(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_connect_if_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_add_extension(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__param_send_batch_count, !1, !"__param_send_batch_count", i1 false, i1 false}
!1 = !{!"../net/rds/send.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_send_batch_counttype544, !1, !"__UNIQUE_ID_send_batch_counttype544", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_send_batch_count545, !4, !"__UNIQUE_ID_send_batch_count545", i1 false, i1 false}
!4 = !{!"../net/rds/send.c", i32 57, i32 1}
!5 = !{ptr @__ksymtab_rds_send_path_reset, !6, !"__ksymtab_rds_send_path_reset", i1 false, i1 false}
!6 = !{!"../net/rds/send.c", i32 102, i32 1}
!7 = !{ptr @__ksymtab_rds_send_xmit, !8, !"__ksymtab_rds_send_xmit", i1 false, i1 false}
!8 = !{!"../net/rds/send.c", i32 471, i32 1}
!9 = !{ptr @__ksymtab_rds_rdma_send_complete, !10, !"__ksymtab_rds_rdma_send_complete", i1 false, i1 false}
!10 = !{!"../net/rds/send.c", i32 531, i32 1}
!11 = !{ptr @__ksymtab_rds_atomic_send_complete, !12, !"__ksymtab_rds_atomic_send_complete", i1 false, i1 false}
!12 = !{!"../net/rds/send.c", i32 567, i32 1}
!13 = !{ptr @__ksymtab_rds_send_path_drop_acked, !14, !"__ksymtab_rds_send_path_drop_acked", i1 false, i1 false}
!14 = !{!"../net/rds/send.c", i32 712, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rds/send.c", i32 717, i32 2}
!17 = !{ptr @__ksymtab_rds_send_drop_acked, !18, !"__ksymtab_rds_send_drop_acked", i1 false, i1 false}
!18 = !{!"../net/rds/send.c", i32 720, i32 1}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/rds/send.c", i32 1325, i32 3}
!21 = !{ptr @rds_sendmsg._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.rds_sendmsg, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rds_sendmsg._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @rds_sendmsg._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rds_sendmsg._rs.3, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../net/rds/send.c", i32 1332, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rds_sendmsg._entry.4, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rds_sendmsg._entry_ptr.6, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rds/send.c", i32 1366, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rds_sendmsg.__UNIQUE_ID_ddebug558, !32, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!35 = !{ptr @__ksymtab_rds_send_ping, !36, !"__ksymtab_rds_send_ping", i1 false, i1 false}
!36 = !{!"../net/rds/send.c", i32 1515, i32 1}
!37 = !{ptr @__param_str_send_batch_count, !1, !"__param_str_send_batch_count", i1 false, i1 false}
!38 = !{ptr @send_batch_count, !39, !"send_batch_count", i1 false, i1 false}
!39 = !{!"../net/rds/send.c", i32 55, i32 12}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/rds/send.c", i32 873, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rds_send_queue_rm.__UNIQUE_ID_ddebug553, !48, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2158233169}
!62 = !{i64 2158233342}
!63 = !{i64 2158231125}
!64 = !{i64 2158240220}
!65 = !{i64 2158240393}
!66 = !{i64 2158244917}
!67 = !{i64 2158245090}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2158254422, i64 2158254901, i64 2158254459, i64 2158254515, i64 2158254549, i64 2158254573, i64 2158254614, i64 2158254635, i64 2158254663, i64 2158254697}
!70 = !{i64 2158259266}
!71 = !{i64 2149954515}
!72 = !{i64 2149954781}
!73 = !{i64 2158263992}
!74 = !{i64 2158264165}
!75 = !{i64 2148337512}
!76 = !{i64 2148251976, i64 2148252008, i64 2148252037, i64 2148252071, i64 2148252102, i64 2148252125}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2149904972}
!79 = !{i64 2148249511, i64 2148249543, i64 2148249572, i64 2148249606, i64 2148249637, i64 2148249660}
!80 = !{i64 2158266225, i64 2158266704, i64 2158266262, i64 2158266318, i64 2158266352, i64 2158266376, i64 2158266417, i64 2158266438, i64 2158266466, i64 2158266500}
!81 = !{i64 2158267810, i64 2158268289, i64 2158267847, i64 2158267903, i64 2158267937, i64 2158267961, i64 2158268002, i64 2158268023, i64 2158268051, i64 2158268085}
!82 = !{i64 2158270844}
!83 = !{i64 2158271017}
!84 = !{i64 2158283341}
!85 = !{i64 2158292978}
!86 = !{i64 2158325361}
!87 = !{i64 2148729796, i64 2148729801, i64 2148729814, i64 2148729858, i64 2148729892, i64 2148729913}
!88 = !{i64 2158332408}
!89 = !{i64 2158335294}
!90 = !{i64 2158335467}
!91 = !{i64 2158337250}
!92 = !{i64 2158337423}
