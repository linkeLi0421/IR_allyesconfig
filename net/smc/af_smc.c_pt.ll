; ModuleID = '/llk/IR_all_yes/net/smc/af_smc.c_pt.bc'
source_filename = "../net/smc/af_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+smc_hash_sk\22, \22a\22\09"
module asm "\09.weak\09__crc_smc_hash_sk\09\09\09\09"
module asm "\09.long\09__crc_smc_hash_sk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smc_hash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22smc_hash_sk\22\09\09\09\09\09"
module asm "__kstrtabns_smc_hash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smc_unhash_sk\22, \22a\22\09"
module asm "\09.weak\09__crc_smc_unhash_sk\09\09\09\09"
module asm "\09.long\09__crc_smc_unhash_sk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smc_unhash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22smc_unhash_sk\22\09\09\09\09\09"
module asm "__kstrtabns_smc_unhash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smc_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_smc_proto\09\09\09\09"
module asm "\09.long\09__crc_smc_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smc_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22smc_proto\22\09\09\09\09\09"
module asm "__kstrtabns_smc_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smc_proto6\22, \22a\22\09"
module asm "\09.weak\09__crc_smc_proto6\09\09\09\09"
module asm "\09.long\09__crc_smc_proto6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smc_proto6:\09\09\09\09\09"
module asm "\09.asciz \09\22smc_proto6\22\09\09\09\09\09"
module asm "__kstrtabns_smc_proto6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.smc_hashinfo = type { %struct.rwlock_t, %struct.hlist_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.156, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.156 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.137 }
%struct.atomic_t = type { i32 }
%union.anon.137 = type { i32 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.smcd_dev_list = type { %struct.list_head, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.160 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.224 }
%union.anon.224 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.219, i32 }
%union.anon.219 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.194 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.210 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.205 }
%struct.anon.205 = type { i64, i64 }
%union.anon.210 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.206, ptr, i32, i32, i32, %union.anon.207 }
%union.anon.206 = type { i64 }
%union.anon.207 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_init_info = type { i8, i8, i8, i8, i8, i16, i32, [32 x i8], i8, i8, [16 x i8], [6 x i8], [8 x i8], ptr, [16 x i8], i8, i32, %struct.smc_init_info_smcrv2, [9 x i64], [9 x ptr], [9 x i16], i8, i8, i8 }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.189, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.190, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.191, ptr, %struct.address_space, %struct.list_head, %union.anon.192, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.189 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.190 = type { %struct.callback_head }
%union.anon.191 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.192 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.139, %struct.list_head, %struct.list_head, %union.anon.140 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.139 = type { %struct.list_head }
%union.anon.140 = type { %struct.hlist_node }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.231, %struct.anon.232, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.231 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.232 = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.233, %struct.anon.234, %struct.anon.235, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.233 = type { i32, i32, i64 }
%struct.anon.234 = type { i32, i32, i64 }
%struct.anon.235 = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.127, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.127 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.221 }
%union.anon.221 = type { %struct.anon.223, [40 x i8] }
%struct.anon.223 = type { i16, i64, i32 }
%struct.anon.226 = type { i16, i16, i32 }
%struct.smc_stats_tech = type { %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_rmbcnt, %struct.smc_stats_rmbcnt, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.smc_stats_memsize = type { [9 x i64] }
%struct.smc_stats_rmbcnt = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.155, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.153 }
%union.anon.4 = type { ptr }
%union.anon.153 = type { i64 }
%union.anon.155 = type { ptr }
%struct.anon = type { i32, i32 }
%struct.smc_clc_msg_hdr = type <{ [4 x i8], i8, i16, i8 }>
%struct.smc_stats = type { [2 x %struct.smc_stats_tech], i64, i64 }
%struct.smc_clc_msg_accept_confirm = type { %struct.smc_clc_msg_hdr, %union.anon.242 }
%union.anon.242 = type { %struct.smcr_clc_msg_accept_confirm }
%struct.smcr_clc_msg_accept_confirm = type <{ %struct.smc_clc_msg_local, [3 x i8], i32, i8, i32, i8, i8, i64, i8, [3 x i8] }>
%struct.smc_clc_msg_local = type { [8 x i8], [16 x i8], [6 x i8] }
%struct.smc_clc_msg_accept_confirm_v2 = type { %struct.smc_clc_msg_hdr, %union.anon.239 }
%union.anon.239 = type { %struct.anon.240 }
%struct.anon.240 = type { %struct.smcr_clc_msg_accept_confirm, [32 x i8], [8 x i8] }
%struct.smc_stats_fback = type { i32, i16 }
%struct.smc_stats_rsn = type { [30 x %struct.smc_stats_fback], [30 x %struct.smc_stats_fback], i64, i64 }
%struct.smc_mark_woken = type { i8, ptr, %struct.wait_queue_entry }
%struct.smc_clc_first_contact_ext = type { i16, [2 x i8], [32 x i8] }
%struct.smc_clc_msg_decline = type { %struct.smc_clc_msg_hdr, [8 x i8], i32, i8, [3 x i8], %struct.smc_clc_msg_trail }
%struct.smc_clc_msg_trail = type { [4 x i8] }
%struct.smc_clc_msg_proposal = type { %struct.smc_clc_msg_hdr, %struct.smc_clc_msg_local, i16 }
%struct.smc_clnt_opts_area_hdr = type { i8, i8, i8, %struct.smc_clc_v2_flag, [2 x i8], i16 }
%struct.smc_clc_v2_flag = type { i8 }
%struct.smc_clc_smcd_gid_chid = type <{ i64, i16 }>
%struct.smc_clc_smcd_v2_extension = type { [32 x i8], [16 x i8], [0 x %struct.smc_clc_smcd_gid_chid] }
%struct.smc_clc_v2_extension = type { %struct.smc_clnt_opts_area_hdr, [16 x i8], [16 x i8], [0 x [32 x i8]] }

@__kstrtab_smc_hash_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_smc_hash_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_smc_hash_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smc_hash_sk to i32), ptr @__kstrtab_smc_hash_sk, ptr @__kstrtabns_smc_hash_sk }, section "___ksymtab_gpl+smc_hash_sk", align 4
@__kstrtab_smc_unhash_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_smc_unhash_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_smc_unhash_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smc_unhash_sk to i32), ptr @__kstrtab_smc_unhash_sk, ptr @__kstrtabns_smc_unhash_sk }, section "___ksymtab_gpl+smc_unhash_sk", align 4
@smc_v4_hashinfo = internal global { %struct.smc_hashinfo, [48 x i8] } { %struct.smc_hashinfo { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } }, %struct.hlist_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@smc_proto = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_set_keepalive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_hash_sk, ptr @smc_unhash_sk, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1856, i32 524288, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.156 { ptr @smc_v4_hashinfo }, ptr null, [32 x i8] c"SMC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_smc_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_smc_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_smc_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smc_proto to i32), ptr @__kstrtab_smc_proto, ptr @__kstrtabns_smc_proto }, section "___ksymtab_gpl+smc_proto", align 4
@smc_v6_hashinfo = internal global { %struct.smc_hashinfo, [48 x i8] } { %struct.smc_hashinfo { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } }, %struct.hlist_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@smc_proto6 = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_set_keepalive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_hash_sk, ptr @smc_unhash_sk, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1856, i32 524288, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.156 { ptr @smc_v6_hashinfo }, ptr null, [32 x i8] c"SMC6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_smc_proto6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_smc_proto6 = external dso_local constant [0 x i8], align 1
@__ksymtab_smc_proto6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smc_proto6 to i32), ptr @__kstrtab_smc_proto6, ptr @__kstrtabns_smc_proto6 }, section "___ksymtab_gpl+smc_proto6", align 4
@tcp_have_smc = external dso_local global %struct.static_key_false, align 4
@smc_ulp_ops = internal global %struct.tcp_ulp_ops { %struct.list_head zeroinitializer, ptr @smc_ulp_init, ptr null, ptr null, ptr null, ptr null, ptr @smc_ulp_clone, [16 x i8] c"smc\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, section ".data..read_mostly", align 4
@smc_close_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smc_hs_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smc_net_stat_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @smc_net_stat_init, ptr null, ptr @smc_net_stat_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@smc_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @smc_net_init, ptr null, ptr @smc_net_exit, ptr null, ptr @smc_net_id, i32 152 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_smc__628_3139_smc_init6 = internal global ptr @smc_init, section ".initcall6.init", align 4
@__exitcall_smc_exit = internal global ptr @smc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author629 = internal constant [52 x i8] c"smc.author=Ursula Braun <ubraun@linux.vnet.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description630 = internal constant [42 x i8] c"smc.description=smc socket address family\00", section ".modinfo", align 1
@__UNIQUE_ID_file631 = internal constant [21 x i8] c"smc.file=net/smc/smc\00", section ".modinfo", align 1
@__UNIQUE_ID_license632 = internal constant [16 x i8] c"smc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias633 = internal constant [20 x i8] c"smc.alias=net-pf-43\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace634 = internal constant [14 x i8] c"smc.alias=smc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_tcp_ulp635 = internal constant [22 x i8] c"smc.alias=tcp-ulp-smc\00", section ".modinfo", align 1
@smc_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smc_v4_hashinfo.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smc_v6_hashinfo.lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smc_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 43, ptr null, ptr @smc_release, ptr @smc_bind, ptr @smc_connect, ptr @sock_no_socketpair, ptr @smc_accept, ptr @smc_getname, ptr @smc_poll, ptr @smc_ioctl, ptr null, ptr @smc_listen, ptr @smc_shutdown, ptr @smc_setsockopt, ptr @smc_getsockopt, ptr null, ptr @smc_sendmsg, ptr @smc_recvmsg, ptr @sock_no_mmap, ptr @smc_sendpage, ptr @smc_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__tracepoint_smc_switch_to_fallback = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/smc/smc_tracepoint.h\00", [39 x i8] zeroinitializer }, align 32
@trace_smc_switch_to_fallback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@smc_fback_forward_wakeup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/smc/af_smc.c\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@smc_fback_wakeup_waitqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smcd_dev_list = external dso_local global %struct.smcd_dev_list, align 4
@smc_client_lgr_pending = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smc_client_lgr_pending, i64 52), ptr getelementptr (i8, ptr @smc_client_lgr_pending, i64 52) }, ptr @smc_client_lgr_pending, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smc_client_lgr_pending.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smc_client_lgr_pending\00", [41 x i8] zeroinitializer }, align 32
@smc_server_lgr_pending = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smc_server_lgr_pending, i64 52), ptr getelementptr (i8, ptr @smc_server_lgr_pending, i64 52) }, ptr @smc_server_lgr_pending, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smc_server_lgr_pending.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smc_server_lgr_pending\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&smc->tcp_listen_work)\00", [55 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&smc->connect_work)\00", [58 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&smc->conn.tx_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&smc->conn.tx_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&smc->accept_q_lock\00", [44 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&smc->conn.send_lock\00", [43 x i8] zeroinitializer }, align 32
@smc_sock_alloc.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&smc->clcsock_release_lock\00", [37 x i8] zeroinitializer }, align 32
@smc_tcp_listen_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&new_smc->smc_listen_work)\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smc_hs_wq\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smc_close_wq\00", [19 x i8] zeroinitializer }, align 32
@smc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 3045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013smc: %s: smc_core_init fails with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smc_init\00", [23 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr = internal global ptr @smc_init._entry, section ".printk_index", align 4
@smc_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 3051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013smc: %s: smc_llc_init fails with %d\0A\00", [57 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.38 = internal global ptr @smc_init._entry.36, section ".printk_index", align 4
@smc_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.6, i32 3057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013smc: %s: smc_cdc_init fails with %d\0A\00", [57 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.41 = internal global ptr @smc_init._entry.39, section ".printk_index", align 4
@smc_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 3063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013smc: %s: proto_register(v4) fails with %d\0A\00", [51 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.44 = internal global ptr @smc_init._entry.42, section ".printk_index", align 4
@smc_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.6, i32 3069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013smc: %s: proto_register(v6) fails with %d\0A\00", [51 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.47 = internal global ptr @smc_init._entry.45, section ".printk_index", align 4
@smc_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 43, ptr @smc_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@smc_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.6, i32 3075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013smc: %s: sock_register fails with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.50 = internal global ptr @smc_init._entry.48, section ".printk_index", align 4
@smc_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.6, i32 3083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013smc: %s: ib_register fails with %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.53 = internal global ptr @smc_init._entry.51, section ".printk_index", align 4
@smc_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.6, i32 3089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013smc: %s: tcp_ulp_register fails with %d\0A\00", [53 x i8] zeroinitializer }, align 32
@smc_init._entry_ptr.56 = internal global ptr @smc_init._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 21521, i64 21531, i64 35077, i64 35147]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 9, i64 23, i64 30, i64 33, i64 34]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"smc_v4_hashinfo\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 75, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"smc_proto\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 110, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"smc_v6_hashinfo\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 79, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"smc_proto6\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 122, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"smc_close_wq\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 63, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"smc_hs_wq\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 62, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"smc_net_stat_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3006, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"smc_net_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2999, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"smc_net_id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2977, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 729, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 76, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 80, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"smc_sock_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2839, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"../net/smc/smc_tracepoint.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 16, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 108, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 620, i32 7 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 695, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 723, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"smc_client_lgr_pending\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 58, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"smc_server_lgr_pending\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 55, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 156, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 255, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 256, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 257, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 259, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 260, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 263, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2216, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3035, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3039, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3045, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3051, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3057, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3063, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3069, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c"smc_sock_family_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2913, i32 38 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3075, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3083, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [20 x i8] c"../net/smc/af_smc.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 3089, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_alias633, ptr @__UNIQUE_ID_alias_tcp_ulp635, ptr @__UNIQUE_ID_alias_userspace634, ptr @__UNIQUE_ID_author629, ptr @__UNIQUE_ID_description630, ptr @__UNIQUE_ID_file631, ptr @__UNIQUE_ID_license632, ptr @__exitcall_smc_exit, ptr @__initcall__kmod_smc__628_3139_smc_init6, ptr @__ksymtab_smc_hash_sk, ptr @__ksymtab_smc_proto, ptr @__ksymtab_smc_proto6, ptr @__ksymtab_smc_unhash_sk, ptr @smc_exit, ptr @smc_init._entry, ptr @smc_init._entry.36, ptr @smc_init._entry.39, ptr @smc_init._entry.42, ptr @smc_init._entry.45, ptr @smc_init._entry.48, ptr @smc_init._entry.51, ptr @smc_init._entry.54, ptr @smc_init._entry_ptr, ptr @smc_init._entry_ptr.38, ptr @smc_init._entry_ptr.41, ptr @smc_init._entry_ptr.44, ptr @smc_init._entry_ptr.47, ptr @smc_init._entry_ptr.50, ptr @smc_init._entry_ptr.53, ptr @smc_init._entry_ptr.56, ptr @smc_v4_hashinfo, ptr @smc_proto, ptr @smc_v6_hashinfo, ptr @smc_proto6, ptr @smc_close_wq, ptr @smc_hs_wq, ptr @smc_net_stat_ops, ptr @smc_net_ops, ptr @smc_net_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smc_sock_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @smc_client_lgr_pending, ptr @.str.10, ptr @.str.11, ptr @smc_server_lgr_pending, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @smc_sock_alloc.__key, ptr @.str.18, ptr @smc_sock_alloc.__key.19, ptr @.str.20, ptr @smc_sock_alloc.__key.21, ptr @.str.22, ptr @smc_sock_alloc.__key.23, ptr @.str.24, ptr @smc_sock_alloc.__key.25, ptr @.str.26, ptr @smc_sock_alloc.__key.27, ptr @.str.28, ptr @smc_sock_alloc.__key.29, ptr @.str.30, ptr @smc_tcp_listen_work.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @smc_sock_family_ops, ptr @.str.49, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_v4_hashinfo to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_v6_hashinfo to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_proto6 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_close_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_hs_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_net_stat_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_client_lgr_pending to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_server_lgr_pending to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_alloc.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_tcp_listen_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_hash_sk(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %h1 = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %h1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h1, align 4
  %ht = getelementptr inbounds %struct.smc_hashinfo, ptr %3, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %3) #15
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !164

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %7 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ht, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %6, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  %11 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %6, ptr %ht, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %12 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ht, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %3) #15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %15 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot, align 8
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 29, i32 2
  %18 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 26
  %20 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %19, i32 0, i32 1, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add15.i = add i32 %31, 1
  store i32 %add15.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge, !prof !164

sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #15, !srcloc !168
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_unhash_sk(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %h1 = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %h1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h1, align 4
  tail call void @_raw_write_lock_bh(ptr noundef %3) #15
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.i.i.not, label %entry.if.end_crit_edge, label %if.then.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %5, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %5, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %11 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  %12 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !164

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 729, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.if.then_crit_edge, !prof !164

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  br label %if.then

if.then:                                          ; preds = %if.then3.i.i.i.i, %if.end.i.if.then_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %17 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_prot, align 8
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 26
  %22 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %21, i32 0, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add15.i = add i32 %33, -1
  store i32 %add15.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i10, label %if.then.sock_prot_inuse_add.exit_crit_edge, !prof !164

if.then.sock_prot_inuse_add.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_prot_inuse_add.exit

if.then.i10:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i10, %if.then.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #15, !srcloc !168
  br label %if.end

if.end:                                           ; preds = %sock_prot_inuse_add.exit, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_set_keepalive(ptr nocapture noundef readonly %sk, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %keepalive = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %keepalive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %keepalive, align 4
  tail call void %7(ptr noundef %3, i32 noundef %val) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_fill_gid_list(ptr noundef %lgr, ptr nocapture noundef %gidlist, ptr noundef %known_dev, ptr nocapture noundef readonly %known_gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %gidlist, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %gidlist to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %gidlist, align 1
  %arrayidx = getelementptr %struct.smc_gidlist, ptr %gidlist, i32 0, i32 1, i32 0
  %3 = call ptr @memcpy(ptr %arrayidx, ptr %known_gid, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 320) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 4
  %5 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_id, align 4
  %vlan_id1 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vlan_id1, align 2
  %check_smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %check_smcrv2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %check_smcrv2, align 1
  %saddr = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 26
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saddr, align 8
  %smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %smcrv2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %smcrv2, align 8
  tail call void @smc_pnet_find_alt_roce(ptr noundef %lgr, ptr noundef nonnull %call7.i.i, ptr noundef %known_dev) #15
  %ib_dev_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ib_dev_v2, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %gidlist to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gidlist, align 1
  %inc9 = add i8 %15, 1
  store i8 %inc9, ptr %gidlist, align 1
  %idxprom10 = zext i8 %15 to i32
  %arrayidx11 = getelementptr %struct.smc_gidlist, ptr %gidlist, i32 0, i32 1, i32 %idxprom10
  %ib_gid_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 5
  %16 = call ptr @memcpy(ptr %arrayidx11, ptr %ib_gid_v2, i32 16)
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_find_alt_roce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smc_accept_dequeue(ptr noundef readonly %parent, ptr noundef %new_sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %accept_q = getelementptr inbounds %struct.smc_sock, ptr %parent, i32 0, i32 11
  %0 = ptrtoint ptr %accept_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accept_q, align 8
  %isk.057 = getelementptr i8, ptr %1, i32 -1688
  %cmp.not59 = icmp eq ptr %isk.057, %parent
  br i1 %cmp.not59, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %sock_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %isk.061 = phi ptr [ %isk.0, %sock_put.exit.for.body_crit_edge ], [ %isk.057, %entry.for.body_crit_edge ]
  %.pn.in60 = phi ptr [ %.pn62, %sock_put.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn62 = load ptr, ptr %.pn.in60, align 8
  %listen_smc.i = getelementptr i8, ptr %.pn.in60, i32 -136
  %3 = ptrtoint ptr %listen_smc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %listen_smc.i, align 8
  %accept_q_lock.i = getelementptr inbounds %struct.smc_sock, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %accept_q_lock.i) #15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del_init.exit.i_crit_edge

for.body.list_del_init.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %.pn.in60, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn.in60, ptr %.pn.in60, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in60, i32 4
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.in60, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %accept_q_lock.i) #15
  %13 = ptrtoint ptr %listen_smc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %listen_smc.i, align 8
  %sk_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_ack_backlog.i.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %sk_ack_backlog.i.i, align 4
  %skc_refcnt.i.i = getelementptr i8, ptr %.pn.in60, i32 -1588
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.smc_accept_unlink.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !165

if.end5.i.i.i.i.i.smc_accept_unlink.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_accept_unlink.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #15
  br label %smc_accept_unlink.exit

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %isk.061) #15
  br label %smc_accept_unlink.exit

smc_accept_unlink.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.smc_accept_unlink.exit_crit_edge
  %skc_state = getelementptr i8, ptr %.pn.in60, i32 -1670
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp9 = icmp eq i8 %19, 7
  br i1 %cmp9, label %if.then, label %if.end15

if.then:                                          ; preds = %smc_accept_unlink.exit
  %skc_prot = getelementptr i8, ptr %.pn.in60, i32 -1656
  %20 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot, align 8
  %unhash = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unhash, align 4
  tail call void %23(ptr noundef %isk.061) #15
  %clcsock = getelementptr i8, ptr %.pn.in60, i32 -728
  %24 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clcsock, align 8
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sock_release(ptr noundef nonnull %25) #15
  %26 = ptrtoint ptr %clcsock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %clcsock, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #15
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %isk.061) #15
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %isk.0 = getelementptr i8, ptr %.pn62, i32 -1688
  %cmp.not = icmp eq ptr %isk.0, %parent
  br i1 %cmp.not, label %sock_put.exit.cleanup_crit_edge, label %sock_put.exit.for.body_crit_edge

sock_put.exit.for.body_crit_edge:                 ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

sock_put.exit.cleanup_crit_edge:                  ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %smc_accept_unlink.exit
  %tobool16.not = icmp eq ptr %new_sock, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  %sk1.i = getelementptr inbounds %struct.socket, ptr %new_sock, i32 0, i32 4
  %28 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then17.sock_graft.exit_crit_edge, label %do.end.i, !prof !165

if.then17.sock_graft.exit_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2024, i32 noundef 9, ptr noundef null) #15
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.then17.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr i8, ptr %.pn.in60, i32 -1040
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #15
  %wq.i = getelementptr inbounds %struct.socket, ptr %new_sock, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !172
  %30 = getelementptr i8, ptr %.pn.in60, i32 -1272
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %wq.i, ptr %30, align 8
  %32 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %isk.061, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr i8, ptr %.pn.in60, i32 -808
  %33 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %new_sock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr i8, ptr %.pn.in60, i32 -980
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %new_sock, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_uid.i, align 4
  %36 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sk_uid.i, align 4
  tail call void @security_sock_graft(ptr noundef %isk.061, ptr noundef nonnull %new_sock) #15
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #15
  %use_fallback = getelementptr i8, ptr %.pn.in60, i32 52
  %37 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool18.not = icmp eq i8 %38, 0
  br i1 %tobool18.not, label %sock_graft.exit.cleanup_crit_edge, label %if.then19

sock_graft.exit.cleanup_crit_edge:                ; preds = %sock_graft.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then19:                                        ; preds = %sock_graft.exit
  call void @__sanitizer_cov_trace_pc() #17
  %file = getelementptr inbounds %struct.socket, ptr %new_sock, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file, align 4
  %clcsock21 = getelementptr i8, ptr %.pn.in60, i32 -728
  %41 = ptrtoint ptr %clcsock21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clcsock21, align 8
  %file22 = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %file22, align 4
  %44 = load ptr, ptr %clcsock21, align 8
  %file25 = getelementptr inbounds %struct.socket, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %file25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %file25, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sock_graft.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %sock_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %isk.061, %sock_graft.exit.cleanup_crit_edge ], [ %isk.061, %if.then19 ], [ %isk.061, %if.end15.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sock_put.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_close_non_accepted(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #15
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 48
  %2 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %sock_hold.exit.if.end_crit_edge

sock_hold.exit.if.end_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 200, ptr %sk_lingertime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sock_hold.exit.if.end_crit_edge
  %call2 = tail call fastcc i32 @__smc_release(ptr noundef %sk)
  tail call void @release_sock(ptr noundef %sk) #15
  %call.i.i.i.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i12 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i12, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %sk) #15
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %call.i.i.i.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i15 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i15)
  %cmp.i.i.i.i16 = icmp eq i32 %asmresult.i.i.i.i.i.i.i15, 1
  br i1 %cmp.i.i.i.i16, label %if.then.i20, label %if.end5.i.i.i.i18

if.end5.i.i.i.i18:                                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15)
  %.not.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i15, 0
  br i1 %.not.i.i.i.i17, label %if.end5.i.i.i.i18.sock_put.exit21_crit_edge, label %if.then10.i.i.i.i19, !prof !165

if.end5.i.i.i.i18.sock_put.exit21_crit_edge:      ; preds = %if.end5.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit21

if.then10.i.i.i.i19:                              ; preds = %if.end5.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit21

if.then.i20:                                      ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %sk) #15
  br label %sock_put.exit21

sock_put.exit21:                                  ; preds = %if.then.i20, %if.then10.i.i.i.i19, %if.end5.i.i.i.i18.sock_put.exit21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smc_release(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 13
  %0 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @smc_close_active(ptr noundef %smc) #15
  %2 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i = or i32 %4, 1
  store i32 %or.i.i, ptr %2, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %5 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sk_shutdown, align 2
  %7 = or i8 %6, 3
  store i8 %7, ptr %sk_shutdown, align 2
  br label %if.end28

if.else:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp.not = icmp eq i8 %9, 7
  br i1 %cmp.not, label %if.else.if.end27_crit_edge, label %if.then5

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then5:                                         ; preds = %if.else
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp9.not = icmp eq i8 %11, 10
  br i1 %cmp9.not, label %if.then5.if.end_crit_edge, label %land.lhs.true

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %if.then5
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp14.not = icmp eq i8 %13, 2
  br i1 %cmp14.not, label %land.lhs.true.if.end_crit_edge, label %if.then16

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then16:                                        ; preds = %land.lhs.true
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %smc) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then5.if.end_crit_edge
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %16)
  %cmp20 = icmp eq i8 %16, 10
  br i1 %cmp20, label %if.then22, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %17 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clcsock, align 8
  %call23 = tail call i32 @kernel_sock_shutdown(ptr noundef %18, i32 noundef 2) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  %rc.0 = phi i32 [ %call23, %if.then22 ], [ 0, %if.end.if.end24_crit_edge ]
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %20 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_state_change, align 4
  tail call void %21(ptr noundef %smc) #15
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.else.if.end27_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end24 ], [ 0, %if.else.if.end27_crit_edge ]
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %22 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clcsock.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end27.if.end28_crit_edge, label %if.then.i67

if.end27.if.end28_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then.i67:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 71
  %26 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk_socket.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 16
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %private_data.i, align 4
  %29 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clcsock.i, align 8
  %file4.i = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %file4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %file4.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then.i67, %if.end27.if.end28_crit_edge, %if.then
  %rc.2 = phi i32 [ %call, %if.then ], [ %rc.1, %if.end27.if.end28_crit_edge ], [ %rc.1, %if.then.i67 ]
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 8
  %32 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_prot, align 8
  %unhash = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unhash, align 4
  tail call void %35(ptr noundef %smc) #15
  %skc_state31 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %36 = ptrtoint ptr %skc_state31 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state31, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %37)
  %cmp33 = icmp eq i8 %37, 7
  br i1 %cmp33, label %if.then35, label %if.end28.if.end44_crit_edge

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then35:                                        ; preds = %if.end28
  %clcsock36 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %38 = ptrtoint ptr %clcsock36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clcsock36, align 8
  %tobool37.not = icmp eq ptr %39, null
  br i1 %tobool37.not, label %if.then35.if.end39_crit_edge, label %if.then38

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %smc) #15
  tail call void @smc_clcsock_release(ptr noundef %smc) #15
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then35.if.end39_crit_edge
  %40 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool41.not = icmp eq i8 %41, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %conn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  tail call void @smc_conn_free(ptr noundef %conn) #15
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge, %if.end28.if.end44_crit_edge
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smc_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @static_key_disable(ptr noundef nonnull @tcp_have_smc) #15
  tail call void @tcp_unregister_ulp(ptr noundef nonnull @smc_ulp_ops) #15
  tail call void @sock_unregister(i32 noundef 43) #15
  tail call void @smc_core_exit() #15
  tail call void @smc_ib_unregister_client() #15
  %0 = load ptr, ptr @smc_close_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #15
  %1 = load ptr, ptr @smc_hs_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #15
  tail call void @proto_unregister(ptr noundef nonnull @smc_proto6) #15
  tail call void @proto_unregister(ptr noundef nonnull @smc_proto) #15
  tail call void @smc_pnet_exit() #15
  tail call void @smc_nl_exit() #15
  tail call void @smc_clc_exit() #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @smc_net_stat_ops) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @smc_net_ops) #15
  tail call void @rcu_barrier() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_ulp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_core_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_unregister_client() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_nl_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_clc_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @smc_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @smc_net_stat_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @smc_ism_init() #15
  tail call void @smc_clc_init() #19
  %call5 = tail call i32 @smc_nl_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_pernet_subsys_crit_edge

if.end4.out_pernet_subsys_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_pernet_subsys

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @smc_pnet_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_nl_crit_edge

if.end8.out_nl_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_nl

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0) #15
  store ptr %call13, ptr @smc_hs_wq, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.out_pnet_crit_edge, label %if.end16

if.end12.out_pnet_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_pnet

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0) #15
  store ptr %call17, ptr @smc_close_wq, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.out_alloc_hs_wq_crit_edge, label %if.end20

if.end16.out_alloc_hs_wq_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_alloc_hs_wq

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @smc_core_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call21) #19
  br label %out_alloc_wqs

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @smc_llc_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %call26) #19
  br label %out_core

if.end34:                                         ; preds = %if.end25
  %call35 = tail call i32 @smc_cdc_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef %call35) #19
  br label %out_core

if.end43:                                         ; preds = %if.end34
  %call44 = tail call i32 @proto_register(ptr noundef nonnull @smc_proto, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.35, i32 noundef %call44) #19
  br label %out_core

if.end52:                                         ; preds = %if.end43
  %call53 = tail call i32 @proto_register(ptr noundef nonnull @smc_proto6, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.35, i32 noundef %call53) #19
  br label %out_proto

if.end61:                                         ; preds = %if.end52
  %call62 = tail call i32 @sock_register(ptr noundef nonnull @smc_sock_family_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end70, label %do.end67

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, i32 noundef %call62) #19
  br label %out_proto6

if.end70:                                         ; preds = %if.end61
  store ptr null, ptr getelementptr inbounds (%struct.smc_hashinfo, ptr @smc_v4_hashinfo, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.smc_hashinfo, ptr @smc_v6_hashinfo, i32 0, i32 1), align 4
  %call71 = tail call i32 @smc_ib_register_client() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.35, i32 noundef %call71) #19
  br label %out_sock

if.end79:                                         ; preds = %if.end70
  %call80 = tail call i32 @tcp_register_ulp(ptr noundef nonnull @smc_ulp_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.35, i32 noundef %call80) #19
  tail call void @smc_ib_unregister_client() #15
  br label %out_sock

if.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @static_key_enable(ptr noundef nonnull @tcp_have_smc) #15
  br label %cleanup

out_sock:                                         ; preds = %do.end85, %do.end76
  %rc.0 = phi i32 [ %call71, %do.end76 ], [ %call80, %do.end85 ]
  tail call void @sock_unregister(i32 noundef 43) #15
  br label %out_proto6

out_proto6:                                       ; preds = %out_sock, %do.end67
  %rc.1 = phi i32 [ %call62, %do.end67 ], [ %rc.0, %out_sock ]
  tail call void @proto_unregister(ptr noundef nonnull @smc_proto6) #15
  br label %out_proto

out_proto:                                        ; preds = %out_proto6, %do.end58
  %rc.2 = phi i32 [ %call53, %do.end58 ], [ %rc.1, %out_proto6 ]
  tail call void @proto_unregister(ptr noundef nonnull @smc_proto) #15
  br label %out_core

out_core:                                         ; preds = %out_proto, %do.end49, %do.end40, %do.end31
  %rc.3 = phi i32 [ %call26, %do.end31 ], [ %call35, %do.end40 ], [ %call44, %do.end49 ], [ %rc.2, %out_proto ]
  tail call void @smc_core_exit() #15
  br label %out_alloc_wqs

out_alloc_wqs:                                    ; preds = %out_core, %do.end
  %rc.4 = phi i32 [ %call21, %do.end ], [ %rc.3, %out_core ]
  %0 = load ptr, ptr @smc_close_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #15
  br label %out_alloc_hs_wq

out_alloc_hs_wq:                                  ; preds = %out_alloc_wqs, %if.end16.out_alloc_hs_wq_crit_edge
  %rc.5 = phi i32 [ %rc.4, %out_alloc_wqs ], [ -12, %if.end16.out_alloc_hs_wq_crit_edge ]
  %1 = load ptr, ptr @smc_hs_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #15
  br label %out_pnet

out_pnet:                                         ; preds = %out_alloc_hs_wq, %if.end12.out_pnet_crit_edge
  %rc.6 = phi i32 [ %rc.5, %out_alloc_hs_wq ], [ -12, %if.end12.out_pnet_crit_edge ]
  tail call void @smc_pnet_exit() #15
  br label %out_nl

out_nl:                                           ; preds = %out_pnet, %if.end8.out_nl_crit_edge
  %rc.7 = phi i32 [ %call9, %if.end8.out_nl_crit_edge ], [ %rc.6, %out_pnet ]
  tail call void @smc_nl_exit() #15
  br label %out_pernet_subsys

out_pernet_subsys:                                ; preds = %out_nl, %if.end4.out_pernet_subsys_crit_edge
  %rc.8 = phi i32 [ %call5, %if.end4.out_pernet_subsys_crit_edge ], [ %rc.7, %out_nl ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @smc_net_ops) #15
  br label %cleanup

cleanup:                                          ; preds = %out_pernet_subsys, %if.end88, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.8, %out_pernet_subsys ], [ 0, %if.end88 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_close_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_clcsock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_conn_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ulp_init(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %type = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not = icmp eq i16 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %7)
  %cmp3.not = icmp eq i16 %7, 6
  br i1 %cmp3.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %lor.lhs.false5.cleanup_crit_edge [
    i16 2, label %lor.lhs.false5.if.end_crit_edge
    i16 10, label %lor.lhs.false5.if.end_crit_edge73
  ]

lor.lhs.false5.if.end_crit_edge73:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5.if.end_crit_edge, %lor.lhs.false5.if.end_crit_edge73
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14.not = icmp eq i32 %12, 1
  br i1 %cmp14.not, label %lor.lhs.false16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end
  %file = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false16
  %fasync_list = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %fasync_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fasync_list, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false17
  %call28 = tail call ptr @sock_alloc() #15
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end20.cleanup_crit_edge, label %if.end31

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp24 = icmp ne i16 %9, 2
  %. = zext i1 %cmp24 to i32
  %type32 = getelementptr inbounds %struct.socket, ptr %call28, i32 0, i32 1
  %17 = ptrtoint ptr %type32 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %type32, align 4
  tail call void @__module_get(ptr noundef null) #15
  %call33 = tail call fastcc i32 @__smc_create(ptr noundef %3, ptr noundef nonnull %call28, i32 noundef %., ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sock_release(ptr noundef nonnull %call28) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file, align 4
  %file38 = getelementptr inbounds %struct.socket, ptr %call28, i32 0, i32 3
  %20 = ptrtoint ptr %file38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %file38, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 16
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28, ptr %private_data, align 4
  %vfs_inode.i = getelementptr inbounds %struct.socket_alloc, ptr %call28, i32 0, i32 1
  %22 = load ptr, ptr %file38, align 4
  %f_inode = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vfs_inode.i, ptr %f_inode, align 8
  %24 = load ptr, ptr %file38, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vfs_inode.i, ptr %d_inode, align 8
  store ptr null, ptr %file, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.end20.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then35 ], [ 0, %if.end36 ], [ -94, %lor.lhs.false5.cleanup_crit_edge ], [ -94, %lor.lhs.false.cleanup_crit_edge ], [ -94, %entry.cleanup_crit_edge ], [ -107, %lor.lhs.false17.cleanup_crit_edge ], [ -107, %lor.lhs.false16.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ], [ -23, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smc_ulp_clone(ptr nocapture noundef readnone %req, ptr nocapture noundef writeonly %newsk, i32 noundef %priority) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 12
  %0 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %icsk_ulp_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smc_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, ptr noundef %clcsock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %protocol)
  %cmp = icmp eq i32 %protocol, 1
  %cond = select i1 %cmp, i32 10, i32 2
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp1.not = icmp eq i16 %1, 1
  br i1 %cmp1.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %switch = icmp ult i32 %protocol, 2
  br i1 %switch, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smc_sock_ops, ptr %ops, align 4
  %call = tail call fastcc ptr @smc_sock_alloc(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.out_crit_edge, label %if.end10

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end10:                                         ; preds = %if.end8
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %use_fallback to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %use_fallback, align 4
  %fallback_rsn = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fallback_rsn, align 8
  %tobool12.not = icmp eq ptr %clcsock, null
  %clcsock14 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 1
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %call15 = tail call i32 @sock_create_kern(ptr noundef %net, i32 noundef %cond, i32 noundef 1, i32 noundef 6, ptr noundef %clcsock14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end20_crit_edge, label %if.then17

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sk_common_release(ptr noundef nonnull %call) #15
  br label %out

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %clcsock14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %clcsock, ptr %clcsock14, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13.if.end20_crit_edge
  %clcsock21 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %clcsock21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clcsock21, align 8
  %sk22 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk22, align 16
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_sndbuf, align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 16384)
  %sk_sndbuf27 = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sk_sndbuf27, align 4
  %14 = ptrtoint ptr %sk22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk22, align 16
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_rcvbuf, align 8
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 16384)
  %sk_rcvbuf38 = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %sk_rcvbuf38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sk_rcvbuf38, align 8
  br label %out

out:                                              ; preds = %if.end20, %if.then17, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -94, %entry.out_crit_edge ], [ 0, %if.end20 ], [ %call15, %if.then17 ], [ -105, %if.end8.out_crit_edge ], [ -93, %if.end.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smc_sock_alloc(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %protocol)
  %cmp = icmp eq i32 %protocol, 1
  %cond = select i1 %cmp, ptr @smc_proto6, ptr @smc_proto
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 43, i32 noundef 3264, ptr noundef nonnull %cond, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 2, ptr %skc_state, align 2
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %1 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smc_destruct, ptr %sk_destruct, align 4
  %conv = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %2 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sk_protocol, align 4
  %tcp_listen_work = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 9
  tail call void @__init_work(ptr noundef %tcp_listen_work, i32 noundef 0) #15
  %3 = ptrtoint ptr %tcp_listen_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %tcp_listen_work, align 8
  %lockdep_map = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @smc_sock_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry5 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 9, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @smc_tcp_listen_work, ptr %func, align 4
  %connect_work = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 8
  tail call void @__init_work(ptr noundef %connect_work, i32 noundef 0) #15
  %7 = ptrtoint ptr %connect_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %connect_work, align 4
  %lockdep_map13 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.20, ptr noundef nonnull @smc_sock_alloc.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry15 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i96 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 8, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry15, ptr %prev.i96, align 4
  %func17 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smc_connect_work, ptr %func17, align 4
  %tx_work = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #15
  %11 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map31 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map31, ptr noundef nonnull @.str.22, ptr noundef nonnull @smc_sock_alloc.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry35 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23, i32 0, i32 1
  %12 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i97 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry35, ptr %prev.i97, align 4
  %func39 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23, i32 0, i32 2
  %14 = ptrtoint ptr %func39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smc_tx_work, ptr %func39, align 4
  %timer = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @smc_sock_alloc.__key.23) #15
  %accept_q = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 11
  %15 = ptrtoint ptr %accept_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %accept_q, ptr %accept_q, align 4
  %prev.i98 = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %accept_q, ptr %prev.i98, align 4
  %accept_q_lock = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %accept_q_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @smc_sock_alloc.__key.25, i16 noundef signext 3) #15
  %send_lock = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 6, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %send_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @smc_sock_alloc.__key.27, i16 noundef signext 3) #15
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_prot, align 8
  %hash = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hash, align 4
  %call59 = tail call i32 %20(ptr noundef nonnull %call) #15
  %clcsock_release_lock = getelementptr inbounds %struct.smc_sock, ptr %call, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %clcsock_release_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @smc_sock_alloc.__key.29) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %sock_hold.exit.if.end8_crit_edge

sock_hold.exit.if.end8_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then5:                                         ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clcsock, align 8
  %sk6 = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk6, align 16
  %call7 = tail call i32 @tcp_abort(ptr noundef %11, i32 noundef 103) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %sock_hold.exit.if.end8_crit_edge
  %connect_work = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 8
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %connect_work) #15
  br i1 %call9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.if.end12_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %if.end12

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef nonnull %1) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp16 = icmp eq i8 %14, 10
  %. = zext i1 %cmp16 to i32
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef %.) #15
  br i1 %cmp, label %land.lhs.true22, label %if.end12.if.end31_crit_edge

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.end12
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp26 = icmp eq i8 %16, 1
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true22.if.end31_crit_edge

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.if.end31_crit_edge

land.lhs.true28.if.end31_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_close_active_abort(ptr noundef nonnull %1) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true28.if.end31_crit_edge, %land.lhs.true22.if.end31_crit_edge, %if.end12.if.end31_crit_edge
  %call32 = tail call fastcc i32 @__smc_release(ptr noundef nonnull %1)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #15
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %or.i.i.i = or i32 %21, 1
  store i32 %or.i.i.i, ptr %19, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %22 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sk_socket.i.i, align 8
  %23 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #15
  %25 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #15
  %call.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i58, 1
  br i1 %cmp.i.i.i.i59, label %if.then.i63, label %if.end5.i.i.i.i61

if.end5.i.i.i.i61:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i58)
  %.not.i.i.i.i60 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i58, 0
  br i1 %.not.i.i.i.i60, label %if.end5.i.i.i.i61.sock_put.exit64_crit_edge, label %if.then10.i.i.i.i62, !prof !165

if.end5.i.i.i.i61.sock_put.exit64_crit_edge:      ; preds = %if.end5.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit64

if.then10.i.i.i.i62:                              ; preds = %if.end5.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit64

if.then.i63:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef nonnull %1) #15
  br label %sock_put.exit64

sock_put.exit64:                                  ; preds = %if.then.i63, %if.then10.i.i.i.i62, %if.end5.i.i.i.i61.sock_put.exit64_crit_edge
  %call.i.i.i.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i68, label %if.then.i72, label %if.end5.i.i.i.i70

if.end5.i.i.i.i70:                                ; preds = %sock_put.exit64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i67)
  %.not.i.i.i.i69 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i69, label %if.end5.i.i.i.i70.out_crit_edge, label %if.then10.i.i.i.i71, !prof !165

if.end5.i.i.i.i70.out_crit_edge:                  ; preds = %if.end5.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i71:                              ; preds = %if.end5.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %out

if.then.i72:                                      ; preds = %sock_put.exit64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef nonnull %1) #15
  br label %out

out:                                              ; preds = %if.then.i72, %if.then10.i.i.i.i71, %if.end5.i.i.i.i70.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call32, %if.end5.i.i.i.i70.out_crit_edge ], [ %call32, %if.then10.i.i.i.i71 ], [ %call32, %if.then.i72 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 16
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %3, label %if.end.out_crit_edge [
    i16 0, label %land.lhs.true19
    i16 2, label %if.end.if.end23_crit_edge
    i16 10, label %if.end.if.end23_crit_edge52
  ]

if.end.if.end23_crit_edge52:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true19:                                  ; preds = %if.end
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.not = icmp eq i32 %6, 0
  br i1 %cmp20.not, label %land.lhs.true19.if.end23_crit_edge, label %land.lhs.true19.out_crit_edge

land.lhs.true19.out_crit_edge:                    ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true19.if.end23_crit_edge, %if.end.if.end23_crit_edge, %if.end.if.end23_crit_edge52
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp25.not = icmp eq i8 %8, 2
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end23.out_rel_crit_edge

if.end23.out_rel_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rel

lor.lhs.false:                                    ; preds = %if.end23
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end29, label %lor.lhs.false.out_rel_crit_edge

lor.lhs.false.out_rel_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rel

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load31 = load i8, ptr %skc_reuse, align 1
  %bf.lshr32 = and i8 %bf.load31, -16
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clcsock, align 8
  %sk33 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk33, align 16
  %skc_reuse35 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %skc_reuse35 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load36 = load i8, ptr %skc_reuse35, align 1
  %bf.clear37 = and i8 %bf.load36, 15
  %bf.set = or i8 %bf.clear37, %bf.lshr32
  store i8 %bf.set, ptr %skc_reuse35, align 1
  %17 = load ptr, ptr %clcsock, align 8
  %call39 = tail call i32 @kernel_bind(ptr noundef %17, ptr noundef %uaddr, i32 noundef %addr_len) #15
  br label %out_rel

out_rel:                                          ; preds = %if.end29, %lor.lhs.false.out_rel_crit_edge, %if.end23.out_rel_crit_edge
  %rc.0 = phi i32 [ -22, %if.end23.out_rel_crit_edge ], [ -22, %lor.lhs.false.out_rel_crit_edge ], [ %call39, %if.end29 ]
  tail call void @release_sock(ptr noundef %1) #15
  br label %out

out:                                              ; preds = %out_rel, %land.lhs.true19.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -22, %entry.out_crit_edge ], [ -97, %land.lhs.true19.out_crit_edge ], [ %rc.0, %out_rel ], [ -97, %if.end.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_connect(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %alen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  br i1 %cmp, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %3, label %if.end.out_err_crit_edge [
    i16 2, label %if.end.if.end9_crit_edge
    i16 10, label %if.end.if.end9_crit_edge60
  ]

if.end.if.end9_crit_edge60:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge60
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %6, label %if.end9.out_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.epilog
  ]

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.epilog:                                        ; preds = %if.end9
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i, align 16
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_type.i.i, align 2
  %sk_type1.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 45
  %14 = ptrtoint ptr %sk_type1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %sk_type1.i.i, align 2
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_sndbuf.i.i, align 4
  %sk_sndbuf2.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 21
  %17 = ptrtoint ptr %sk_sndbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sk_sndbuf2.i.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_rcvbuf3.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 15
  %20 = ptrtoint ptr %sk_rcvbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sk_rcvbuf3.i.i, align 8
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_sndtimeo.i.i, align 8
  %sk_sndtimeo4.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 31
  %23 = ptrtoint ptr %sk_sndtimeo4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sk_sndtimeo4.i.i, align 8
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %24 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %sk_rcvtimeo5.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 62
  %26 = ptrtoint ptr %sk_rcvtimeo5.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sk_rcvtimeo5.i.i, align 4
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %27 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_mark.i.i, align 8
  %sk_mark6.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 34
  %29 = ptrtoint ptr %sk_mark6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sk_mark6.i.i, align 8
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %30 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_priority.i.i, align 4
  %sk_priority7.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 33
  %32 = ptrtoint ptr %sk_priority7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sk_priority7.i.i, align 4
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_rcvlowat.i.i, align 8
  %sk_rcvlowat8.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 6
  %35 = ptrtoint ptr %sk_rcvlowat8.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sk_rcvlowat8.i.i, align 8
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %skc_bound_dev_if10.i.i = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 6
  %38 = ptrtoint ptr %skc_bound_dev_if10.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %skc_bound_dev_if10.i.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %39 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_err.i.i, align 4
  %sk_err11.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 51
  %41 = ptrtoint ptr %sk_err11.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sk_err11.i.i, align 4
  %42 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %and.i.i = and i32 %44, -70958301
  store i32 %and.i.i, ptr %42, align 8
  %45 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %and14.i.i = and i32 %47, 70958300
  %or.i.i = or i32 %and14.i.i, %and.i.i
  store i32 %or.i.i, ptr %42, align 8
  %48 = load ptr, ptr %clcsock.i, align 8
  %sk11 = getelementptr inbounds %struct.socket, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk11, align 16
  %syn_smc = getelementptr inbounds %struct.tcp_sock, ptr %50, i32 0, i32 116
  %51 = ptrtoint ptr %syn_smc to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %syn_smc, align 1
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %52 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %53 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not = icmp eq i8 %53, 0
  br i1 %tobool.not, label %if.end14, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end14:                                         ; preds = %sw.epilog
  %54 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clcsock.i, align 8
  %call16 = tail call i32 @kernel_connect(ptr noundef %55, ptr noundef %addr, i32 noundef %alen, i32 noundef %flags) #15
  %56 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call16, label %if.end14.out_crit_edge [
    i32 0, label %if.end14.if.end22_crit_edge
    i32 -115, label %if.end14.if.end22_crit_edge61
  ]

if.end14.if.end22_crit_edge61:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end22:                                         ; preds = %if.end14.if.end22_crit_edge, %if.end14.if.end22_crit_edge61
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end22.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end22
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool24.not = icmp eq i8 %60, 0
  br i1 %tobool24.not, label %if.end26, label %sock_hold.exit.out_crit_edge

sock_hold.exit.out_crit_edge:                     ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end26:                                         ; preds = %sock_hold.exit
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  %61 = load ptr, ptr @smc_hs_wq, align 4
  %connect_work = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %connect_work) #15
  br i1 %call.i, label %if.then30, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load32 = load i8, ptr %connect_nonblock, align 4
  %bf.set = or i8 %bf.load32, 64
  store i8 %bf.set, ptr %connect_nonblock, align 4
  br label %out

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = tail call fastcc i32 @__smc_connect(ptr noundef %1)
  %63 = tail call i32 @llvm.smin.i32(i32 %call35, i32 0)
  br label %out

out:                                              ; preds = %if.else, %if.then30, %if.then28.out_crit_edge, %sock_hold.exit.out_crit_edge, %if.end14.out_crit_edge, %sw.epilog.out_crit_edge, %sw.bb, %if.end9.out_crit_edge
  %rc.0 = phi i32 [ -22, %if.end9.out_crit_edge ], [ %call16, %sock_hold.exit.out_crit_edge ], [ %63, %if.else ], [ -106, %sw.bb ], [ -114, %sw.epilog.out_crit_edge ], [ %call16, %if.end14.out_crit_edge ], [ -115, %if.then30 ], [ -115, %if.then28.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #15
  br label %out_err

out_err:                                          ; preds = %out, %if.end.out_err_crit_edge, %entry.out_err_crit_edge
  %rc.1 = phi i32 [ -22, %entry.out_err_crit_edge ], [ %rc.0, %out ], [ -22, %if.end.out_err_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_accept(ptr nocapture noundef readonly %sock, ptr noundef %new_sock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #15
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #15
  %15 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timeo, align 4, !annotation !174
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp.not = icmp eq i8 %19, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %1) #15
  br label %out

if.end:                                           ; preds = %sock_hold.exit
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.sock_rcvtimeo.exit_crit_edge, label %cond.false.i

if.end.sock_rcvtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %20 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %21, %cond.false.i ], [ 0, %if.end.sock_rcvtimeo.exit_crit_edge ]
  %22 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %timeo, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %23, align 8
  call void @add_wait_queue_exclusive(ptr noundef %25, ptr noundef nonnull %wait) #15
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %sock_rcvtimeo.exit
  %call9 = call ptr @smc_accept_dequeue(ptr noundef %1, ptr noundef %new_sock)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %__here, label %while.cond.__here142_crit_edge

while.cond.__here142_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here142

__here:                                           ; preds = %while.cond
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@smc_accept, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  %31 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool77.not = icmp eq i32 %32, 0
  br i1 %tobool77.not, label %__here.__here142_crit_edge, label %if.end79

__here.__here142_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here142

if.end79:                                         ; preds = %__here
  call void @release_sock(ptr noundef %1) #15
  %33 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeo, align 4
  %call80 = call i32 @schedule_timeout(i32 noundef %34) #15
  %35 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call80, ptr %timeo, align 4
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change83 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %task_state_change83, align 4
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end79.if.then88_crit_edge, !prof !165

if.end79.if.then88_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then88

signal_pending.exit:                              ; preds = %if.end79
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  %tobool87.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool87.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.if.then88_crit_edge

signal_pending.exit.if.then88_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then88

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

if.then88:                                        ; preds = %signal_pending.exit.if.then88_crit_edge, %if.end79.if.then88_crit_edge
  %48 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %49)
  %cmp.i236 = icmp eq i32 %49, 2147483647
  %cond.i237 = select i1 %cmp.i236, i32 -512, i32 -4
  br label %__here142

__here142:                                        ; preds = %if.then88, %__here.__here142_crit_edge, %while.cond.__here142_crit_edge
  %rc.0 = phi i32 [ %cond.i237, %if.then88 ], [ 0, %while.cond.__here142_crit_edge ], [ -11, %__here.__here142_crit_edge ]
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 212
  %52 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 ptrtoint (ptr blockaddress(@smc_accept, %__here142) to i32), ptr %task_state_change146, align 4
  %53 = load ptr, ptr %task, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %53, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !176
  %55 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %23, align 8
  call void @remove_wait_queue(ptr noundef %56, ptr noundef nonnull %wait) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool173.not = icmp eq i32 %rc.0, 0
  br i1 %tobool173.not, label %if.then174, label %if.end176.thread252

if.end176.thread252:                              ; preds = %__here142
  call void @__sanitizer_cov_trace_pc() #17
  call void @release_sock(ptr noundef %1) #15
  br label %out

if.then174:                                       ; preds = %__here142
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %call9, i32 0, i32 51
  %57 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i238 = icmp eq i32 %58, 0
  br i1 %tobool.not.i238, label %if.end176.thread, label %if.end176, !prof !165

if.end176.thread:                                 ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #17
  call void @release_sock(ptr noundef %1) #15
  br label %if.end179

if.end176:                                        ; preds = %if.then174
  %call.i.i239 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !177
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #15
  %59 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #15, !srcloc !178
  %asmresult.i.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !179
  %sub.i = sub i32 0, %asmresult.i.i
  call void @release_sock(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool177.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool177.not, label %if.end176.if.end179_crit_edge, label %if.end176.out_crit_edge

if.end176.out_crit_edge:                          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end176.if.end179_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

if.end179:                                        ; preds = %if.end176.if.end179_crit_edge, %if.end176.thread
  %sockopt_defer_accept = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 16
  %60 = ptrtoint ptr %sockopt_defer_accept to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sockopt_defer_accept, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool180.not = icmp eq i32 %61, 0
  %brmerge = or i1 %tobool, %tobool180.not
  br i1 %brmerge, label %if.end179.out_crit_edge, label %if.else.i

if.end179.out_crit_edge:                          ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else.i:                                        ; preds = %if.end179
  %mul = mul i32 %61, 1000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #15
  %62 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call2.i, ptr %timeo, align 4
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %call9, i32 0, i32 13
  %63 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool187.not = icmp eq i8 %64, 0
  br i1 %tobool187.not, label %if.else, label %if.then188

if.then188:                                       ; preds = %if.else.i
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %call9, i32 0, i32 1
  %65 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clcsock, align 8
  %sk190 = getelementptr inbounds %struct.socket, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %sk190 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sk190, align 16
  call void @lock_sock_nested(ptr noundef %68, i32 noundef 0) #15
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i242.not = icmp eq ptr %70, %sk_receive_queue
  br i1 %cmp.i242.not, label %if.then193, label %if.then188.if.end195_crit_edge

if.then188.if.end195_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

if.then193:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  %call194 = call i32 @sk_wait_data(ptr noundef %68, ptr noundef nonnull %timeo, ptr noundef null) #15
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.then188.if.end195_crit_edge
  call void @release_sock(ptr noundef %68) #15
  br label %out

if.else:                                          ; preds = %if.else.i
  %bytes_to_rcv = getelementptr inbounds %struct.smc_sock, ptr %call9, i32 0, i32 6, i32 32
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #15
  %71 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool198.not = icmp eq i32 %72, 0
  br i1 %tobool198.not, label %if.then199, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then199:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @lock_sock_nested(ptr noundef %call9, i32 noundef 0) #15
  %call201 = call i32 @smc_rx_wait(ptr noundef %call9, ptr noundef nonnull %timeo, ptr noundef nonnull @smc_rx_data_available) #15
  call void @release_sock(ptr noundef %call9) #15
  br label %out

out:                                              ; preds = %if.then199, %if.else.out_crit_edge, %if.end195, %if.end179.out_crit_edge, %if.end176.out_crit_edge, %if.end176.thread252, %if.then
  %rc.2 = phi i32 [ -22, %if.then ], [ %sub.i, %if.end176.out_crit_edge ], [ 0, %if.end195 ], [ 0, %if.else.out_crit_edge ], [ 0, %if.then199 ], [ 0, %if.end179.out_crit_edge ], [ %rc.0, %if.end176.thread252 ]
  %call.i.i.i.i.i.i244 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i246, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i245 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i245, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit

if.then.i246:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @sk_free(ptr noundef %1) #15
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i246, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #15
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_getname(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %5)
  %cmp7.not = icmp eq i8 %5, 22
  br i1 %cmp7.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sk9 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %6 = ptrtoint ptr %sk9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk9, align 16
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clcsock, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %getname = getelementptr inbounds %struct.proto_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %getname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %getname, align 4
  %call11 = tail call i32 %13(ptr noundef %9, ptr noundef %addr, i32 noundef %peer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -107, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsock, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %poll = getelementptr inbounds %struct.proto_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll, align 4
  %call6 = tail call i32 %9(ptr noundef %file, ptr noundef %5, ptr noundef %wait) #15
  %10 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clcsock, align 8
  %sk8 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk8, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 51
  %14 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_err, align 4
  %sk_err9 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %16 = ptrtoint ptr %sk_err9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sk_err9, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp.not = icmp eq i8 %18, 7
  %cmp.i.i = icmp eq ptr %wait, null
  %or.cond = or i1 %cmp.i.i, %cmp.not
  br i1 %or.cond, label %if.else.if.end12_crit_edge, label %poll_does_not_wait.exit.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

poll_does_not_wait.exit.i:                        ; preds = %if.else
  %19 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %20, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.if.end12_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.if.end12_crit_edge:     ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %20(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !180
  br label %if.end12

if.end12:                                         ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %sk_err13 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %21 = ptrtoint ptr %sk_err13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_err13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool14.not, i32 0, i32 8
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %23 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp18 = icmp eq i8 %24, 3
  br i1 %cmp18, label %if.end12.if.then25_crit_edge, label %lor.lhs.false

if.end12.if.then25_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.end12
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp23 = icmp eq i8 %26, 7
  br i1 %cmp23, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.end12.if.then25_crit_edge
  %or26 = or i32 %spec.select, 16
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %lor.lhs.false.if.end27_crit_edge
  %mask.1 = phi i32 [ %or26, %if.then25 ], [ %spec.select, %lor.lhs.false.if.end27_crit_edge ]
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp31 = icmp eq i8 %28, 10
  br i1 %cmp31, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %accept_q_lock.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %accept_q_lock.i) #15
  %accept_q.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %accept_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %accept_q.i
  %spec.select.i = select i1 %cmp.i.not.i, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef %accept_q_lock.i) #15
  %or35 = or i32 %spec.select.i, %mask.1
  br label %cleanup

if.else36:                                        ; preds = %if.end27
  %31 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool38.not = icmp eq i8 %32, 0
  br i1 %tobool38.not, label %if.else50, label %if.then39

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock40 = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %clcsock40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clcsock40, align 8
  %ops41 = getelementptr inbounds %struct.socket, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops41, align 4
  %poll42 = getelementptr inbounds %struct.proto_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %poll42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %poll42, align 4
  %call44 = tail call i32 %38(ptr noundef %file, ptr noundef %34, ptr noundef %wait) #15
  %or45 = or i32 %call44, %mask.1
  %39 = ptrtoint ptr %clcsock40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clcsock40, align 8
  %sk47 = getelementptr inbounds %struct.socket, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %sk47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk47, align 16
  %sk_err48 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 51
  %43 = ptrtoint ptr %sk_err48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sk_err48, align 4
  %45 = ptrtoint ptr %sk_err13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %sk_err13, align 4
  br label %cleanup

if.else50:                                        ; preds = %if.else36
  %46 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp54.not = icmp eq i8 %47, 2
  br i1 %cmp54.not, label %if.else50.lor.lhs.false58_crit_edge, label %land.lhs.true

if.else50.lor.lhs.false58_crit_edge:              ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false58

land.lhs.true:                                    ; preds = %if.else50
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #15
  %48 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %sndbuf_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool57.not = icmp eq i32 %49, 0
  br i1 %tobool57.not, label %land.lhs.true.lor.lhs.false58_crit_edge, label %land.lhs.true.if.then62_crit_edge

land.lhs.true.if.then62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

land.lhs.true.lor.lhs.false58_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true.lor.lhs.false58_crit_edge, %if.else50.lor.lhs.false58_crit_edge
  %50 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sk_shutdown, align 2
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool61.not = icmp eq i8 %52, 0
  br i1 %tobool61.not, label %if.else64, label %lor.lhs.false58.if.then62_crit_edge

lor.lhs.false58.if.then62_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false58.if.then62_crit_edge, %land.lhs.true.if.then62_crit_edge
  %or63 = or i32 %mask.1, 260
  br label %if.end65

if.else64:                                        ; preds = %lor.lhs.false58
  %53 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i = icmp eq i32 %56, 0
  br i1 %tobool.i.not.i, label %if.else64.sk_set_bit.exit_crit_edge, label %if.end.i

if.else64.sk_set_bit.exit_crit_edge:              ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sk_set_bit.exit

if.end.i:                                         ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  %57 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %59, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i, %if.else64.sk_set_bit.exit_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %60 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %61, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #15
  br label %if.end65

if.end65:                                         ; preds = %sk_set_bit.exit, %if.then62
  %mask.2 = phi i32 [ %or63, %if.then62 ], [ %mask.1, %sk_set_bit.exit ]
  %bytes_to_rcv = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 32
  %call.i.i139 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #15
  %62 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool68.not = icmp eq i32 %63, 0
  %or70 = or i32 %mask.2, 65
  %spec.select137 = select i1 %tobool68.not, i32 %mask.2, i32 %or70
  %64 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sk_shutdown, align 2
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool75.not = icmp eq i8 %66, 0
  %or77 = or i32 %spec.select137, 8257
  %mask.4 = select i1 %tobool75.not, i32 %spec.select137, i32 %or77
  %67 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %68)
  %cmp82 = icmp eq i8 %68, 22
  %or85 = zext i1 %cmp82 to i32
  %mask.5 = or i32 %mask.4, %or85
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 28
  %69 = ptrtoint ptr %urg_state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %urg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp88 = icmp eq i32 %70, 1
  %or91 = or i32 %mask.5, 2
  %spec.select138 = select i1 %cmp88, i32 %or91, i32 %mask.5
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then39, %if.then33, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32, %entry.cleanup_crit_edge ], [ %call6, %if.then4 ], [ %or35, %if.then33 ], [ %or45, %if.then39 ], [ %spec.select138, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %cons = alloca %union.smc_host_cursor, align 8
  %urg = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons) #15
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cons, align 8, !annotation !174
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %urg) #15
  %1 = ptrtoint ptr %urg to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %urg, align 8, !annotation !174
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clcsock, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ops = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %ioctl = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioctl, align 4
  %call8 = tail call i32 %11(ptr noundef nonnull %7, i32 noundef %cmd, i32 noundef %arg) #15
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end10:                                         ; preds = %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %sw.default [
    i32 21531, label %sw.bb
    i32 21521, label %sw.bb32
    i32 35147, label %sw.bb61
    i32 35077, label %sw.bb89
  ]

sw.bb:                                            ; preds = %if.end10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp = icmp eq i8 %14, 10
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp20 = icmp eq i8 %16, 2
  br i1 %cmp20, label %if.end15.sw.epilog_crit_edge, label %lor.lhs.false

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end15
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp26 = icmp eq i8 %18, 7
  br i1 %cmp26, label %lor.lhs.false.sw.epilog_crit_edge, label %if.else

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %bytes_to_rcv = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #15
  %19 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bytes_to_rcv, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end10
  %skc_state35 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp37 = icmp eq i8 %22, 10
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end41:                                         ; preds = %sw.bb32
  %23 = ptrtoint ptr %skc_state35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp46 = icmp eq i8 %24, 2
  br i1 %cmp46, label %if.end41.sw.epilog_crit_edge, label %lor.lhs.false48

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false48:                                  ; preds = %if.end41
  %25 = ptrtoint ptr %skc_state35 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp53 = icmp eq i8 %26, 7
  br i1 %cmp53, label %lor.lhs.false48.sw.epilog_crit_edge, label %if.else56

lor.lhs.false48.sw.epilog_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else56:                                        ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #17
  %sndbuf_desc = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 8
  %27 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 8
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 17
  %call.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #15
  %31 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sndbuf_space, align 4
  %sub = sub i32 %30, %32
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end10
  %skc_state64 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %skc_state64 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %cmp66 = icmp eq i8 %34, 10
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end70:                                         ; preds = %sw.bb61
  %35 = ptrtoint ptr %skc_state64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp75 = icmp eq i8 %36, 2
  br i1 %cmp75, label %if.end70.sw.epilog_crit_edge, label %lor.lhs.false77

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false77:                                  ; preds = %if.end70
  %37 = ptrtoint ptr %skc_state64 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp82 = icmp eq i8 %38, 7
  br i1 %cmp82, label %lor.lhs.false77.sw.epilog_crit_edge, label %if.else85

lor.lhs.false77.sw.epilog_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else85:                                        ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  %call87 = tail call fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn1)
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end10
  %skc_state92 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state92 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state92, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %cmp94 = icmp eq i8 %40, 10
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

if.end98:                                         ; preds = %sw.bb89
  %41 = ptrtoint ptr %skc_state92 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %skc_state92, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp103 = icmp eq i8 %42, 2
  br i1 %cmp103, label %if.end98.sw.epilog_crit_edge, label %lor.lhs.false105

if.end98.sw.epilog_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false105:                                 ; preds = %if.end98
  %43 = ptrtoint ptr %skc_state92 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state92, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %44)
  %cmp110 = icmp eq i8 %44, 7
  br i1 %cmp110, label %lor.lhs.false105.sw.epilog_crit_edge, label %if.else113

lor.lhs.false105.sw.epilog_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else113:                                       ; preds = %lor.lhs.false105
  %cons114 = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 12, i32 5
  call fastcc void @smc_curs_copy(ptr noundef nonnull %cons, ptr noundef %cons114)
  %urg_curs = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 27
  call fastcc void @smc_curs_copy(ptr noundef nonnull %urg, ptr noundef %urg_curs)
  %wrap.i = getelementptr inbounds %struct.anon.226, ptr %cons, i32 0, i32 1
  %45 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.226, ptr %urg, i32 0, i32 1
  %47 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp.not.i = icmp eq i16 %46, %48
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #17
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 6, i32 9
  %49 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmb_desc, align 4
  %len115 = getelementptr inbounds %struct.smc_buf_desc, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %len115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len115, align 8
  %count.i = getelementptr inbounds %struct.anon.226, ptr %cons, i32 0, i32 2
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %52, %54
  %count4.i = getelementptr inbounds %struct.anon.226, ptr %urg, i32 0, i32 2
  %55 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %56
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #17
  %count7.i = getelementptr inbounds %struct.anon.226, ptr %urg, i32 0, i32 2
  %57 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.226, ptr %cons, i32 0, i32 2
  %59 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %58, %60
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %61 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp117 = icmp eq i32 %61, 1
  %conv118 = zext i1 %cmp117 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %3) #15
  br label %cleanup

sw.epilog:                                        ; preds = %smc_curs_diff.exit, %lor.lhs.false105.sw.epilog_crit_edge, %if.end98.sw.epilog_crit_edge, %if.else85, %lor.lhs.false77.sw.epilog_crit_edge, %if.end70.sw.epilog_crit_edge, %if.else56, %lor.lhs.false48.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge, %if.else, %lor.lhs.false.sw.epilog_crit_edge, %if.end15.sw.epilog_crit_edge
  %answ.0 = phi i32 [ %conv118, %smc_curs_diff.exit ], [ %call87, %if.else85 ], [ %sub, %if.else56 ], [ %20, %if.else ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %if.end15.sw.epilog_crit_edge ], [ 0, %lor.lhs.false48.sw.epilog_crit_edge ], [ 0, %if.end41.sw.epilog_crit_edge ], [ 0, %lor.lhs.false77.sw.epilog_crit_edge ], [ 0, %if.end70.sw.epilog_crit_edge ], [ 0, %lor.lhs.false105.sw.epilog_crit_edge ], [ 0, %if.end98.sw.epilog_crit_edge ]
  call void @release_sock(ptr noundef %3) #15
  %62 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 2757) #15
  %63 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !181
  %and.i = and i32 %65, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  %66 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %62, i32 %answ.0, i32 -1226833921) #15, !srcloc !184
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #15, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then96, %if.then68, %if.then39, %if.then13, %if.end, %if.then4
  %retval.0 = phi i32 [ %call8, %if.end ], [ -9, %if.then4 ], [ -515, %sw.default ], [ -22, %if.then96 ], [ %66, %sw.epilog ], [ -22, %if.then68 ], [ -22, %if.then39 ], [ -22, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %urg) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp6.not = icmp eq i8 %5, 10
  br i1 %cmp6.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp12 = icmp eq i8 %9, 10
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %10 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  br label %out

if.end15:                                         ; preds = %if.end
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk.i, align 16
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_type.i.i, align 2
  %sk_type1.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %17 = ptrtoint ptr %sk_type1.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sk_type1.i.i, align 2
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_sndbuf.i.i, align 4
  %sk_sndbuf2.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 21
  %20 = ptrtoint ptr %sk_sndbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sk_sndbuf2.i.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_rcvbuf3.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 15
  %23 = ptrtoint ptr %sk_rcvbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sk_rcvbuf3.i.i, align 8
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_sndtimeo.i.i, align 8
  %sk_sndtimeo4.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 31
  %26 = ptrtoint ptr %sk_sndtimeo4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sk_sndtimeo4.i.i, align 8
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %27 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %sk_rcvtimeo5.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %29 = ptrtoint ptr %sk_rcvtimeo5.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sk_rcvtimeo5.i.i, align 4
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %30 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_mark.i.i, align 8
  %sk_mark6.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 34
  %32 = ptrtoint ptr %sk_mark6.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sk_mark6.i.i, align 8
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %33 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_priority.i.i, align 4
  %sk_priority7.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 33
  %35 = ptrtoint ptr %sk_priority7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sk_priority7.i.i, align 4
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_rcvlowat.i.i, align 8
  %sk_rcvlowat8.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 6
  %38 = ptrtoint ptr %sk_rcvlowat8.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sk_rcvlowat8.i.i, align 8
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %skc_bound_dev_if10.i.i = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 6
  %41 = ptrtoint ptr %skc_bound_dev_if10.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %skc_bound_dev_if10.i.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %42 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_err.i.i, align 4
  %sk_err11.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %44 = ptrtoint ptr %sk_err11.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sk_err11.i.i, align 4
  %45 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %and.i.i = and i32 %47, -70958301
  store i32 %and.i.i, ptr %45, align 8
  %48 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %and14.i.i = and i32 %50, 70958300
  %or.i.i = or i32 %and14.i.i, %and.i.i
  store i32 %or.i.i, ptr %45, align 8
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool16.not = icmp eq i8 %52, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clcsock.i, align 8
  %sk18 = getelementptr inbounds %struct.socket, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %sk18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk18, align 16
  %syn_smc = getelementptr inbounds %struct.tcp_sock, ptr %56, i32 0, i32 116
  %57 = ptrtoint ptr %syn_smc to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %syn_smc, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %58 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clcsock.i, align 8
  %sk22 = getelementptr inbounds %struct.socket, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %sk22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk22, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %61, i32 0, i32 77
  %62 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk_data_ready, align 8
  %clcsk_data_ready = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %clcsk_data_ready, align 8
  %65 = load ptr, ptr %sk22, align 16
  %sk_data_ready25 = getelementptr inbounds %struct.sock, ptr %65, i32 0, i32 77
  %66 = ptrtoint ptr %sk_data_ready25 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @smc_clcsock_data_ready, ptr %sk_data_ready25, align 8
  %67 = ptrtoint ptr %1 to i32
  %or = or i32 %67, 1
  %68 = inttoptr i32 %or to ptr
  %69 = load ptr, ptr %clcsock.i, align 8
  %sk27 = getelementptr inbounds %struct.socket, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %sk27 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sk27, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %71, i32 0, i32 72
  %72 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %68, ptr %sk_user_data, align 4
  %73 = load ptr, ptr %clcsock.i, align 8
  %call29 = tail call i32 @kernel_listen(ptr noundef %73, i32 noundef %backlog) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clcsk_data_ready, align 8
  %76 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clcsock.i, align 8
  %sk34 = getelementptr inbounds %struct.socket, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %sk34 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sk34, align 16
  %sk_data_ready35 = getelementptr inbounds %struct.sock, ptr %79, i32 0, i32 77
  %80 = ptrtoint ptr %sk_data_ready35 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %75, ptr %sk_data_ready35, align 8
  br label %out

if.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %sk_max_ack_backlog37 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %81 = ptrtoint ptr %sk_max_ack_backlog37 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %backlog, ptr %sk_max_ack_backlog37, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %82 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %sk_ack_backlog, align 4
  %83 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %83)
  store volatile i8 10, ptr %skc_state, align 2
  br label %out

out:                                              ; preds = %if.end36, %if.then31, %if.then14, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge
  %rc.0 = phi i32 [ -22, %land.lhs.true.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ 0, %if.then14 ], [ %call29, %if.then31 ], [ 0, %if.end36 ]
  tail call void @release_sock(ptr noundef %1) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_shutdown(ptr nocapture noundef readonly %sock, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %how)
  %2 = icmp ugt i32 %how, 2
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp3.not = icmp eq i8 %4, 1
  br i1 %cmp3.not, label %if.end.if.end35_crit_edge, label %land.lhs.true

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %6)
  %cmp8.not = icmp eq i8 %6, 20
  br i1 %cmp8.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true10

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true10:                                  ; preds = %land.lhs.true
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %8)
  %cmp14.not = icmp eq i8 %8, 21
  br i1 %cmp14.not, label %land.lhs.true10.if.end35_crit_edge, label %land.lhs.true16

land.lhs.true10.if.end35_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %10)
  %cmp20.not = icmp eq i8 %10, 22
  br i1 %cmp20.not, label %land.lhs.true16.if.end35_crit_edge, label %land.lhs.true22

land.lhs.true16.if.end35_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %12)
  %cmp26.not = icmp eq i8 %12, 23
  br i1 %cmp26.not, label %land.lhs.true22.if.end35_crit_edge, label %land.lhs.true28

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %14)
  %cmp32.not = icmp eq i8 %14, 24
  br i1 %cmp32.not, label %land.lhs.true28.if.end35_crit_edge, label %out.thread

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

out.thread:                                       ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @release_sock(ptr noundef %1) #15
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true28.if.end35_crit_edge, %land.lhs.true22.if.end35_crit_edge, %land.lhs.true16.if.end35_crit_edge, %land.lhs.true10.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end49, label %if.then36

if.then36:                                        ; preds = %if.end35
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clcsock, align 8
  %call37 = tail call i32 @kernel_sock_shutdown(ptr noundef %18, i32 noundef %how) #15
  %19 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clcsock, align 8
  %sk39 = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sk39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk39, align 16
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 66
  %23 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sk_shutdown, align 2
  %sk_shutdown40 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %25 = ptrtoint ptr %sk_shutdown40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sk_shutdown40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp43 = icmp eq i8 %24, 3
  br i1 %cmp43, label %if.then45, label %if.then36.out_crit_edge

if.then36.out_crit_edge:                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store volatile i8 7, ptr %skc_state, align 2
  br label %out

if.end49:                                         ; preds = %if.end35
  %27 = zext i32 %how to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %how, label %if.end49.land.lhs.true69_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb64
    i32 0, label %sw.bb66
  ]

if.end49.land.lhs.true69_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true69

sw.bb:                                            ; preds = %if.end49
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  %call53 = tail call i32 @smc_close_active(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp54 = icmp eq i8 %29, 1
  br i1 %cmp54, label %sw.epilog, label %sw.bb.land.lhs.true69_crit_edge

sw.bb.land.lhs.true69_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true69

sw.bb64:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %call65 = tail call i32 @smc_close_shutdown_write(ptr noundef %1) #15
  br label %land.lhs.true69

sw.bb66:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true69

sw.epilog:                                        ; preds = %sw.bb
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %31)
  %cmp60.not = icmp eq i8 %31, 20
  br i1 %cmp60.not, label %sw.epilog.if.end75_crit_edge, label %sw.epilog.land.lhs.true69_crit_edge

sw.epilog.land.lhs.true69_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true69

sw.epilog.if.end75_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

land.lhs.true69:                                  ; preds = %sw.epilog.land.lhs.true69_crit_edge, %sw.bb66, %sw.bb64, %sw.bb.land.lhs.true69_crit_edge, %if.end49.land.lhs.true69_crit_edge
  %rc.0115 = phi i32 [ %call53, %sw.epilog.land.lhs.true69_crit_edge ], [ %call53, %sw.bb.land.lhs.true69_crit_edge ], [ %call65, %sw.bb64 ], [ 0, %sw.bb66 ], [ -107, %if.end49.land.lhs.true69_crit_edge ]
  %clcsock70 = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %clcsock70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clcsock70, align 8
  %tobool71.not = icmp eq ptr %33, null
  br i1 %tobool71.not, label %land.lhs.true69.if.end75_crit_edge, label %if.then72

land.lhs.true69.if.end75_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %33, i32 noundef %how) #15
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true69.if.end75_crit_edge, %sw.epilog.if.end75_crit_edge
  %rc.0114 = phi i32 [ %rc.0115, %if.then72 ], [ %rc.0115, %land.lhs.true69.if.end75_crit_edge ], [ %call53, %sw.epilog.if.end75_crit_edge ]
  %rc1.0 = phi i32 [ %call74, %if.then72 ], [ 0, %land.lhs.true69.if.end75_crit_edge ], [ 0, %sw.epilog.if.end75_crit_edge ]
  %sk_shutdown76 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %34 = ptrtoint ptr %sk_shutdown76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sk_shutdown76, align 2
  %36 = trunc i32 %how to i8
  %37 = add nuw nsw i8 %36, 1
  %conv78 = or i8 %35, %37
  store i8 %conv78, ptr %sk_shutdown76, align 2
  br label %out

out:                                              ; preds = %if.end75, %if.then45, %if.then36.out_crit_edge
  %rc.1 = phi i32 [ %call37, %if.then45 ], [ %call37, %if.then36.out_crit_edge ], [ %rc.0114, %if.end75 ]
  %rc1.1 = phi i32 [ 0, %if.then45 ], [ 0, %if.then36.out_crit_edge ], [ %rc1.0, %if.end75 ]
  tail call void @release_sock(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool79.not = icmp eq i32 %rc.1, 0
  %spec.select119 = select i1 %tobool79.not, i32 %rc1.1, i32 %rc.1
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -107, %out.thread ], [ %spec.select119, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %level)
  %cmp = icmp eq i32 %level, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %optname)
  %cmp2 = icmp eq i32 %optname, 31
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %clcsock_release_lock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock, i32 noundef 0) #15
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clcsock, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %setsockopt = getelementptr inbounds %struct.proto_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %setsockopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setsockopt, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end5.if.end17_crit_edge, label %if.else, !prof !164

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i32 %8(ptr noundef nonnull %4, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #15
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end5.if.end17_crit_edge
  %rc.0 = phi i32 [ %call16, %if.else ], [ -95, %if.end5.if.end17_crit_edge ]
  %9 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clcsock, align 8
  %sk19 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk19, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 51
  %13 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %if.then21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %sk_err25 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %15 = ptrtoint ptr %sk_err25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sk_err25, align 4
  tail call void @sk_error_report(ptr noundef %1) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end17.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp28 = icmp ult i32 %optlen, 4
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %16 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end30
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #15
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 4, i32 -1226833920) #20, !srcloc !185
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !165

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #15
  %18 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !181
  %and.i.i.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #15, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %16, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #15, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end34_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !165

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end34_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %16, align 1
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end34_crit_edge
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool35.not = icmp eq i32 %rc.0, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %if.end34
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  br i1 %tobool36.not, label %if.end38, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end38:                                         ; preds = %lor.lhs.false
  %27 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %optname, label %if.end38.out_crit_edge [
    i32 23, label %if.end38.sw.bb_crit_edge
    i32 30, label %if.end38.sw.bb_crit_edge428
    i32 33, label %if.end38.sw.bb_crit_edge429
    i32 34, label %if.end38.sw.bb_crit_edge430
    i32 1, label %sw.bb47
    i32 3, label %sw.bb196
    i32 9, label %sw.bb367
  ]

if.end38.sw.bb_crit_edge430:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end38.sw.bb_crit_edge429:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end38.sw.bb_crit_edge428:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end38.sw.bb_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb:                                            ; preds = %if.end38.sw.bb_crit_edge, %if.end38.sw.bb_crit_edge428, %if.end38.sw.bb_crit_edge429, %if.end38.sw.bb_crit_edge430
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp39 = icmp eq i8 %29, 2
  br i1 %cmp39, label %land.lhs.true41, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true41:                                  ; preds = %sw.bb
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %31 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true41.out_crit_edge

land.lhs.true41.out_crit_edge:                    ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  %call44 = call fastcc i32 @smc_switch_to_fallback(ptr noundef %1, i32 noundef 50724864)
  br label %out

sw.bb47:                                          ; preds = %if.end38
  %skc_state49 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %skc_state49 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp51.not = icmp eq i8 %33, 2
  br i1 %cmp51.not, label %sw.bb47.out_crit_edge, label %land.lhs.true53

sw.bb47.out_crit_edge:                            ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true53:                                  ; preds = %sw.bb47
  %34 = ptrtoint ptr %skc_state49 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %skc_state49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %35)
  %cmp57.not = icmp eq i8 %35, 10
  br i1 %cmp57.not, label %land.lhs.true53.out_crit_edge, label %land.lhs.true59

land.lhs.true53.out_crit_edge:                    ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %36 = ptrtoint ptr %skc_state49 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %37)
  %cmp63.not = icmp eq i8 %37, 7
  br i1 %cmp63.not, label %land.lhs.true59.out_crit_edge, label %if.then65

land.lhs.true59.out_crit_edge:                    ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then65:                                        ; preds = %land.lhs.true59
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool66.not = icmp eq i32 %39, 0
  br i1 %tobool66.not, label %if.then65.out_crit_edge, label %do.body

if.then65.out_crit_edge:                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body:                                          ; preds = %if.then65
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lnk, align 8
  %tobool68.not = icmp eq ptr %41, null
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skc_net.i, align 4
  %smc73 = getelementptr inbounds %struct.net, ptr %43, i32 0, i32 55
  %44 = ptrtoint ptr %smc73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smc73, align 4
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  br i1 %tobool68.not, label %do.body78, label %do.body128

do.body78:                                        ; preds = %do.body
  %ndly_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %45, i32 0, i32 1, i32 14
  %47 = ptrtoint ptr %ndly_cnt to i32
  %48 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu, align 4
  %arrayidx95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx95, align 4
  %add = add i32 %53, %47
  %54 = inttoptr i32 %add to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %54, align 8
  %add96 = add i64 %56, 1
  store i64 %add96, ptr %54, align 8
  %57 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool107.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool107.not, label %if.then116, label %do.body78.do.end119_crit_edge, !prof !164

do.body78.do.end119_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end119

if.then116:                                       ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %do.body78.do.end119_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #15, !srcloc !168
  br label %if.end188

do.body128:                                       ; preds = %do.body
  %ndly_cnt152 = getelementptr inbounds %struct.smc_stats_tech, ptr %45, i32 0, i32 14
  %58 = ptrtoint ptr %ndly_cnt152 to i32
  %59 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i418 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i418 to ptr
  %cpu155 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu155 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu155, align 4
  %arrayidx156 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx156, align 4
  %add157 = add i32 %64, %58
  %65 = inttoptr i32 %add157 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %65, align 8
  %add158 = add i64 %67, 1
  store i64 %add158, ptr %65, align 8
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i419 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i419)
  %tobool169.not = icmp eq i32 %and.i.i419, 0
  br i1 %tobool169.not, label %if.then178, label %do.body128.do.end181_crit_edge, !prof !164

do.body128.do.end181_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end181

if.then178:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.body128.do.end181_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #15, !srcloc !168
  br label %if.end188

if.end188:                                        ; preds = %do.end181, %do.end119
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lgr, align 4
  %tx_wq = getelementptr inbounds %struct.smc_link_group, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 23
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %tx_work, i32 noundef 0) #15
  br label %out

sw.bb196:                                         ; preds = %if.end38
  %skc_state198 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %skc_state198 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load volatile i8, ptr %skc_state198, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp200.not = icmp eq i8 %74, 2
  br i1 %cmp200.not, label %sw.bb196.out_crit_edge, label %land.lhs.true202

sw.bb196.out_crit_edge:                           ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true202:                                 ; preds = %sw.bb196
  %75 = ptrtoint ptr %skc_state198 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load volatile i8, ptr %skc_state198, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %76)
  %cmp206.not = icmp eq i8 %76, 10
  br i1 %cmp206.not, label %land.lhs.true202.out_crit_edge, label %land.lhs.true208

land.lhs.true202.out_crit_edge:                   ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true208:                                 ; preds = %land.lhs.true202
  %77 = ptrtoint ptr %skc_state198 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load volatile i8, ptr %skc_state198, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %78)
  %cmp212.not = icmp eq i8 %78, 7
  br i1 %cmp212.not, label %land.lhs.true208.out_crit_edge, label %if.then214

land.lhs.true208.out_crit_edge:                   ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then214:                                       ; preds = %land.lhs.true208
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool215.not = icmp eq i32 %80, 0
  br i1 %tobool215.not, label %do.body217, label %if.then214.out_crit_edge

if.then214.out_crit_edge:                         ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body217:                                       ; preds = %if.then214
  %lnk221 = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %lnk221 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lnk221, align 8
  %tobool222.not = icmp eq ptr %82, null
  %skc_net.i420 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %83 = ptrtoint ptr %skc_net.i420 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skc_net.i420, align 4
  %smc230 = getelementptr inbounds %struct.net, ptr %84, i32 0, i32 55
  %85 = ptrtoint ptr %smc230 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %smc230, align 4
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  br i1 %tobool222.not, label %do.body235, label %do.body296

do.body235:                                       ; preds = %do.body217
  %cork_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %86, i32 0, i32 1, i32 13
  %88 = ptrtoint ptr %cork_cnt to i32
  %89 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i421 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i421 to ptr
  %cpu261 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %cpu261 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu261, align 4
  %arrayidx262 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx262, align 4
  %add263 = add i32 %94, %88
  %95 = inttoptr i32 %add263 to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %95, align 8
  %add264 = add i64 %97, 1
  store i64 %add264, ptr %95, align 8
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i422 = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i422)
  %tobool275.not = icmp eq i32 %and.i.i422, 0
  br i1 %tobool275.not, label %if.then284, label %do.body235.do.end287_crit_edge, !prof !164

do.body235.do.end287_crit_edge:                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end287

if.then284:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end287

do.end287:                                        ; preds = %if.then284, %do.body235.do.end287_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #15, !srcloc !168
  br label %if.end356

do.body296:                                       ; preds = %do.body217
  %cork_cnt320 = getelementptr inbounds %struct.smc_stats_tech, ptr %86, i32 0, i32 13
  %99 = ptrtoint ptr %cork_cnt320 to i32
  %100 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i423 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i423 to ptr
  %cpu323 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu323 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu323, align 4
  %arrayidx324 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx324, align 4
  %add325 = add i32 %105, %99
  %106 = inttoptr i32 %add325 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %106, align 8
  %add326 = add i64 %108, 1
  store i64 %add326, ptr %106, align 8
  %109 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i424 = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i424)
  %tobool337.not = icmp eq i32 %and.i.i424, 0
  br i1 %tobool337.not, label %if.then346, label %do.body296.do.end349_crit_edge, !prof !164

do.body296.do.end349_crit_edge:                   ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end349

if.then346:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end349

do.end349:                                        ; preds = %if.then346, %do.body296.do.end349_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #15, !srcloc !168
  br label %if.end356

if.end356:                                        ; preds = %do.end349, %do.end287
  %lgr360 = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 1
  %110 = ptrtoint ptr %lgr360 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lgr360, align 4
  %tx_wq361 = getelementptr inbounds %struct.smc_link_group, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %tx_wq361 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_wq361, align 4
  %tx_work363 = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 23
  %call.i425 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %113, ptr noundef %tx_work363, i32 noundef 0) #15
  br label %out

sw.bb367:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val, align 4
  %sockopt_defer_accept = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 16
  %116 = ptrtoint ptr %sockopt_defer_accept to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %sockopt_defer_accept, align 8
  br label %out

out:                                              ; preds = %sw.bb367, %if.end356, %if.then214.out_crit_edge, %land.lhs.true208.out_crit_edge, %land.lhs.true202.out_crit_edge, %sw.bb196.out_crit_edge, %if.end188, %if.then65.out_crit_edge, %land.lhs.true59.out_crit_edge, %land.lhs.true53.out_crit_edge, %sw.bb47.out_crit_edge, %if.then43, %land.lhs.true41.out_crit_edge, %sw.bb.out_crit_edge, %if.end38.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end34.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end34.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.end38.out_crit_edge ], [ 0, %sw.bb367 ], [ 0, %if.then214.out_crit_edge ], [ 0, %if.end356 ], [ 0, %land.lhs.true208.out_crit_edge ], [ 0, %land.lhs.true202.out_crit_edge ], [ 0, %sw.bb196.out_crit_edge ], [ 0, %if.end188 ], [ 0, %if.then65.out_crit_edge ], [ 0, %land.lhs.true59.out_crit_edge ], [ 0, %land.lhs.true53.out_crit_edge ], [ 0, %sw.bb47.out_crit_edge ], [ %call44, %if.then43 ], [ -22, %land.lhs.true41.out_crit_edge ], [ -22, %sw.bb.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11.i.i.i.i, %if.end26.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -9, %if.then3 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %clcsock_release_lock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock, i32 noundef 0) #15
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clcsock, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %getsockopt = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %getsockopt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %getsockopt, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end9, !prof !164

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %7(ptr noundef nonnull %3, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end9 ], [ -9, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %5)
  %cmp6.not = icmp eq i8 %5, 22
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true8

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp12.not = icmp eq i8 %7, 2
  br i1 %cmp12.not, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.out_crit_edge

land.lhs.true8.out_crit_edge:                     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then14

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then14:                                        ; preds = %if.end
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp18 = icmp eq i8 %11, 2
  br i1 %cmp18, label %land.lhs.true20, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true20:                                  ; preds = %if.then14
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true20.out_crit_edge

land.lhs.true20.out_crit_edge:                    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then22:                                        ; preds = %land.lhs.true20
  %call23 = tail call fastcc i32 @smc_switch_to_fallback(ptr noundef %1, i32 noundef 50724864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end28_crit_edge, label %if.then22.out_crit_edge

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool29.not = icmp eq i8 %15, 0
  br i1 %tobool29.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clcsock, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %sendmsg = getelementptr inbounds %struct.proto_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sendmsg, align 4
  %call32 = tail call i32 %21(ptr noundef %17, ptr noundef %msg, i32 noundef %len) #15
  br label %out

if.else33:                                        ; preds = %if.end28
  %call34 = tail call i32 @smc_tx_sendmsg(ptr noundef %1, ptr noundef %msg, i32 noundef %len) #15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %smc37 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 55
  %24 = ptrtoint ptr %smc37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smc37, align 4
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lnk, align 8
  %tobool38.not = icmp eq ptr %27, null
  %shr = lshr i32 %len, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %len)
  %tobool.not.i5.i = icmp ult i32 %len, 8192
  %28 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #15, !range !186
  %sub.i6.i = sub nuw nsw i32 32, %28
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  br i1 %tobool38.not, label %do.body41, label %do.body232

do.body41:                                        ; preds = %if.else33
  %tx_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %25, i32 0, i32 1, i32 18
  %30 = ptrtoint ptr %tx_cnt to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx62, align 4
  %add = add i32 %36, %30
  %37 = inttoptr i32 %add to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %add63 = add i64 %39, 1
  store i64 %add63, ptr %37, align 8
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool74.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool74.not, label %if.then79, label %do.body41.do.end82_crit_edge, !prof !164

do.body41.do.end82_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

if.then79:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body41.do.end82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #15, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp89 = icmp slt i32 %call34, 1
  br i1 %cmp89, label %do.end82.out_crit_edge, label %if.end92

do.end82.out_crit_edge:                           ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end92:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i7.i)
  %cmp93 = icmp ult i32 %cond.i7.i, 8
  %shl = shl i32 4096, %cond.i7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %len)
  %cmp96 = icmp eq i32 %shl, %len
  %sub = sext i1 %cmp96 to i32
  %spec.select = add nsw i32 %cond.i7.i, %sub
  %cond101 = select i1 %cmp93, i32 %spec.select, i32 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %tx_pd = getelementptr [2 x %struct.smc_stats_tech], ptr %25, i32 0, i32 1, i32 2
  %arrayidx127 = getelementptr [9 x i64], ptr %tx_pd, i32 0, i32 %cond101
  %42 = ptrtoint ptr %arrayidx127 to i32
  %43 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu, align 4
  %arrayidx131 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx131, align 4
  %add132 = add i32 %46, %42
  %47 = inttoptr i32 %add132 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  %add133 = add i64 %49, 1
  store i64 %add133, ptr %47, align 8
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i520 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i520)
  %tobool144.not = icmp eq i32 %and.i.i520, 0
  br i1 %tobool144.not, label %if.then153, label %if.end92.do.end156_crit_edge, !prof !164

if.end92.do.end156_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end156

if.then153:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end156

do.end156:                                        ; preds = %if.then153, %if.end92.do.end156_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #15, !srcloc !168
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %conv180526 = zext i32 %call34 to i64
  %tx_bytes = getelementptr [2 x %struct.smc_stats_tech], ptr %25, i32 0, i32 1, i32 16
  %52 = ptrtoint ptr %tx_bytes to i32
  %53 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu, align 4
  %arrayidx192 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx192, align 4
  %add193 = add i32 %56, %52
  %57 = inttoptr i32 %add193 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %add194 = add i64 %59, %conv180526
  store i64 %add194, ptr %57, align 8
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i521 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i521)
  %tobool205.not = icmp eq i32 %and.i.i521, 0
  br i1 %tobool205.not, label %if.then214, label %do.end156.do.end217_crit_edge, !prof !164

do.end156.do.end217_crit_edge:                    ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end217

if.then214:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end217

do.end217:                                        ; preds = %if.then214, %do.end156.do.end217_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #15, !srcloc !168
  br label %out

do.body232:                                       ; preds = %if.else33
  %tx_cnt267 = getelementptr inbounds %struct.smc_stats_tech, ptr %25, i32 0, i32 18
  %61 = ptrtoint ptr %tx_cnt267 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i522 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i522 to ptr
  %cpu270 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu270 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu270, align 4
  %arrayidx271 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx271, align 4
  %add272 = add i32 %67, %61
  %68 = inttoptr i32 %add272 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %68, align 8
  %add273 = add i64 %70, 1
  store i64 %add273, ptr %68, align 8
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i523 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i523)
  %tobool284.not = icmp eq i32 %and.i.i523, 0
  br i1 %tobool284.not, label %if.then293, label %do.body232.do.end296_crit_edge, !prof !164

do.body232.do.end296_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end296

if.then293:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end296

do.end296:                                        ; preds = %if.then293, %do.body232.do.end296_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #15, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp303 = icmp slt i32 %call34, 1
  br i1 %cmp303, label %do.end296.out_crit_edge, label %if.end306

do.end296.out_crit_edge:                          ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end306:                                        ; preds = %do.end296
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i7.i)
  %cmp307 = icmp ult i32 %cond.i7.i, 8
  %shl311 = shl i32 4096, %cond.i7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl311, i32 %len)
  %cmp312 = icmp eq i32 %shl311, %len
  %sub315 = sext i1 %cmp312 to i32
  %spec.select508 = add nsw i32 %cond.i7.i, %sub315
  %cond321 = select i1 %cmp307, i32 %spec.select508, i32 8
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %tx_pd347 = getelementptr inbounds %struct.smc_stats_tech, ptr %25, i32 0, i32 2
  %arrayidx349 = getelementptr [9 x i64], ptr %tx_pd347, i32 0, i32 %cond321
  %73 = ptrtoint ptr %arrayidx349 to i32
  %74 = ptrtoint ptr %cpu270 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu270, align 4
  %arrayidx353 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx353, align 4
  %add354 = add i32 %77, %73
  %78 = inttoptr i32 %add354 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %78, align 8
  %add355 = add i64 %80, 1
  store i64 %add355, ptr %78, align 8
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i524 = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i524)
  %tobool366.not = icmp eq i32 %and.i.i524, 0
  br i1 %tobool366.not, label %if.then375, label %if.end306.do.end378_crit_edge, !prof !164

if.end306.do.end378_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end378

if.then375:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end378

do.end378:                                        ; preds = %if.then375, %if.end306.do.end378_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #15, !srcloc !168
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %conv402527 = zext i32 %call34 to i64
  %tx_bytes411 = getelementptr inbounds %struct.smc_stats_tech, ptr %25, i32 0, i32 16
  %83 = ptrtoint ptr %tx_bytes411 to i32
  %84 = ptrtoint ptr %cpu270 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu270, align 4
  %arrayidx415 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx415, align 4
  %add416 = add i32 %87, %83
  %88 = inttoptr i32 %add416 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %88, align 8
  %add417 = add i64 %90, %conv402527
  store i64 %add417, ptr %88, align 8
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i525 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i525)
  %tobool428.not = icmp eq i32 %and.i.i525, 0
  br i1 %tobool428.not, label %if.then437, label %do.end378.do.end440_crit_edge, !prof !164

do.end378.do.end440_crit_edge:                    ; preds = %do.end378
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end440

if.then437:                                       ; preds = %do.end378
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end440

do.end440:                                        ; preds = %if.then437, %do.end378.do.end440_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #15, !srcloc !168
  br label %out

out:                                              ; preds = %do.end440, %do.end296.out_crit_edge, %do.end217, %do.end82.out_crit_edge, %if.then30, %if.then22.out_crit_edge, %land.lhs.true20.out_crit_edge, %if.then14.out_crit_edge, %land.lhs.true8.out_crit_edge
  %rc.0 = phi i32 [ -32, %land.lhs.true8.out_crit_edge ], [ %call23, %if.then22.out_crit_edge ], [ %call32, %if.then30 ], [ -22, %land.lhs.true20.out_crit_edge ], [ -22, %if.then14.out_crit_edge ], [ %call34, %do.end440 ], [ %call34, %do.end296.out_crit_edge ], [ %call34, %do.end217 ], [ %call34, %do.end82.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp eq i8 %3, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7 = icmp eq i8 %8, 2
  br i1 %cmp7, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp12 = icmp eq i8 %10, 10
  br i1 %cmp12, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false14

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp18 = icmp eq i8 %12, 7
  br i1 %cmp18, label %lor.lhs.false14.out_crit_edge, label %if.end21

lor.lhs.false14.out_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end21:                                         ; preds = %lor.lhs.false14
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %14)
  %cmp25 = icmp eq i8 %14, 25
  br i1 %cmp25, label %if.end21.out_crit_edge, label %if.end28

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end28:                                         ; preds = %if.end21
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clcsock, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %recvmsg = getelementptr inbounds %struct.proto_ops, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %recvmsg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %recvmsg, align 4
  %call32 = tail call i32 %22(ptr noundef %18, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #15
  br label %out

if.else:                                          ; preds = %if.end28
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %23 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %msg_namelen, align 4
  %call33 = tail call i32 @smc_rx_recvmsg(ptr noundef %1, ptr noundef %msg, ptr noundef null, i32 noundef %len, i32 noundef %flags) #15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i, align 4
  %smc36 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 55
  %26 = ptrtoint ptr %smc36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smc36, align 4
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lnk, align 8
  %tobool37.not = icmp eq ptr %29, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %tobool.not.i = icmp sgt i32 %call33, -1
  br i1 %tobool37.not, label %do.body40, label %do.body231

do.body40:                                        ; preds = %if.else
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ashr i32 %call33, 31
  %31 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 true) #15, !range !186
  %add.i = sub nuw nsw i32 64, %31
  br label %fls64.exit

if.end.i:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %shr527 = lshr i32 %call33, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call33)
  %tobool.not.i5.i = icmp ult i32 %call33, 8192
  %32 = tail call i32 @llvm.ctlz.i32(i32 %shr527, i1 true) #15, !range !186
  %sub.i6.i = sub nuw nsw i32 32, %32
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %rx_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %27, i32 0, i32 1, i32 17
  %34 = ptrtoint ptr %rx_cnt to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx61, align 4
  %add = add i32 %40, %34
  %41 = inttoptr i32 %add to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  %add62 = add i64 %43, 1
  store i64 %add62, ptr %41, align 8
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not, label %if.then78, label %fls64.exit.do.end81_crit_edge, !prof !164

fls64.exit.do.end81_crit_edge:                    ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

if.then78:                                        ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %fls64.exit.do.end81_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #15, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp88 = icmp slt i32 %call33, 1
  br i1 %cmp88, label %do.end81.out_crit_edge, label %if.end91

do.end81.out_crit_edge:                           ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end91:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i)
  %cmp92 = icmp ult i32 %retval.0.i, 8
  %shl = shl i32 4096, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %shl)
  %cmp95 = icmp eq i32 %call33, %shl
  %sub = sext i1 %cmp95 to i32
  %spec.select = add nsw i32 %retval.0.i, %sub
  %cond100 = select i1 %cmp92, i32 %spec.select, i32 8
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %rx_pd = getelementptr [2 x %struct.smc_stats_tech], ptr %27, i32 0, i32 1, i32 3
  %arrayidx126 = getelementptr [9 x i64], ptr %rx_pd, i32 0, i32 %cond100
  %46 = ptrtoint ptr %arrayidx126 to i32
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %arrayidx130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx130, align 4
  %add131 = add i32 %50, %46
  %51 = inttoptr i32 %add131 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %51, align 8
  %add132 = add i64 %53, 1
  store i64 %add132, ptr %51, align 8
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i519 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i519)
  %tobool143.not = icmp eq i32 %and.i.i519, 0
  br i1 %tobool143.not, label %if.then152, label %if.end91.do.end155_crit_edge, !prof !164

if.end91.do.end155_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end155

if.then152:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end155

do.end155:                                        ; preds = %if.then152, %if.end91.do.end155_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #15, !srcloc !168
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %conv179525 = zext i32 %call33 to i64
  %rx_bytes = getelementptr [2 x %struct.smc_stats_tech], ptr %27, i32 0, i32 1, i32 15
  %56 = ptrtoint ptr %rx_bytes to i32
  %57 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu, align 4
  %arrayidx191 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %60, %56
  %61 = inttoptr i32 %add192 to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  %add193 = add i64 %63, %conv179525
  store i64 %add193, ptr %61, align 8
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i520 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i520)
  %tobool204.not = icmp eq i32 %and.i.i520, 0
  br i1 %tobool204.not, label %if.then213, label %do.end155.do.end216_crit_edge, !prof !164

do.end155.do.end216_crit_edge:                    ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end216

if.then213:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end216

do.end216:                                        ; preds = %if.then213, %do.end155.do.end216_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #15, !srcloc !168
  br label %out

do.body231:                                       ; preds = %if.else
  br i1 %tobool.not.i, label %if.end.i516, label %if.then.i512

if.then.i512:                                     ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ashr i32 %call33, 31
  %66 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 true) #15, !range !186
  %add.i511 = sub nuw nsw i32 64, %66
  br label %fls64.exit518

if.end.i516:                                      ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #17
  %shr236528 = lshr i32 %call33, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call33)
  %tobool.not.i5.i513 = icmp ult i32 %call33, 8192
  %67 = tail call i32 @llvm.ctlz.i32(i32 %shr236528, i1 true) #15, !range !186
  %sub.i6.i514 = sub nuw nsw i32 32, %67
  %cond.i7.i515 = select i1 %tobool.not.i5.i513, i32 0, i32 %sub.i6.i514
  br label %fls64.exit518

fls64.exit518:                                    ; preds = %if.end.i516, %if.then.i512
  %retval.0.i517 = phi i32 [ %add.i511, %if.then.i512 ], [ %cond.i7.i515, %if.end.i516 ]
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %rx_cnt266 = getelementptr inbounds %struct.smc_stats_tech, ptr %27, i32 0, i32 17
  %69 = ptrtoint ptr %rx_cnt266 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i521 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i521 to ptr
  %cpu269 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu269 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu269, align 4
  %arrayidx270 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx270, align 4
  %add271 = add i32 %75, %69
  %76 = inttoptr i32 %add271 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %76, align 8
  %add272 = add i64 %78, 1
  store i64 %add272, ptr %76, align 8
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i522 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i522)
  %tobool283.not = icmp eq i32 %and.i.i522, 0
  br i1 %tobool283.not, label %if.then292, label %fls64.exit518.do.end295_crit_edge, !prof !164

fls64.exit518.do.end295_crit_edge:                ; preds = %fls64.exit518
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end295

if.then292:                                       ; preds = %fls64.exit518
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end295

do.end295:                                        ; preds = %if.then292, %fls64.exit518.do.end295_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #15, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp302 = icmp slt i32 %call33, 1
  br i1 %cmp302, label %do.end295.out_crit_edge, label %if.end305

do.end295.out_crit_edge:                          ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end305:                                        ; preds = %do.end295
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i517)
  %cmp306 = icmp ult i32 %retval.0.i517, 8
  %shl310 = shl i32 4096, %retval.0.i517
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %shl310)
  %cmp311 = icmp eq i32 %call33, %shl310
  %sub314 = sext i1 %cmp311 to i32
  %spec.select507 = add nsw i32 %retval.0.i517, %sub314
  %cond320 = select i1 %cmp306, i32 %spec.select507, i32 8
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %rx_pd346 = getelementptr inbounds %struct.smc_stats_tech, ptr %27, i32 0, i32 3
  %arrayidx348 = getelementptr [9 x i64], ptr %rx_pd346, i32 0, i32 %cond320
  %81 = ptrtoint ptr %arrayidx348 to i32
  %82 = ptrtoint ptr %cpu269 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu269, align 4
  %arrayidx352 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx352, align 4
  %add353 = add i32 %85, %81
  %86 = inttoptr i32 %add353 to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %86, align 8
  %add354 = add i64 %88, 1
  store i64 %add354, ptr %86, align 8
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i523 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i523)
  %tobool365.not = icmp eq i32 %and.i.i523, 0
  br i1 %tobool365.not, label %if.then374, label %if.end305.do.end377_crit_edge, !prof !164

if.end305.do.end377_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end377

if.then374:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end377

do.end377:                                        ; preds = %if.then374, %if.end305.do.end377_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #15, !srcloc !168
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %conv401526 = zext i32 %call33 to i64
  %rx_bytes410 = getelementptr inbounds %struct.smc_stats_tech, ptr %27, i32 0, i32 15
  %91 = ptrtoint ptr %rx_bytes410 to i32
  %92 = ptrtoint ptr %cpu269 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu269, align 4
  %arrayidx414 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx414, align 4
  %add415 = add i32 %95, %91
  %96 = inttoptr i32 %add415 to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %96, align 8
  %add416 = add i64 %98, %conv401526
  store i64 %add416, ptr %96, align 8
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i524 = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i524)
  %tobool427.not = icmp eq i32 %and.i.i524, 0
  br i1 %tobool427.not, label %if.then436, label %do.end377.do.end439_crit_edge, !prof !164

do.end377.do.end439_crit_edge:                    ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end439

if.then436:                                       ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end439

do.end439:                                        ; preds = %if.then436, %do.end377.do.end439_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %90) #15, !srcloc !168
  br label %out

out:                                              ; preds = %do.end439, %do.end295.out_crit_edge, %do.end216, %do.end81.out_crit_edge, %if.then30, %if.end21.out_crit_edge, %lor.lhs.false14.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %land.lhs.true.out_crit_edge
  %rc.0 = phi i32 [ -107, %if.end.out_crit_edge ], [ -107, %lor.lhs.false.out_crit_edge ], [ -107, %lor.lhs.false14.out_crit_edge ], [ %call32, %if.then30 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end21.out_crit_edge ], [ %call33, %do.end439 ], [ %call33, %do.end295.out_crit_edge ], [ %call33, %do.end216 ], [ %call33, %do.end81.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_sendpage(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  tail call void @release_sock(ptr noundef %1) #15
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clcsock, align 8
  %call4 = tail call i32 @kernel_sendpage(ptr noundef %7, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #15
  br label %out

do.body:                                          ; preds = %if.end
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnk, align 8
  %tobool5.not = icmp eq ptr %9, null
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %smc8 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 55
  %12 = ptrtoint ptr %smc8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smc8, align 4
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  br i1 %tobool5.not, label %do.body13, label %do.body59

do.body13:                                        ; preds = %do.body
  %sendpage_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %13, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %sendpage_cnt to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %add31 = add i64 %24, 1
  store i64 %add31, ptr %22, align 8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool42.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool42.not, label %if.then47, label %do.body13.do.end50_crit_edge, !prof !164

do.body13.do.end50_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50

if.then47:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body13.do.end50_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #15, !srcloc !168
  br label %if.end119

do.body59:                                        ; preds = %do.body
  %sendpage_cnt83 = getelementptr inbounds %struct.smc_stats_tech, ptr %13, i32 0, i32 10
  %26 = ptrtoint ptr %sendpage_cnt83 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i137 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i137 to ptr
  %cpu86 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu86, align 4
  %arrayidx87 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %32, %26
  %33 = inttoptr i32 %add88 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %add89 = add i64 %35, 1
  store i64 %add89, ptr %33, align 8
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i138 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %tobool100.not = icmp eq i32 %and.i.i138, 0
  br i1 %tobool100.not, label %if.then109, label %do.body59.do.end112_crit_edge, !prof !164

do.body59.do.end112_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end112

if.then109:                                       ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.body59.do.end112_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #15, !srcloc !168
  br label %if.end119

if.end119:                                        ; preds = %do.end112, %do.end50
  %call122 = tail call i32 @sock_no_sendpage(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #15
  br label %out

out:                                              ; preds = %if.end119, %if.then3, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ %call122, %if.end119 ], [ -32, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_splice_read(ptr nocapture noundef readonly %sock, ptr noundef %ppos, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp eq i8 %3, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7 = icmp eq i8 %8, 2
  br i1 %cmp7, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp12 = icmp eq i8 %10, 10
  br i1 %cmp12, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false14

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp18 = icmp eq i8 %12, 7
  br i1 %cmp18, label %lor.lhs.false14.out_crit_edge, label %if.end21

lor.lhs.false14.out_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end21:                                         ; preds = %lor.lhs.false14
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %14)
  %cmp25 = icmp eq i8 %14, 25
  br i1 %cmp25, label %if.end21.out_crit_edge, label %if.end28

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end28:                                         ; preds = %if.end21
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clcsock, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %splice_read = getelementptr inbounds %struct.proto_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %splice_read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %splice_read, align 4
  %call32 = tail call i32 %22(ptr noundef %18, ptr noundef %ppos, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) #15
  br label %out

if.else:                                          ; preds = %if.end28
  %23 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool33.not = icmp eq i64 %24, 0
  br i1 %tobool33.not, label %if.end35, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end35:                                         ; preds = %if.else
  %and36 = shl i32 %flags, 5
  %25 = and i32 %and36, 64
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lnk, align 8
  %tobool41.not = icmp eq ptr %27, null
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_net.i, align 4
  %smc44 = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 55
  %30 = ptrtoint ptr %smc44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smc44, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  br i1 %tobool41.not, label %do.body49, label %do.body95

do.body49:                                        ; preds = %if.end35
  %splice_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %31, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %splice_cnt to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx66, align 4
  %add = add i32 %39, %33
  %40 = inttoptr i32 %add to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %add67 = add i64 %42, 1
  store i64 %add67, ptr %40, align 8
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool78.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool78.not, label %if.then83, label %do.body49.do.end86_crit_edge, !prof !164

do.body49.do.end86_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end86

if.then83:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body49.do.end86_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #15, !srcloc !168
  br label %if.end155

do.body95:                                        ; preds = %if.end35
  %splice_cnt119 = getelementptr inbounds %struct.smc_stats_tech, ptr %31, i32 0, i32 12
  %44 = ptrtoint ptr %splice_cnt119 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i179 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i179 to ptr
  %cpu122 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu122, align 4
  %arrayidx123 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx123, align 4
  %add124 = add i32 %50, %44
  %51 = inttoptr i32 %add124 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %51, align 8
  %add125 = add i64 %53, 1
  store i64 %add125, ptr %51, align 8
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i180 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i180)
  %tobool136.not = icmp eq i32 %and.i.i180, 0
  br i1 %tobool136.not, label %if.then145, label %do.body95.do.end148_crit_edge, !prof !164

do.body95.do.end148_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end148

if.then145:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end148

do.end148:                                        ; preds = %if.then145, %do.body95.do.end148_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #15, !srcloc !168
  br label %if.end155

if.end155:                                        ; preds = %do.end148, %do.end86
  %call158 = tail call i32 @smc_rx_recvmsg(ptr noundef %1, ptr noundef null, ptr noundef %pipe, i32 noundef %len, i32 noundef %25) #15
  br label %out

out:                                              ; preds = %if.end155, %if.else.out_crit_edge, %if.then30, %if.end21.out_crit_edge, %lor.lhs.false14.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %land.lhs.true.out_crit_edge
  %rc.0 = phi i32 [ -107, %if.end.out_crit_edge ], [ -107, %lor.lhs.false.out_crit_edge ], [ -107, %lor.lhs.false14.out_crit_edge ], [ %call32, %if.then30 ], [ %call158, %if.end155 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end21.out_crit_edge ], [ -29, %if.else.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_close_active_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @smc_copy_sock_settings_to_clc(ptr nocapture noundef readonly %smc) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type.i, align 2
  %sk_type1.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sk_type1.i, align 2
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 21
  %7 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf2.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sk_sndbuf2.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 15
  %10 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_rcvbuf.i, align 8
  %sk_rcvbuf3.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %sk_rcvbuf3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sk_rcvbuf3.i, align 8
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 31
  %13 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndtimeo.i, align 8
  %sk_sndtimeo4.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %sk_sndtimeo4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sk_sndtimeo4.i, align 8
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 62
  %16 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_rcvtimeo.i, align 4
  %sk_rcvtimeo5.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 62
  %18 = ptrtoint ptr %sk_rcvtimeo5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sk_rcvtimeo5.i, align 4
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 34
  %19 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_mark.i, align 8
  %sk_mark6.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 34
  %21 = ptrtoint ptr %sk_mark6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sk_mark6.i, align 8
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 33
  %22 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_priority.i, align 4
  %sk_priority7.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 33
  %24 = ptrtoint ptr %sk_priority7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sk_priority7.i, align 4
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 6
  %25 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_rcvlowat.i, align 8
  %sk_rcvlowat8.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %sk_rcvlowat8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sk_rcvlowat8.i, align 8
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 6
  %28 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skc_bound_dev_if.i, align 4
  %skc_bound_dev_if10.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %skc_bound_dev_if10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %skc_bound_dev_if10.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %31 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_err.i, align 4
  %sk_err11.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %33 = ptrtoint ptr %sk_err11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sk_err11.i, align 4
  %34 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %and.i = and i32 %36, -70958301
  store i32 %and.i, ptr %34, align 8
  %37 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %and14.i = and i32 %39, 70958300
  %or.i = or i32 %and14.i, %and.i
  store i32 %or.i, ptr %34, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smc_connect(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smc_ism_is_v2_capable() #15
  %conv = select i1 %call, i8 2, i8 1
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 13
  %0 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fallback_rsn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 14
  %2 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fallback_rsn, align 8
  %call1 = tail call fastcc i32 @smc_connect_fallback(ptr noundef %smc, i32 noundef %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %4 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %syn_smc = getelementptr inbounds %struct.tcp_sock, ptr %7, i32 0, i32 116
  %8 = ptrtoint ptr %syn_smc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %syn_smc, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call fastcc i32 @smc_connect_fallback(ptr noundef %smc, i32 noundef 50397184)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sk_policy.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %sk_policy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_policy.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %using_ipsec.exit, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

using_ipsec.exit:                                 ; preds = %if.end6
  %arrayidx4.i = getelementptr %struct.sock, ptr %7, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.i.not = icmp eq ptr %13, null
  br i1 %tobool5.i.not, label %if.end10, label %using_ipsec.exit.if.then8_crit_edge

using_ipsec.exit.if.then8_crit_edge:              ; preds = %using_ipsec.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.then8:                                         ; preds = %using_ipsec.exit.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  %call9 = tail call fastcc i32 @smc_connect_decline_fallback(ptr noundef %smc, i32 noundef 50462720, i8 noundef zeroext %conv)
  br label %cleanup

if.end10:                                         ; preds = %using_ipsec.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 320) #18
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call fastcc i32 @smc_connect_decline_fallback(ptr noundef %smc, i32 noundef 16842752, i8 noundef zeroext %conv)
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %smcd_version = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 23
  %15 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %smcd_version, align 8
  %smcr_version = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %smcr_version, align 4
  %smc_type_v1 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %smc_type_v1, align 1
  %smc_type_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %smc_type_v2, align 2
  %19 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clcsock, align 8
  %call17 = tail call i32 @smc_vlan_by_tcpsk(ptr noundef %20, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end29_crit_edge, label %if.then19

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then19:                                        ; preds = %if.end15
  %21 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %smcd_version, align 8
  %23 = and i8 %22, -2
  store i8 %23, ptr %smcd_version, align 8
  %24 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %smcr_version, align 4
  %25 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %smc_type_v1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool26.not = icmp eq i8 %23, 0
  br i1 %tobool26.not, label %if.then19.fallback_crit_edge, label %if.then19.if.end29_crit_edge

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then19.fallback_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %fallback

if.end29:                                         ; preds = %if.then19.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %26 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %smcd_version, align 8
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i425 = icmp eq i8 %28, 0
  br i1 %tobool.not.i425, label %if.end29.if.then.i_crit_edge, label %lor.lhs.false.i

if.end29.if.then.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end29
  %29 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clcsock, align 8
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk.i.i, align 16
  tail call void @smc_pnet_find_ism_resource(ptr noundef %32, ptr noundef nonnull %call7.i.i) #15
  %ism_dev.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %ism_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ism_dev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %call.i.i = tail call zeroext i16 @smc_ism_get_chid(ptr noundef nonnull %34) #15
  %ism_chid.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %ism_chid.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call.i.i, ptr %ism_chid.i.i, align 4
  %vlan_id.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vlan_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i112.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i112.i, label %lor.lhs.false2.i.if.end.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false2.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false2.i
  %38 = ptrtoint ptr %ism_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ism_dev.i.i, align 8
  %call.i114.i = tail call i32 @smc_ism_get_vlan(ptr noundef %39, i16 noundef zeroext %37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %tobool2.not.i.i = icmp eq i32 %call.i114.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.if.then.i_crit_edge

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end29.if.then.i_crit_edge
  %40 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %smcd_version, align 8
  %42 = and i8 %41, -2
  store i8 %42, ptr %smcd_version, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.i.if.end.i_crit_edge, %lor.lhs.false2.i.if.end.i_crit_edge
  %43 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %smcr_version, align 4
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool11.not.i = icmp eq i8 %45, 0
  br i1 %tobool11.not.i, label %if.end.i.if.then15.i_crit_edge, label %lor.lhs.false12.i

if.end.i.if.then15.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

lor.lhs.false12.i:                                ; preds = %if.end.i
  %46 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clcsock, align 8
  %sk.i117.i = getelementptr inbounds %struct.socket, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %sk.i117.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sk.i117.i, align 16
  tail call void @smc_pnet_find_roce_resource(ptr noundef %49, ptr noundef nonnull %call7.i.i) #15
  %check_smcrv2.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %check_smcrv2.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %check_smcrv2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i118.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i118.i, label %land.lhs.true.i119.i, label %land.lhs.true4.i.i

land.lhs.true.i119.i:                             ; preds = %lor.lhs.false12.i
  %ib_dev.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %ib_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ib_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i119.i.if.then15.i_crit_edge, label %land.lhs.true.i119.i.if.end20.i_crit_edge

land.lhs.true.i119.i.if.end20.i_crit_edge:        ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i119.i.if.then15.i_crit_edge:       ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

land.lhs.true4.i.i:                               ; preds = %lor.lhs.false12.i
  %ib_dev_v2.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %54 = ptrtoint ptr %ib_dev_v2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ib_dev_v2.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %55, null
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.if.then15.i_crit_edge, label %land.lhs.true4.i.i.if.end20.i_crit_edge

land.lhs.true4.i.i.if.end20.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true4.i.i.if.then15.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.lhs.true4.i.i.if.then15.i_crit_edge, %land.lhs.true.i119.i.if.then15.i_crit_edge, %if.end.i.if.then15.i_crit_edge
  %56 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %smcr_version, align 4
  %58 = and i8 %57, -2
  store i8 %58, ptr %smcr_version, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %land.lhs.true4.i.i.if.end20.i_crit_edge, %land.lhs.true.i119.i.if.end20.i_crit_edge
  %59 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %smcd_version, align 8
  %61 = and i8 %60, 1
  %62 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %smcr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i121.i = icmp eq i8 %61, 0
  %64 = and i8 %61, %63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %.not.not.i = icmp eq i8 %64, 0
  %.mux.i.i = select i1 %.not.not.i, i8 1, i8 3
  %65 = shl i8 %63, 1
  %66 = and i8 %65, 2
  %67 = xor i8 %66, 2
  %retval.0.i123.i = select i1 %tobool.not.i121.i, i8 %67, i8 %.mux.i.i
  %68 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %retval.0.i123.i, ptr %smc_type_v1, align 1
  %69 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool31.not.i = icmp eq i8 %69, 0
  br i1 %tobool31.not.i, label %if.end20.i.if.then37.i_crit_edge, label %lor.lhs.false32.i

if.end20.i.if.then37.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.i

lor.lhs.false32.i:                                ; preds = %if.end20.i
  %call33.i = tail call zeroext i1 @smc_ism_is_v2_capable() #15
  br i1 %call33.i, label %lor.lhs.false34.i, label %lor.lhs.false32.i.if.then37.i_crit_edge

lor.lhs.false32.i.if.then37.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.i

lor.lhs.false34.i:                                ; preds = %lor.lhs.false32.i
  %70 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %smc_type_v1, align 1
  %72 = and i8 %71, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %73 = icmp eq i8 %72, 1
  %spec.select.i.i = select i1 %73, i32 0, i32 50528257
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn67.i.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not69.i.i = icmp eq ptr %.pn67.i.i, @smcd_dev_list
  br i1 %cmp.not69.i.i, label %lor.lhs.false34.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

lor.lhs.false34.i.for.end.i.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false34.i
  %ism_dev.i124.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 19
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn75.i.i = phi ptr [ %.pn67.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rc.173.i.i = phi i32 [ %spec.select.i.i, %for.body.lr.ph.i.i ], [ %rc.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.070.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %i.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %smcd.076.i.i = getelementptr i8, ptr %.pn75.i.i, i32 -952
  %going_away.i.i = getelementptr i8, ptr %.pn75.i.i, i32 196
  %74 = ptrtoint ptr %going_away.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i = load i8, ptr %going_away.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i125.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i125.i, label %lor.lhs.false.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %75 = ptrtoint ptr %ism_dev.i124.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ism_dev.i124.i, align 8
  %cmp3.i.i = icmp eq ptr %smcd.076.i.i, %76
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %call7.i.i426 = tail call zeroext i16 @smc_ism_get_chid(ptr noundef %smcd.076.i.i) #15
  %77 = ptrtoint ptr %ism_dev.i124.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ism_dev.i124.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %78, null
  %cond.i.i.i = zext i1 %tobool.not.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.070.i.i, i32 %cond.i.i.i)
  %cmp8.i.i.i = icmp sgt i32 %i.070.i.i, %cond.i.i.i
  br i1 %cmp8.i.i.i, label %for.body.i.preheader.i.i, label %if.end6.i.i.if.end10.i.i_crit_edge

if.end6.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end6.i.i
  %arrayidx1.i63.i.i = getelementptr %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 20, i32 %cond.i.i.i
  %79 = ptrtoint ptr %arrayidx1.i63.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx1.i63.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %call7.i.i426)
  %cmp3.i64.i.i = icmp eq i16 %80, %call7.i.i426
  br i1 %cmp3.i64.i.i, label %for.body.i.preheader.i.i.for.inc.i.i_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.for.inc.i.i_crit_edge:   ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %i.09.i65.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %cond.i.i.i, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw i32 %i.09.i65.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %i.070.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %i.070.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end10.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end10.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx1.i.i.i = getelementptr %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 20, i32 %inc.i.i.i
  %81 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx1.i.i.i, align 2
  %cmp3.i.i.i = icmp eq i16 %82, %call7.i.i426
  br i1 %cmp3.i.i.i, label %smc_find_ism_v2_is_unique_chid.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

smc_find_ism_v2_is_unique_chid.exit.i.i:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %i.070.i.i)
  %cmp.i.le.i.i = icmp slt i32 %inc.i.i.i, %i.070.i.i
  br i1 %cmp.i.le.i.i, label %smc_find_ism_v2_is_unique_chid.exit.i.i.for.inc.i.i_crit_edge, label %smc_find_ism_v2_is_unique_chid.exit.i.i.if.end10.i.i_crit_edge

smc_find_ism_v2_is_unique_chid.exit.i.i.if.end10.i.i_crit_edge: ; preds = %smc_find_ism_v2_is_unique_chid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

smc_find_ism_v2_is_unique_chid.exit.i.i.for.inc.i.i_crit_edge: ; preds = %smc_find_ism_v2_is_unique_chid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %smc_find_ism_v2_is_unique_chid.exit.i.i.if.end10.i.i_crit_edge, %for.cond.i.i.i.if.end10.i.i_crit_edge, %if.end6.i.i.if.end10.i.i_crit_edge
  %pnetid.i.i = getelementptr i8, ptr %.pn75.i.i, i32 68
  %call11.i.i = tail call zeroext i1 @smc_pnet_is_pnetid_set(ptr noundef %pnetid.i.i) #15
  br i1 %call11.i.i, label %lor.lhs.false12.i.i, label %if.end10.i.i.if.then18.i.i_crit_edge

if.end10.i.i.if.then18.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i.i

lor.lhs.false12.i.i:                              ; preds = %if.end10.i.i
  %83 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skc_net.i.i.i, align 4
  %call16.i.i = tail call zeroext i1 @smc_pnet_is_ndev_pnetid(ptr noundef %84, ptr noundef %pnetid.i.i) #15
  br i1 %call16.i.i, label %lor.lhs.false12.i.i.if.then18.i.i_crit_edge, label %lor.lhs.false12.i.i.for.inc.i.i_crit_edge

lor.lhs.false12.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

lor.lhs.false12.i.i.if.then18.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then18.i.i_crit_edge, %if.end10.i.i.if.then18.i.i_crit_edge
  %arrayidx20.i.i = getelementptr %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 19, i32 %i.070.i.i
  %85 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %smcd.076.i.i, ptr %arrayidx20.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 20, i32 %i.070.i.i
  %86 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %call7.i.i426, ptr %arrayidx21.i.i, align 2
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %call7.i.i, align 8
  %inc.i.i = add i32 %i.070.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %cmp22.i.i = icmp sgt i32 %inc.i.i, 8
  br i1 %cmp22.i.i, label %if.then18.i.i.for.end.i.i_crit_edge, label %if.then18.i.i.for.inc.i.i_crit_edge

if.then18.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then18.i.i.for.end.i.i_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.then18.i.i.for.inc.i.i_crit_edge, %lor.lhs.false12.i.i.for.inc.i.i_crit_edge, %smc_find_ism_v2_is_unique_chid.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.preheader.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %i.070.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %i.070.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then18.i.i.for.inc.i.i_crit_edge ], [ %i.070.i.i, %lor.lhs.false12.i.i.for.inc.i.i_crit_edge ], [ %i.070.i.i, %smc_find_ism_v2_is_unique_chid.exit.i.i.for.inc.i.i_crit_edge ], [ %i.070.i.i, %for.body.i.preheader.i.i.for.inc.i.i_crit_edge ]
  %rc.2.i.i = phi i32 [ %rc.173.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %rc.173.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ 0, %if.then18.i.i.for.inc.i.i_crit_edge ], [ %rc.173.i.i, %lor.lhs.false12.i.i.for.inc.i.i_crit_edge ], [ %rc.173.i.i, %smc_find_ism_v2_is_unique_chid.exit.i.i.for.inc.i.i_crit_edge ], [ %rc.173.i.i, %for.body.i.preheader.i.i.for.inc.i.i_crit_edge ]
  %88 = ptrtoint ptr %.pn75.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i.i = load ptr, ptr %.pn75.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @smcd_dev_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then18.i.i.for.end.i.i_crit_edge, %lor.lhs.false34.i.for.end.i.i_crit_edge
  %i.2.i.i = phi i32 [ 1, %lor.lhs.false34.i.for.end.i.i_crit_edge ], [ %inc.i.i, %if.then18.i.i.for.end.i.i_crit_edge ], [ %i.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %rc.3.i.i = phi i32 [ %spec.select.i.i, %lor.lhs.false34.i.for.end.i.i_crit_edge ], [ 0, %if.then18.i.i.for.end.i.i_crit_edge ], [ %rc.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  %89 = trunc i32 %i.2.i.i to i8
  %conv31.i.i = add i8 %89, -1
  %ism_offered_cnt.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 21
  %90 = ptrtoint ptr %ism_offered_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv31.i.i, ptr %ism_offered_cnt.i.i, align 2
  %ism_dev32.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 19
  %91 = ptrtoint ptr %ism_dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ism_dev32.i.i, align 8
  %tobool34.not.i.i = icmp eq ptr %92, null
  br i1 %tobool34.not.i.i, label %land.lhs.true.i126.i, label %for.end.i.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge

for.end.i.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_ism_v2_device_clnt.exit.i

land.lhs.true.i126.i:                             ; preds = %for.end.i.i
  %arrayidx36.i.i = getelementptr %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 19, i32 1
  %93 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx36.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %94, null
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %land.lhs.true.i126.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge

land.lhs.true.i126.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge: ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_ism_v2_device_clnt.exit.i

if.then38.i.i:                                    ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %smcd_version, align 8
  br label %smc_find_ism_v2_device_clnt.exit.i

smc_find_ism_v2_device_clnt.exit.i:               ; preds = %if.then38.i.i, %land.lhs.true.i126.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge, %for.end.i.i.smc_find_ism_v2_device_clnt.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3.i.i)
  %tobool36.not.i = icmp eq i32 %rc.3.i.i, 0
  br i1 %tobool36.not.i, label %smc_find_ism_v2_device_clnt.exit.i.if.end42.i_crit_edge, label %smc_find_ism_v2_device_clnt.exit.i.if.then37.i_crit_edge

smc_find_ism_v2_device_clnt.exit.i.if.then37.i_crit_edge: ; preds = %smc_find_ism_v2_device_clnt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.i

smc_find_ism_v2_device_clnt.exit.i.if.end42.i_crit_edge: ; preds = %smc_find_ism_v2_device_clnt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then37.i:                                      ; preds = %smc_find_ism_v2_device_clnt.exit.i.if.then37.i_crit_edge, %lor.lhs.false32.i.if.then37.i_crit_edge, %if.end20.i.if.then37.i_crit_edge
  %96 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %smcd_version, align 8
  %98 = and i8 %97, -3
  store i8 %98, ptr %smcd_version, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %smc_find_ism_v2_device_clnt.exit.i.if.end42.i_crit_edge
  %check_smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 9
  %99 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %check_smcrv2.i, align 1
  %100 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clcsock, align 8
  %sk.i428 = getelementptr inbounds %struct.socket, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %sk.i428 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sk.i428, align 16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %skc_rcv_saddr.i, align 4
  %smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17
  %106 = ptrtoint ptr %smcrv2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %smcrv2.i, align 8
  %107 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %smcr_version, align 4
  %109 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool46.not.i = icmp eq i8 %109, 0
  br i1 %tobool46.not.i, label %if.end42.i.if.then59.i_crit_edge, label %lor.lhs.false47.i

if.end42.i.if.then59.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59.i

lor.lhs.false47.i:                                ; preds = %if.end42.i
  %110 = ptrtoint ptr %sk.i428 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sk.i428, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %113)
  %cmp.not.i = icmp eq i16 %113, 2
  br i1 %cmp.not.i, label %lor.lhs.false53.i, label %lor.lhs.false47.i.if.then59.i_crit_edge

lor.lhs.false47.i.if.then59.i_crit_edge:          ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59.i

lor.lhs.false53.i:                                ; preds = %lor.lhs.false47.i
  %call54.i = tail call i32 @smc_clc_ueid_count() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %lor.lhs.false53.i.if.then59.i_crit_edge, label %lor.lhs.false56.i

lor.lhs.false53.i.if.then59.i_crit_edge:          ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59.i

lor.lhs.false56.i:                                ; preds = %lor.lhs.false53.i
  %114 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clcsock, align 8
  %sk.i128.i = getelementptr inbounds %struct.socket, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %sk.i128.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sk.i128.i, align 16
  tail call void @smc_pnet_find_roce_resource(ptr noundef %117, ptr noundef %call7.i.i) #15
  %118 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i130.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i130.i, label %land.lhs.true.i133.i, label %land.lhs.true4.i136.i

land.lhs.true.i133.i:                             ; preds = %lor.lhs.false56.i
  %ib_dev.i131.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 13
  %120 = ptrtoint ptr %ib_dev.i131.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ib_dev.i131.i, align 4
  %tobool1.not.i132.i = icmp eq ptr %121, null
  br i1 %tobool1.not.i132.i, label %land.lhs.true.i133.i.if.then59.i_crit_edge, label %land.lhs.true.i133.i.smc_find_proposal_devices.exit_crit_edge

land.lhs.true.i133.i.smc_find_proposal_devices.exit_crit_edge: ; preds = %land.lhs.true.i133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_proposal_devices.exit

land.lhs.true.i133.i.if.then59.i_crit_edge:       ; preds = %land.lhs.true.i133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59.i

land.lhs.true4.i136.i:                            ; preds = %lor.lhs.false56.i
  %ib_dev_v2.i134.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %122 = ptrtoint ptr %ib_dev_v2.i134.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ib_dev_v2.i134.i, align 4
  %tobool5.not.i135.i = icmp eq ptr %123, null
  br i1 %tobool5.not.i135.i, label %land.lhs.true4.i136.i.if.then59.i_crit_edge, label %land.lhs.true4.i136.i.smc_find_proposal_devices.exit_crit_edge

land.lhs.true4.i136.i.smc_find_proposal_devices.exit_crit_edge: ; preds = %land.lhs.true4.i136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_proposal_devices.exit

land.lhs.true4.i136.i.if.then59.i_crit_edge:      ; preds = %land.lhs.true4.i136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59.i

if.then59.i:                                      ; preds = %land.lhs.true4.i136.i.if.then59.i_crit_edge, %land.lhs.true.i133.i.if.then59.i_crit_edge, %lor.lhs.false53.i.if.then59.i_crit_edge, %lor.lhs.false47.i.if.then59.i_crit_edge, %if.end42.i.if.then59.i_crit_edge
  %124 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %smcr_version, align 4
  %126 = and i8 %125, -3
  store i8 %126, ptr %smcr_version, align 4
  br label %smc_find_proposal_devices.exit

smc_find_proposal_devices.exit:                   ; preds = %if.then59.i, %land.lhs.true4.i136.i.smc_find_proposal_devices.exit_crit_edge, %land.lhs.true.i133.i.smc_find_proposal_devices.exit_crit_edge
  %127 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %check_smcrv2.i, align 1
  %128 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %smcd_version, align 8
  %130 = and i8 %129, 2
  %131 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %smcr_version, align 4
  %133 = and i8 %132, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i140.i = icmp eq i8 %130, 0
  %134 = and i8 %130, %132
  %135 = or i8 %134, 1
  %136 = xor i8 %133, 2
  %retval.0.i145.i = select i1 %tobool.not.i140.i, i8 %136, i8 %135
  %137 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %retval.0.i145.i, ptr %smc_type_v2, align 2
  %138 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %smc_type_v1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp75.i = icmp ne i8 %139, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %retval.0.i145.i)
  %cmp79.i = icmp ne i8 %retval.0.i145.i, 2
  %or.cond.i = select i1 %cmp75.i, i1 true, i1 %cmp79.i
  br i1 %or.cond.i, label %if.end33, label %smc_find_proposal_devices.exit.fallback_crit_edge

smc_find_proposal_devices.exit.fallback_crit_edge: ; preds = %smc_find_proposal_devices.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fallback

if.end33:                                         ; preds = %smc_find_proposal_devices.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i429 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3520, i32 noundef 144) #18
  %tobool35.not = icmp eq ptr %call7.i.i429, null
  br i1 %tobool35.not, label %if.end33.fallback_crit_edge, label %if.end37

if.end33.fallback_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %fallback

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc i32 @smc_connect_clc(ptr noundef %smc, ptr noundef nonnull %call7.i.i429, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.vlan_cleanup_crit_edge

if.end37.vlan_cleanup_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = tail call fastcc i32 @smc_connect_check_aclc(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i429)
  %version43 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %call7.i.i429, i32 0, i32 3
  %141 = ptrtoint ptr %version43 to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load = load i8, ptr %version43, align 1
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 16
  %conv47 = select i1 %cmp, i8 1, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool48.not = icmp eq i32 %call42, 0
  br i1 %tobool48.not, label %if.end50, label %if.end41.vlan_cleanup_crit_edge

if.end41.vlan_cleanup_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_cleanup

if.end50:                                         ; preds = %if.end41
  %trunc = trunc i8 %bf.load to i2
  %142 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.64)
  switch i2 %trunc, label %if.end50.do.body_crit_edge [
    i2 0, label %if.then56
    i2 1, label %if.then66
  ]

if.end50.do.body_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %143 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv47, ptr %smcr_version, align 4
  %call58 = tail call fastcc i32 @smc_connect_rdma(ptr noundef %smc, ptr noundef nonnull %call7.i.i429, ptr noundef nonnull %call7.i.i)
  br label %if.end70

if.then66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %144 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv47, ptr %smcd_version, align 8
  %call68 = tail call fastcc i32 @smc_connect_ism(ptr noundef %smc, ptr noundef nonnull %call7.i.i429, ptr noundef nonnull %call7.i.i)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then56
  %rc.0 = phi i32 [ %call58, %if.then56 ], [ %call68, %if.then66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool71.not = icmp eq i32 %rc.0, 0
  br i1 %tobool71.not, label %if.end70.do.body_crit_edge, label %if.end70.vlan_cleanup_crit_edge

if.end70.vlan_cleanup_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_cleanup

if.end70.do.body_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.end70.do.body_crit_edge, %if.end50.do.body_crit_edge
  %145 = ptrtoint ptr %version43 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load76 = load i8, ptr %version43, align 1
  %bf.lshr77.mask = and i8 %bf.load76, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr77.mask)
  %cmp79 = icmp eq i8 %bf.lshr77.mask, 32
  %bf.clear84 = and i8 %bf.load76, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear84)
  %cmp86 = icmp eq i8 %bf.clear84, 1
  %146 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clcsock, align 8
  %sk90 = getelementptr inbounds %struct.socket, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %sk90 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sk90, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %skc_net.i, align 4
  %smc92 = getelementptr inbounds %struct.net, ptr %151, i32 0, i32 55
  %152 = ptrtoint ptr %smc92 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %smc92, align 4
  %cmp79.not = xor i1 %cmp79, true
  %cmp86.not = xor i1 %cmp86, true
  %brmerge = select i1 %cmp79.not, i1 true, i1 %cmp86.not
  br i1 %brmerge, label %if.else143, label %do.body100

do.body100:                                       ; preds = %do.body
  %154 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %clnt_v2_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %153, i32 0, i32 1, i32 7
  %155 = ptrtoint ptr %clnt_v2_succ_cnt to i32
  %156 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cpu, align 4
  %arrayidx117 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx117, align 4
  %add = add i32 %161, %155
  %162 = inttoptr i32 %add to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %162, align 8
  %add118 = add i64 %164, 1
  store i64 %add118, ptr %162, align 8
  %165 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool129.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool129.not, label %if.then133, label %do.body100.do.end136_crit_edge, !prof !164

do.body100.do.end136_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end136

if.then133:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body100.do.end136_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #15, !srcloc !168
  br label %if.end345

if.else143:                                       ; preds = %do.body
  %brmerge421 = select i1 %cmp79.not, i1 true, i1 %cmp86
  br i1 %brmerge421, label %if.else210, label %do.body150

do.body150:                                       ; preds = %if.else143
  %166 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %clnt_v2_succ_cnt174 = getelementptr inbounds %struct.smc_stats_tech, ptr %153, i32 0, i32 7
  %167 = ptrtoint ptr %clnt_v2_succ_cnt174 to i32
  %168 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i430 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i430 to ptr
  %cpu177 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %cpu177 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cpu177, align 4
  %arrayidx178 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx178, align 4
  %add179 = add i32 %173, %167
  %174 = inttoptr i32 %add179 to ptr
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %174, align 8
  %add180 = add i64 %176, 1
  store i64 %add180, ptr %174, align 8
  %177 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i431 = and i32 %177, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i431)
  %tobool191.not = icmp eq i32 %and.i.i431, 0
  br i1 %tobool191.not, label %if.then200, label %do.body150.do.end203_crit_edge, !prof !164

do.body150.do.end203_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end203

if.then200:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end203

do.end203:                                        ; preds = %if.then200, %do.body150.do.end203_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %166) #15, !srcloc !168
  br label %if.end345

if.else210:                                       ; preds = %if.else143
  %brmerge423 = select i1 %cmp79, i1 true, i1 %cmp86.not
  br i1 %brmerge423, label %if.else276, label %do.body217

do.body217:                                       ; preds = %if.else210
  %178 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %clnt_v1_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %153, i32 0, i32 1, i32 6
  %179 = ptrtoint ptr %clnt_v1_succ_cnt to i32
  %180 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i432 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i432 to ptr
  %cpu243 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %cpu243 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cpu243, align 4
  %arrayidx244 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx244, align 4
  %add245 = add i32 %185, %179
  %186 = inttoptr i32 %add245 to ptr
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %186, align 8
  %add246 = add i64 %188, 1
  store i64 %add246, ptr %186, align 8
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i433 = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i433)
  %tobool257.not = icmp eq i32 %and.i.i433, 0
  br i1 %tobool257.not, label %if.then266, label %do.body217.do.end269_crit_edge, !prof !164

do.body217.do.end269_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end269

if.then266:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end269

do.end269:                                        ; preds = %if.then266, %do.body217.do.end269_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #15, !srcloc !168
  br label %if.end345

if.else276:                                       ; preds = %if.else210
  %brmerge424 = or i1 %cmp79, %cmp86
  br i1 %brmerge424, label %if.else276.if.end345_crit_edge, label %do.body282

if.else276.if.end345_crit_edge:                   ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end345

do.body282:                                       ; preds = %if.else276
  %190 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %clnt_v1_succ_cnt306 = getelementptr inbounds %struct.smc_stats_tech, ptr %153, i32 0, i32 6
  %191 = ptrtoint ptr %clnt_v1_succ_cnt306 to i32
  %192 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i434 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i434 to ptr
  %cpu309 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %cpu309 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cpu309, align 4
  %arrayidx310 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %195
  %196 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx310, align 4
  %add311 = add i32 %197, %191
  %198 = inttoptr i32 %add311 to ptr
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %198, align 8
  %add312 = add i64 %200, 1
  store i64 %add312, ptr %198, align 8
  %201 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i435 = and i32 %201, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i435)
  %tobool323.not = icmp eq i32 %and.i.i435, 0
  br i1 %tobool323.not, label %if.then332, label %do.body282.do.end335_crit_edge, !prof !164

do.body282.do.end335_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end335

if.then332:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end335

do.end335:                                        ; preds = %if.then332, %do.body282.do.end335_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %190) #15, !srcloc !168
  br label %if.end345

if.end345:                                        ; preds = %do.end335, %if.else276.if.end345_crit_edge, %do.end269, %do.end203, %do.end136
  tail call fastcc void @smc_connect_ism_vlan_cleanup(ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i429) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

vlan_cleanup:                                     ; preds = %if.end70.vlan_cleanup_crit_edge, %if.end41.vlan_cleanup_crit_edge, %if.end37.vlan_cleanup_crit_edge
  %rc.1 = phi i32 [ %call38, %if.end37.vlan_cleanup_crit_edge ], [ %call42, %if.end41.vlan_cleanup_crit_edge ], [ %rc.0, %if.end70.vlan_cleanup_crit_edge ]
  %version.0 = phi i8 [ %conv, %if.end37.vlan_cleanup_crit_edge ], [ %conv47, %if.end41.vlan_cleanup_crit_edge ], [ %conv47, %if.end70.vlan_cleanup_crit_edge ]
  tail call fastcc void @smc_connect_ism_vlan_cleanup(ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i429) #15
  br label %fallback

fallback:                                         ; preds = %vlan_cleanup, %if.end33.fallback_crit_edge, %smc_find_proposal_devices.exit.fallback_crit_edge, %if.then19.fallback_crit_edge
  %rc.2 = phi i32 [ 50528256, %smc_find_proposal_devices.exit.fallback_crit_edge ], [ %rc.1, %vlan_cleanup ], [ 50855936, %if.then19.fallback_crit_edge ], [ 16842752, %if.end33.fallback_crit_edge ]
  %version.1 = phi i8 [ %conv, %smc_find_proposal_devices.exit.fallback_crit_edge ], [ %version.0, %vlan_cleanup ], [ %conv, %if.then19.fallback_crit_edge ], [ %conv, %if.end33.fallback_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %call350 = tail call fastcc i32 @smc_connect_decline_fallback(ptr noundef %smc, i32 noundef %rc.2, i8 noundef zeroext %version.1)
  br label %cleanup

cleanup:                                          ; preds = %fallback, %if.end345, %if.then13, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call9, %if.then8 ], [ %call350, %fallback ], [ 0, %if.end345 ], [ %call14, %if.then13 ], [ %call5, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_ism_is_v2_capable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_connect_fallback(ptr noundef %smc, i32 noundef %reason_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call fastcc i32 @smc_switch_to_fallback(ptr noundef %smc, i32 noundef %reason_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end48, label %do.body2

do.body2:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %smc14 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %smc14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc14, align 4
  %clnt_hshake_err_cnt = getelementptr inbounds %struct.smc_stats, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %clnt_hshake_err_cnt to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %add17 = add i64 %14, 1
  store i64 %add17, ptr %12, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not, label %if.then32, label %do.body2.do.end34_crit_edge, !prof !164

do.body2.do.end34_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34

if.then32:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end34

do.end34:                                         ; preds = %if.then32, %do.body2.do.end34_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #15, !srcloc !168
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp43 = icmp eq i8 %17, 2
  br i1 %cmp43, label %if.then45, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then45:                                        ; preds = %do.end34
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %smc) #15
  br label %cleanup

if.end48:                                         ; preds = %entry
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %19 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk.i, align 16
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 45
  %23 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sk_type.i.i, align 2
  %sk_type1.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 45
  %25 = ptrtoint ptr %sk_type1.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %sk_type1.i.i, align 2
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 21
  %26 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_sndbuf.i.i, align 4
  %sk_sndbuf2.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 21
  %28 = ptrtoint ptr %sk_sndbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sk_sndbuf2.i.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 15
  %29 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_rcvbuf3.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 15
  %31 = ptrtoint ptr %sk_rcvbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sk_rcvbuf3.i.i, align 8
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 31
  %32 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_sndtimeo.i.i, align 8
  %sk_sndtimeo4.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 31
  %34 = ptrtoint ptr %sk_sndtimeo4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sk_sndtimeo4.i.i, align 8
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 62
  %35 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %sk_rcvtimeo5.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 62
  %37 = ptrtoint ptr %sk_rcvtimeo5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sk_rcvtimeo5.i.i, align 4
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 34
  %38 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_mark.i.i, align 8
  %sk_mark6.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 34
  %40 = ptrtoint ptr %sk_mark6.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sk_mark6.i.i, align 8
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 33
  %41 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_priority.i.i, align 4
  %sk_priority7.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 33
  %43 = ptrtoint ptr %sk_priority7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sk_priority7.i.i, align 4
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 6
  %44 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_rcvlowat.i.i, align 8
  %sk_rcvlowat8.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 6
  %46 = ptrtoint ptr %sk_rcvlowat8.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sk_rcvlowat8.i.i, align 8
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 6
  %47 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %skc_bound_dev_if10.i.i = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 6
  %49 = ptrtoint ptr %skc_bound_dev_if10.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %skc_bound_dev_if10.i.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %50 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_err.i.i, align 4
  %sk_err11.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 51
  %52 = ptrtoint ptr %sk_err11.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sk_err11.i.i, align 4
  %53 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 13
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %and.i.i69 = and i32 %55, -70958301
  store i32 %and.i.i69, ptr %53, align 8
  %56 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %and14.i.i = and i32 %58, 70958300
  %or.i.i = or i32 %and14.i.i, %and.i.i69
  store i32 %or.i.i, ptr %53, align 8
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %59 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %connect_nonblock, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %connect_nonblock, align 4
  %skc_state51 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %60 = ptrtoint ptr %skc_state51 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state51, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp53 = icmp eq i8 %61, 2
  br i1 %cmp53, label %if.then55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %skc_state51 to i32
  call void @__asan_store1_noabort(i32 %62)
  store volatile i8 1, ptr %skc_state51, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end48.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end34.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_connect_decline_fallback(ptr noundef %smc, i32 noundef %reason_code, i8 noundef zeroext %version) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason_code)
  %cmp = icmp slt i32 %reason_code, 0
  br i1 %cmp, label %do.body1, label %if.end47

do.body1:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %smc14 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %smc14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc14, align 4
  %clnt_hshake_err_cnt = getelementptr inbounds %struct.smc_stats, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %clnt_hshake_err_cnt to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %add17 = add i64 %14, 1
  store i64 %add17, ptr %12, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then31, label %do.body1.do.end33_crit_edge, !prof !164

do.body1.do.end33_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then31:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end33

do.end33:                                         ; preds = %if.then31, %do.body1.do.end33_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #15, !srcloc !168
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp42 = icmp eq i8 %17, 2
  br i1 %cmp42, label %if.then44, label %do.end33.cleanup_crit_edge

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44:                                        ; preds = %do.end33
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %smc) #15
  br label %cleanup

if.end47:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %reason_code)
  %cmp48.not = icmp eq i32 %reason_code, 83886080
  br i1 %cmp48.not, label %if.end47.if.end126_crit_edge, label %if.then50

if.end47.if.end126_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

if.then50:                                        ; preds = %if.end47
  %call51 = tail call i32 @smc_clc_send_decline(ptr noundef %smc, i32 noundef %reason_code, i8 noundef zeroext %version) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.body56, label %if.then50.if.end126_crit_edge

if.then50.if.end126_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

do.body56:                                        ; preds = %if.then50
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %smc78 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 55
  %20 = ptrtoint ptr %smc78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smc78, align 4
  %clnt_hshake_err_cnt80 = getelementptr inbounds %struct.smc_stats, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clnt_hshake_err_cnt80 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i141 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i141 to ptr
  %cpu83 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu83, align 4
  %arrayidx84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %28, %22
  %29 = inttoptr i32 %add85 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %add86 = add i64 %31, 1
  store i64 %add86, ptr %29, align 8
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i142 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i142)
  %tobool97.not = icmp eq i32 %and.i.i142, 0
  br i1 %tobool97.not, label %if.then106, label %do.body56.do.end109_crit_edge, !prof !164

do.body56.do.end109_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end109

if.then106:                                       ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.body56.do.end109_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #15, !srcloc !168
  %skc_state118 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %33 = ptrtoint ptr %skc_state118 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state118, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp120 = icmp eq i8 %34, 2
  br i1 %cmp120, label %if.then122, label %do.end109.cleanup_crit_edge

do.end109.cleanup_crit_edge:                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then122:                                       ; preds = %do.end109
  %skc_refcnt.i143 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i143, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i143, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i143, ptr %skc_refcnt.i143, i32 1, ptr elementtype(i32) %skc_refcnt.i143) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i145 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i145)
  %cmp.i.i.i.i146 = icmp eq i32 %asmresult.i.i.i.i.i.i.i145, 1
  br i1 %cmp.i.i.i.i146, label %if.then.i150, label %if.end5.i.i.i.i148

if.end5.i.i.i.i148:                               ; preds = %if.then122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i145)
  %.not.i.i.i.i147 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i145, 0
  br i1 %.not.i.i.i.i147, label %if.end5.i.i.i.i148.cleanup_crit_edge, label %if.then10.i.i.i.i149, !prof !165

if.end5.i.i.i.i148.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i149:                             ; preds = %if.end5.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i143, i32 noundef 3) #15
  br label %cleanup

if.then.i150:                                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %smc) #15
  br label %cleanup

if.end126:                                        ; preds = %if.then50.if.end126_crit_edge, %if.end47.if.end126_crit_edge
  %call127 = tail call fastcc i32 @smc_connect_fallback(ptr noundef %smc, i32 noundef %reason_code)
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then.i150, %if.then10.i.i.i.i149, %if.end5.i.i.i.i148.cleanup_crit_edge, %do.end109.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %call127, %if.end126 ], [ %reason_code, %do.end33.cleanup_crit_edge ], [ %call51, %do.end109.cleanup_crit_edge ], [ %reason_code, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %reason_code, %if.then10.i.i.i.i ], [ %reason_code, %if.then.i ], [ %call51, %if.end5.i.i.i.i148.cleanup_crit_edge ], [ %call51, %if.then10.i.i.i.i149 ], [ %call51, %if.then.i150 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_vlan_by_tcpsk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_connect_clc(ptr noundef %smc, ptr noundef %aclc2, ptr noundef %ini) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smc_clc_send_proposal(ptr noundef %smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @smc_clc_wait_msg(ptr noundef %smc, ptr noundef %aclc2, i32 noundef 144, i8 noundef zeroext 2, i32 noundef 600) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @smc_connect_check_aclc(ptr nocapture noundef readonly %ini, ptr nocapture noundef readonly %aclc) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %typev1 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %aclc, i32 0, i32 3
  %0 = ptrtoint ptr %typev1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %typev1, align 1
  %bf.clear = and i8 %bf.load, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %switch = icmp ult i8 %bf.clear, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load)
  %cmp12 = icmp ugt i8 %bf.load, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp20 = icmp eq i8 %bf.clear, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %smc_type_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 2
  %1 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %smc_type_v2, align 2
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true31

land.lhs.true22:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %switch.selectcmp.case1 = icmp eq i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.selectcmp.case2 = icmp eq i8 %2, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %3 = select i1 %switch.selectcmp, i32 0, i32 50593792
  br label %return

land.lhs.true31:                                  ; preds = %if.then14
  %4 = and i8 %2, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %land.lhs.true31.if.end61_crit_edge, label %land.lhs.true31.return_crit_edge

land.lhs.true31.return_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true31.if.end61_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.else:                                          ; preds = %if.end
  %smc_type_v1 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %6 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %smc_type_v1, align 1
  br i1 %cmp20, label %land.lhs.true44, label %land.lhs.true55

land.lhs.true44:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %switch.selectcmp.case176 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.selectcmp.case277 = icmp eq i8 %7, 0
  %switch.selectcmp78 = or i1 %switch.selectcmp.case176, %switch.selectcmp.case277
  %8 = select i1 %switch.selectcmp78, i32 0, i32 50593792
  br label %return

land.lhs.true55:                                  ; preds = %if.else
  %9 = and i8 %7, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %land.lhs.true55.if.end61_crit_edge, label %land.lhs.true55.return_crit_edge

land.lhs.true55.return_crit_edge:                 ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true55.if.end61_crit_edge, %land.lhs.true31.if.end61_crit_edge
  br label %return

return:                                           ; preds = %if.end61, %land.lhs.true55.return_crit_edge, %land.lhs.true44, %land.lhs.true31.return_crit_edge, %land.lhs.true22, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ 50593792, %entry.return_crit_edge ], [ 50593792, %land.lhs.true31.return_crit_edge ], [ 50593792, %land.lhs.true55.return_crit_edge ], [ %3, %land.lhs.true22 ], [ %8, %land.lhs.true44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_connect_rdma(ptr noundef %smc, ptr noundef %aclc, ptr noundef %ini) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ini, align 8
  %1 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1
  %qpn = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %qpn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %t.1.copyload.i = load i24, ptr %qpn, align 1
  %t.1.insert.ext.i = zext i24 %t.1.copyload.i to i32
  %ib_clcqpn = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 16
  %3 = ptrtoint ptr %ib_clcqpn to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %t.1.insert.ext.i, ptr %ib_clcqpn, align 4
  %typev2 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %aclc, i32 0, i32 3
  %4 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %typev2, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %5 = and i8 %bf.lshr, 2
  %first_contact_peer = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 3
  %6 = ptrtoint ptr %first_contact_peer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %first_contact_peer, align 1
  %peer_systemid = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %1, align 1
  %9 = ptrtoint ptr %peer_systemid to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %peer_systemid, align 4
  %peer_gid = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 10
  %gid = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %peer_gid, ptr %gid, i32 16)
  %peer_mac = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 11
  %mac = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %peer_mac, ptr %mac, i32 6)
  %add.ptr.i = getelementptr i8, ptr %aclc, i32 104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %typev2, align 1
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, 16
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %bf.load2.i = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load2.i)
  %tobool4.not.i = icmp sgt i16 %bf.load2.i, -1
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %nexthop_mac.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 7
  %14 = call ptr @memcpy(ptr %nexthop_mac.i, ptr %mac, i32 6)
  %uses_gateway.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 6
  %15 = ptrtoint ptr %uses_gateway.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %uses_gateway.i, align 1
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %16 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk.i, align 16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %skc_rcv_saddr.i, align 4
  %22 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gid, align 4
  %arrayidx2.i.i.i = getelementptr %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %25, %23
  %arrayidx4.i.i.i = getelementptr %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %27, 65535
  %or5.i.i.i = or i32 %xor.i.i.i, %or.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  %or5.i.i = or i32 %or.i.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.smc_ib_gid_to_ipv4.exit.i_crit_edge

if.else.i.smc_ib_gid_to_ipv4.exit.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_ib_gid_to_ipv4.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx7.i.i = getelementptr %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 1, i32 12
  %28 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i.i, align 4
  br label %smc_ib_gid_to_ipv4.exit.i

smc_ib_gid_to_ipv4.exit.i:                        ; preds = %if.then.i.i, %if.else.i.smc_ib_gid_to_ipv4.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %29, %if.then.i.i ], [ -1, %if.else.i.smc_ib_gid_to_ipv4.exit.i_crit_edge ]
  %nexthop_mac10.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 7
  %uses_gateway13.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 6
  %call14.i = tail call i32 @smc_ib_find_route(i32 noundef %21, i32 noundef %retval.0.i.i, ptr noundef %nexthop_mac10.i, ptr noundef %uses_gateway13.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %smc_ib_gid_to_ipv4.exit.i.cleanup135_crit_edge

smc_ib_gid_to_ipv4.exit.i.cleanup135_crit_edge:   ; preds = %smc_ib_gid_to_ipv4.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup135

if.end17.i:                                       ; preds = %smc_ib_gid_to_ipv4.exit.i
  %30 = ptrtoint ptr %uses_gateway13.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %uses_gateway13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.i = icmp eq i8 %31, 0
  br i1 %tobool20.not.i, label %if.end17.i.cleanup135_crit_edge, label %if.end17.i.if.end_crit_edge

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end17.i.cleanup135_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup135

if.end:                                           ; preds = %if.end17.i.if.end_crit_edge, %if.then5.i, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @smc_client_lgr_pending, i32 noundef 0) #15
  %call11 = tail call i32 @smc_conn_create(ptr noundef %smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @smc_client_lgr_pending) #15
  br label %cleanup135

if.end14:                                         ; preds = %if.end
  tail call fastcc void @smc_conn_save_peer_info(ptr noundef %smc, ptr noundef %aclc)
  %first_contact_local = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %32 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.not = icmp eq i8 %33, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.then16

for.cond.preheader:                               ; preds = %if.end14
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lgr, align 4
  %36 = ptrtoint ptr %qpn to i32
  call void @__asan_loadN_noabort(i32 %36, i32 3)
  %t.1.copyload.i214 = load i24, ptr %qpn, align 1
  %t.1.insert.ext.i215 = zext i24 %t.1.copyload.i214 to i32
  %peer_qpn = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 0, i32 36
  %37 = ptrtoint ptr %peer_qpn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %peer_qpn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %t.1.insert.ext.i215)
  %cmp23 = icmp eq i32 %38, %t.1.insert.ext.i215
  br i1 %cmp23, label %land.lhs.true, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lnk, align 8
  br label %if.end50

land.lhs.true:                                    ; preds = %for.cond.preheader
  %peer_gid25 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 0, i32 42
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid25, ptr noundef dereferenceable(16) %gid, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool30.not = icmp eq i32 %bcmp, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true31:                                  ; preds = %land.lhs.true
  %41 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load33 = load i8, ptr %typev2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load33)
  %cmp36 = icmp ugt i8 %bf.load33, 31
  br i1 %cmp36, label %land.lhs.true31.for.end_crit_edge, label %lor.lhs.false

land.lhs.true31.for.end_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %peer_mac38 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 0, i32 41
  %bcmp213 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac38, ptr noundef dereferenceable(6) %mac, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp213)
  %tobool43.not = icmp eq i32 %bcmp213, 0
  br i1 %tobool43.not, label %lor.lhs.false.for.end_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %peer_qpn.1 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 1, i32 36
  %42 = ptrtoint ptr %peer_qpn.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %peer_qpn.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %t.1.insert.ext.i215)
  %cmp23.1 = icmp eq i32 %43, %t.1.insert.ext.i215
  br i1 %cmp23.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %peer_gid25.1 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 1, i32 42
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid25.1, ptr noundef dereferenceable(16) %gid, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool30.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool30.not.1, label %land.lhs.true31.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true31.1:                                ; preds = %land.lhs.true.1
  %44 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load33.1 = load i8, ptr %typev2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load33.1)
  %cmp36.1 = icmp ugt i8 %bf.load33.1, 31
  br i1 %cmp36.1, label %land.lhs.true31.1.for.end_crit_edge, label %lor.lhs.false.1

land.lhs.true31.1.for.end_crit_edge:              ; preds = %land.lhs.true31.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false.1:                                  ; preds = %land.lhs.true31.1
  %peer_mac38.1 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 1, i32 41
  %bcmp213.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac38.1, ptr noundef dereferenceable(6) %mac, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp213.1)
  %tobool43.not.1 = icmp eq i32 %bcmp213.1, 0
  br i1 %tobool43.not.1, label %lor.lhs.false.1.for.end_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

lor.lhs.false.1.for.end_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.1:                                        ; preds = %lor.lhs.false.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %peer_qpn.2 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 2, i32 36
  %45 = ptrtoint ptr %peer_qpn.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %peer_qpn.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %t.1.insert.ext.i215)
  %cmp23.2 = icmp eq i32 %46, %t.1.insert.ext.i215
  br i1 %cmp23.2, label %land.lhs.true.2, label %for.inc.1.connect_abort_crit_edge

for.inc.1.connect_abort_crit_edge:                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

land.lhs.true.2:                                  ; preds = %for.inc.1
  %peer_gid25.2 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 2, i32 42
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid25.2, ptr noundef dereferenceable(16) %gid, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool30.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool30.not.2, label %land.lhs.true31.2, label %land.lhs.true.2.connect_abort_crit_edge

land.lhs.true.2.connect_abort_crit_edge:          ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

land.lhs.true31.2:                                ; preds = %land.lhs.true.2
  %47 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load33.2 = load i8, ptr %typev2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load33.2)
  %cmp36.2 = icmp ugt i8 %bf.load33.2, 31
  br i1 %cmp36.2, label %land.lhs.true31.2.for.end_crit_edge, label %lor.lhs.false.2

land.lhs.true31.2.for.end_crit_edge:              ; preds = %land.lhs.true31.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false.2:                                  ; preds = %land.lhs.true31.2
  %peer_mac38.2 = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 2, i32 41
  %bcmp213.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac38.2, ptr noundef dereferenceable(6) %mac, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp213.2)
  %tobool43.not.2 = icmp eq i32 %bcmp213.2, 0
  br i1 %tobool43.not.2, label %lor.lhs.false.2.for.end_crit_edge, label %lor.lhs.false.2.connect_abort_crit_edge

lor.lhs.false.2.connect_abort_crit_edge:          ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

lor.lhs.false.2.for.end_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false.2.for.end_crit_edge, %land.lhs.true31.2.for.end_crit_edge, %lor.lhs.false.1.for.end_crit_edge, %land.lhs.true31.1.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %land.lhs.true31.for.end_crit_edge
  %i.0226.lcssa = phi i32 [ 0, %lor.lhs.false.for.end_crit_edge ], [ 0, %land.lhs.true31.for.end_crit_edge ], [ 1, %land.lhs.true31.1.for.end_crit_edge ], [ 1, %lor.lhs.false.1.for.end_crit_edge ], [ 2, %land.lhs.true31.2.for.end_crit_edge ], [ 2, %lor.lhs.false.2.for.end_crit_edge ]
  %arrayidx.le = getelementptr %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 1, i32 %i.0226.lcssa
  %tobool46.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool46.not, label %for.end.connect_abort_crit_edge, label %if.end48

for.end.connect_abort_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %conn49 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  tail call void @smc_switch_link_and_count(ptr noundef %conn49, ptr noundef nonnull %arrayidx.le) #15
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.then16
  %link.3 = phi ptr [ %40, %if.then16 ], [ %arrayidx.le, %if.end48 ]
  %call51 = tail call i32 @smc_buf_create(ptr noundef %smc, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.connect_abort_crit_edge

if.end50.connect_abort_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.end54:                                         ; preds = %if.end50
  %48 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool56.not = icmp eq i8 %49, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %qpn to i32
  call void @__asan_loadN_noabort(i32 %50, i32 3)
  %t.1.copyload.i.i = load i24, ptr %qpn, align 1
  %t.1.insert.ext.i.i = zext i24 %t.1.copyload.i.i to i32
  %peer_qpn.i = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 36
  %51 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %t.1.insert.ext.i.i, ptr %peer_qpn.i, align 8
  %peer_gid.i = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 42
  %52 = call ptr @memcpy(ptr %peer_gid.i, ptr %peer_gid, i32 16)
  %peer_mac.i = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 41
  %53 = call ptr @memcpy(ptr %peer_mac.i, ptr %peer_mac, i32 6)
  %psn.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 9
  %54 = ptrtoint ptr %psn.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 3)
  %t.1.copyload.i16.i = load i24, ptr %psn.i, align 1
  %t.1.insert.ext.i17.i = zext i24 %t.1.copyload.i16.i to i32
  %peer_psn.i = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 40
  %55 = ptrtoint ptr %peer_psn.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %t.1.insert.ext.i17.i, ptr %peer_psn.i, align 8
  %qp_mtu.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %qp_mtu.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i216 = load i8, ptr %qp_mtu.i, align 1
  %bf.clear.i = and i8 %bf.load.i216, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %peer_mtu.i = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 38
  %57 = ptrtoint ptr %peer_mtu.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv.i, ptr %peer_mtu.i, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %conn59 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %call60 = tail call i32 @smc_rmb_rtoken_handling(ptr noundef %conn59, ptr noundef %link.3, ptr noundef %aclc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.connect_abort_crit_edge

if.end58.connect_abort_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.end63:                                         ; preds = %if.end58
  tail call void @smc_close_init(ptr noundef %smc) #15
  tail call void @smc_rx_init(ptr noundef %smc) #15
  %58 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool65.not = icmp eq i8 %59, 0
  br i1 %tobool65.not, label %if.else71, label %if.then66

if.then66:                                        ; preds = %if.end63
  %call67 = tail call i32 @smc_ib_ready_link(ptr noundef %link.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end77_crit_edge, label %if.then66.connect_abort_crit_edge

if.then66.connect_abort_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.else71:                                        ; preds = %if.end63
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %60 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmb_desc, align 4
  %call73 = tail call fastcc i32 @smcr_lgr_reg_rmbs(ptr noundef %link.3, ptr noundef %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else71.if.end77_crit_edge, label %if.else71.connect_abort_crit_edge

if.else71.connect_abort_crit_edge:                ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.else71.if.end77_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.end77:                                         ; preds = %if.else71.if.end77_crit_edge, %if.then66.if.end77_crit_edge
  tail call void @smc_rmb_sync_sg_for_device(ptr noundef %conn59) #15
  %62 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load81 = load i8, ptr %typev2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load81)
  %cmp84 = icmp ugt i8 %bf.load81, 31
  br i1 %cmp84, label %if.then86, label %if.end77.if.end96_crit_edge

if.end77.if.end96_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then86:                                        ; preds = %if.end77
  %eid87 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %aclc, i32 0, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool90.not = icmp eq i8 %64, 0
  br i1 %tobool90.not, label %if.then86.if.end96_crit_edge, label %if.then91

if.then86.if.end96_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then91:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  %lgr92 = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 50
  %65 = ptrtoint ptr %lgr92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lgr92, align 4
  %gidlist = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 8
  %67 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %link.3, align 8
  %gid93 = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 34
  tail call void @smc_fill_gid_list(ptr noundef %66, ptr noundef %gidlist, ptr noundef %68, ptr noundef %gid93)
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.then86.if.end96_crit_edge, %if.end77.if.end96_crit_edge
  %eid.0 = phi ptr [ null, %if.end77.if.end96_crit_edge ], [ %eid87, %if.then91 ], [ %eid87, %if.then86.if.end96_crit_edge ]
  %69 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool98 = icmp ne i8 %70, 0
  %71 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load101 = load i8, ptr %typev2, align 1
  %bf.lshr102 = lshr i8 %bf.load101, 4
  %call103 = tail call i32 @smc_clc_send_confirm(ptr noundef %smc, i1 noundef zeroext %tobool98, i8 noundef zeroext %bf.lshr102, ptr noundef %eid.0, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end96.connect_abort_crit_edge

if.end96.connect_abort_crit_edge:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.end106:                                        ; preds = %if.end96
  tail call void @smc_tx_init(ptr noundef %smc) #15
  %72 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool108.not = icmp eq i8 %73, 0
  br i1 %tobool108.not, label %if.end106.if.end118_crit_edge, label %if.then109

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.then109:                                       ; preds = %if.end106
  %lgr110 = getelementptr inbounds %struct.smc_link, ptr %link.3, i32 0, i32 50
  %74 = ptrtoint ptr %lgr110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lgr110, align 4
  %call111 = tail call i32 @smc_llc_flow_initiate(ptr noundef %75, i32 noundef 2) #15
  %call112 = tail call fastcc i32 @smcr_clnt_conf_first_link(ptr noundef %smc)
  %76 = ptrtoint ptr %lgr110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lgr110, align 4
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %77, i32 0, i32 21, i32 0, i32 18
  tail call void @smc_llc_flow_stop(ptr noundef %77, ptr noundef %llc_flow_lcl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool115.not = icmp eq i32 %call112, 0
  br i1 %tobool115.not, label %if.then109.if.end118_crit_edge, label %if.then109.connect_abort_crit_edge

if.then109.connect_abort_crit_edge:               ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.then109.if.end118_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.end118:                                        ; preds = %if.then109.if.end118_crit_edge, %if.end106.if.end118_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smc_client_lgr_pending) #15
  tail call fastcc void @smc_copy_sock_settings_to_clc(ptr noundef %smc)
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %78 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load119 = load i8, ptr %connect_nonblock, align 4
  %bf.clear120 = and i8 %bf.load119, -65
  store i8 %bf.clear120, ptr %connect_nonblock, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %79 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp122 = icmp eq i8 %80, 2
  br i1 %cmp122, label %if.then124, label %if.end118.cleanup135_crit_edge

if.end118.cleanup135_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup135

if.then124:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %81)
  store volatile i8 1, ptr %skc_state, align 2
  br label %cleanup135

connect_abort:                                    ; preds = %if.then109.connect_abort_crit_edge, %if.end96.connect_abort_crit_edge, %if.else71.connect_abort_crit_edge, %if.then66.connect_abort_crit_edge, %if.end58.connect_abort_crit_edge, %if.end50.connect_abort_crit_edge, %for.end.connect_abort_crit_edge, %lor.lhs.false.2.connect_abort_crit_edge, %land.lhs.true.2.connect_abort_crit_edge, %for.inc.1.connect_abort_crit_edge
  %reason_code.0 = phi i32 [ %call103, %if.end96.connect_abort_crit_edge ], [ %call112, %if.then109.connect_abort_crit_edge ], [ 51052544, %for.end.connect_abort_crit_edge ], [ 16842752, %if.end50.connect_abort_crit_edge ], [ 161021953, %if.end58.connect_abort_crit_edge ], [ 161021954, %if.then66.connect_abort_crit_edge ], [ 161021955, %if.else71.connect_abort_crit_edge ], [ 51052544, %lor.lhs.false.2.connect_abort_crit_edge ], [ 51052544, %land.lhs.true.2.connect_abort_crit_edge ], [ 51052544, %for.inc.1.connect_abort_crit_edge ]
  %conn1.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %lgr2.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %lgr2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lgr2.i, align 4
  %tobool.not.i.i217 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i217, label %smc_conn_lgr_valid.exit.thread.i, label %smc_conn_lgr_valid.exit.i

smc_conn_lgr_valid.exit.thread.i:                 ; preds = %connect_abort
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_conn_free(ptr noundef %conn1.i) #15
  br label %smc_conn_abort.exit

smc_conn_lgr_valid.exit.i:                        ; preds = %connect_abort
  %84 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %first_contact_local, align 4
  %alert_token_local.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 3
  %86 = ptrtoint ptr %alert_token_local.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %alert_token_local.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.i.i = icmp eq i32 %87, 0
  tail call void @smc_conn_free(ptr noundef %conn1.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i218 = icmp eq i8 %85, 0
  %brmerge.i = select i1 %tobool.not.i218, i1 true, i1 %tobool1.i.i
  br i1 %brmerge.i, label %smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge, label %if.then4.i

smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge: ; preds = %smc_conn_lgr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_abort.exit

if.then4.i:                                       ; preds = %smc_conn_lgr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_lgr_cleanup_early(ptr noundef nonnull %83) #15
  br label %smc_conn_abort.exit

smc_conn_abort.exit:                              ; preds = %if.then4.i, %smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge, %smc_conn_lgr_valid.exit.thread.i
  tail call void @mutex_unlock(ptr noundef nonnull @smc_client_lgr_pending) #15
  %connect_nonblock131 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %88 = ptrtoint ptr %connect_nonblock131 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load132 = load i8, ptr %connect_nonblock131, align 4
  %bf.clear133 = and i8 %bf.load132, -65
  store i8 %bf.clear133, ptr %connect_nonblock131, align 4
  br label %cleanup135

cleanup135:                                       ; preds = %smc_conn_abort.exit, %if.then124, %if.end118.cleanup135_crit_edge, %if.then13, %if.end17.i.cleanup135_crit_edge, %smc_ib_gid_to_ipv4.exit.i.cleanup135_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %reason_code.0, %smc_conn_abort.exit ], [ 0, %if.then124 ], [ 0, %if.end118.cleanup135_crit_edge ], [ 51249152, %smc_ib_gid_to_ipv4.exit.i.cleanup135_crit_edge ], [ 51314688, %if.end17.i.cleanup135_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_connect_ism(ptr noundef %smc, ptr noundef %aclc, ptr noundef %ini) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ini, align 8
  %typev2 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %aclc, i32 0, i32 3
  %1 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %typev2, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %2 = and i8 %bf.lshr, 2
  %first_contact_peer = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 3
  %3 = ptrtoint ptr %first_contact_peer to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %first_contact_peer, align 1
  %bf.load3 = load i8, ptr %typev2, align 1
  %bf.lshr4.mask = and i8 %bf.load3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr4.mask)
  %cmp = icmp eq i8 %bf.lshr4.mask, 32
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %ism_offered_cnt.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 21
  %4 = ptrtoint ptr %ism_offered_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ism_offered_cnt.i, align 2
  %conv.i = zext i8 %5 to i32
  %chid.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %chid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chid.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.013.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 20, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp4.i = icmp eq i16 %9, %7
  br i1 %cmp4.i, label %smc_v2_determine_accepted_chid.exit.thread, label %for.inc.i

smc_v2_determine_accepted_chid.exit.thread:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv6.i = trunc i32 %i.013.i to i8
  %ism_selected.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %10 = ptrtoint ptr %ism_selected.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %ism_selected.i, align 1
  br label %if.end8

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.i = icmp eq i32 %i.013.i, %conv.i
  br i1 %exitcond.i, label %for.inc.i.cleanup54_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup54_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

if.end8:                                          ; preds = %smc_v2_determine_accepted_chid.exit.thread, %entry.if.end8_crit_edge
  %11 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %aclc, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %11, align 1
  %ism_selected = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %14 = ptrtoint ptr %ism_selected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ism_selected, align 1
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 18, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %arrayidx, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @smc_server_lgr_pending, i32 noundef 0) #15
  %call9 = tail call i32 @smc_conn_create(ptr noundef %smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  br label %cleanup54

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @smc_buf_create(ptr noundef %smc, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call13)
  %cmp16 = icmp eq i32 %call13, -28
  %cond = select i1 %cmp16, i32 51183616, i32 16842752
  br label %connect_abort

if.end18:                                         ; preds = %if.end12
  tail call fastcc void @smc_conn_save_peer_info(ptr noundef %smc, ptr noundef %aclc)
  tail call void @smc_close_init(ptr noundef %smc) #15
  tail call void @smc_rx_init(ptr noundef %smc) #15
  tail call void @smc_tx_init(ptr noundef %smc) #15
  %17 = ptrtoint ptr %typev2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load21 = load i8, ptr %typev2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load21)
  %cmp24 = icmp ugt i8 %bf.load21, 31
  %eid27 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %aclc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %spec.select = select i1 %cmp24, ptr %eid27, ptr null
  %first_contact_local = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %18 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29 = icmp ne i8 %19, 0
  %bf.lshr33 = lshr i8 %bf.load21, 4
  %call34 = tail call i32 @smc_clc_send_confirm(ptr noundef %smc, i1 noundef zeroext %tobool29, i8 noundef zeroext %bf.lshr33, ptr noundef %spec.select, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end18.connect_abort_crit_edge

if.end18.connect_abort_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %connect_abort

if.end37:                                         ; preds = %if.end18
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %20 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk.i, align 16
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 45
  %24 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sk_type.i.i, align 2
  %sk_type1.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 45
  %26 = ptrtoint ptr %sk_type1.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %sk_type1.i.i, align 2
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 21
  %27 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_sndbuf.i.i, align 4
  %sk_sndbuf2.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 21
  %29 = ptrtoint ptr %sk_sndbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sk_sndbuf2.i.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 15
  %30 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_rcvbuf3.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 15
  %32 = ptrtoint ptr %sk_rcvbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sk_rcvbuf3.i.i, align 8
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 31
  %33 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_sndtimeo.i.i, align 8
  %sk_sndtimeo4.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 31
  %35 = ptrtoint ptr %sk_sndtimeo4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sk_sndtimeo4.i.i, align 8
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 62
  %36 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %sk_rcvtimeo5.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 62
  %38 = ptrtoint ptr %sk_rcvtimeo5.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sk_rcvtimeo5.i.i, align 4
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 34
  %39 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_mark.i.i, align 8
  %sk_mark6.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 34
  %41 = ptrtoint ptr %sk_mark6.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sk_mark6.i.i, align 8
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 33
  %42 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_priority.i.i, align 4
  %sk_priority7.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 33
  %44 = ptrtoint ptr %sk_priority7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sk_priority7.i.i, align 4
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 6
  %45 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sk_rcvlowat.i.i, align 8
  %sk_rcvlowat8.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 6
  %47 = ptrtoint ptr %sk_rcvlowat8.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sk_rcvlowat8.i.i, align 8
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 6
  %48 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %skc_bound_dev_if10.i.i = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 6
  %50 = ptrtoint ptr %skc_bound_dev_if10.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %skc_bound_dev_if10.i.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %51 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sk_err.i.i, align 4
  %sk_err11.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  %53 = ptrtoint ptr %sk_err11.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sk_err11.i.i, align 4
  %54 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %and.i.i = and i32 %56, -70958301
  store i32 %and.i.i, ptr %54, align 8
  %57 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %and14.i.i = and i32 %59, 70958300
  %or.i.i = or i32 %and14.i.i, %and.i.i
  store i32 %or.i.i, ptr %54, align 8
  %connect_nonblock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %60 = ptrtoint ptr %connect_nonblock to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load38 = load i8, ptr %connect_nonblock, align 4
  %bf.clear39 = and i8 %bf.load38, -65
  store i8 %bf.clear39, ptr %connect_nonblock, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %61 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp41 = icmp eq i8 %62, 2
  br i1 %cmp41, label %if.then43, label %if.end37.cleanup54_crit_edge

if.end37.cleanup54_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %63)
  store volatile i8 1, ptr %skc_state, align 2
  br label %cleanup54

connect_abort:                                    ; preds = %if.end18.connect_abort_crit_edge, %if.then15
  %rc.0 = phi i32 [ %cond, %if.then15 ], [ %call34, %if.end18.connect_abort_crit_edge ]
  %conn1.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %lgr2.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %lgr2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lgr2.i, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %smc_conn_lgr_valid.exit.thread.i, label %smc_conn_lgr_valid.exit.i

smc_conn_lgr_valid.exit.thread.i:                 ; preds = %connect_abort
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_conn_free(ptr noundef %conn1.i) #15
  br label %smc_conn_abort.exit

smc_conn_lgr_valid.exit.i:                        ; preds = %connect_abort
  %first_contact_local48 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %66 = ptrtoint ptr %first_contact_local48 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %first_contact_local48, align 4
  %alert_token_local.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 3
  %68 = ptrtoint ptr %alert_token_local.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %alert_token_local.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool1.i.i = icmp eq i32 %69, 0
  tail call void @smc_conn_free(ptr noundef %conn1.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.i.i
  br i1 %brmerge.i, label %smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge, label %if.then4.i

smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge: ; preds = %smc_conn_lgr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_abort.exit

if.then4.i:                                       ; preds = %smc_conn_lgr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_lgr_cleanup_early(ptr noundef nonnull %65) #15
  br label %smc_conn_abort.exit

smc_conn_abort.exit:                              ; preds = %if.then4.i, %smc_conn_lgr_valid.exit.i.smc_conn_abort.exit_crit_edge, %smc_conn_lgr_valid.exit.thread.i
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  %connect_nonblock50 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %70 = ptrtoint ptr %connect_nonblock50 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load51 = load i8, ptr %connect_nonblock50, align 4
  %bf.clear52 = and i8 %bf.load51, -65
  store i8 %bf.clear52, ptr %connect_nonblock50, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %smc_conn_abort.exit, %if.then43, %if.end37.cleanup54_crit_edge, %if.then11, %for.inc.i.cleanup54_crit_edge
  %retval.1 = phi i32 [ %call9, %if.then11 ], [ %rc.0, %smc_conn_abort.exit ], [ 0, %if.then43 ], [ 0, %if.end37.cleanup54_crit_edge ], [ -71, %for.inc.i.cleanup54_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_connect_ism_vlan_cleanup(ptr nocapture noundef readonly %ini) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_type_v1 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %0 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smc_type_v1, align 1
  %2 = and i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %3 = icmp eq i8 %2, 1
  br i1 %3, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %vlan_id = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %land.lhs.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ism_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %6 = ptrtoint ptr %ism_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ism_dev, align 8
  %call3 = tail call i32 @smc_ism_put_vlan(ptr noundef %7, i16 noundef zeroext %5) #15
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_switch_to_fallback(ptr noundef %smc, i32 noundef %reason_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clcsock_release_lock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock, i32 noundef 0) #15
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %use_fallback = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 13
  %4 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %use_fallback to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_fallback, align 4
  %fallback_rsn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 14
  %7 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %reason_code, ptr %fallback_rsn, align 8
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  %mutex_fback_rsn.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 55, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex_fback_rsn.i, i32 noundef 0) #15
  %listen_smc.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 7
  %10 = ptrtoint ptr %listen_smc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %listen_smc.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  %fback_rsn6.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 55, i32 2
  %12 = ptrtoint ptr %fback_rsn6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fback_rsn6.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  %14 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fallback_rsn, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i
  %cnt.030.i.i = phi i32 [ 0, %if.then.i ], [ %inc13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smc_stats_fback, ptr %13, i32 %cnt.030.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i.i = icmp eq i32 %17, %15
  br i1 %cmp1.i.i, label %for.body.i.i.for.end.sink.split.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.end.sink.split.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then5.i.i, label %for.inc.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx.i.i, align 4
  br label %for.end.sink.split.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  %inc13.i.i = add nuw nsw i32 %cnt.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i, 30
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smc_stat_inc_fback_rsn_cnt.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.smc_stat_inc_fback_rsn_cnt.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_stat_inc_fback_rsn_cnt.exit.i

for.end.sink.split.i.i:                           ; preds = %if.then5.i.i, %for.body.i.i.for.end.sink.split.i.i_crit_edge
  %count.i.i = getelementptr %struct.smc_stats_fback, ptr %13, i32 %cnt.030.i.i, i32 1
  %19 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %count.i.i, align 4
  %inc11.i.i = add i16 %20, 1
  store i16 %inc11.i.i, ptr %count.i.i, align 4
  br label %smc_stat_inc_fback_rsn_cnt.exit.i

smc_stat_inc_fback_rsn_cnt.exit.i:                ; preds = %for.end.sink.split.i.i, %for.inc.i.i.smc_stat_inc_fback_rsn_cnt.exit.i_crit_edge
  %21 = ptrtoint ptr %fback_rsn6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fback_rsn6.i, align 4
  %srv_fback_cnt.i = getelementptr inbounds %struct.smc_stats_rsn, ptr %22, i32 0, i32 2
  br label %smc_stat_fallback.exit

if.else.i:                                        ; preds = %if.end4
  %clnt.i = getelementptr inbounds %struct.smc_stats_rsn, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fallback_rsn, align 8
  br label %for.body.i25.i

for.body.i25.i:                                   ; preds = %for.inc.i31.i.for.body.i25.i_crit_edge, %if.else.i
  %cnt.030.i22.i = phi i32 [ 0, %if.else.i ], [ %inc13.i29.i, %for.inc.i31.i.for.body.i25.i_crit_edge ]
  %arrayidx.i23.i = getelementptr %struct.smc_stats_fback, ptr %clnt.i, i32 %cnt.030.i22.i
  %25 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp1.i24.i = icmp eq i32 %26, %24
  br i1 %cmp1.i24.i, label %for.body.i25.i.for.end.sink.split.i34.i_crit_edge, label %if.end.i27.i

for.body.i25.i.for.end.sink.split.i34.i_crit_edge: ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split.i34.i

if.end.i27.i:                                     ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i26.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i26.i, label %if.then5.i28.i, label %for.inc.i31.i

if.then5.i28.i:                                   ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx.i23.i, align 4
  br label %for.end.sink.split.i34.i

for.inc.i31.i:                                    ; preds = %if.end.i27.i
  %inc13.i29.i = add nuw nsw i32 %cnt.030.i22.i, 1
  %exitcond.not.i30.i = icmp eq i32 %inc13.i29.i, 30
  br i1 %exitcond.not.i30.i, label %for.inc.i31.i.smc_stat_inc_fback_rsn_cnt.exit35.i_crit_edge, label %for.inc.i31.i.for.body.i25.i_crit_edge

for.inc.i31.i.for.body.i25.i_crit_edge:           ; preds = %for.inc.i31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i25.i

for.inc.i31.i.smc_stat_inc_fback_rsn_cnt.exit35.i_crit_edge: ; preds = %for.inc.i31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_stat_inc_fback_rsn_cnt.exit35.i

for.end.sink.split.i34.i:                         ; preds = %if.then5.i28.i, %for.body.i25.i.for.end.sink.split.i34.i_crit_edge
  %count.i32.i = getelementptr %struct.smc_stats_fback, ptr %clnt.i, i32 %cnt.030.i22.i, i32 1
  %28 = ptrtoint ptr %count.i32.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i32.i, align 4
  %inc11.i33.i = add i16 %29, 1
  store i16 %inc11.i33.i, ptr %count.i32.i, align 4
  br label %smc_stat_inc_fback_rsn_cnt.exit35.i

smc_stat_inc_fback_rsn_cnt.exit35.i:              ; preds = %for.end.sink.split.i34.i, %for.inc.i31.i.smc_stat_inc_fback_rsn_cnt.exit35.i_crit_edge
  %30 = ptrtoint ptr %fback_rsn6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fback_rsn6.i, align 4
  %clnt_fback_cnt.i = getelementptr inbounds %struct.smc_stats_rsn, ptr %31, i32 0, i32 3
  br label %smc_stat_fallback.exit

smc_stat_fallback.exit:                           ; preds = %smc_stat_inc_fback_rsn_cnt.exit35.i, %smc_stat_inc_fback_rsn_cnt.exit.i
  %clnt_fback_cnt.sink66.i = phi ptr [ %clnt_fback_cnt.i, %smc_stat_inc_fback_rsn_cnt.exit35.i ], [ %srv_fback_cnt.i, %smc_stat_inc_fback_rsn_cnt.exit.i ]
  %32 = ptrtoint ptr %clnt_fback_cnt.sink66.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %clnt_fback_cnt.sink66.i, align 8
  %inc10.i = add i64 %33, 1
  store i64 %inc10.i, ptr %clnt_fback_cnt.sink66.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex_fback_rsn.i) #15
  tail call fastcc void @trace_smc_switch_to_fallback(ptr noundef %smc, i32 noundef %reason_code)
  %sk_socket = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 71
  %34 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_socket, align 8
  %tobool7.not = icmp eq ptr %35, null
  br i1 %tobool7.not, label %smc_stat_fallback.exit.out_crit_edge, label %land.lhs.true

smc_stat_fallback.exit.out_crit_edge:             ; preds = %smc_stat_fallback.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true:                                    ; preds = %smc_stat_fallback.exit
  %file = getelementptr inbounds %struct.socket, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %file, align 4
  %tobool10.not = icmp eq ptr %37, null
  br i1 %tobool10.not, label %land.lhs.true.out_crit_edge, label %if.then11

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clcsock, align 8
  %file16 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %file16, align 4
  %41 = load ptr, ptr %clcsock, align 8
  %file19 = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %file19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file19, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %private_data, align 4
  %45 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk_socket, align 8
  %fasync_list = getelementptr inbounds %struct.socket, ptr %46, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %fasync_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fasync_list, align 4
  %49 = load ptr, ptr %clcsock, align 8
  %fasync_list24 = getelementptr inbounds %struct.socket, ptr %49, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %fasync_list24 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %fasync_list24, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 76
  %51 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk_state_change, align 4
  %clcsk_state_change = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 2
  %53 = ptrtoint ptr %clcsk_state_change to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %clcsk_state_change, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %54 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk_data_ready, align 8
  %clcsk_data_ready = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 3
  %56 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %clcsk_data_ready, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 78
  %57 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk_write_space, align 4
  %clcsk_write_space = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 4
  %59 = ptrtoint ptr %clcsk_write_space to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %clcsk_write_space, align 4
  %sk_error_report = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 79
  %60 = ptrtoint ptr %sk_error_report to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk_error_report, align 8
  %clcsk_error_report = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 5
  %62 = ptrtoint ptr %clcsk_error_report to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %clcsk_error_report, align 8
  store ptr @smc_fback_state_change, ptr %sk_state_change, align 4
  store ptr @smc_fback_data_ready, ptr %sk_data_ready, align 8
  store ptr @smc_fback_write_space, ptr %sk_write_space, align 4
  store ptr @smc_fback_error_report, ptr %sk_error_report, align 8
  %63 = ptrtoint ptr %smc to i32
  %or = or i32 %63, 1
  %64 = inttoptr i32 %or to ptr
  %65 = load ptr, ptr %clcsock, align 8
  %sk30 = getelementptr inbounds %struct.socket, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %sk30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk30, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %67, i32 0, i32 72
  %68 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %64, ptr %sk_user_data, align 4
  br label %out

out:                                              ; preds = %if.then11, %land.lhs.true.out_crit_edge, %smc_stat_fallback.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.then11 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %smc_stat_fallback.exit.out_crit_edge ], [ -9, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smc_switch_to_fallback(ptr noundef %smc, i32 noundef %fallback_rsn) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_switch_to_fallback, i32 0, i32 1), ptr blockaddress(@trace_smc_switch_to_fallback, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !188
  %call42 = tail call i32 @__traceiter_smc_switch_to_fallback(ptr noundef null, ptr noundef %smc, i32 noundef %fallback_rsn) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_switch_to_fallback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_switch_to_fallback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smc_switch_to_fallback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_smc_switch_to_fallback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 42, ptr noundef nonnull @.str.4) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #15
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
define internal void @smc_fback_state_change(ptr noundef %clcsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %clcsk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = inttoptr i32 %and.i to ptr
  %clcsk_state_change = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clcsk_state_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsk_state_change, align 4
  tail call fastcc void @smc_fback_forward_wakeup(ptr noundef nonnull %3, ptr noundef %clcsk, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_fback_data_ready(ptr noundef %clcsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %clcsk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = inttoptr i32 %and.i to ptr
  %clcsk_data_ready = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsk_data_ready, align 8
  tail call fastcc void @smc_fback_forward_wakeup(ptr noundef nonnull %3, ptr noundef %clcsk, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_fback_write_space(ptr noundef %clcsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %clcsk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = inttoptr i32 %and.i to ptr
  %clcsk_write_space = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clcsk_write_space to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsk_write_space, align 4
  tail call fastcc void @smc_fback_forward_wakeup(ptr noundef nonnull %3, ptr noundef %clcsk, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_fback_error_report(ptr noundef %clcsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %clcsk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = inttoptr i32 %and.i to ptr
  %clcsk_error_report = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clcsk_error_report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsk_error_report, align 8
  tail call fastcc void @smc_fback_forward_wakeup(ptr noundef nonnull %3, ptr noundef %clcsk, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smc_switch_to_fallback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_fback_forward_wakeup(ptr noundef %smc, ptr noundef %clcsk, ptr nocapture noundef readonly %clcsock_callback) unnamed_addr #0 align 64 {
entry:
  %mark = alloca %struct.smc_mark_woken, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mark) #15
  %wait_entry = getelementptr inbounds %struct.smc_mark_woken, ptr %mark, i32 0, i32 2
  %func1.i = getelementptr inbounds %struct.smc_mark_woken, ptr %mark, i32 0, i32 2, i32 2
  %0 = call ptr @memset(ptr %mark, i32 0, i32 28)
  %1 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smc_fback_mark_woken, ptr %func1.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = getelementptr inbounds %struct.sock, ptr %clcsk, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 8
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @smc_fback_forward_wakeup.__warned, align 1
  br i1 %.b22, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @smc_fback_forward_wakeup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 620, ptr noundef nonnull @.str.4) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end11:                                         ; preds = %do.end7
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %6, align 8
  call void @add_wait_queue(ptr noundef %10, ptr noundef %wait_entry) #15
  call void %clcsock_callback(ptr noundef %clcsk) #15
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %6, align 8
  call void @remove_wait_queue(ptr noundef %12, ptr noundef %wait_entry) #15
  %13 = ptrtoint ptr %mark to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mark, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end11.out_crit_edge, label %if.then17

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then17:                                        ; preds = %if.end11
  %key = getelementptr inbounds %struct.smc_mark_woken, ptr %mark, i32 0, i32 1
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 8
  %call.i23 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25, label %if.then17.do.end7.i_crit_edge

if.then17.do.end7.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true.i25:                                ; preds = %if.then17
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i25.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i25.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i25
  %.b33.i = load i1, ptr @smc_fback_wakeup_waitqueue.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i26

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

if.then.i26:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @smc_fback_wakeup_waitqueue.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 581, ptr noundef nonnull @.str.4) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i26, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i25.do.end7.i_crit_edge, %if.then17.do.end7.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end7.i.out_crit_edge, label %skwq_has_sleeper.exit.i

do.end7.i.out_crit_edge:                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

skwq_has_sleeper.exit.i:                          ; preds = %do.end7.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !193
  %head.i.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %head.i.i.i.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq ptr %21, %head.i.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %skwq_has_sleeper.exit.i.out_crit_edge, label %if.end11.i

skwq_has_sleeper.exit.i.out_crit_edge:            ; preds = %skwq_has_sleeper.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end11.i:                                       ; preds = %skwq_has_sleeper.exit.i
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__wake_up(ptr noundef nonnull %19, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %out

if.else.i:                                        ; preds = %if.end11.i
  %22 = ptrtoint ptr %16 to i32
  %and.i = and i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__wake_up_sync_key(ptr noundef nonnull %19, i32 noundef 1, ptr noundef nonnull %16) #15
  br label %out

if.else17.i:                                      ; preds = %if.else.i
  %and18.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.out_crit_edge, label %if.then20.i

if.else17.i.out_crit_edge:                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__wake_up(ptr noundef nonnull %19, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %16) #15
  br label %out

out:                                              ; preds = %if.then20.i, %if.else17.i.out_crit_edge, %if.then15.i, %if.then13.i, %skwq_has_sleeper.exit.i.out_crit_edge, %do.end7.i.out_crit_edge, %if.end11.out_crit_edge, %do.end7.out_crit_edge
  %call.i27 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i27, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %out
  %call1.i28 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  %23 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i.i.i.i.i34 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mark) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @smc_fback_mark_woken(ptr nocapture noundef writeonly %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %add.ptr, align 4
  %key1 = getelementptr i8, ptr %wait, i32 -4
  %1 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %key, ptr %key1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_send_decline(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_ueid_count() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_find_ism_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smc_ism_get_chid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_get_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_find_roce_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_pnet_is_pnetid_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_pnet_is_ndev_pnetid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_send_proposal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_wait_msg(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_conn_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_conn_save_peer_info(ptr noundef %smc, ptr nocapture noundef readonly %clc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_smcd, align 8, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dmbe_size.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %dmbe_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %dmbe_size.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %call.i = tail call i32 @smc_uncompress_bufsize(i8 noundef zeroext %bf.lshr.i) #15
  %dmbe_idx.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %dmbe_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dmbe_idx.i, align 1
  %peer_rmbe_idx.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %peer_rmbe_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %peer_rmbe_idx.i, align 8
  %token.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %token.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %token.i, align 1
  %peer_token.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 38
  %10 = ptrtoint ptr %peer_token.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %peer_token.i, align 8
  %sub.i = add i32 %call.i, -32
  %peer_rmbe_size.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %peer_rmbe_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %peer_rmbe_size.i, align 4
  %peer_rmbe_space.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_rmbe_space.i, i32 noundef 4) #15
  %12 = ptrtoint ptr %peer_rmbe_space.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %sub.i, ptr %peer_rmbe_space.i, align 4
  %13 = ptrtoint ptr %peer_rmbe_idx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %peer_rmbe_idx.i, align 8
  %conv.i = zext i8 %14 to i32
  %mul.i = mul i32 %call.i, %conv.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rmbe_size.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %rmbe_size.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i6 = load i8, ptr %rmbe_size.i, align 1
  %bf.lshr.i7 = lshr i8 %bf.load.i6, 4
  %call.i8 = tail call i32 @smc_uncompress_bufsize(i8 noundef zeroext %bf.lshr.i7) #15
  %rmbe_idx.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %rmbe_idx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rmbe_idx.i, align 1
  %peer_rmbe_idx.i9 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %peer_rmbe_idx.i9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %peer_rmbe_idx.i9, align 8
  %rmbe_alert_token.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %rmbe_alert_token.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %rmbe_alert_token.i, align 1
  %token.i10 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 3
  %21 = ptrtoint ptr %token.i10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %token.i10, align 4
  %peer_rmbe_size.i11 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 5
  %22 = ptrtoint ptr %peer_rmbe_size.i11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i8, ptr %peer_rmbe_size.i11, align 4
  %peer_rmbe_space.i12 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 6
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_rmbe_space.i12, i32 noundef 4) #15
  %23 = ptrtoint ptr %peer_rmbe_space.i12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %call.i8, ptr %peer_rmbe_space.i12, align 4
  %24 = ptrtoint ptr %peer_rmbe_idx.i9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %peer_rmbe_idx.i9, align 8
  %conv.i14 = zext i8 %25 to i32
  %sub.i15 = add nsw i32 %conv.i14, -1
  %mul.i16 = mul i32 %sub.i15, %call.i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul.i.sink = phi i32 [ %mul.i16, %if.else ], [ %mul.i, %if.then ]
  %26 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 24
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i.sink, ptr %26, align 8
  %version.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc, i32 0, i32 3
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i18 = load i8, ptr %version.i, align 1
  %bf.lshr.mask.i = and i8 %bf.load.i18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, 16
  %29 = and i8 %bf.load.i18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.smc_conn_save_peer_info_fce.exit_crit_edge, label %if.end.i

if.end.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

if.end.i:                                         ; preds = %if.end
  %30 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lgr, align 4
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_smcd.i, align 8, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool6.not.i = icmp eq i8 %33, 0
  %negotiated_eid13.i = getelementptr inbounds %struct.smc_link_group, ptr %31, i32 0, i32 17
  %eid15.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %clc, i32 0, i32 1, i32 0, i32 1
  %eid.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %clc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %eid15.sink.i = select i1 %tobool6.not.i, ptr %eid15.i, ptr %eid.i
  %clc_v2_len.0.i = select i1 %tobool6.not.i, i32 104, i32 74
  %34 = call ptr @memcpy(ptr %negotiated_eid13.i, ptr %eid15.sink.i, i32 32)
  %add.ptr.i = getelementptr i8, ptr %clc, i32 %clc_v2_len.0.i
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load18.i = load i16, ptr %add.ptr.i, align 1
  %36 = trunc i16 %bf.load18.i to i8
  %37 = lshr i8 %36, 4
  %38 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lgr, align 4
  %peer_os.i = getelementptr inbounds %struct.smc_link_group, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %peer_os.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %peer_os.i, align 2
  %bf.load23.i = load i16, ptr %add.ptr.i, align 1
  %41 = trunc i16 %bf.load23.i to i8
  %bf.cast25.i = and i8 %41, 15
  %42 = load ptr, ptr %lgr, align 4
  %peer_smc_release.i = getelementptr inbounds %struct.smc_link_group, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %peer_smc_release.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.cast25.i, ptr %peer_smc_release.i, align 1
  %hostname.i = getelementptr inbounds %struct.smc_clc_first_contact_ext, ptr %add.ptr.i, i32 0, i32 2
  %44 = ptrtoint ptr %hostname.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hostname.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp1.i50.i = icmp sgt i8 %45, -1
  br i1 %cmp1.i50.i, label %for.cond.i.i.preheader, label %if.end.i.smc_conn_save_peer_info_fce.exit_crit_edge

if.end.i.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.preheader:                           ; preds = %if.end.i
  %arrayidx.i.i = getelementptr i8, ptr %hostname.i, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp1.i.i = icmp sgt i8 %47, -1
  br i1 %cmp1.i.i, label %for.cond.i.i.1, label %for.cond.i.i.preheader.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.preheader.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.1:                                   ; preds = %for.cond.i.i.preheader
  %arrayidx.i.i.1 = getelementptr i8, ptr %hostname.i, i32 2
  %48 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp1.i.i.1 = icmp sgt i8 %49, -1
  br i1 %cmp1.i.i.1, label %for.cond.i.i.2, label %for.cond.i.i.1.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.1.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.2:                                   ; preds = %for.cond.i.i.1
  %arrayidx.i.i.2 = getelementptr i8, ptr %hostname.i, i32 3
  %50 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp1.i.i.2 = icmp sgt i8 %51, -1
  br i1 %cmp1.i.i.2, label %for.cond.i.i.3, label %for.cond.i.i.2.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.2.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.3:                                   ; preds = %for.cond.i.i.2
  %arrayidx.i.i.3 = getelementptr i8, ptr %hostname.i, i32 4
  %52 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp1.i.i.3 = icmp sgt i8 %53, -1
  br i1 %cmp1.i.i.3, label %for.cond.i.i.4, label %for.cond.i.i.3.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.3.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.4:                                   ; preds = %for.cond.i.i.3
  %arrayidx.i.i.4 = getelementptr i8, ptr %hostname.i, i32 5
  %54 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp1.i.i.4 = icmp sgt i8 %55, -1
  br i1 %cmp1.i.i.4, label %for.cond.i.i.5, label %for.cond.i.i.4.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.4.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.5:                                   ; preds = %for.cond.i.i.4
  %arrayidx.i.i.5 = getelementptr i8, ptr %hostname.i, i32 6
  %56 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp1.i.i.5 = icmp sgt i8 %57, -1
  br i1 %cmp1.i.i.5, label %for.cond.i.i.6, label %for.cond.i.i.5.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.5.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.6:                                   ; preds = %for.cond.i.i.5
  %arrayidx.i.i.6 = getelementptr i8, ptr %hostname.i, i32 7
  %58 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp1.i.i.6 = icmp sgt i8 %59, -1
  br i1 %cmp1.i.i.6, label %for.cond.i.i.7, label %for.cond.i.i.6.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.6.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.7:                                   ; preds = %for.cond.i.i.6
  %arrayidx.i.i.7 = getelementptr i8, ptr %hostname.i, i32 8
  %60 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp1.i.i.7 = icmp sgt i8 %61, -1
  br i1 %cmp1.i.i.7, label %for.cond.i.i.8, label %for.cond.i.i.7.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.7.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.8:                                   ; preds = %for.cond.i.i.7
  %arrayidx.i.i.8 = getelementptr i8, ptr %hostname.i, i32 9
  %62 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp1.i.i.8 = icmp sgt i8 %63, -1
  br i1 %cmp1.i.i.8, label %for.cond.i.i.9, label %for.cond.i.i.8.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.8.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.9:                                   ; preds = %for.cond.i.i.8
  %arrayidx.i.i.9 = getelementptr i8, ptr %hostname.i, i32 10
  %64 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp1.i.i.9 = icmp sgt i8 %65, -1
  br i1 %cmp1.i.i.9, label %for.cond.i.i.10, label %for.cond.i.i.9.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.9.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.10:                                  ; preds = %for.cond.i.i.9
  %arrayidx.i.i.10 = getelementptr i8, ptr %hostname.i, i32 11
  %66 = ptrtoint ptr %arrayidx.i.i.10 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp1.i.i.10 = icmp sgt i8 %67, -1
  br i1 %cmp1.i.i.10, label %for.cond.i.i.11, label %for.cond.i.i.10.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.10.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.11:                                  ; preds = %for.cond.i.i.10
  %arrayidx.i.i.11 = getelementptr i8, ptr %hostname.i, i32 12
  %68 = ptrtoint ptr %arrayidx.i.i.11 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp1.i.i.11 = icmp sgt i8 %69, -1
  br i1 %cmp1.i.i.11, label %for.cond.i.i.12, label %for.cond.i.i.11.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.11.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.12:                                  ; preds = %for.cond.i.i.11
  %arrayidx.i.i.12 = getelementptr i8, ptr %hostname.i, i32 13
  %70 = ptrtoint ptr %arrayidx.i.i.12 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp1.i.i.12 = icmp sgt i8 %71, -1
  br i1 %cmp1.i.i.12, label %for.cond.i.i.13, label %for.cond.i.i.12.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.12.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.13:                                  ; preds = %for.cond.i.i.12
  %arrayidx.i.i.13 = getelementptr i8, ptr %hostname.i, i32 14
  %72 = ptrtoint ptr %arrayidx.i.i.13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp1.i.i.13 = icmp sgt i8 %73, -1
  br i1 %cmp1.i.i.13, label %for.cond.i.i.14, label %for.cond.i.i.13.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.13.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.14:                                  ; preds = %for.cond.i.i.13
  %arrayidx.i.i.14 = getelementptr i8, ptr %hostname.i, i32 15
  %74 = ptrtoint ptr %arrayidx.i.i.14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp1.i.i.14 = icmp sgt i8 %75, -1
  br i1 %cmp1.i.i.14, label %for.cond.i.i.15, label %for.cond.i.i.14.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.14.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.15:                                  ; preds = %for.cond.i.i.14
  %arrayidx.i.i.15 = getelementptr i8, ptr %hostname.i, i32 16
  %76 = ptrtoint ptr %arrayidx.i.i.15 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp1.i.i.15 = icmp sgt i8 %77, -1
  br i1 %cmp1.i.i.15, label %for.cond.i.i.16, label %for.cond.i.i.15.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.15.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.15
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.16:                                  ; preds = %for.cond.i.i.15
  %arrayidx.i.i.16 = getelementptr i8, ptr %hostname.i, i32 17
  %78 = ptrtoint ptr %arrayidx.i.i.16 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp1.i.i.16 = icmp sgt i8 %79, -1
  br i1 %cmp1.i.i.16, label %for.cond.i.i.17, label %for.cond.i.i.16.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.16.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.16
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.17:                                  ; preds = %for.cond.i.i.16
  %arrayidx.i.i.17 = getelementptr i8, ptr %hostname.i, i32 18
  %80 = ptrtoint ptr %arrayidx.i.i.17 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %81)
  %cmp1.i.i.17 = icmp sgt i8 %81, -1
  br i1 %cmp1.i.i.17, label %for.cond.i.i.18, label %for.cond.i.i.17.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.17.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.17
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.18:                                  ; preds = %for.cond.i.i.17
  %arrayidx.i.i.18 = getelementptr i8, ptr %hostname.i, i32 19
  %82 = ptrtoint ptr %arrayidx.i.i.18 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp1.i.i.18 = icmp sgt i8 %83, -1
  br i1 %cmp1.i.i.18, label %for.cond.i.i.19, label %for.cond.i.i.18.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.18.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.18
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.19:                                  ; preds = %for.cond.i.i.18
  %arrayidx.i.i.19 = getelementptr i8, ptr %hostname.i, i32 20
  %84 = ptrtoint ptr %arrayidx.i.i.19 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.i.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %cmp1.i.i.19 = icmp sgt i8 %85, -1
  br i1 %cmp1.i.i.19, label %for.cond.i.i.20, label %for.cond.i.i.19.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.19.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.19
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.20:                                  ; preds = %for.cond.i.i.19
  %arrayidx.i.i.20 = getelementptr i8, ptr %hostname.i, i32 21
  %86 = ptrtoint ptr %arrayidx.i.i.20 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %87)
  %cmp1.i.i.20 = icmp sgt i8 %87, -1
  br i1 %cmp1.i.i.20, label %for.cond.i.i.21, label %for.cond.i.i.20.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.20.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.20
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.21:                                  ; preds = %for.cond.i.i.20
  %arrayidx.i.i.21 = getelementptr i8, ptr %hostname.i, i32 22
  %88 = ptrtoint ptr %arrayidx.i.i.21 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp1.i.i.21 = icmp sgt i8 %89, -1
  br i1 %cmp1.i.i.21, label %for.cond.i.i.22, label %for.cond.i.i.21.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.21.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.21
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.22:                                  ; preds = %for.cond.i.i.21
  %arrayidx.i.i.22 = getelementptr i8, ptr %hostname.i, i32 23
  %90 = ptrtoint ptr %arrayidx.i.i.22 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp1.i.i.22 = icmp sgt i8 %91, -1
  br i1 %cmp1.i.i.22, label %for.cond.i.i.23, label %for.cond.i.i.22.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.22.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.22
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.23:                                  ; preds = %for.cond.i.i.22
  %arrayidx.i.i.23 = getelementptr i8, ptr %hostname.i, i32 24
  %92 = ptrtoint ptr %arrayidx.i.i.23 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i.i.23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp1.i.i.23 = icmp sgt i8 %93, -1
  br i1 %cmp1.i.i.23, label %for.cond.i.i.24, label %for.cond.i.i.23.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.23.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.23
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.24:                                  ; preds = %for.cond.i.i.23
  %arrayidx.i.i.24 = getelementptr i8, ptr %hostname.i, i32 25
  %94 = ptrtoint ptr %arrayidx.i.i.24 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.i.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp1.i.i.24 = icmp sgt i8 %95, -1
  br i1 %cmp1.i.i.24, label %for.cond.i.i.25, label %for.cond.i.i.24.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.24.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.24
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.25:                                  ; preds = %for.cond.i.i.24
  %arrayidx.i.i.25 = getelementptr i8, ptr %hostname.i, i32 26
  %96 = ptrtoint ptr %arrayidx.i.i.25 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.i.25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp1.i.i.25 = icmp sgt i8 %97, -1
  br i1 %cmp1.i.i.25, label %for.cond.i.i.26, label %for.cond.i.i.25.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.25.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.25
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.26:                                  ; preds = %for.cond.i.i.25
  %arrayidx.i.i.26 = getelementptr i8, ptr %hostname.i, i32 27
  %98 = ptrtoint ptr %arrayidx.i.i.26 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i.26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp1.i.i.26 = icmp sgt i8 %99, -1
  br i1 %cmp1.i.i.26, label %for.cond.i.i.27, label %for.cond.i.i.26.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.26.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.26
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.27:                                  ; preds = %for.cond.i.i.26
  %arrayidx.i.i.27 = getelementptr i8, ptr %hostname.i, i32 28
  %100 = ptrtoint ptr %arrayidx.i.i.27 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp1.i.i.27 = icmp sgt i8 %101, -1
  br i1 %cmp1.i.i.27, label %for.cond.i.i.28, label %for.cond.i.i.27.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.27.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.27
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.28:                                  ; preds = %for.cond.i.i.27
  %arrayidx.i.i.28 = getelementptr i8, ptr %hostname.i, i32 29
  %102 = ptrtoint ptr %arrayidx.i.i.28 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.i.28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %cmp1.i.i.28 = icmp sgt i8 %103, -1
  br i1 %cmp1.i.i.28, label %for.cond.i.i.29, label %for.cond.i.i.28.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.28.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.28
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.29:                                  ; preds = %for.cond.i.i.28
  %arrayidx.i.i.29 = getelementptr i8, ptr %hostname.i, i32 30
  %104 = ptrtoint ptr %arrayidx.i.i.29 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.i.29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp1.i.i.29 = icmp sgt i8 %105, -1
  br i1 %cmp1.i.i.29, label %for.cond.i.i.30, label %for.cond.i.i.29.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.29.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.29
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

for.cond.i.i.30:                                  ; preds = %for.cond.i.i.29
  %arrayidx.i.i.30 = getelementptr i8, ptr %hostname.i, i32 31
  %106 = ptrtoint ptr %arrayidx.i.i.30 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i.30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp1.i.i.30 = icmp sgt i8 %107, -1
  br i1 %cmp1.i.i.30, label %if.then29.i, label %for.cond.i.i.30.smc_conn_save_peer_info_fce.exit_crit_edge

for.cond.i.i.30.smc_conn_save_peer_info_fce.exit_crit_edge: ; preds = %for.cond.i.i.30
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_save_peer_info_fce.exit

if.then29.i:                                      ; preds = %for.cond.i.i.30
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lgr, align 4
  %peer_hostname.i = getelementptr inbounds %struct.smc_link_group, ptr %109, i32 0, i32 20
  %110 = call ptr @memcpy(ptr %peer_hostname.i, ptr %hostname.i, i32 32)
  br label %smc_conn_save_peer_info_fce.exit

smc_conn_save_peer_info_fce.exit:                 ; preds = %if.then29.i, %for.cond.i.i.30.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.29.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.28.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.27.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.26.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.25.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.24.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.23.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.22.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.21.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.20.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.19.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.18.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.17.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.16.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.15.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.14.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.13.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.12.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.11.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.10.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.9.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.8.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.7.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.6.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.5.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.4.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.3.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.2.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.1.smc_conn_save_peer_info_fce.exit_crit_edge, %for.cond.i.i.preheader.smc_conn_save_peer_info_fce.exit_crit_edge, %if.end.i.smc_conn_save_peer_info_fce.exit_crit_edge, %if.end.smc_conn_save_peer_info_fce.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_switch_link_and_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_buf_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_rmb_rtoken_handling(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_close_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_ready_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smcr_lgr_reg_rmbs(ptr noundef %link, ptr noundef %rmb_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %call = tail call i32 @smc_llc_flow_initiate(ptr noundef %1, i32 noundef 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex, i32 noundef 0) #15
  %state.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.end4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0
  %call7 = tail call i32 @smcr_link_reg_rmb(ptr noundef %arrayidx, ptr noundef %rmb_desc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end4.for.inc_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %4 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.1 = icmp eq i32 %5, 3
  br i1 %cmp.i.1, label %if.end4.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1
  %call7.1 = tail call i32 @smcr_link_reg_rmb(ptr noundef %arrayidx.1, ptr noundef %rmb_desc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %if.end4.1.for.inc.1_crit_edge, label %if.end4.1.out_crit_edge

if.end4.1.out_crit_edge:                          ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %6 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.2 = icmp eq i32 %7, 3
  br i1 %cmp.i.2, label %if.end4.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end4.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2
  %call7.2 = tail call i32 @smcr_link_reg_rmb(ptr noundef %arrayidx.2, ptr noundef %rmb_desc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool8.not.2, label %if.end4.2.for.inc.2_crit_edge, label %if.end4.2.out_crit_edge

if.end4.2.out_crit_edge:                          ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.2.for.inc.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call11 = tail call i32 @smc_llc_do_confirm_rkey(ptr noundef %link, ptr noundef %rmb_desc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.inc.2.out_crit_edge

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end14:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %is_conf_rkey = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 28
  %8 = ptrtoint ptr %is_conf_rkey to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_conf_rkey, align 4
  br label %out

out:                                              ; preds = %if.end14, %for.inc.2.out_crit_edge, %if.end4.2.out_crit_edge, %if.end4.1.out_crit_edge, %if.end4.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end14 ], [ -14, %for.inc.2.out_crit_edge ], [ %call7, %if.end4.out_crit_edge ], [ %call7.1, %if.end4.1.out_crit_edge ], [ %call7.2, %if.end4.2.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex) #15
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18
  tail call void @smc_llc_flow_stop(ptr noundef %1, ptr noundef %llc_flow_lcl) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rmb_sync_sg_for_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_send_confirm(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_tx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_flow_initiate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smcr_clnt_conf_first_link(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  %dclc = alloca %struct.smc_clc_msg_decline, align 4
  %dclc27 = alloca %struct.smc_clc_msg_decline, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %lgr = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lgr, align 4
  %call = tail call ptr @smc_llc_wait(ptr noundef %3, ptr noundef null, i32 noundef 200, i8 noundef zeroext 1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dclc) #15
  %4 = call ptr @memset(ptr %dclc, i32 255, i32 28)
  %call1 = call i32 @smc_clc_wait_msg(ptr noundef %smc, ptr noundef nonnull %dclc, i32 noundef 28, i8 noundef zeroext 4, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp = icmp eq i32 %call1, -11
  %spec.select = select i1 %cmp, i32 33619968, i32 %call1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dclc) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @smc_llc_save_peer_uid(ptr noundef nonnull %call) #15
  %call2 = tail call i32 @smc_llc_eval_conf_link(ptr noundef nonnull %call, i32 noundef 0) #15
  %5 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lgr, align 4
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %6, i32 0, i32 21, i32 0, i32 18
  tail call void @smc_llc_flow_qentry_del(ptr noundef %llc_flow_lcl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @smc_ib_modify_qp_rts(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void @smc_wr_remember_qp_attr(ptr noundef %1) #15
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %7 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmb_desc, align 4
  %call12 = tail call i32 @smcr_link_reg_rmb(ptr noundef %1, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmb_desc, align 4
  %is_conf_rkey = getelementptr inbounds %struct.smc_buf_desc, ptr %10, i32 0, i32 5, i32 1, i32 28
  %11 = ptrtoint ptr %is_conf_rkey to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_conf_rkey, align 4
  %call18 = tail call i32 @smc_llc_send_confirm_link(ptr noundef %1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  tail call void @smc_llc_link_active(ptr noundef %1) #15
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr, align 4
  tail call void @smcr_lgr_set_type(ptr noundef %13, i32 noundef 1) #15
  %14 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lgr, align 4
  %call24 = tail call ptr @smc_llc_wait(ptr noundef %15, ptr noundef null, i32 noundef 200, i8 noundef zeroext 2) #15
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dclc27) #15
  %16 = call ptr @memset(ptr %dclc27, i32 255, i32 28)
  %call28 = call i32 @smc_clc_wait_msg(ptr noundef %smc, ptr noundef nonnull %dclc27, i32 noundef 28, i8 noundef zeroext 4, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -11
  %spec.store.select = select i1 %cmp29, i32 0, i32 %call28
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dclc27) #15
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lgr, align 4
  %llc_flow_lcl34 = getelementptr inbounds %struct.smc_link_group, ptr %18, i32 0, i32 21, i32 0, i32 18
  %call35 = tail call ptr @smc_llc_flow_qentry_clr(ptr noundef %llc_flow_lcl34) #15
  %call36 = tail call i32 @smc_llc_cli_add_link(ptr noundef %1, ptr noundef nonnull %call24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then26, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %spec.store.select, %if.then26 ], [ %spec.select, %if.then ], [ 50659328, %if.end.cleanup_crit_edge ], [ 161021954, %if.end6.cleanup_crit_edge ], [ 161021955, %if.end10.cleanup_crit_edge ], [ 33619968, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_flow_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_find_route(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_uncompress_bufsize(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_link_reg_rmb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_do_confirm_rkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smc_llc_wait(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_save_peer_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_eval_conf_link(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_flow_qentry_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_modify_qp_rts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_remember_qp_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_send_confirm_link(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_link_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_lgr_set_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smc_llc_flow_qentry_clr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_cli_add_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_lgr_cleanup_early(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_put_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_wait_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_rx_wait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_rx_data_available(ptr noundef %conn) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %bytes_to_rcv = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #15
  %0 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bytes_to_rcv, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn) unnamed_addr #11 align 64 {
entry:
  %sent = alloca %union.smc_host_cursor, align 8
  %prep = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sent) #15
  %0 = ptrtoint ptr %sent to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sent, align 8, !annotation !174
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prep) #15
  %1 = ptrtoint ptr %prep to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %prep, align 8, !annotation !174
  %tx_curs_sent = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_sent, i32 noundef 8) #15
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %tx_curs_sent) #15
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sent, i32 noundef 8) #15
  call void @generic_atomic64_set(ptr noundef nonnull %sent, i64 noundef %call.i.i) #15
  %tx_curs_prep = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 14
  %call.i.i.i5 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_prep, i32 noundef 8) #15
  %call.i.i6 = call i64 @generic_atomic64_read(ptr noundef %tx_curs_prep) #15
  %call.i.i1.i7 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prep, i32 noundef 8) #15
  call void @generic_atomic64_set(ptr noundef nonnull %prep, i64 noundef %call.i.i6) #15
  %wrap.i = getelementptr inbounds %struct.anon.226, ptr %sent, i32 0, i32 1
  %2 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.226, ptr %prep, i32 0, i32 1
  %4 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not.i = icmp eq i16 %3, %5
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %6 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %count.i = getelementptr inbounds %struct.anon.226, ptr %sent, i32 0, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %9, %11
  %count4.i = getelementptr inbounds %struct.anon.226, ptr %prep, i32 0, i32 2
  %12 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %13
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %count7.i = getelementptr inbounds %struct.anon.226, ptr %prep, i32 0, i32 2
  %14 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.226, ptr %sent, i32 0, i32 2
  %16 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %15, %17
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %18 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prep) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sent) #15
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_curs_copy(ptr noundef %tgt, ptr noundef %src) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 8) #15
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %src) #15
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %tgt, i64 noundef %call.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_clcsock_data_ready(ptr noundef %listen_clcsock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %listen_clcsock, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %clcsk_data_ready = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsk_data_ready, align 8
  tail call void %5(ptr noundef %listen_clcsock) #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp = icmp eq i8 %7, 10
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then2.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.then2.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then2
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %10 = load ptr, ptr @smc_hs_wq, align 4
  %tcp_listen_work = getelementptr inbounds %struct.smc_sock, ptr %3, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %tcp_listen_work) #15
  br i1 %call.i, label %sock_hold.exit.cleanup_crit_edge, label %if.then5

sock_hold.exit.cleanup_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %sock_hold.exit
  %call.i.i.i.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i17, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef nonnull %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sock_hold.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_close_shutdown_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_tx_sendmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_rx_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smc_destruct(ptr noundef %sk) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.not = icmp eq i8 %1, 7
  br i1 %cmp.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  br label %do.end

do.end:                                           ; preds = %if.end, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_tcp_listen_work(ptr noundef %work) #0 align 64 {
entry:
  %new_clcsock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1600
  tail call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  %skc_state = getelementptr i8, ptr %work, i32 -1582
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp75 = icmp eq i8 %1, 10
  br i1 %cmp75, label %while.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %skc_net.i.i = getelementptr i8, ptr %work, i32 -1564
  %sk_protocol.i = getelementptr i8, ptr %work, i32 -964
  %clcsock_release_lock.i = getelementptr i8, ptr %work, i32 160
  %clcsock.i = getelementptr i8, ptr %work, i32 -640
  %sk_err13.i = getelementptr i8, ptr %work, i32 -908
  %clcsk_data_ready.i = getelementptr i8, ptr %work, i32 -632
  %use_fallback = getelementptr i8, ptr %work, i32 140
  %fallback_rsn = getelementptr i8, ptr %work, i32 144
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -1500
  %sk_sndbuf = getelementptr i8, ptr %work, i32 -1164
  %sk_rcvbuf = getelementptr i8, ptr %work, i32 -1192
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_clcsock.i) #15
  %2 = ptrtoint ptr %new_clcsock.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %new_clcsock.i, align 4
  call void @release_sock(ptr noundef %add.ptr) #15
  %3 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i.i, align 4
  %5 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol.i, align 4
  %conv.i = zext i16 %6 to i32
  %call1.i = call fastcc ptr @smc_sock_alloc(ptr noundef %4, ptr noundef null, i32 noundef %conv.i) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %smc_clcsock_accept.exit.thread, label %if.end.i

smc_clcsock_accept.exit.thread:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %sk_err13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %sk_err13.i, align 4
  call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_clcsock.i) #15
  br label %out

if.end.i:                                         ; preds = %while.body
  call void @mutex_lock_nested(ptr noundef %clcsock_release_lock.i, i32 noundef 0) #15
  %8 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clcsock.i, align 8
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i = call i32 @kernel_accept(ptr noundef nonnull %9, ptr noundef nonnull %new_clcsock.i, i32 noundef 2048) #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %rc.0.i = phi i32 [ %call6.i, %if.then4.i ], [ -22, %if.end.i.if.end7.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %clcsock_release_lock.i) #15
  call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp.i = icmp slt i32 %rc.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0.i)
  %cmp10.not.i = icmp ne i32 %rc.0.i, -11
  %10 = and i1 %cmp.i, %cmp10.not.i
  br i1 %10, label %if.then12.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 0, %rc.0.i
  %11 = ptrtoint ptr %sk_err13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %sk_err13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end7.i.if.end14.i_crit_edge
  br i1 %cmp.i, label %if.end14.i.if.then20.i_crit_edge, label %lor.lhs.false.i

if.end14.i.if.then20.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp18.i = icmp eq i8 %13, 7
  br i1 %cmp18.i, label %lor.lhs.false.i.if.then20.i_crit_edge, label %if.end27.i

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false.i.if.then20.i_crit_edge, %if.end14.i.if.then20.i_crit_edge
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 8
  %14 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_prot.i, align 8
  %unhash.i = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %unhash.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unhash.i, align 4
  call void %17(ptr noundef nonnull %call1.i) #15
  %18 = ptrtoint ptr %new_clcsock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_clcsock.i, align 4
  %tobool22.not.i = icmp eq ptr %19, null
  br i1 %tobool22.not.i, label %if.then20.i.if.end24.i_crit_edge, label %if.then23.i

if.then20.i.if.end24.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @sock_release(ptr noundef nonnull %19) #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.then20.i.if.end24.i_crit_edge
  %skc_state26.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state26.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 7, ptr %skc_state26.i, align 2
  %21 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %or.i.i.i = or i32 %23, 1
  store i32 %or.i.i.i, ptr %21, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.smc_clcsock_accept.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !165

if.end5.i.i.i.i.i.smc_clcsock_accept.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_clcsock_accept.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #15
  br label %smc_clcsock_accept.exit

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @sk_free(ptr noundef nonnull %call1.i) #15
  br label %smc_clcsock_accept.exit

if.end27.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %clcsk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clcsk_data_ready.i, align 8
  %27 = ptrtoint ptr %new_clcsock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %new_clcsock.i, align 4
  %sk28.i = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %sk28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk28.i, align 16
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 77
  %31 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %26, ptr %sk_data_ready.i, align 8
  %clcsock29.i = getelementptr inbounds %struct.smc_sock, ptr %call1.i, i32 0, i32 1
  %32 = ptrtoint ptr %clcsock29.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %clcsock29.i, align 8
  br label %smc_clcsock_accept.exit

smc_clcsock_accept.exit:                          ; preds = %if.end27.i, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.smc_clcsock_accept.exit_crit_edge
  %new_smc.0 = phi ptr [ %call1.i, %if.end27.i ], [ null, %if.then.i.i ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.end5.i.i.i.i.i.smc_clcsock_accept.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_clcsock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %if.end, label %smc_clcsock_accept.exit.out_crit_edge

smc_clcsock_accept.exit.out_crit_edge:            ; preds = %smc_clcsock_accept.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %smc_clcsock_accept.exit
  %tobool2.not = icmp eq ptr %new_smc.0, null
  br i1 %tobool2.not, label %if.end.while.cond.backedge_crit_edge, label %if.end4

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.end4:                                          ; preds = %if.end
  %listen_smc = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 7
  %33 = ptrtoint ptr %listen_smc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %listen_smc, align 8
  %34 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_fallback, align 4, !range !173
  %use_fallback6 = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 13
  %36 = ptrtoint ptr %use_fallback6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %use_fallback6, align 4
  %37 = ptrtoint ptr %fallback_rsn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fallback_rsn, align 8
  %fallback_rsn7 = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 14
  %39 = ptrtoint ptr %fallback_rsn7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fallback_rsn7, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %smc_listen_work = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 10
  call void @__init_work(ptr noundef %smc_listen_work, i32 noundef 0) #15
  %42 = ptrtoint ptr %smc_listen_work to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %smc_listen_work, align 4
  %lockdep_map = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @smc_tcp_listen_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry11 = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 10, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 10, i32 2
  %45 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @smc_listen_work, ptr %func, align 4
  %clcsock.i46 = getelementptr inbounds %struct.smc_sock, ptr %new_smc.0, i32 0, i32 1
  %46 = ptrtoint ptr %clcsock.i46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clcsock.i46, align 8
  %sk1.i = getelementptr inbounds %struct.socket, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sk1.i, align 16
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 45
  %50 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sk_type.i.i, align 2
  %sk_type1.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 45
  %52 = ptrtoint ptr %sk_type1.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %sk_type1.i.i, align 2
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 21
  %53 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_sndbuf.i.i, align 4
  %sk_sndbuf2.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 21
  %55 = ptrtoint ptr %sk_sndbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sk_sndbuf2.i.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 15
  %56 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_rcvbuf3.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 15
  %58 = ptrtoint ptr %sk_rcvbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sk_rcvbuf3.i.i, align 8
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 31
  %59 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sk_sndtimeo.i.i, align 8
  %sk_sndtimeo4.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 31
  %61 = ptrtoint ptr %sk_sndtimeo4.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %sk_sndtimeo4.i.i, align 8
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 62
  %62 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %sk_rcvtimeo5.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 62
  %64 = ptrtoint ptr %sk_rcvtimeo5.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sk_rcvtimeo5.i.i, align 4
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 34
  %65 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_mark.i.i, align 8
  %sk_mark6.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 34
  %67 = ptrtoint ptr %sk_mark6.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sk_mark6.i.i, align 8
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 33
  %68 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sk_priority.i.i, align 4
  %sk_priority7.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 33
  %70 = ptrtoint ptr %sk_priority7.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sk_priority7.i.i, align 4
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 6
  %71 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sk_rcvlowat.i.i, align 8
  %sk_rcvlowat8.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 6
  %73 = ptrtoint ptr %sk_rcvlowat8.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sk_rcvlowat8.i.i, align 8
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 6
  %74 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %skc_bound_dev_if10.i.i = getelementptr inbounds %struct.sock_common, ptr %new_smc.0, i32 0, i32 6
  %76 = ptrtoint ptr %skc_bound_dev_if10.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %skc_bound_dev_if10.i.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 51
  %77 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sk_err.i.i, align 4
  %sk_err11.i.i = getelementptr inbounds %struct.sock, ptr %new_smc.0, i32 0, i32 51
  %79 = ptrtoint ptr %sk_err11.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %sk_err11.i.i, align 4
  %80 = getelementptr inbounds %struct.sock_common, ptr %new_smc.0, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %and.i.i = and i32 %82, -1053
  store i32 %and.i.i, ptr %80, align 8
  %83 = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 13
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %and14.i.i = and i32 %85, 1052
  %or.i.i = or i32 %and14.i.i, %and.i.i
  store i32 %or.i.i, ptr %80, align 8
  %86 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sk_sndbuf, align 4
  store i32 %87, ptr %sk_sndbuf2.i.i, align 4
  %88 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sk_rcvbuf, align 8
  store i32 %89, ptr %sk_rcvbuf3.i.i, align 8
  %skc_refcnt.i36 = getelementptr inbounds %struct.sock_common, ptr %new_smc.0, i32 0, i32 19
  %call.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i36, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i36, i32 1, i32 3, i32 1) #15
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i36, ptr %skc_refcnt.i36, i32 1, ptr elementtype(i32) %skc_refcnt.i36) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i38 = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i38)
  %tobool1.not.i.i.i.i39 = icmp eq i32 %asmresult.i.i.i.i.i.i38, 0
  br i1 %tobool1.not.i.i.i.i39, label %sock_hold.exit.if.end15.sink.split.i.i.i.i44_crit_edge, label %if.else.i.i.i.i42, !prof !164

sock_hold.exit.if.end15.sink.split.i.i.i.i44_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i44

if.else.i.i.i.i42:                                ; preds = %sock_hold.exit
  %add.i.i.i.i40 = add i32 %asmresult.i.i.i.i.i.i38, 1
  %91 = or i32 %add.i.i.i.i40, %asmresult.i.i.i.i.i.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %.not.i.i.i.i41 = icmp sgt i32 %91, -1
  br i1 %.not.i.i.i.i41, label %if.else.i.i.i.i42.sock_hold.exit45_crit_edge, label %if.else.i.i.i.i42.if.end15.sink.split.i.i.i.i44_crit_edge, !prof !165

if.else.i.i.i.i42.if.end15.sink.split.i.i.i.i44_crit_edge: ; preds = %if.else.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i44

if.else.i.i.i.i42.sock_hold.exit45_crit_edge:     ; preds = %if.else.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit45

if.end15.sink.split.i.i.i.i44:                    ; preds = %if.else.i.i.i.i42.if.end15.sink.split.i.i.i.i44_crit_edge, %sock_hold.exit.if.end15.sink.split.i.i.i.i44_crit_edge
  %.sink.i.i.i.i43 = phi i32 [ 2, %sock_hold.exit.if.end15.sink.split.i.i.i.i44_crit_edge ], [ 1, %if.else.i.i.i.i42.if.end15.sink.split.i.i.i.i44_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i36, i32 noundef %.sink.i.i.i.i43) #15
  br label %sock_hold.exit45

sock_hold.exit45:                                 ; preds = %if.end15.sink.split.i.i.i.i44, %if.else.i.i.i.i42.sock_hold.exit45_crit_edge
  %92 = load ptr, ptr @smc_hs_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %smc_listen_work) #15
  br i1 %call.i, label %sock_hold.exit45.while.cond.backedge_crit_edge, label %if.then22

sock_hold.exit45.while.cond.backedge_crit_edge:   ; preds = %sock_hold.exit45
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then22:                                        ; preds = %sock_hold.exit45
  %call.i.i.i.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i36, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i36, i32 1, i32 3, i32 1) #15
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i36, ptr %skc_refcnt.i36, i32 1, ptr elementtype(i32) %skc_refcnt.i36) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i50, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i49, label %if.end5.i.i.i.i.while.cond.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.while.cond.backedge_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i36, i32 noundef 3) #15
  br label %while.cond.backedge

if.then.i50:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @sk_free(ptr noundef nonnull %new_smc.0) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i50, %if.then10.i.i.i.i, %if.end5.i.i.i.i.while.cond.backedge_crit_edge, %sock_hold.exit45.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge
  %94 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load volatile i8, ptr %skc_state, align 2
  %cmp = icmp eq i8 %95, 10
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

out:                                              ; preds = %while.cond.backedge.out_crit_edge, %smc_clcsock_accept.exit.out_crit_edge, %smc_clcsock_accept.exit.thread, %entry.out_crit_edge
  call void @release_sock(ptr noundef %add.ptr) #15
  %skc_refcnt.i52 = getelementptr i8, ptr %work, i32 -1500
  %call.i.i.i.i.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i52, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i52, i32 1, i32 3, i32 1) #15
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i52, ptr %skc_refcnt.i52, i32 1, ptr elementtype(i32) %skc_refcnt.i52) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i54, 1
  br i1 %cmp.i.i.i.i55, label %if.then.i59, label %if.end5.i.i.i.i57

if.end5.i.i.i.i57:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i54)
  %.not.i.i.i.i56 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i54, 0
  br i1 %.not.i.i.i.i56, label %if.end5.i.i.i.i57.sock_put.exit61_crit_edge, label %if.then10.i.i.i.i58, !prof !165

if.end5.i.i.i.i57.sock_put.exit61_crit_edge:      ; preds = %if.end5.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit61

if.then10.i.i.i.i58:                              ; preds = %if.end5.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i52, i32 noundef 3) #15
  br label %sock_put.exit61

if.then.i59:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @sk_free(ptr noundef %add.ptr) #15
  br label %sock_put.exit61

sock_put.exit61:                                  ; preds = %if.then.i59, %if.then10.i.i.i.i58, %if.end5.i.i.i.i57.sock_put.exit61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_connect_work(ptr noundef %work) #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1556
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #15
  %sk_sndtimeo = getelementptr i8, ptr %work, i32 -1028
  %0 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_sndtimeo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 2147483647, i32 %1
  %2 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %timeo, align 4
  %clcsock = getelementptr i8, ptr %work, i32 -596
  %3 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clcsock, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %7 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clcsock, align 8
  %sk3 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk3, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sk_err10 = getelementptr i8, ptr %work, i32 -864
  %13 = ptrtoint ptr %sk_err10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sk_err10, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else.if.end29_crit_edge, label %if.then14

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then14:                                        ; preds = %if.else
  %call = call i32 @sk_stream_wait_connect(ptr noundef %10, ptr noundef nonnull %timeo) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call)
  %cmp = icmp eq i32 %call, -32
  br i1 %cmp, label %land.lhs.true, label %if.then14.if.end29_crit_edge

if.then14.if.end29_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clcsock, align 8
  %sk19 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk19, align 16
  %skc_state21 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state21, align 2
  %conv22 = zext i8 %21 to i32
  %shl23 = shl nuw i32 1, %conv22
  %and24 = and i32 %shl23, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select126 = select i1 %tobool25.not, i32 -32, i32 0
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.then14.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then5
  %rc.0 = phi i32 [ 0, %if.then5 ], [ %call, %if.then14.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ %spec.select126, %land.lhs.true ]
  %22 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clcsock, align 8
  %sk31 = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %sk31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk31, align 16
  call void @release_sock(ptr noundef %25) #15
  call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp33.not = icmp eq i32 %rc.0, 0
  br i1 %cmp33.not, label %lor.lhs.false, label %if.then38

lor.lhs.false:                                    ; preds = %if.end29
  %sk_err36 = getelementptr i8, ptr %work, i32 -864
  %26 = ptrtoint ptr %sk_err36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_err36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not = icmp eq i32 %27, 0
  br i1 %tobool37.not, label %if.end61, label %if.then38.thread

if.then38.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %skc_state41122 = getelementptr i8, ptr %work, i32 -1538
  %28 = ptrtoint ptr %skc_state41122 to i32
  call void @__asan_store1_noabort(i32 %28)
  store volatile i8 7, ptr %skc_state41122, align 2
  br label %if.else50

if.then38:                                        ; preds = %if.end29
  %skc_state41 = getelementptr i8, ptr %work, i32 -1538
  %29 = ptrtoint ptr %skc_state41 to i32
  call void @__asan_store1_noabort(i32 %29)
  store volatile i8 7, ptr %skc_state41, align 2
  %30 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %rc.0, label %if.then38.if.else50_crit_edge [
    i32 -32, label %if.then38.if.end59.sink.split_crit_edge
    i32 -11, label %if.then38.if.end59.sink.split_crit_edge127
  ]

if.then38.if.end59.sink.split_crit_edge127:       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.sink.split

if.then38.if.end59.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.sink.split

if.then38.if.else50_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else50

if.else50:                                        ; preds = %if.then38.if.else50_crit_edge, %if.then38.thread
  %31 = call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.else50.if.then54_crit_edge, !prof !165

if.else50.if.then54_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then54

signal_pending.exit:                              ; preds = %if.else50
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool53.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool53.not, label %signal_pending.exit.if.end59_crit_edge, label %signal_pending.exit.if.then54_crit_edge

signal_pending.exit.if.then54_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then54

signal_pending.exit.if.end59_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then54:                                        ; preds = %signal_pending.exit.if.then54_crit_edge, %if.else50.if.then54_crit_edge
  %42 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %43)
  %cmp.i = icmp eq i32 %43, 2147483647
  %cond.i.neg = select i1 %cmp.i, i32 512, i32 4
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then54, %if.then38.if.end59.sink.split_crit_edge, %if.then38.if.end59.sink.split_crit_edge127
  %cond.i.neg.sink = phi i32 [ %cond.i.neg, %if.then54 ], [ 32, %if.then38.if.end59.sink.split_crit_edge ], [ 32, %if.then38.if.end59.sink.split_crit_edge127 ]
  %sk_err57 = getelementptr i8, ptr %work, i32 -864
  %44 = ptrtoint ptr %sk_err57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i.neg.sink, ptr %sk_err57, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %signal_pending.exit.if.end59_crit_edge
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -1456
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %out

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @sk_free(ptr noundef %add.ptr) #15
  br label %out

if.end61:                                         ; preds = %lor.lhs.false
  %call62 = call fastcc i32 @__smc_connect(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %sub66 = sub i32 0, %call62
  %46 = ptrtoint ptr %sk_err36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub66, ptr %sk_err36, align 4
  br label %out

out:                                              ; preds = %if.then65, %if.end61.out_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge
  %47 = getelementptr i8, ptr %work, i32 -1476
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not = icmp eq i32 %50, 0
  br i1 %tobool.i.not, label %if.then72, label %out.if.end88_crit_edge

out.if.end88_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then72:                                        ; preds = %out
  %sk_err74 = getelementptr i8, ptr %work, i32 -864
  %51 = ptrtoint ptr %sk_err74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sk_err74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool75.not = icmp eq i32 %52, 0
  br i1 %tobool75.not, label %if.else79, label %if.then72.if.end88.sink.split_crit_edge

if.then72.if.end88.sink.split_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.sink.split

if.else79:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clcsock, align 8
  %sk81 = getelementptr inbounds %struct.socket, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %sk81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk81, align 16
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %56, i32 0, i32 78
  %57 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk_write_space, align 4
  call void %58(ptr noundef %56) #15
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.else79, %if.then72.if.end88.sink.split_crit_edge
  %.sink = phi i32 [ -640, %if.else79 ], [ -648, %if.then72.if.end88.sink.split_crit_edge ]
  %sk_state_change = getelementptr i8, ptr %work, i32 %.sink
  %59 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk_state_change, align 4
  call void %60(ptr noundef %add.ptr) #15
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %out.if.end88_crit_edge
  call void @release_sock(ptr noundef %add.ptr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_tx_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_listen_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1644
  %clcsock = getelementptr i8, ptr %work, i32 -684
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %listen_smc = getelementptr i8, ptr %work, i32 -92
  %2 = ptrtoint ptr %listen_smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %listen_smc, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.not = icmp eq i8 %5, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_listen_out_err(ptr noundef %add.ptr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_fallback = getelementptr i8, ptr %work, i32 96
  %6 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_fallback, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %skc_state.i = getelementptr i8, ptr %work, i32 -1626
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  br i1 %cmp.i, label %if.then.i, label %if.then2.smc_listen_out_connected.exit_crit_edge

if.then2.smc_listen_out_connected.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_listen_out_connected.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 1, ptr %skc_state.i, align 2
  br label %smc_listen_out_connected.exit

smc_listen_out_connected.exit:                    ; preds = %if.then.i, %if.then2.smc_listen_out_connected.exit_crit_edge
  tail call fastcc void @smc_listen_out(ptr noundef %add.ptr) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sk4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk4, align 16
  %syn_smc = getelementptr inbounds %struct.tcp_sock, ptr %12, i32 0, i32 116
  %13 = ptrtoint ptr %syn_smc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %syn_smc, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end3
  %call7 = tail call fastcc i32 @smc_switch_to_fallback(ptr noundef %add.ptr, i32 noundef 50397184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_listen_out_err(ptr noundef %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %skc_state.i421 = getelementptr i8, ptr %work, i32 -1626
  %15 = ptrtoint ptr %skc_state.i421 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state.i421, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i422 = icmp eq i8 %16, 2
  br i1 %cmp.i422, label %if.then.i423, label %if.else.smc_listen_out_connected.exit424_crit_edge

if.else.smc_listen_out_connected.exit424_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_listen_out_connected.exit424

if.then.i423:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %skc_state.i421 to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 1, ptr %skc_state.i421, align 2
  br label %smc_listen_out_connected.exit424

smc_listen_out_connected.exit424:                 ; preds = %if.then.i423, %if.else.smc_listen_out_connected.exit424_crit_edge
  tail call fastcc void @smc_listen_out(ptr noundef %add.ptr) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 652) #18
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cond.end342_crit_edge, label %if.end15

if.end11.cond.end342_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end342

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @smc_clc_wait_msg(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef 652, i8 noundef zeroext 1, i32 noundef 600) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cond.end342_crit_edge

if.end15.cond.end342_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end342

if.end19:                                         ; preds = %if.end15
  %version = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load)
  %cmp21 = icmp ugt i8 %bf.load, 31
  %spec.select = select i1 %cmp21, i8 2, i8 1
  %20 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clcsock, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk.i, align 16
  %sk_policy.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %sk_policy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_policy.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %using_ipsec.exit, label %if.end19.cond.end342_crit_edge

if.end19.cond.end342_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end342

using_ipsec.exit:                                 ; preds = %if.end19
  %arrayidx4.i = getelementptr %struct.sock, ptr %23, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.i.not = icmp eq ptr %27, null
  br i1 %tobool5.i.not, label %if.end27, label %using_ipsec.exit.cond.end342_crit_edge

using_ipsec.exit.cond.end342_crit_edge:           ; preds = %using_ipsec.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end342

if.end27:                                         ; preds = %using_ipsec.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i425 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 320) #18
  %tobool29.not = icmp eq ptr %call7.i.i425, null
  br i1 %tobool29.not, label %if.end27.cond.end342_crit_edge, label %if.end31

if.end27.cond.end342_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end342

if.end31:                                         ; preds = %if.end27
  %call32 = tail call fastcc i32 @smc_listen_v2_check(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i425)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cond.true338_crit_edge

if.end31.cond.true338_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true338

if.end35:                                         ; preds = %if.end31
  tail call void @mutex_lock_nested(ptr noundef nonnull @smc_server_lgr_pending, i32 noundef 0) #15
  tail call void @smc_close_init(ptr noundef %add.ptr) #15
  tail call void @smc_rx_init(ptr noundef %add.ptr) #15
  tail call void @smc_tx_init(ptr noundef %add.ptr) #15
  %call36 = tail call fastcc i32 @smc_listen_find_device(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i425)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_unlock_crit_edge

if.end35.out_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end39:                                         ; preds = %if.end35
  %29 = ptrtoint ptr %call7.i.i425 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %call7.i.i425, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool41.not = icmp eq i8 %30, 0
  %smcd_version = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i425, i32 0, i32 23
  %smcr_version = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i425, i32 0, i32 8
  %cond.in.in = select i1 %tobool41.not, ptr %smcr_version, ptr %smcd_version
  %31 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond.in415 = load i8, ptr %cond.in.in, align 4
  %first_contact_local = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i425, i32 0, i32 4
  %32 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool45 = icmp ne i8 %33, 0
  %negotiated_eid = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i425, i32 0, i32 7
  %call46 = tail call i32 @smc_clc_send_accept(ptr noundef %add.ptr, i1 noundef zeroext %tobool45, i8 noundef zeroext %cond.in415, ptr noundef %negotiated_eid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end39.out_unlock_crit_edge

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end49:                                         ; preds = %if.end39
  %34 = ptrtoint ptr %call7.i.i425 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call7.i.i425, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool51.not = icmp eq i8 %35, 0
  br i1 %tobool51.not, label %if.end49.if.end53_crit_edge, label %if.then52

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49.if.end53_crit_edge
  %36 = call ptr @memset(ptr %call7.i.i, i32 0, i32 652)
  %call54 = tail call i32 @smc_clc_wait_msg(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef 652, i8 noundef zeroext 3, i32 noundef 600) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  %37 = ptrtoint ptr %call7.i.i425 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %call7.i.i425, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool63.not = icmp eq i8 %38, 0
  br i1 %tobool55.not, label %if.end61, label %if.then56

if.then56:                                        ; preds = %if.end53
  br i1 %tobool63.not, label %if.then56.out_unlock_crit_edge, label %if.then56.cond.true338_crit_edge

if.then56.cond.true338_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true338

if.then56.out_unlock_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end61:                                         ; preds = %if.end53
  br i1 %tobool63.not, label %if.then64, label %if.end61.if.end71_crit_edge

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then64:                                        ; preds = %if.end61
  %39 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool66 = icmp ne i8 %40, 0
  %call67 = tail call fastcc i32 @smc_listen_rdma_finish(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool66, ptr noundef nonnull %call7.i.i425)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then64.out_unlock_crit_edge

if.then64.out_unlock_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end61.if.end71_crit_edge
  tail call fastcc void @smc_conn_save_peer_info(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i)
  %skc_state.i426 = getelementptr i8, ptr %work, i32 -1626
  %41 = ptrtoint ptr %skc_state.i426 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %skc_state.i426, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp.i427 = icmp eq i8 %42, 2
  br i1 %cmp.i427, label %if.then.i428, label %if.end71.smc_listen_out_connected.exit429_crit_edge

if.end71.smc_listen_out_connected.exit429_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_listen_out_connected.exit429

if.then.i428:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %skc_state.i426 to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 1, ptr %skc_state.i426, align 2
  br label %smc_listen_out_connected.exit429

smc_listen_out_connected.exit429:                 ; preds = %if.then.i428, %if.end71.smc_listen_out_connected.exit429_crit_edge
  tail call fastcc void @smc_listen_out(ptr noundef %add.ptr) #15
  %44 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %smcd_version, align 8
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool74.not = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %call7.i.i425 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call7.i.i425, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool77.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk4, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skc_net.i, align 4
  %smc = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 55
  %53 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %smc, align 4
  %brmerge = select i1 %tobool74.not, i1 true, i1 %tobool77.not
  br i1 %brmerge, label %if.else132, label %do.body88

do.body88:                                        ; preds = %smc_listen_out_connected.exit429
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %srv_v2_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %54, i32 0, i32 1, i32 9
  %56 = ptrtoint ptr %srv_v2_succ_cnt to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu, align 4
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx106, align 4
  %add = add i32 %62, %56
  %63 = inttoptr i32 %add to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %63, align 8
  %add107 = add i64 %65, 1
  store i64 %add107, ptr %63, align 8
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool118.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool118.not, label %if.then122, label %do.body88.do.end125_crit_edge, !prof !164

do.body88.do.end125_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end125

if.then122:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body88.do.end125_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #15, !srcloc !168
  br label %out_free

if.else132:                                       ; preds = %smc_listen_out_connected.exit429
  %tobool77.not.not = xor i1 %tobool77.not, true
  %brmerge416 = select i1 %tobool74.not, i1 true, i1 %tobool77.not.not
  br i1 %brmerge416, label %if.else199, label %do.body139

do.body139:                                       ; preds = %if.else132
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %srv_v2_succ_cnt163 = getelementptr inbounds %struct.smc_stats_tech, ptr %54, i32 0, i32 9
  %68 = ptrtoint ptr %srv_v2_succ_cnt163 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i430 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i430 to ptr
  %cpu166 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu166 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu166, align 4
  %arrayidx167 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx167, align 4
  %add168 = add i32 %74, %68
  %75 = inttoptr i32 %add168 to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %add169 = add i64 %77, 1
  store i64 %add169, ptr %75, align 8
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i431 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i431)
  %tobool180.not = icmp eq i32 %and.i.i431, 0
  br i1 %tobool180.not, label %if.then189, label %do.body139.do.end192_crit_edge, !prof !164

do.body139.do.end192_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end192

if.then189:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end192

do.end192:                                        ; preds = %if.then189, %do.body139.do.end192_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #15, !srcloc !168
  br label %out_free

if.else199:                                       ; preds = %if.else132
  %tobool74.not.not = xor i1 %tobool74.not, true
  %brmerge417 = select i1 %tobool74.not.not, i1 true, i1 %tobool77.not
  br i1 %brmerge417, label %if.else265, label %do.body206

do.body206:                                       ; preds = %if.else199
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %srv_v1_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %54, i32 0, i32 1, i32 8
  %80 = ptrtoint ptr %srv_v1_succ_cnt to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i432 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i432 to ptr
  %cpu232 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu232 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu232, align 4
  %arrayidx233 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx233, align 4
  %add234 = add i32 %86, %80
  %87 = inttoptr i32 %add234 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %87, align 8
  %add235 = add i64 %89, 1
  store i64 %add235, ptr %87, align 8
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i433 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i433)
  %tobool246.not = icmp eq i32 %and.i.i433, 0
  br i1 %tobool246.not, label %if.then255, label %do.body206.do.end258_crit_edge, !prof !164

do.body206.do.end258_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end258

if.then255:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end258

do.end258:                                        ; preds = %if.then255, %do.body206.do.end258_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #15, !srcloc !168
  br label %out_free

if.else265:                                       ; preds = %if.else199
  %brmerge420 = select i1 %tobool74.not.not, i1 true, i1 %tobool77.not.not
  br i1 %brmerge420, label %if.else265.out_free_crit_edge, label %do.body271

if.else265.out_free_crit_edge:                    ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

do.body271:                                       ; preds = %if.else265
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %srv_v1_succ_cnt295 = getelementptr inbounds %struct.smc_stats_tech, ptr %54, i32 0, i32 8
  %92 = ptrtoint ptr %srv_v1_succ_cnt295 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i434 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i434 to ptr
  %cpu298 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu298 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu298, align 4
  %arrayidx299 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx299, align 4
  %add300 = add i32 %98, %92
  %99 = inttoptr i32 %add300 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %99, align 8
  %add301 = add i64 %101, 1
  store i64 %add301, ptr %99, align 8
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i435 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i435)
  %tobool312.not = icmp eq i32 %and.i.i435, 0
  br i1 %tobool312.not, label %if.then321, label %do.body271.do.end324_crit_edge, !prof !164

do.body271.do.end324_crit_edge:                   ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end324

if.then321:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end324

do.end324:                                        ; preds = %if.then321, %do.body271.do.end324_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #15, !srcloc !168
  br label %out_free

out_unlock:                                       ; preds = %if.then64.out_unlock_crit_edge, %if.then56.out_unlock_crit_edge, %if.end39.out_unlock_crit_edge, %if.end35.out_unlock_crit_edge
  %rc.0 = phi i32 [ %call36, %if.end35.out_unlock_crit_edge ], [ %call46, %if.end39.out_unlock_crit_edge ], [ %call54, %if.then56.out_unlock_crit_edge ], [ %call67, %if.then64.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @smc_server_lgr_pending) #15
  br label %cond.true338

cond.true338:                                     ; preds = %out_unlock, %if.then56.cond.true338_crit_edge, %if.end31.cond.true338_crit_edge
  %rc.1 = phi i32 [ %call32, %if.end31.cond.true338_crit_edge ], [ %rc.0, %out_unlock ], [ %call54, %if.then56.cond.true338_crit_edge ]
  %first_contact_local339 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i425, i32 0, i32 4
  %103 = ptrtoint ptr %first_contact_local339 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %first_contact_local339, align 4
  %conv340 = zext i8 %104 to i32
  br label %cond.end342

cond.end342:                                      ; preds = %cond.true338, %if.end27.cond.end342_crit_edge, %using_ipsec.exit.cond.end342_crit_edge, %if.end19.cond.end342_crit_edge, %if.end15.cond.end342_crit_edge, %if.end11.cond.end342_crit_edge
  %ini.0445 = phi ptr [ %call7.i.i425, %cond.true338 ], [ null, %if.end15.cond.end342_crit_edge ], [ null, %if.end11.cond.end342_crit_edge ], [ null, %using_ipsec.exit.cond.end342_crit_edge ], [ null, %if.end27.cond.end342_crit_edge ], [ null, %if.end19.cond.end342_crit_edge ]
  %proposal_version.1444 = phi i8 [ %spec.select, %cond.true338 ], [ 1, %if.end15.cond.end342_crit_edge ], [ 1, %if.end11.cond.end342_crit_edge ], [ %spec.select, %using_ipsec.exit.cond.end342_crit_edge ], [ %spec.select, %if.end27.cond.end342_crit_edge ], [ %spec.select, %if.end19.cond.end342_crit_edge ]
  %rc.1443 = phi i32 [ %rc.1, %cond.true338 ], [ %call16, %if.end15.cond.end342_crit_edge ], [ 16842752, %if.end11.cond.end342_crit_edge ], [ 50462720, %using_ipsec.exit.cond.end342_crit_edge ], [ 16842752, %if.end27.cond.end342_crit_edge ], [ 50462720, %if.end19.cond.end342_crit_edge ]
  %cond343 = phi i32 [ %conv340, %cond.true338 ], [ 0, %if.end15.cond.end342_crit_edge ], [ 0, %if.end11.cond.end342_crit_edge ], [ 0, %using_ipsec.exit.cond.end342_crit_edge ], [ 0, %if.end27.cond.end342_crit_edge ], [ 0, %if.end19.cond.end342_crit_edge ]
  %conn1.i.i = getelementptr i8, ptr %work, i32 -660
  %lgr2.i.i = getelementptr i8, ptr %work, i32 -648
  %105 = ptrtoint ptr %lgr2.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lgr2.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i, label %smc_conn_lgr_valid.exit.thread.i.i, label %smc_conn_lgr_valid.exit.i.i

smc_conn_lgr_valid.exit.thread.i.i:               ; preds = %cond.end342
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_conn_free(ptr noundef %conn1.i.i) #15
  br label %smc_conn_abort.exit.i

smc_conn_lgr_valid.exit.i.i:                      ; preds = %cond.end342
  %alert_token_local.i.i.i = getelementptr i8, ptr %work, i32 -640
  %107 = ptrtoint ptr %alert_token_local.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %alert_token_local.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool1.i.i.i = icmp eq i32 %108, 0
  tail call void @smc_conn_free(ptr noundef %conn1.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond343)
  %tobool.not.i.i = icmp eq i32 %cond343, 0
  %brmerge.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.i.i.i
  br i1 %brmerge.i.i, label %smc_conn_lgr_valid.exit.i.i.smc_conn_abort.exit.i_crit_edge, label %if.then4.i.i

smc_conn_lgr_valid.exit.i.i.smc_conn_abort.exit.i_crit_edge: ; preds = %smc_conn_lgr_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_abort.exit.i

if.then4.i.i:                                     ; preds = %smc_conn_lgr_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_lgr_cleanup_early(ptr noundef nonnull %106) #15
  br label %smc_conn_abort.exit.i

smc_conn_abort.exit.i:                            ; preds = %if.then4.i.i, %smc_conn_lgr_valid.exit.i.i.smc_conn_abort.exit.i_crit_edge, %smc_conn_lgr_valid.exit.thread.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1443)
  %cmp.i436 = icmp slt i32 %rc.1443, 0
  br i1 %cmp.i436, label %smc_conn_abort.exit.i.if.then.i438_crit_edge, label %lor.lhs.false.i

smc_conn_abort.exit.i.if.then.i438_crit_edge:     ; preds = %smc_conn_abort.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i438

lor.lhs.false.i:                                  ; preds = %smc_conn_abort.exit.i
  %call.i = tail call fastcc i32 @smc_switch_to_fallback(ptr noundef %add.ptr, i32 noundef %rc.1443) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i437 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i437, label %if.end.i, label %lor.lhs.false.i.if.then.i438_crit_edge

lor.lhs.false.i.if.then.i438_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i438

if.then.i438:                                     ; preds = %lor.lhs.false.i.if.then.i438_crit_edge, %smc_conn_abort.exit.i.if.then.i438_crit_edge
  tail call fastcc void @smc_listen_out_err(ptr noundef %add.ptr) #15
  br label %out_free

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %rc.1443)
  %cond = icmp eq i32 %rc.1443, 83886080
  br i1 %cond, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @smc_clc_send_decline(ptr noundef %add.ptr, i32 noundef %rc.1443, i8 noundef zeroext %proposal_version.1444) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_listen_out_err(ptr noundef %add.ptr) #15
  br label %out_free

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %skc_state.i.i = getelementptr i8, ptr %work, i32 -1626
  %109 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %110)
  %cmp.i.i = icmp eq i8 %110, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end8.i.smc_listen_out_connected.exit.i_crit_edge

if.end8.i.smc_listen_out_connected.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_listen_out_connected.exit.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store volatile i8 1, ptr %skc_state.i.i, align 2
  br label %smc_listen_out_connected.exit.i

smc_listen_out_connected.exit.i:                  ; preds = %if.then.i.i, %if.end8.i.smc_listen_out_connected.exit.i_crit_edge
  tail call fastcc void @smc_listen_out(ptr noundef %add.ptr) #15
  br label %out_free

out_free:                                         ; preds = %smc_listen_out_connected.exit.i, %if.then6.i, %if.then.i438, %do.end324, %if.else265.out_free_crit_edge, %do.end258, %do.end192, %do.end125
  %ini.1 = phi ptr [ %call7.i.i425, %if.else265.out_free_crit_edge ], [ %call7.i.i425, %do.end192 ], [ %call7.i.i425, %do.end324 ], [ %call7.i.i425, %do.end258 ], [ %call7.i.i425, %do.end125 ], [ %ini.0445, %if.then.i438 ], [ %ini.0445, %if.then6.i ], [ %ini.0445, %smc_listen_out_connected.exit.i ]
  tail call void @kfree(ptr noundef %ini.1) #15
  tail call void @kfree(ptr noundef %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %smc_listen_out_connected.exit424, %if.then9, %smc_listen_out_connected.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_listen_out_err(ptr noundef %new_smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %new_smc, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !166
  %smc = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc, align 4
  %srv_hshake_err_cnt = getelementptr inbounds %struct.smc_stats, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %srv_hshake_err_cnt to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !153) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %add15 = add i64 %14, 1
  store i64 %add15, ptr %12, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !167
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end30_crit_edge, !prof !164

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #15, !srcloc !168
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %new_smc, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp38 = icmp eq i8 %17, 2
  br i1 %cmp38, label %if.then40, label %do.end30.if.end42_crit_edge

do.end30.if.end42_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then40:                                        ; preds = %do.end30
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %new_smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end42_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.if.end42_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %if.end42

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %new_smc) #15
  br label %if.end42

if.end42:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end42_crit_edge, %do.end30.if.end42_crit_edge
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 7, ptr %skc_state, align 2
  tail call fastcc void @smc_listen_out(ptr noundef %new_smc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_listen_v2_check(ptr noundef readonly %pclc, ptr nocapture noundef %ini) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %typev1 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %pclc, i32 0, i32 3
  %0 = ptrtoint ptr %typev1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %typev1, align 1
  %bf.clear = and i8 %bf.load, 3
  %smc_type_v1 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %1 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.clear, ptr %smc_type_v1, align 1
  %bf.load2 = load i8, ptr %typev1, align 1
  %bf.lshr = lshr i8 %bf.load2, 2
  %bf.clear3 = and i8 %bf.lshr, 3
  %smc_type_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 2
  %2 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.clear3, ptr %smc_type_v2, align 2
  %3 = and i8 %bf.load, 1
  %smcd_version = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 23
  %4 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %smcd_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp.i = icmp eq i8 %bf.clear, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear)
  %cmp1.i = icmp eq i8 %bf.clear, 3
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  %conv12 = zext i1 %spec.select.i to i8
  %smcr_version = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 8
  %5 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %smcr_version, align 4
  %6 = ptrtoint ptr %typev1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load14 = load i8, ptr %typev1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load14)
  %cmp = icmp ugt i8 %bf.load14, 31
  br i1 %cmp, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then:                                          ; preds = %entry
  %conv19 = zext i8 %bf.clear3 to i32
  %7 = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %8 = or i8 %3, 2
  %9 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %smcd_version, align 8
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %10 = zext i32 %conv19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %conv19, label %if.end.if.end34_crit_edge [
    i32 3, label %if.end.if.then28_crit_edge
    i32 0, label %if.end.if.then28_crit_edge14
  ]

if.end.if.then28_crit_edge14:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then28:                                        ; preds = %if.end.if.then28_crit_edge, %if.end.if.then28_crit_edge14
  %11 = or i8 %conv12, 2
  %12 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %smcr_version, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %13 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %smcd_version, align 8
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end34
  %16 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %smcr_version, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40.not = icmp eq i8 %18, 0
  br i1 %tobool40.not, label %land.lhs.true.outthread-pre-split_crit_edge, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true.outthread-pre-split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %outthread-pre-split

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %19 = ptrtoint ptr %typev1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i = load i8, ptr %typev1, align 1
  %20 = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %.not.i.i = icmp eq i8 %20, 0
  br i1 %.not.i.i, label %smc_get_clc_msg_smcd.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end42
  %iparea_offset.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 2
  %21 = ptrtoint ptr %iparea_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %iparea_offset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %22)
  %cmp.not.i.i = icmp ne i16 %22, 40
  %add.ptr.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.then45_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

land.lhs.true.i.i.if.then45_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45

smc_get_clc_msg_smcd.exit.i:                      ; preds = %if.end42
  %add.ptr.i.old.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %tobool.not.old.i = icmp eq ptr %add.ptr.i.old.i, null
  br i1 %tobool.not.old.i, label %smc_get_clc_msg_smcd.exit.i.if.then45_crit_edge, label %smc_get_clc_msg_smcd.exit.i.lor.lhs.false.i_crit_edge

smc_get_clc_msg_smcd.exit.i.lor.lhs.false.i_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

smc_get_clc_msg_smcd.exit.i.if.then45_crit_edge:  ; preds = %smc_get_clc_msg_smcd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45

lor.lhs.false.i:                                  ; preds = %smc_get_clc_msg_smcd.exit.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.i.lor.lhs.false.i_crit_edge
  %v2_ext_offset.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %v2_ext_offset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %v2_ext_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool1.not.i = icmp eq i16 %24, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then45_crit_edge, label %smc_get_clc_v2_ext.exit

lor.lhs.false.i.if.then45_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45

smc_get_clc_v2_ext.exit:                          ; preds = %lor.lhs.false.i
  %add.ptr2.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 4
  %conv.i = zext i16 %24 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv.i
  %tobool44.not = icmp eq ptr %add.ptr4.i, null
  br i1 %tobool44.not, label %smc_get_clc_v2_ext.exit.if.then45_crit_edge, label %if.end.i6

smc_get_clc_v2_ext.exit.if.then45_crit_edge:      ; preds = %smc_get_clc_v2_ext.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45

if.then45:                                        ; preds = %smc_get_clc_v2_ext.exit.if.then45_crit_edge, %lor.lhs.false.i.if.then45_crit_edge, %smc_get_clc_msg_smcd.exit.i.if.then45_crit_edge, %land.lhs.true.i.i.if.then45_crit_edge
  %25 = and i8 %14, -3
  %26 = ptrtoint ptr %smcd_version to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %smcd_version, align 8
  %27 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %smcr_version, align 4
  %29 = and i8 %28, -3
  store i8 %29, ptr %smcr_version, align 4
  br label %out

if.end.i6:                                        ; preds = %smc_get_clc_v2_ext.exit
  %smcd_v2_ext_offset.i = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %add.ptr4.i, i32 0, i32 5
  %30 = ptrtoint ptr %smcd_v2_ext_offset.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %smcd_v2_ext_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool1.not.i5 = icmp eq i16 %31, 0
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 8
  %conv.i7 = zext i16 %31 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr5.i, i32 %conv.i7
  br i1 %tobool.not, label %if.end.i6.if.end89_crit_edge, label %if.then60

if.end.i6.if.end89_crit_edge:                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then60:                                        ; preds = %if.end.i6
  %call61 = tail call zeroext i1 @smc_ism_is_v2_capable() #15
  br i1 %call61, label %if.else, label %if.then60.if.end89.sink.split_crit_edge

if.then60.if.end89.sink.split_crit_edge:          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89.sink.split

if.else:                                          ; preds = %if.then60
  %tobool67.not12 = icmp eq ptr %add.ptr8.i, null
  %tobool67.not = select i1 %tobool1.not.i5, i1 true, i1 %tobool67.not12
  br i1 %tobool67.not, label %if.else.if.end89.sink.split_crit_edge, label %if.else73

if.else.if.end89.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89.sink.split

if.else73:                                        ; preds = %if.else
  %32 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool75.not = icmp eq i8 %33, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.else73.if.end89_crit_edge

if.else73.if.end89_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

land.lhs.true76:                                  ; preds = %if.else73
  %flag = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %add.ptr4.i, i32 0, i32 3
  %34 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load78 = load i8, ptr %flag, align 1
  %bf.clear79 = and i8 %bf.load78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear79)
  %tobool80.not = icmp eq i8 %bf.clear79, 0
  br i1 %tobool80.not, label %land.lhs.true76.if.end89.sink.split_crit_edge, label %land.lhs.true76.if.end89_crit_edge

land.lhs.true76.if.end89_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

land.lhs.true76.if.end89.sink.split_crit_edge:    ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %land.lhs.true76.if.end89.sink.split_crit_edge, %if.else.if.end89.sink.split_crit_edge, %if.then60.if.end89.sink.split_crit_edge
  %rc.0.ph = phi i32 [ 50528259, %if.then60.if.end89.sink.split_crit_edge ], [ 50528261, %if.else.if.end89.sink.split_crit_edge ], [ 50528264, %land.lhs.true76.if.end89.sink.split_crit_edge ]
  %35 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %smcd_version, align 8
  %37 = and i8 %36, -3
  store i8 %37, ptr %smcd_version, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %land.lhs.true76.if.end89_crit_edge, %if.else73.if.end89_crit_edge, %if.end.i6.if.end89_crit_edge
  %rc.0 = phi i32 [ 50397184, %if.else73.if.end89_crit_edge ], [ 50397184, %land.lhs.true76.if.end89_crit_edge ], [ 50397184, %if.end.i6.if.end89_crit_edge ], [ %rc.0.ph, %if.end89.sink.split ]
  %38 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %smcr_version, align 4
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool93.not = icmp eq i8 %40, 0
  br i1 %tobool93.not, label %if.end89.outthread-pre-split_crit_edge, label %if.then94

if.end89.outthread-pre-split_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %outthread-pre-split

if.then94:                                        ; preds = %if.end89
  %41 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool97.not = icmp eq i8 %42, 0
  br i1 %tobool97.not, label %if.then98, label %if.then94.outthread-pre-split_crit_edge

if.then94.outthread-pre-split_crit_edge:          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  br label %outthread-pre-split

if.then98:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  %and101 = and i8 %39, -3
  %43 = ptrtoint ptr %smcr_version to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and101, ptr %smcr_version, align 4
  br label %outthread-pre-split

outthread-pre-split:                              ; preds = %if.then98, %if.then94.outthread-pre-split_crit_edge, %if.end89.outthread-pre-split_crit_edge, %land.lhs.true.outthread-pre-split_crit_edge
  %rc.1.ph = phi i32 [ 50397184, %land.lhs.true.outthread-pre-split_crit_edge ], [ %rc.0, %if.end89.outthread-pre-split_crit_edge ], [ 50528264, %if.then98 ], [ %rc.0, %if.then94.outthread-pre-split_crit_edge ]
  %44 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %smcd_version, align 8
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.then45
  %45 = phi i8 [ %.pr, %outthread-pre-split ], [ %25, %if.then45 ]
  %rc.1 = phi i32 [ %rc.1.ph, %outthread-pre-split ], [ 50528260, %if.then45 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool106.not = icmp eq i8 %45, 0
  br i1 %tobool106.not, label %land.lhs.true107, label %out.if.end111_crit_edge

out.if.end111_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

land.lhs.true107:                                 ; preds = %out
  %46 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %smcr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool109.not = icmp eq i8 %47, 0
  br i1 %tobool109.not, label %land.lhs.true107.cleanup_crit_edge, label %land.lhs.true107.if.end111_crit_edge

land.lhs.true107.if.end111_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

land.lhs.true107.cleanup_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end111:                                        ; preds = %land.lhs.true107.if.end111_crit_edge, %out.if.end111_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %land.lhs.true107.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end111 ], [ %rc.1, %land.lhs.true107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_listen_find_device(ptr noundef %new_smc, ptr noundef %pclc, ptr noundef %ini) unnamed_addr #0 align 64 {
entry:
  %eid.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eid.i) #15
  %0 = ptrtoint ptr %eid.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %eid.i, align 4
  %smcd_version1.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 23
  %1 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %smcd_version1.i, align 8
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.not_found.i_crit_edge, label %lor.lhs.false.i

entry.not_found.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i

lor.lhs.false.i:                                  ; preds = %entry
  %smc_type_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 2
  %4 = ptrtoint ptr %smc_type_v2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smc_type_v2.i, align 2
  %6 = and i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %if.end.i, label %lor.lhs.false.i.not_found.i_crit_edge

lor.lhs.false.i.not_found.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %typev1.i.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %pclc, i32 0, i32 3
  %8 = ptrtoint ptr %typev1.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %typev1.i.i, align 1
  %9 = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %.not.i.i = icmp eq i8 %9, 0
  br i1 %.not.i.i, label %smc_get_clc_msg_smcd.exit.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %iparea_offset.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 2
  %10 = ptrtoint ptr %iparea_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %iparea_offset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %11)
  %cmp.not.i.i = icmp eq i16 %11, 40
  %add.ptr.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %spec.select.i = select i1 %cmp.not.i.i, ptr %add.ptr.i.i, ptr null
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %11)
  %cmp.not.i.i.i = icmp ne i16 %11, 40
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.not.i.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_smcd_v2_ext.exit.i

smc_get_clc_msg_smcd.exit.i.i:                    ; preds = %if.end.i
  %add.ptr.i161.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %tobool.not.old.i.i = icmp eq ptr %add.ptr.i161.i, null
  br i1 %tobool.not.old.i.i, label %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, label %smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge

smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_smcd_v2_ext.exit.i

lor.lhs.false.i.i:                                ; preds = %smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i157.i = phi ptr [ %add.ptr.i161.i, %smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge ]
  %v2_ext_offset.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %v2_ext_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v2_ext_offset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, label %smc_get_clc_v2_ext.exit.i

lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_smcd_v2_ext.exit.i

smc_get_clc_v2_ext.exit.i:                        ; preds = %lor.lhs.false.i.i
  %add.ptr2.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %conv.i.i
  %tobool.not.i91.i = icmp eq ptr %add.ptr4.i.i, null
  br i1 %tobool.not.i91.i, label %smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, label %if.end.i93.i

smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge: ; preds = %smc_get_clc_v2_ext.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_smcd_v2_ext.exit.i

if.end.i93.i:                                     ; preds = %smc_get_clc_v2_ext.exit.i
  %smcd_v2_ext_offset.i.i = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %add.ptr4.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %smcd_v2_ext_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %smcd_v2_ext_offset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.not.i92.i = icmp eq i16 %15, 0
  br i1 %tobool1.not.i92.i, label %if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, label %if.end3.i.i

if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge: ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_smcd_v2_ext.exit.i

if.end3.i.i:                                      ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 8
  %conv.i94.i = zext i16 %15 to i32
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %conv.i94.i
  br label %smc_get_clc_smcd_v2_ext.exit.i

smc_get_clc_smcd_v2_ext.exit.i:                   ; preds = %if.end3.i.i, %if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, %smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, %lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge, %land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge
  %retval.0.i90167.i = phi ptr [ %add.ptr4.i.i, %if.end3.i.i ], [ null, %smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ %add.ptr4.i.i, %if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ]
  %retval.0.i158166.i = phi ptr [ %retval.0.i157.i, %if.end3.i.i ], [ %retval.0.i157.i, %smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ %retval.0.i157.i, %if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ %retval.0.i157.i, %lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ]
  %retval.0.i95.i = phi ptr [ %add.ptr8.i.i, %if.end3.i.i ], [ null, %smc_get_clc_v2_ext.exit.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %if.end.i93.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ], [ null, %land.lhs.true.i.i.smc_get_clc_smcd_v2_ext.exit.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  %chid.i = getelementptr inbounds %struct.smc_clc_smcd_gid_chid, ptr %retval.0.i158166.i, i32 0, i32 1
  %16 = ptrtoint ptr %chid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %chid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i = icmp eq i16 %17, 0
  br i1 %tobool6.not.i, label %smc_get_clc_smcd_v2_ext.exit.i.if.end11.i_crit_edge, label %if.then7.i

smc_get_clc_smcd_v2_ext.exit.i.if.end11.i_crit_edge: ; preds = %smc_get_clc_smcd_v2_ext.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then7.i:                                       ; preds = %smc_get_clc_smcd_v2_ext.exit.i
  %18 = ptrtoint ptr %retval.0.i158166.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %retval.0.i158166.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn34.i.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not36.i.i = icmp eq ptr %.pn34.i.i, @smcd_dev_list
  br i1 %cmp.not36.i.i, label %if.then7.i.if.end11.i_crit_edge, label %for.body.lr.ph.i.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.body.lr.ph.i.i:                               ; preds = %if.then7.i
  %arrayidx.i30.i.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn37.i.i = phi ptr [ %.pn34.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %smcd.038.i.i = getelementptr i8, ptr %.pn37.i.i, i32 -952
  %going_away.i.i = getelementptr i8, ptr %.pn37.i.i, i32 196
  %20 = ptrtoint ptr %going_away.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i96.i = load i8, ptr %going_away.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i96.i)
  %tobool.not.i97.i = icmp sgt i8 %bf.load.i96.i, -1
  br i1 %tobool.not.i97.i, label %if.end2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end2.i.i:                                      ; preds = %for.body.i.i
  %call3.i.i = tail call zeroext i16 @smc_ism_get_chid(ptr noundef %smcd.038.i.i) #15
  call void @__sanitizer_cov_trace_cmp2(i16 %call3.i.i, i16 %17)
  %cmp5.i.i = icmp eq i16 %call3.i.i, %17
  br i1 %cmp5.i.i, label %land.lhs.true.i99.i, label %if.end2.i.i.for.inc.i.i_crit_edge

if.end2.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i99.i:                              ; preds = %if.end2.i.i
  %call7.i.i = tail call i32 @smc_ism_cantalk(i64 noundef %19, i16 noundef zeroext 8191, ptr noundef %smcd.038.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %land.lhs.true.i99.i.for.inc.i.i_crit_edge

land.lhs.true.i99.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 18, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %arrayidx.i.i, align 8
  %22 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %smcd.038.i.i, ptr %arrayidx.i30.i.i, align 4
  br label %if.end11.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i99.i.for.inc.i.i_crit_edge, %if.end2.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %23 = ptrtoint ptr %.pn37.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i = load ptr, ptr %.pn37.i.i, align 4
  %cmp.not.i100.i = icmp eq ptr %.pn.i.i, @smcd_dev_list
  br i1 %cmp.not.i100.i, label %for.inc.i.i.if.end11.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end11.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.inc.i.i.if.end11.i_crit_edge, %if.then9.i.i, %if.then7.i.if.end11.i_crit_edge, %smc_get_clc_smcd_v2_ext.exit.i.if.end11.i_crit_edge
  %matches.1.i = phi i32 [ 0, %smc_get_clc_smcd_v2_ext.exit.i.if.end11.i_crit_edge ], [ 0, %if.then7.i.if.end11.i_crit_edge ], [ 1, %if.then9.i.i ], [ 0, %for.inc.i.i.if.end11.i_crit_edge ]
  %ism_gid_cnt.i = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %retval.0.i90167.i, i32 0, i32 1
  %24 = ptrtoint ptr %ism_gid_cnt.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ism_gid_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not174.i = icmp eq i8 %25, 0
  br i1 %cmp.not174.i, label %if.end11.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %arrayidx.i30.i103.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %smc_check_ism_v2_match.exit137.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0176.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %smc_check_ism_v2_match.exit137.i.for.body.i_crit_edge ]
  %matches.2175.i = phi i32 [ %matches.1.i, %for.body.lr.ph.i ], [ %matches.3.i, %smc_check_ism_v2_match.exit137.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.0176.i, -1
  %arrayidx.i = getelementptr %struct.smc_clc_smcd_v2_extension, ptr %retval.0.i95.i, i32 0, i32 2, i32 %sub.i
  %chid14.i = getelementptr %struct.smc_clc_smcd_v2_extension, ptr %retval.0.i95.i, i32 0, i32 2, i32 %sub.i, i32 1
  %26 = ptrtoint ptr %chid14.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %chid14.i, align 1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn34.i101.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not36.i102.i = icmp eq ptr %.pn34.i101.i, @smcd_dev_list
  br i1 %cmp.not36.i102.i, label %for.body.i.smc_check_ism_v2_match.exit137.i_crit_edge, label %for.body.lr.ph.i104.i

for.body.i.smc_check_ism_v2_match.exit137.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_check_ism_v2_match.exit137.i

for.body.lr.ph.i104.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matches.2175.i)
  %cmp4.i.i111.i = icmp sgt i32 %matches.2175.i, 0
  br label %for.body.i110.i

for.body.i110.i:                                  ; preds = %for.inc.i136.i.for.body.i110.i_crit_edge, %for.body.lr.ph.i104.i
  %.pn37.i105.i = phi ptr [ %.pn34.i101.i, %for.body.lr.ph.i104.i ], [ %.pn.i134.i, %for.inc.i136.i.for.body.i110.i_crit_edge ]
  %smcd.038.i106.i = getelementptr i8, ptr %.pn37.i105.i, i32 -952
  %going_away.i107.i = getelementptr i8, ptr %.pn37.i105.i, i32 196
  %30 = ptrtoint ptr %going_away.i107.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i108.i = load i8, ptr %going_away.i107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i108.i)
  %tobool.not.i109.i = icmp sgt i8 %bf.load.i108.i, -1
  br i1 %tobool.not.i109.i, label %if.end.i112.i, label %for.body.i110.i.for.inc.i136.i_crit_edge

for.body.i110.i.for.inc.i136.i_crit_edge:         ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i136.i

if.end.i112.i:                                    ; preds = %for.body.i110.i
  br i1 %cmp4.i.i111.i, label %for.body.i.preheader.i114.i, label %if.end.i112.i.if.end2.i126.i_crit_edge

if.end.i112.i.if.end2.i126.i_crit_edge:           ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i126.i

for.body.i.preheader.i114.i:                      ; preds = %if.end.i112.i
  %31 = ptrtoint ptr %arrayidx.i30.i103.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i30.i103.i, align 4
  %cmp1.i31.i113.i = icmp eq ptr %32, %smcd.038.i106.i
  br i1 %cmp1.i31.i113.i, label %for.body.i.preheader.i114.i.for.inc.i136.i_crit_edge, label %for.body.i.preheader.i114.i.for.cond.i.i118.i_crit_edge

for.body.i.preheader.i114.i.for.cond.i.i118.i_crit_edge: ; preds = %for.body.i.preheader.i114.i
  br label %for.cond.i.i118.i

for.body.i.preheader.i114.i.for.inc.i136.i_crit_edge: ; preds = %for.body.i.preheader.i114.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i136.i

for.cond.i.i118.i:                                ; preds = %for.body.i.i121.i.for.cond.i.i118.i_crit_edge, %for.body.i.preheader.i114.i.for.cond.i.i118.i_crit_edge
  %i.05.i32.i115.i = phi i32 [ %inc.i.i116.i, %for.body.i.i121.i.for.cond.i.i118.i_crit_edge ], [ 0, %for.body.i.preheader.i114.i.for.cond.i.i118.i_crit_edge ]
  %inc.i.i116.i = add nuw nsw i32 %i.05.i32.i115.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i116.i, i32 %matches.2175.i)
  %exitcond.not.i.i117.i = icmp eq i32 %inc.i.i116.i, %matches.2175.i
  br i1 %exitcond.not.i.i117.i, label %for.cond.i.i118.i.if.end2.i126.i_crit_edge, label %for.body.i.i121.i

for.cond.i.i118.i.if.end2.i126.i_crit_edge:       ; preds = %for.cond.i.i118.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i126.i

for.body.i.i121.i:                                ; preds = %for.cond.i.i118.i
  %arrayidx.i.i119.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %inc.i.i116.i
  %33 = ptrtoint ptr %arrayidx.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i119.i, align 4
  %cmp1.i.i120.i = icmp eq ptr %34, %smcd.038.i106.i
  br i1 %cmp1.i.i120.i, label %smc_is_already_selected.exit.i123.i, label %for.body.i.i121.i.for.cond.i.i118.i_crit_edge

for.body.i.i121.i.for.cond.i.i118.i_crit_edge:    ; preds = %for.body.i.i121.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i118.i

smc_is_already_selected.exit.i123.i:              ; preds = %for.body.i.i121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i116.i, i32 %matches.2175.i)
  %cmp.i.le.i122.i = icmp slt i32 %inc.i.i116.i, %matches.2175.i
  br i1 %cmp.i.le.i122.i, label %smc_is_already_selected.exit.i123.i.for.inc.i136.i_crit_edge, label %smc_is_already_selected.exit.i123.i.if.end2.i126.i_crit_edge

smc_is_already_selected.exit.i123.i.if.end2.i126.i_crit_edge: ; preds = %smc_is_already_selected.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i126.i

smc_is_already_selected.exit.i123.i.for.inc.i136.i_crit_edge: ; preds = %smc_is_already_selected.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i136.i

if.end2.i126.i:                                   ; preds = %smc_is_already_selected.exit.i123.i.if.end2.i126.i_crit_edge, %for.cond.i.i118.i.if.end2.i126.i_crit_edge, %if.end.i112.i.if.end2.i126.i_crit_edge
  %call3.i124.i = tail call zeroext i16 @smc_ism_get_chid(ptr noundef %smcd.038.i106.i) #15
  call void @__sanitizer_cov_trace_cmp2(i16 %call3.i124.i, i16 %27)
  %cmp5.i125.i = icmp eq i16 %call3.i124.i, %27
  br i1 %cmp5.i125.i, label %land.lhs.true.i129.i, label %if.end2.i126.i.for.inc.i136.i_crit_edge

if.end2.i126.i.for.inc.i136.i_crit_edge:          ; preds = %if.end2.i126.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i136.i

land.lhs.true.i129.i:                             ; preds = %if.end2.i126.i
  %call7.i127.i = tail call i32 @smc_ism_cantalk(i64 noundef %29, i16 noundef zeroext 8191, ptr noundef %smcd.038.i106.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i127.i)
  %tobool8.not.i128.i = icmp eq i32 %call7.i127.i, 0
  br i1 %tobool8.not.i128.i, label %if.then9.i133.i, label %land.lhs.true.i129.i.for.inc.i136.i_crit_edge

land.lhs.true.i129.i.for.inc.i136.i_crit_edge:    ; preds = %land.lhs.true.i129.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i136.i

if.then9.i133.i:                                  ; preds = %land.lhs.true.i129.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i130.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 18, i32 %matches.2175.i
  %35 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %29, ptr %arrayidx.i130.i, align 8
  %arrayidx10.i131.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %matches.2175.i
  %36 = ptrtoint ptr %arrayidx10.i131.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %smcd.038.i106.i, ptr %arrayidx10.i131.i, align 4
  %inc.i132.i = add i32 %matches.2175.i, 1
  br label %smc_check_ism_v2_match.exit137.i

for.inc.i136.i:                                   ; preds = %land.lhs.true.i129.i.for.inc.i136.i_crit_edge, %if.end2.i126.i.for.inc.i136.i_crit_edge, %smc_is_already_selected.exit.i123.i.for.inc.i136.i_crit_edge, %for.body.i.preheader.i114.i.for.inc.i136.i_crit_edge, %for.body.i110.i.for.inc.i136.i_crit_edge
  %37 = ptrtoint ptr %.pn37.i105.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i134.i = load ptr, ptr %.pn37.i105.i, align 4
  %cmp.not.i135.i = icmp eq ptr %.pn.i134.i, @smcd_dev_list
  br i1 %cmp.not.i135.i, label %for.inc.i136.i.smc_check_ism_v2_match.exit137.i_crit_edge, label %for.inc.i136.i.for.body.i110.i_crit_edge

for.inc.i136.i.for.body.i110.i_crit_edge:         ; preds = %for.inc.i136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i110.i

for.inc.i136.i.smc_check_ism_v2_match.exit137.i_crit_edge: ; preds = %for.inc.i136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_check_ism_v2_match.exit137.i

smc_check_ism_v2_match.exit137.i:                 ; preds = %for.inc.i136.i.smc_check_ism_v2_match.exit137.i_crit_edge, %if.then9.i133.i, %for.body.i.smc_check_ism_v2_match.exit137.i_crit_edge
  %matches.3.i = phi i32 [ %matches.2175.i, %for.body.i.smc_check_ism_v2_match.exit137.i_crit_edge ], [ %inc.i132.i, %if.then9.i133.i ], [ %matches.2175.i, %for.inc.i136.i.smc_check_ism_v2_match.exit137.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0176.i, 1
  %38 = ptrtoint ptr %ism_gid_cnt.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ism_gid_cnt.i, align 1
  %conv12.i = zext i8 %39 to i32
  %cmp.not.not.i = icmp ult i32 %i.0176.i, %conv12.i
  br i1 %cmp.not.not.i, label %smc_check_ism_v2_match.exit137.i.for.body.i_crit_edge, label %smc_check_ism_v2_match.exit137.i.for.end.i_crit_edge

smc_check_ism_v2_match.exit137.i.for.end.i_crit_edge: ; preds = %smc_check_ism_v2_match.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

smc_check_ism_v2_match.exit137.i.for.body.i_crit_edge: ; preds = %smc_check_ism_v2_match.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %smc_check_ism_v2_match.exit137.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %matches.2.lcssa.i = phi i32 [ %matches.1.i, %if.end11.i.for.end.i_crit_edge ], [ %matches.3.i, %smc_check_ism_v2_match.exit137.i.for.end.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  %ism_dev.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %40 = ptrtoint ptr %ism_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ism_dev.i, align 8
  %tobool20.not.i = icmp eq ptr %41, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end22.i

if.then21.i:                                      ; preds = %for.end.i
  %rc1.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %42 = ptrtoint ptr %rc1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rc1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i138.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i138.i, label %if.then.i.i, label %if.then21.i.not_found.i_crit_edge

if.then21.i.not_found.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i

if.then.i.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %rc1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 50528263, ptr %rc1.i.i, align 8
  br label %not_found.i

if.end22.i:                                       ; preds = %for.end.i
  call void @smc_ism_get_system_eid(ptr noundef nonnull %eid.i) #15
  %negotiated_eid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 7
  %45 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eid.i, align 4
  %call24.i = call zeroext i1 @smc_clc_match_eid(ptr noundef %negotiated_eid.i, ptr noundef %retval.0.i90167.i, ptr noundef %retval.0.i95.i, ptr noundef %46) #15
  br i1 %call24.i, label %if.end26.i, label %if.end22.i.not_found.i_crit_edge

if.end22.i.not_found.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i

if.end26.i:                                       ; preds = %if.end22.i
  %47 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %smcd_version1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matches.2.lcssa.i)
  %cmp29177.not.i = icmp eq i32 %matches.2.lcssa.i, 0
  br i1 %cmp29177.not.i, label %if.end26.i.for.end40.i_crit_edge, label %for.body31.lr.ph.i

if.end26.i.for.end40.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end40.i

for.body31.lr.ph.i:                               ; preds = %if.end26.i
  %ism_selected.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %conn1.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6
  %lgr2.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 1
  %first_contact_local.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %alert_token_local.i.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 3
  %rc1.i143.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  br label %for.body31.i

for.body31.i:                                     ; preds = %smc_find_ism_store_rc.exit147.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.1178.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc39.i, %smc_find_ism_store_rc.exit147.i.for.body31.i_crit_edge ]
  %49 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %smcd_version1.i, align 8
  %50 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ini, align 8
  %conv33.i = trunc i32 %i.1178.i to i8
  %51 = ptrtoint ptr %ism_selected.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv33.i, ptr %ism_selected.i, align 1
  %call.i.i = call i32 @smc_conn_create(ptr noundef %new_smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i140.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i140.i, label %if.end.i141.i, label %for.body31.i.if.then36.i_crit_edge

for.body31.i.if.then36.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36.i

if.end.i141.i:                                    ; preds = %for.body31.i
  %call1.i.i = call i32 @smc_buf_create(ptr noundef %new_smc, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i141.i.smc_find_ism_v2_device_serv.exit_crit_edge, label %if.then3.i.i

if.end.i141.i.smc_find_ism_v2_device_serv.exit_crit_edge: ; preds = %if.end.i141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_ism_v2_device_serv.exit

if.then3.i.i:                                     ; preds = %if.end.i141.i
  %52 = ptrtoint ptr %lgr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lgr2.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i.i, label %smc_conn_lgr_valid.exit.thread.i.i.i, label %smc_conn_lgr_valid.exit.i.i.i

smc_conn_lgr_valid.exit.thread.i.i.i:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @smc_conn_free(ptr noundef %conn1.i.i.i) #15
  br label %smc_conn_abort.exit.i.i

smc_conn_lgr_valid.exit.i.i.i:                    ; preds = %if.then3.i.i
  %54 = ptrtoint ptr %first_contact_local.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %first_contact_local.i.i, align 4
  %56 = ptrtoint ptr %alert_token_local.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %alert_token_local.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool1.i.i.i.i = icmp eq i32 %57, 0
  call void @smc_conn_free(ptr noundef %conn1.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i.i = icmp eq i8 %55, 0
  %brmerge.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool1.i.i.i.i
  br i1 %brmerge.i.i.i, label %smc_conn_lgr_valid.exit.i.i.i.smc_conn_abort.exit.i.i_crit_edge, label %if.then4.i.i.i

smc_conn_lgr_valid.exit.i.i.i.smc_conn_abort.exit.i.i_crit_edge: ; preds = %smc_conn_lgr_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_abort.exit.i.i

if.then4.i.i.i:                                   ; preds = %smc_conn_lgr_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @smc_lgr_cleanup_early(ptr noundef nonnull %53) #15
  br label %smc_conn_abort.exit.i.i

smc_conn_abort.exit.i.i:                          ; preds = %if.then4.i.i.i, %smc_conn_lgr_valid.exit.i.i.i.smc_conn_abort.exit.i.i_crit_edge, %smc_conn_lgr_valid.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, -28
  %cond.i.i = select i1 %cmp.i.i, i32 51183616, i32 16842752
  br label %if.then36.i

if.then36.i:                                      ; preds = %smc_conn_abort.exit.i.i, %for.body31.i.if.then36.i_crit_edge
  %retval.0.i142.ph.i = phi i32 [ %call.i.i, %for.body31.i.if.then36.i_crit_edge ], [ %cond.i.i, %smc_conn_abort.exit.i.i ]
  %58 = ptrtoint ptr %rc1.i143.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rc1.i143.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i144.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i144.i, label %if.then.i145.i, label %if.then36.i.smc_find_ism_store_rc.exit147.i_crit_edge

if.then36.i.smc_find_ism_store_rc.exit147.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_ism_store_rc.exit147.i

if.then.i145.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %rc1.i143.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i142.ph.i, ptr %rc1.i143.i, align 8
  br label %smc_find_ism_store_rc.exit147.i

smc_find_ism_store_rc.exit147.i:                  ; preds = %if.then.i145.i, %if.then36.i.smc_find_ism_store_rc.exit147.i_crit_edge
  %inc39.i = add nuw i32 %i.1178.i, 1
  %exitcond.not.i = icmp eq i32 %inc39.i, %matches.2.lcssa.i
  br i1 %exitcond.not.i, label %smc_find_ism_store_rc.exit147.i.for.end40.i_crit_edge, label %smc_find_ism_store_rc.exit147.i.for.body31.i_crit_edge

smc_find_ism_store_rc.exit147.i.for.body31.i_crit_edge: ; preds = %smc_find_ism_store_rc.exit147.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body31.i

smc_find_ism_store_rc.exit147.i.for.end40.i_crit_edge: ; preds = %smc_find_ism_store_rc.exit147.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end40.i

for.end40.i:                                      ; preds = %smc_find_ism_store_rc.exit147.i.for.end40.i_crit_edge, %if.end26.i.for.end40.i_crit_edge
  %61 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %48, ptr %smcd_version1.i, align 8
  %62 = ptrtoint ptr %negotiated_eid.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %negotiated_eid.i, align 4
  br label %not_found.i

not_found.i:                                      ; preds = %for.end40.i, %if.end22.i.not_found.i_crit_edge, %if.then.i.i, %if.then21.i.not_found.i_crit_edge, %lor.lhs.false.i.not_found.i_crit_edge, %entry.not_found.i_crit_edge
  %63 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %smcd_version1.i, align 8
  %65 = and i8 %64, -3
  store i8 %65, ptr %smcd_version1.i, align 8
  %ism_dev48.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %66 = ptrtoint ptr %ism_dev48.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %ism_dev48.i, align 8
  %67 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ini, align 8
  br label %smc_find_ism_v2_device_serv.exit

smc_find_ism_v2_device_serv.exit:                 ; preds = %not_found.i, %if.end.i141.i.smc_find_ism_v2_device_serv.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eid.i) #15
  %ism_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %68 = ptrtoint ptr %ism_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ism_dev, align 8
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %if.end, label %smc_find_ism_v2_device_serv.exit.cleanup_crit_edge

smc_find_ism_v2_device_serv.exit.cleanup_crit_edge: ; preds = %smc_find_ism_v2_device_serv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_find_ism_v2_device_serv.exit
  %typev1.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %pclc, i32 0, i32 3
  %70 = ptrtoint ptr %typev1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i = load i8, ptr %typev1.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 2
  br i1 %cmp.i, label %if.end.if.end3.thread_crit_edge, label %if.end.i77

if.end.if.end3.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.thread

if.end.i77:                                       ; preds = %if.end
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 1
  %71 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clcsock.i, align 8
  %add.ptr.i.i73 = getelementptr i8, ptr %pclc, i32 40
  %iparea_offset.i.i74 = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 2
  %73 = ptrtoint ptr %iparea_offset.i.i74 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %iparea_offset.i.i74, align 2
  %conv.i.i75 = zext i16 %74 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i73, i32 %conv.i.i75
  %call2.i = call i32 @smc_clc_prfx_match(ptr noundef %72, ptr noundef %add.ptr1.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i76 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i76, label %if.end.i77.if.end3.thread_crit_edge, label %if.then2

if.end.i77.if.end3.thread_crit_edge:              ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.thread

if.then2:                                         ; preds = %if.end.i77
  %rc1.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %75 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rc1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i78 = icmp eq i32 %76, 0
  br i1 %tobool.not.i78, label %if.then.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %rc1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 50790400, ptr %rc1.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then.i, %if.then2.if.end3_crit_edge
  %78 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clcsock.i, align 8
  %call4 = call i32 @smc_vlan_by_tcpsk(ptr noundef %79, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end3.thread:                                   ; preds = %if.end.i77.if.end3.thread_crit_edge, %if.end.if.end3.thread_crit_edge
  %clcsock182 = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 1
  %80 = ptrtoint ptr %clcsock182 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clcsock182, align 8
  %call4183 = call i32 @smc_vlan_by_tcpsk(ptr noundef %81, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4183)
  %tobool5.not184 = icmp eq i32 %call4183, 0
  br i1 %tobool5.not184, label %if.then10, label %if.end3.thread.if.then6_crit_edge

if.end3.thread.if.then6_crit_edge:                ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then6:                                         ; preds = %if.end3.thread.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %rc = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %82 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool7.not = icmp eq i32 %83, 0
  %. = select i1 %tobool7.not, i32 50855936, i32 %83
  br label %cleanup

if.then10:                                        ; preds = %if.end3.thread
  %84 = ptrtoint ptr %typev1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i.i81 = load i8, ptr %typev1.i, align 1
  %85 = and i8 %bf.load.i.i81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %.not.i.i82 = icmp eq i8 %85, 0
  br i1 %.not.i.i82, label %if.then10.if.end.i.i_crit_edge, label %land.lhs.true.i.i85

if.then10.if.end.i.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i85:                              ; preds = %if.then10
  %iparea_offset.i.i83 = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 2
  %86 = ptrtoint ptr %iparea_offset.i.i83 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %iparea_offset.i.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %87)
  %cmp.not.i.i84 = icmp eq i16 %87, 40
  br i1 %cmp.not.i.i84, label %land.lhs.true.i.i85.if.end.i.i_crit_edge, label %land.lhs.true.i.i85.smc_get_clc_msg_smcd.exit.i_crit_edge

land.lhs.true.i.i85.smc_get_clc_msg_smcd.exit.i_crit_edge: ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_msg_smcd.exit.i

land.lhs.true.i.i85.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i85.if.end.i.i_crit_edge, %if.then10.if.end.i.i_crit_edge
  %add.ptr.i.i86 = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  br label %smc_get_clc_msg_smcd.exit.i

smc_get_clc_msg_smcd.exit.i:                      ; preds = %if.end.i.i, %land.lhs.true.i.i85.smc_get_clc_msg_smcd.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i86, %if.end.i.i ], [ null, %land.lhs.true.i.i85.smc_get_clc_msg_smcd.exit.i_crit_edge ]
  %88 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %smcd_version1.i, align 8
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i87 = icmp eq i8 %90, 0
  br i1 %tobool.not.i87, label %smc_get_clc_msg_smcd.exit.i.not_found.i111_crit_edge, label %lor.lhs.false.i88

smc_get_clc_msg_smcd.exit.i.not_found.i111_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i111

lor.lhs.false.i88:                                ; preds = %smc_get_clc_msg_smcd.exit.i
  %smc_type_v1.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %91 = ptrtoint ptr %smc_type_v1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %smc_type_v1.i, align 1
  %93 = and i8 %92, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %94 = icmp eq i8 %93, 1
  br i1 %94, label %if.end.i90, label %lor.lhs.false.i88.not_found.i111_crit_edge

lor.lhs.false.i88.not_found.i111_crit_edge:       ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i111

if.end.i90:                                       ; preds = %lor.lhs.false.i88
  %95 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %ini, align 8
  %96 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %retval.0.i.i, align 2
  %ism_peer_gid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 18
  %98 = ptrtoint ptr %ism_peer_gid.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %ism_peer_gid.i, align 8
  %99 = ptrtoint ptr %clcsock182 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clcsock182, align 8
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sk.i.i, align 16
  call void @smc_pnet_find_ism_resource(ptr noundef %102, ptr noundef %ini) #15
  %103 = ptrtoint ptr %ism_dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ism_dev, align 8
  %tobool.not.i.i89 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i89, label %if.end.i90.not_found.i111_crit_edge, label %if.end6.i

if.end.i90.not_found.i111_crit_edge:              ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i111

if.end6.i:                                        ; preds = %if.end.i90
  %call.i.i91 = call zeroext i16 @smc_ism_get_chid(ptr noundef nonnull %104) #15
  %ism_chid.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 20
  %105 = ptrtoint ptr %ism_chid.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %call.i.i91, ptr %ism_chid.i.i, align 4
  %ism_selected.i92 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %106 = ptrtoint ptr %ism_selected.i92 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %ism_selected.i92, align 1
  %call.i32.i = call i32 @smc_conn_create(ptr noundef %new_smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i34.i, label %if.end6.i.not_found.i111_crit_edge

if.end6.i.not_found.i111_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i111

if.end.i34.i:                                     ; preds = %if.end6.i
  %call1.i.i93 = call i32 @smc_buf_create(ptr noundef %new_smc, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i93)
  %tobool2.not.i.i94 = icmp eq i32 %call1.i.i93, 0
  br i1 %tobool2.not.i.i94, label %if.end.i34.i.if.end11_crit_edge, label %if.then3.i.i98

if.end.i34.i.if.end11_crit_edge:                  ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then3.i.i98:                                   ; preds = %if.end.i34.i
  %conn1.i.i.i95 = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6
  %lgr2.i.i.i96 = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 1
  %107 = ptrtoint ptr %lgr2.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lgr2.i.i.i96, align 4
  %tobool.not.i.i.i.i97 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i.i97, label %smc_conn_lgr_valid.exit.thread.i.i.i99, label %smc_conn_lgr_valid.exit.i.i.i105

smc_conn_lgr_valid.exit.thread.i.i.i99:           ; preds = %if.then3.i.i98
  call void @__sanitizer_cov_trace_pc() #17
  call void @smc_conn_free(ptr noundef %conn1.i.i.i95) #15
  br label %smc_conn_abort.exit.i.i109

smc_conn_lgr_valid.exit.i.i.i105:                 ; preds = %if.then3.i.i98
  %first_contact_local.i.i100 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %109 = ptrtoint ptr %first_contact_local.i.i100 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %first_contact_local.i.i100, align 4
  %alert_token_local.i.i.i.i101 = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 3
  %111 = ptrtoint ptr %alert_token_local.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %alert_token_local.i.i.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool1.i.i.i.i102 = icmp eq i32 %112, 0
  call void @smc_conn_free(ptr noundef %conn1.i.i.i95) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i.i103 = icmp eq i8 %110, 0
  %brmerge.i.i.i104 = select i1 %tobool.not.i.i.i103, i1 true, i1 %tobool1.i.i.i.i102
  br i1 %brmerge.i.i.i104, label %smc_conn_lgr_valid.exit.i.i.i105.smc_conn_abort.exit.i.i109_crit_edge, label %if.then4.i.i.i106

smc_conn_lgr_valid.exit.i.i.i105.smc_conn_abort.exit.i.i109_crit_edge: ; preds = %smc_conn_lgr_valid.exit.i.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_conn_abort.exit.i.i109

if.then4.i.i.i106:                                ; preds = %smc_conn_lgr_valid.exit.i.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  call void @smc_lgr_cleanup_early(ptr noundef nonnull %108) #15
  br label %smc_conn_abort.exit.i.i109

smc_conn_abort.exit.i.i109:                       ; preds = %if.then4.i.i.i106, %smc_conn_lgr_valid.exit.i.i.i105.smc_conn_abort.exit.i.i109_crit_edge, %smc_conn_lgr_valid.exit.thread.i.i.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call1.i.i93)
  %cmp.i.i107 = icmp eq i32 %call1.i.i93, -28
  %cond.i.i108 = select i1 %cmp.i.i107, i32 51183616, i32 16842752
  br label %not_found.i111

not_found.i111:                                   ; preds = %smc_conn_abort.exit.i.i109, %if.end6.i.not_found.i111_crit_edge, %if.end.i90.not_found.i111_crit_edge, %lor.lhs.false.i88.not_found.i111_crit_edge, %smc_get_clc_msg_smcd.exit.i.not_found.i111_crit_edge
  %rc.0.i = phi i32 [ 0, %lor.lhs.false.i88.not_found.i111_crit_edge ], [ 0, %smc_get_clc_msg_smcd.exit.i.not_found.i111_crit_edge ], [ 50528257, %if.end.i90.not_found.i111_crit_edge ], [ %call.i32.i, %if.end6.i.not_found.i111_crit_edge ], [ %cond.i.i108, %smc_conn_abort.exit.i.i109 ]
  %rc1.i.i110 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %113 = ptrtoint ptr %rc1.i.i110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rc1.i.i110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i36.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i36.i, label %if.then.i.i112, label %not_found.i111.if.end11.thread_crit_edge

not_found.i111.if.end11.thread_crit_edge:         ; preds = %not_found.i111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.then.i.i112:                                   ; preds = %not_found.i111
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %rc1.i.i110 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %rc.0.i, ptr %rc1.i.i110, align 8
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then.i.i112, %not_found.i111.if.end11.thread_crit_edge
  %116 = ptrtoint ptr %smcd_version1.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %smcd_version1.i, align 8
  %118 = and i8 %117, -2
  store i8 %118, ptr %smcd_version1.i, align 8
  %119 = ptrtoint ptr %ism_dev to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %ism_dev, align 8
  %120 = ptrtoint ptr %ini to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %ini, align 8
  br label %if.end16

if.end11:                                         ; preds = %if.end.i34.i.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %tobool1.not180185193.ph = phi i1 [ true, %if.end.i34.i.if.end11_crit_edge ], [ false, %if.end3.if.end11_crit_edge ]
  %clcsock187.ph = phi ptr [ %clcsock182, %if.end.i34.i.if.end11_crit_edge ], [ %clcsock.i, %if.end3.if.end11_crit_edge ]
  %121 = ptrtoint ptr %ism_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr = load ptr, ptr %ism_dev, align 8
  %tobool14.not = icmp eq ptr %.pr, null
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %if.end11.thread
  %clcsock187199 = phi ptr [ %clcsock182, %if.end11.thread ], [ %clcsock187.ph, %if.end11.if.end16_crit_edge ]
  %tobool1.not180185193198 = phi i1 [ true, %if.end11.thread ], [ %tobool1.not180185193.ph, %if.end11.if.end16_crit_edge ]
  %122 = ptrtoint ptr %typev1.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load = load i8, ptr %typev1.i, align 1
  %bf.clear = and i8 %bf.load, 3
  %conv = zext i8 %bf.clear to i32
  %123 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %conv, label %land.lhs.true [
    i32 3, label %if.end16.if.end30_crit_edge
    i32 0, label %if.end16.if.end30_crit_edge218
  ]

if.end16.if.end30_crit_edge218:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end16
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear20 = and i8 %bf.lshr, 3
  %conv21 = zext i8 %bf.clear20 to i32
  %124 = zext i32 %conv21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %conv21, label %if.then23 [
    i32 3, label %land.lhs.true.if.end30_crit_edge
    i32 0, label %land.lhs.true.if.end30_crit_edge219
  ]

land.lhs.true.if.end30_crit_edge219:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %rc24 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %125 = ptrtoint ptr %rc24 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rc24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool25.not = icmp eq i32 %126, 0
  %.45 = select i1 %tobool25.not, i32 50528257, i32 %126
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge219, %if.end16.if.end30_crit_edge, %if.end16.if.end30_crit_edge218
  %smcr_version1.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 8
  %127 = ptrtoint ptr %smcr_version1.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %smcr_version1.i, align 4
  %129 = and i8 %128, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i119 = icmp eq i8 %129, 0
  br i1 %tobool.not.i119, label %if.end30.not_found.i147_crit_edge, label %lor.lhs.false.i121

if.end30.not_found.i147_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i147

lor.lhs.false.i121:                               ; preds = %if.end30
  %smc_type_v2.i120 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 2
  %130 = ptrtoint ptr %smc_type_v2.i120 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %smc_type_v2.i120, align 2
  %132 = zext i8 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %131, label %lor.lhs.false.i121.not_found.i147_crit_edge [
    i8 3, label %lor.lhs.false.i121.if.end.i122_crit_edge
    i8 0, label %lor.lhs.false.i121.if.end.i122_crit_edge220
  ]

lor.lhs.false.i121.if.end.i122_crit_edge220:      ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i122

lor.lhs.false.i121.if.end.i122_crit_edge:         ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i122

lor.lhs.false.i121.not_found.i147_crit_edge:      ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i147

if.end.i122:                                      ; preds = %lor.lhs.false.i121.if.end.i122_crit_edge, %lor.lhs.false.i121.if.end.i122_crit_edge220
  %133 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %.not.i.i.i = icmp eq i8 %133, 0
  br i1 %.not.i.i.i, label %smc_get_clc_msg_smcd.exit.i.i127, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i122
  %iparea_offset.i.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 2
  %134 = ptrtoint ptr %iparea_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %iparea_offset.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %135)
  %cmp.not.i.i.i123 = icmp ne i16 %135, 40
  %add.ptr.i.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %tobool.not.i.i124 = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i125 = or i1 %tobool.not.i.i124, %cmp.not.i.i.i123
  br i1 %or.cond.i.i125, label %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i137_crit_edge, label %land.lhs.true.i.i.i.lor.lhs.false.i.i130_crit_edge

land.lhs.true.i.i.i.lor.lhs.false.i.i130_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i130

land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i137_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_v2_ext.exit.i137

smc_get_clc_msg_smcd.exit.i.i127:                 ; preds = %if.end.i122
  %add.ptr.i.old.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1
  %tobool.not.old.i.i126 = icmp eq ptr %add.ptr.i.old.i.i, null
  br i1 %tobool.not.old.i.i126, label %smc_get_clc_msg_smcd.exit.i.i127.smc_get_clc_v2_ext.exit.i137_crit_edge, label %smc_get_clc_msg_smcd.exit.i.i127.lor.lhs.false.i.i130_crit_edge

smc_get_clc_msg_smcd.exit.i.i127.lor.lhs.false.i.i130_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i130

smc_get_clc_msg_smcd.exit.i.i127.smc_get_clc_v2_ext.exit.i137_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_v2_ext.exit.i137

lor.lhs.false.i.i130:                             ; preds = %smc_get_clc_msg_smcd.exit.i.i127.lor.lhs.false.i.i130_crit_edge, %land.lhs.true.i.i.i.lor.lhs.false.i.i130_crit_edge
  %v2_ext_offset.i.i128 = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 2
  %136 = ptrtoint ptr %v2_ext_offset.i.i128 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %v2_ext_offset.i.i128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool1.not.i.i129 = icmp eq i16 %137, 0
  br i1 %tobool1.not.i.i129, label %lor.lhs.false.i.i130.smc_get_clc_v2_ext.exit.i137_crit_edge, label %if.end.i.i134

lor.lhs.false.i.i130.smc_get_clc_v2_ext.exit.i137_crit_edge: ; preds = %lor.lhs.false.i.i130
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_get_clc_v2_ext.exit.i137

if.end.i.i134:                                    ; preds = %lor.lhs.false.i.i130
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr2.i.i131 = getelementptr %struct.smc_clc_msg_proposal, ptr %pclc, i32 1, i32 1, i32 0, i32 4
  %conv.i.i132 = zext i16 %137 to i32
  %add.ptr4.i.i133 = getelementptr i8, ptr %add.ptr2.i.i131, i32 %conv.i.i132
  br label %smc_get_clc_v2_ext.exit.i137

smc_get_clc_v2_ext.exit.i137:                     ; preds = %if.end.i.i134, %lor.lhs.false.i.i130.smc_get_clc_v2_ext.exit.i137_crit_edge, %smc_get_clc_msg_smcd.exit.i.i127.smc_get_clc_v2_ext.exit.i137_crit_edge, %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i137_crit_edge
  %retval.0.i.i135 = phi ptr [ %add.ptr4.i.i133, %if.end.i.i134 ], [ null, %lor.lhs.false.i.i130.smc_get_clc_v2_ext.exit.i137_crit_edge ], [ null, %smc_get_clc_msg_smcd.exit.i.i127.smc_get_clc_v2_ext.exit.i137_crit_edge ], [ null, %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i137_crit_edge ]
  %negotiated_eid.i136 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 7
  %call4.i = call zeroext i1 @smc_clc_match_eid(ptr noundef %negotiated_eid.i136, ptr noundef %retval.0.i.i135, ptr noundef null, ptr noundef null) #15
  br i1 %call4.i, label %if.end6.i139, label %smc_get_clc_v2_ext.exit.i137.not_found.i147_crit_edge

smc_get_clc_v2_ext.exit.i137.not_found.i147_crit_edge: ; preds = %smc_get_clc_v2_ext.exit.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i147

if.end6.i139:                                     ; preds = %smc_get_clc_v2_ext.exit.i137
  %peer_systemid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 12
  %lcl.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 1
  %138 = ptrtoint ptr %lcl.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %lcl.i, align 4
  %140 = ptrtoint ptr %peer_systemid.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 8)
  store i64 %139, ptr %peer_systemid.i, align 4
  %peer_gid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 10
  %roce.i = getelementptr inbounds %struct.smc_clc_v2_extension, ptr %retval.0.i.i135, i32 0, i32 1
  %141 = call ptr @memcpy(ptr %peer_gid.i, ptr %roce.i, i32 16)
  %peer_mac.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 11
  %mac.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 1, i32 2
  %142 = call ptr @memcpy(ptr %peer_mac.i, ptr %mac.i, i32 6)
  %check_smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 9
  %143 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %check_smcrv2.i, align 1
  %144 = ptrtoint ptr %clcsock187199 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clcsock187199, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sk.i, align 16
  %smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17
  %clc_sk.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 1
  %148 = ptrtoint ptr %clc_sk.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %clc_sk.i, align 4
  %149 = load ptr, ptr %clcsock187199, align 8
  %sk15.i = getelementptr inbounds %struct.socket, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %sk15.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sk15.i, align 16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %skc_rcv_saddr.i, align 4
  %154 = ptrtoint ptr %smcrv2.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %smcrv2.i, align 8
  %155 = ptrtoint ptr %roce.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %roce.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.smc_clc_v2_extension, ptr %retval.0.i.i135, i32 0, i32 1, i32 4
  %157 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %158, %156
  %arrayidx4.i.i.i = getelementptr %struct.smc_clc_v2_extension, ptr %retval.0.i.i135, i32 0, i32 1, i32 8
  %159 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %160, 65535
  %or5.i.i.i = or i32 %xor.i.i.i, %or.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  %or5.i.i = or i32 %or.i.i.i, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i87.i = icmp eq i32 %or5.i.i, 0
  %or.cond.i88.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i87.i
  br i1 %or.cond.i88.i, label %if.then.i.i140, label %if.end6.i139.smc_ib_gid_to_ipv4.exit.i_crit_edge

if.end6.i139.smc_ib_gid_to_ipv4.exit.i_crit_edge: ; preds = %if.end6.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_ib_gid_to_ipv4.exit.i

if.then.i.i140:                                   ; preds = %if.end6.i139
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx7.i.i = getelementptr %struct.smc_clc_v2_extension, ptr %retval.0.i.i135, i32 0, i32 1, i32 12
  %161 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx7.i.i, align 4
  br label %smc_ib_gid_to_ipv4.exit.i

smc_ib_gid_to_ipv4.exit.i:                        ; preds = %if.then.i.i140, %if.end6.i139.smc_ib_gid_to_ipv4.exit.i_crit_edge
  %retval.0.i89.i = phi i32 [ %162, %if.then.i.i140 ], [ -1, %if.end6.i139.smc_ib_gid_to_ipv4.exit.i_crit_edge ]
  %daddr.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 2
  %163 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %retval.0.i89.i, ptr %daddr.i, align 8
  %164 = ptrtoint ptr %clcsock187199 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %clcsock187199, align 8
  %sk.i.i141 = getelementptr inbounds %struct.socket, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %sk.i.i141 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sk.i.i141, align 16
  call void @smc_pnet_find_roce_resource(ptr noundef %167, ptr noundef %ini) #15
  %168 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i90.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i90.i, label %land.lhs.true.i.i142, label %land.lhs.true4.i.i

land.lhs.true.i.i142:                             ; preds = %smc_ib_gid_to_ipv4.exit.i
  %ib_dev.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %170 = ptrtoint ptr %ib_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ib_dev.i.i, align 4
  %tobool1.not.i91.i = icmp eq ptr %171, null
  br i1 %tobool1.not.i91.i, label %land.lhs.true.i.i142.if.then23.i_crit_edge, label %land.lhs.true.i.i142.if.end24.i_crit_edge

land.lhs.true.i.i142.if.end24.i_crit_edge:        ; preds = %land.lhs.true.i.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

land.lhs.true.i.i142.if.then23.i_crit_edge:       ; preds = %land.lhs.true.i.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

land.lhs.true4.i.i:                               ; preds = %smc_ib_gid_to_ipv4.exit.i
  %ib_dev_v2.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %172 = ptrtoint ptr %ib_dev_v2.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ib_dev_v2.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %173, null
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.if.then23.i_crit_edge, label %land.lhs.true4.i.i.if.end24.i_crit_edge

land.lhs.true4.i.i.if.end24.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

land.lhs.true4.i.i.if.then23.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true4.i.i.if.then23.i_crit_edge, %land.lhs.true.i.i142.if.then23.i_crit_edge
  %rc1.i.i143 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %174 = ptrtoint ptr %rc1.i.i143 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rc1.i.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i93.i = icmp eq i32 %175, 0
  br i1 %tobool.not.i93.i, label %if.then.i94.i, label %if.then23.i.not_found.i147_crit_edge

if.then23.i.not_found.i147_crit_edge:             ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i147

if.then.i94.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  %176 = ptrtoint ptr %rc1.i.i143 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 50528258, ptr %rc1.i.i143, align 8
  br label %not_found.i147

if.end24.i:                                       ; preds = %land.lhs.true4.i.i.if.end24.i_crit_edge, %land.lhs.true.i.i142.if.end24.i_crit_edge
  %uses_gateway.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 6
  %177 = ptrtoint ptr %uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %uses_gateway.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool26.not.i = icmp eq i8 %178, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end24.i.if.end33.i_crit_edge

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %nexthop_mac.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 7
  %179 = call ptr @memcpy(ptr %nexthop_mac.i, ptr %mac.i, i32 6)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end33.i_crit_edge
  %180 = ptrtoint ptr %smcr_version1.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %smcr_version1.i, align 4
  store i8 2, ptr %smcr_version1.i, align 4
  %call.i.i144 = call i32 @smc_conn_create(ptr noundef %new_smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %tobool.not.i96.i = icmp eq i32 %call.i.i144, 0
  br i1 %tobool.not.i96.i, label %if.end.i97.i, label %if.end33.i.if.end44.i_crit_edge

if.end33.i.if.end44.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

if.end.i97.i:                                     ; preds = %if.end33.i
  %call1.i.i145 = call i32 @smc_buf_create(ptr noundef %new_smc, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i145)
  %tobool2.not.i.i146 = icmp eq i32 %call1.i.i145, 0
  br i1 %tobool2.not.i.i146, label %if.end41.i, label %if.end.i97.i.if.end44.i_crit_edge

if.end.i97.i.if.end44.i_crit_edge:                ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

if.end41.i:                                       ; preds = %if.end.i97.i
  %first_contact_local.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %182 = ptrtoint ptr %first_contact_local.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %first_contact_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool39.i = icmp ne i8 %183, 0
  %call40.i = call fastcc i32 @smc_listen_rdma_reg(ptr noundef %new_smc, i1 noundef zeroext %tobool39.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool42.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool42.not.i, label %if.end41.i.smc_find_rdma_v2_device_serv.exit_crit_edge, label %if.end41.i.if.end44.i_crit_edge

if.end41.i.if.end44.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

if.end41.i.smc_find_rdma_v2_device_serv.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v2_device_serv.exit

if.end44.i:                                       ; preds = %if.end41.i.if.end44.i_crit_edge, %if.end.i97.i.if.end44.i_crit_edge, %if.end33.i.if.end44.i_crit_edge
  %rc.0111.i = phi i32 [ %call40.i, %if.end41.i.if.end44.i_crit_edge ], [ 16842752, %if.end.i97.i.if.end44.i_crit_edge ], [ %call.i.i144, %if.end33.i.if.end44.i_crit_edge ]
  %184 = ptrtoint ptr %smcr_version1.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %181, ptr %smcr_version1.i, align 4
  %rc1.i99.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %185 = ptrtoint ptr %rc1.i99.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rc1.i99.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i100.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i100.i, label %if.then.i101.i, label %if.end44.i.not_found.i147_crit_edge

if.end44.i.not_found.i147_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %not_found.i147

if.then.i101.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %rc1.i99.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %rc.0111.i, ptr %rc1.i99.i, align 8
  br label %not_found.i147

not_found.i147:                                   ; preds = %if.then.i101.i, %if.end44.i.not_found.i147_crit_edge, %if.then.i94.i, %if.then23.i.not_found.i147_crit_edge, %smc_get_clc_v2_ext.exit.i137.not_found.i147_crit_edge, %lor.lhs.false.i121.not_found.i147_crit_edge, %if.end30.not_found.i147_crit_edge
  %188 = ptrtoint ptr %smcr_version1.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %smcr_version1.i, align 4
  %190 = and i8 %189, -3
  store i8 %190, ptr %smcr_version1.i, align 4
  %check_smcrv250.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 9
  %191 = ptrtoint ptr %check_smcrv250.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %check_smcrv250.i, align 1
  br label %smc_find_rdma_v2_device_serv.exit

smc_find_rdma_v2_device_serv.exit:                ; preds = %not_found.i147, %if.end41.i.smc_find_rdma_v2_device_serv.exit_crit_edge
  %ib_dev_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %192 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ib_dev_v2, align 4
  %tobool31.not = icmp ne ptr %193, null
  %tobool1.not.not = xor i1 %tobool1.not180185193198, true
  %brmerge = or i1 %tobool31.not, %tobool1.not.not
  %.mux = select i1 %tobool31.not, i32 0, i32 50528256
  br i1 %brmerge, label %smc_find_rdma_v2_device_serv.exit.cleanup_crit_edge, label %if.then35

smc_find_rdma_v2_device_serv.exit.cleanup_crit_edge: ; preds = %smc_find_rdma_v2_device_serv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35:                                        ; preds = %smc_find_rdma_v2_device_serv.exit
  %194 = ptrtoint ptr %smcr_version1.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %smcr_version1.i, align 4
  %196 = and i8 %195, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i148 = icmp eq i8 %196, 0
  br i1 %tobool.not.i148, label %if.then35.smc_find_rdma_v1_device_serv.exit_crit_edge, label %lor.lhs.false.i150

if.then35.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

lor.lhs.false.i150:                               ; preds = %if.then35
  %smc_type_v1.i149 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %197 = ptrtoint ptr %smc_type_v1.i149 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %smc_type_v1.i149, align 1
  %199 = zext i8 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %198, label %lor.lhs.false.i150.smc_find_rdma_v1_device_serv.exit_crit_edge [
    i8 3, label %lor.lhs.false.i150.if.end.i159_crit_edge
    i8 0, label %lor.lhs.false.i150.if.end.i159_crit_edge221
  ]

lor.lhs.false.i150.if.end.i159_crit_edge221:      ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i159

lor.lhs.false.i150.if.end.i159_crit_edge:         ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i159

lor.lhs.false.i150.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

if.end.i159:                                      ; preds = %lor.lhs.false.i150.if.end.i159_crit_edge, %lor.lhs.false.i150.if.end.i159_crit_edge221
  %peer_systemid.i151 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 12
  %lcl.i152 = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 1
  %200 = ptrtoint ptr %lcl.i152 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 8)
  %201 = load i64, ptr %lcl.i152, align 4
  %202 = ptrtoint ptr %peer_systemid.i151 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 8)
  store i64 %201, ptr %peer_systemid.i151, align 4
  %peer_gid.i153 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 10
  %gid.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 1, i32 1
  %203 = call ptr @memcpy(ptr %peer_gid.i153, ptr %gid.i, i32 16)
  %peer_mac.i154 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 11
  %mac.i155 = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %pclc, i32 0, i32 1, i32 2
  %204 = call ptr @memcpy(ptr %peer_mac.i154, ptr %mac.i155, i32 6)
  %205 = ptrtoint ptr %clcsock187199 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %clcsock187199, align 8
  %sk.i.i157 = getelementptr inbounds %struct.socket, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %sk.i.i157 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sk.i.i157, align 16
  call void @smc_pnet_find_roce_resource(ptr noundef %208, ptr noundef %ini) #15
  %check_smcrv2.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 9
  %209 = ptrtoint ptr %check_smcrv2.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %check_smcrv2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i.i158 = icmp eq i8 %210, 0
  br i1 %tobool.not.i.i158, label %land.lhs.true.i.i162, label %land.lhs.true4.i.i165

land.lhs.true.i.i162:                             ; preds = %if.end.i159
  %ib_dev.i.i160 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %211 = ptrtoint ptr %ib_dev.i.i160 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ib_dev.i.i160, align 4
  %tobool1.not.i.i161 = icmp eq ptr %212, null
  br i1 %tobool1.not.i.i161, label %land.lhs.true.i.i162.smc_find_rdma_v1_device_serv.exit_crit_edge, label %land.lhs.true.i.i162.if.end12.i_crit_edge

land.lhs.true.i.i162.if.end12.i_crit_edge:        ; preds = %land.lhs.true.i.i162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

land.lhs.true.i.i162.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %land.lhs.true.i.i162
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

land.lhs.true4.i.i165:                            ; preds = %if.end.i159
  %213 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ib_dev_v2, align 4
  %tobool5.not.i.i164 = icmp eq ptr %214, null
  br i1 %tobool5.not.i.i164, label %land.lhs.true4.i.i165.smc_find_rdma_v1_device_serv.exit_crit_edge, label %land.lhs.true4.i.i165.if.end12.i_crit_edge

land.lhs.true4.i.i165.if.end12.i_crit_edge:       ; preds = %land.lhs.true4.i.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

land.lhs.true4.i.i165.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %land.lhs.true4.i.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

if.end12.i:                                       ; preds = %land.lhs.true4.i.i165.if.end12.i_crit_edge, %land.lhs.true.i.i162.if.end12.i_crit_edge
  %call.i.i166 = call i32 @smc_conn_create(ptr noundef %new_smc, ptr noundef %ini) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %tobool.not.i32.i = icmp eq i32 %call.i.i166, 0
  br i1 %tobool.not.i32.i, label %if.end.i.i169, label %if.end12.i.smc_find_rdma_v1_device_serv.exit_crit_edge

if.end12.i.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

if.end.i.i169:                                    ; preds = %if.end12.i
  %call1.i.i167 = call i32 @smc_buf_create(ptr noundef %new_smc, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i167)
  %tobool2.not.i.i168 = icmp eq i32 %call1.i.i167, 0
  br i1 %tobool2.not.i.i168, label %if.end16.i, label %if.end.i.i169.smc_find_rdma_v1_device_serv.exit_crit_edge

if.end.i.i169.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

if.end16.i:                                       ; preds = %if.end.i.i169
  %first_contact_local.i170 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %215 = ptrtoint ptr %first_contact_local.i170 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %first_contact_local.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool17.not.i = icmp eq i8 %216, 0
  %conn1.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6
  br i1 %tobool17.not.i, label %if.then.i.i171, label %if.end16.i.if.end4.i.i_crit_edge

if.end16.i.if.end4.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.then.i.i171:                                   ; preds = %if.end16.i
  %lnk.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 2
  %217 = ptrtoint ptr %lnk.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %lnk.i.i, align 8
  %rmb_desc.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 9
  %219 = ptrtoint ptr %rmb_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmb_desc.i.i, align 4
  %call.i34.i = call fastcc i32 @smcr_lgr_reg_rmbs(ptr noundef %218, ptr noundef %220) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool2.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool2.not.i35.i, label %if.then.i.i171.if.end4.i.i_crit_edge, label %if.then.i.i171.smc_find_rdma_v1_device_serv.exit_crit_edge

if.then.i.i171.smc_find_rdma_v1_device_serv.exit_crit_edge: ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_rdma_v1_device_serv.exit

if.then.i.i171.if.end4.i.i_crit_edge:             ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i171.if.end4.i.i_crit_edge, %if.end16.i.if.end4.i.i_crit_edge
  call void @smc_rmb_sync_sg_for_device(ptr noundef %conn1.i.i) #15
  br label %smc_find_rdma_v1_device_serv.exit

smc_find_rdma_v1_device_serv.exit:                ; preds = %if.end4.i.i, %if.then.i.i171.smc_find_rdma_v1_device_serv.exit_crit_edge, %if.end.i.i169.smc_find_rdma_v1_device_serv.exit_crit_edge, %if.end12.i.smc_find_rdma_v1_device_serv.exit_crit_edge, %land.lhs.true4.i.i165.smc_find_rdma_v1_device_serv.exit_crit_edge, %land.lhs.true.i.i162.smc_find_rdma_v1_device_serv.exit_crit_edge, %lor.lhs.false.i150.smc_find_rdma_v1_device_serv.exit_crit_edge, %if.then35.smc_find_rdma_v1_device_serv.exit_crit_edge
  %retval.0.i172 = phi i32 [ 50528256, %lor.lhs.false.i150.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ 50528256, %if.then35.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ 0, %if.end4.i.i ], [ 161021955, %if.then.i.i171.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ 50528256, %land.lhs.true.i.i162.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ 50528256, %land.lhs.true4.i.i165.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ 16842752, %if.end.i.i169.smc_find_rdma_v1_device_serv.exit_crit_edge ], [ %call.i.i166, %if.end12.i.smc_find_rdma_v1_device_serv.exit_crit_edge ]
  %rc1.i173 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 6
  %221 = ptrtoint ptr %rc1.i173 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rc1.i173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i174 = icmp eq i32 %222, 0
  br i1 %tobool.not.i174, label %if.then.i175, label %smc_find_rdma_v1_device_serv.exit.smc_find_ism_store_rc.exit177_crit_edge

smc_find_rdma_v1_device_serv.exit.smc_find_ism_store_rc.exit177_crit_edge: ; preds = %smc_find_rdma_v1_device_serv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_find_ism_store_rc.exit177

if.then.i175:                                     ; preds = %smc_find_rdma_v1_device_serv.exit
  call void @__sanitizer_cov_trace_pc() #17
  %223 = ptrtoint ptr %rc1.i173 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %retval.0.i172, ptr %rc1.i173, align 8
  br label %smc_find_ism_store_rc.exit177

smc_find_ism_store_rc.exit177:                    ; preds = %if.then.i175, %smc_find_rdma_v1_device_serv.exit.smc_find_ism_store_rc.exit177_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i172)
  %tobool38.not = icmp eq i32 %retval.0.i172, 0
  br i1 %tobool38.not, label %smc_find_ism_store_rc.exit177.cleanup_crit_edge, label %cond.false40

smc_find_ism_store_rc.exit177.cleanup_crit_edge:  ; preds = %smc_find_ism_store_rc.exit177
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false40:                                     ; preds = %smc_find_ism_store_rc.exit177
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %rc1.i173 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rc1.i173, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.false40, %smc_find_ism_store_rc.exit177.cleanup_crit_edge, %smc_find_rdma_v2_device_serv.exit.cleanup_crit_edge, %if.then23, %if.end11.cleanup_crit_edge, %if.then6, %smc_find_ism_v2_device_serv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then6 ], [ %.45, %if.then23 ], [ 0, %smc_find_ism_v2_device_serv.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %.mux, %smc_find_rdma_v2_device_serv.exit.cleanup_crit_edge ], [ %225, %cond.false40 ], [ 0, %smc_find_ism_store_rc.exit177.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_send_accept(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_listen_rdma_finish(ptr noundef %new_smc, ptr noundef %cclc, i1 noundef zeroext %local_first, ptr nocapture noundef readonly %ini) unnamed_addr #0 align 64 {
entry:
  %dclc.i = alloca %struct.smc_clc_msg_decline, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  br i1 %local_first, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %qpn.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %cclc, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %qpn.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %t.1.copyload.i.i = load i24, ptr %qpn.i, align 1
  %t.1.insert.ext.i.i = zext i24 %t.1.copyload.i.i to i32
  %peer_qpn.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 36
  %3 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %t.1.insert.ext.i.i, ptr %peer_qpn.i, align 8
  %peer_gid.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 42
  %peer_gid2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %peer_gid.i, ptr %peer_gid2.i, i32 16)
  %peer_mac.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 41
  %peer_mac5.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 11
  %5 = call ptr @memcpy(ptr %peer_mac.i, ptr %peer_mac5.i, i32 6)
  %psn.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %cclc, i32 0, i32 1, i32 0, i32 9
  %6 = ptrtoint ptr %psn.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %t.1.copyload.i16.i = load i24, ptr %psn.i, align 1
  %t.1.insert.ext.i17.i = zext i24 %t.1.copyload.i16.i to i32
  %peer_psn.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %peer_psn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %t.1.insert.ext.i17.i, ptr %peer_psn.i, align 8
  %qp_mtu.i = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %cclc, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %qp_mtu.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %qp_mtu.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %peer_mtu.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 38
  %9 = ptrtoint ptr %peer_mtu.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %peer_mtu.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @smc_rmb_rtoken_handling(ptr noundef %conn, ptr noundef %1, ptr noundef %cclc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp ne i32 %call, 0
  %local_first.not = xor i1 %local_first, true
  %brmerge = or i1 %tobool2.not, %local_first.not
  %.mux = select i1 %tobool2.not, i32 161021953, i32 0
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @smc_ib_ready_link(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %lgr = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 50
  %10 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lgr, align 4
  %call11 = tail call i32 @smc_llc_flow_initiate(ptr noundef %11, i32 noundef 2) #15
  %12 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lnk, align 8
  %rmb_desc.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 9
  %14 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmb_desc.i, align 4
  %call.i = tail call i32 @smcr_link_reg_rmb(ptr noundef %13, ptr noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.smcr_serv_conf_first_link.exit_crit_edge

if.end10.smcr_serv_conf_first_link.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %smcr_serv_conf_first_link.exit

if.end.i:                                         ; preds = %if.end10
  %call2.i = tail call i32 @smc_llc_send_confirm_link(ptr noundef %13, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.smcr_serv_conf_first_link.exit_crit_edge, label %if.end4.i

if.end.i.smcr_serv_conf_first_link.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smcr_serv_conf_first_link.exit

if.end4.i:                                        ; preds = %if.end.i
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 50
  %16 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lgr.i, align 4
  %call5.i = tail call ptr @smc_llc_wait(ptr noundef %17, ptr noundef %13, i32 noundef 200, i8 noundef zeroext 1) #15
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dclc.i) #15
  %18 = call ptr @memset(ptr %dclc.i, i32 255, i32 28)
  %call8.i = call i32 @smc_clc_wait_msg(ptr noundef %new_smc, ptr noundef nonnull %dclc.i, i32 noundef 28, i8 noundef zeroext 4, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -11
  %spec.select.i = select i1 %cmp9.i, i32 33619968, i32 %call8.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dclc.i) #15
  br label %smcr_serv_conf_first_link.exit

if.end10.i:                                       ; preds = %if.end4.i
  tail call void @smc_llc_save_peer_uid(ptr noundef nonnull %call5.i) #15
  %call11.i = tail call i32 @smc_llc_eval_conf_link(ptr noundef nonnull %call5.i, i32 noundef 1) #15
  %19 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lgr.i, align 4
  %llc_flow_lcl.i = getelementptr inbounds %struct.smc_link_group, ptr %20, i32 0, i32 21, i32 0, i32 18
  tail call void @smc_llc_flow_qentry_del(ptr noundef %llc_flow_lcl.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.smcr_serv_conf_first_link.exit_crit_edge

if.end10.i.smcr_serv_conf_first_link.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smcr_serv_conf_first_link.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmb_desc.i, align 4
  %is_conf_rkey.i = getelementptr inbounds %struct.smc_buf_desc, ptr %22, i32 0, i32 5, i32 1, i32 28
  %23 = ptrtoint ptr %is_conf_rkey.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_conf_rkey.i, align 4
  tail call void @smc_llc_link_active(ptr noundef %13) #15
  %24 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lgr.i, align 4
  tail call void @smcr_lgr_set_type(ptr noundef %25, i32 noundef 1) #15
  %call19.i = tail call i32 @smc_llc_srv_add_link(ptr noundef %13, ptr noundef null) #15
  br label %smcr_serv_conf_first_link.exit

smcr_serv_conf_first_link.exit:                   ; preds = %if.end15.i, %if.end10.i.smcr_serv_conf_first_link.exit_crit_edge, %if.then7.i, %if.end.i.smcr_serv_conf_first_link.exit_crit_edge, %if.end10.smcr_serv_conf_first_link.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end15.i ], [ %spec.select.i, %if.then7.i ], [ 161021955, %if.end10.smcr_serv_conf_first_link.exit_crit_edge ], [ 33619968, %if.end.i.smcr_serv_conf_first_link.exit_crit_edge ], [ 50659328, %if.end10.i.smcr_serv_conf_first_link.exit_crit_edge ]
  %26 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lgr, align 4
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %27, i32 0, i32 21, i32 0, i32 18
  call void @smc_llc_flow_stop(ptr noundef %27, ptr noundef %llc_flow_lcl) #15
  br label %cleanup

cleanup:                                          ; preds = %smcr_serv_conf_first_link.exit, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %if.end.cleanup_crit_edge ], [ 161021954, %if.then6.cleanup_crit_edge ], [ %retval.0.i, %smcr_serv_conf_first_link.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_listen_out(ptr noundef %new_smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %listen_smc = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 7
  %0 = ptrtoint ptr %listen_smc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listen_smc, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 1) #15
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %new_smc, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !163
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !164

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !165

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %accept_q_lock.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %accept_q_lock.i) #15
  %accept_q.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 11
  %accept_q2.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 11
  %prev.i.i = getelementptr inbounds %struct.smc_sock, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %accept_q.i, ptr noundef %7, ptr noundef %accept_q2.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sock_hold.exit.i.smc_accept_enqueue.exit_crit_edge

sock_hold.exit.i.smc_accept_enqueue.exit_crit_edge: ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_accept_enqueue.exit

if.end.i.i.i:                                     ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %accept_q.i, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %accept_q2.i, ptr %accept_q.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %accept_q.i, ptr %7, align 4
  br label %smc_accept_enqueue.exit

smc_accept_enqueue.exit:                          ; preds = %if.end.i.i.i, %sock_hold.exit.i.smc_accept_enqueue.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %accept_q_lock.i) #15
  %sk_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %12 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_ack_backlog.i.i, align 4
  %add.i.i = add i32 %13, 1
  store volatile i32 %add.i.i, ptr %sk_ack_backlog.i.i, align 4
  tail call void @release_sock(ptr noundef %1) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_close_non_accepted(ptr noundef %new_smc)
  br label %if.end

if.end:                                           ; preds = %if.else, %smc_accept_enqueue.exit
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_data_ready, align 8
  tail call void %15(ptr noundef %1) #15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i17 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i17)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i17, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i17)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i17, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !165

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @sk_free(ptr noundef %1) #15
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_get_system_eid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_clc_match_eid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_cantalk(i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_clc_prfx_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_listen_rdma_reg(ptr noundef %new_smc, i1 noundef zeroext %local_first) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6
  br i1 %local_first, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmb_desc, align 4
  %call = tail call fastcc i32 @smcr_lgr_reg_rmbs(ptr noundef %1, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @smc_rmb_sync_sg_for_device(ptr noundef %conn1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 161021955, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_srv_add_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_net_stat_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smc_stats_init(ptr noundef %net) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_net_stat_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smc_stats_exit(ptr noundef %net) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_stats_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_stats_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smc_pnet_net_init(ptr noundef %net) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smc_pnet_net_exit(ptr noundef %net) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_pnet_net_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_net_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smc_clc_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @smc_nl_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @smc_pnet_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_core_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @smc_llc_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @smc_cdc_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @smc_ib_register_client() local_unnamed_addr #13 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_ulp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %protocol)
  %cmp.i = icmp eq i32 %protocol, 1
  %cond.i = select i1 %cmp.i, i32 10, i32 2
  %type.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp1.not.i = icmp eq i16 %1, 1
  br i1 %cmp1.not.i, label %if.end.i, label %entry.__smc_create.exit_crit_edge

entry.__smc_create.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__smc_create.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %switch.i = icmp ult i32 %protocol, 2
  br i1 %switch.i, label %if.end8.i, label %if.end.i.__smc_create.exit_crit_edge

if.end.i.__smc_create.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__smc_create.exit

if.end8.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smc_sock_ops, ptr %ops.i, align 4
  %call.i = tail call fastcc ptr @smc_sock_alloc(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.i.__smc_create.exit_crit_edge, label %if.end10.i

if.end8.i.__smc_create.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__smc_create.exit

if.end10.i:                                       ; preds = %if.end8.i
  %use_fallback.i = getelementptr inbounds %struct.smc_sock, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %use_fallback.i, align 4
  %fallback_rsn.i = getelementptr inbounds %struct.smc_sock, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %fallback_rsn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fallback_rsn.i, align 8
  %clcsock14.i = getelementptr inbounds %struct.smc_sock, ptr %call.i, i32 0, i32 1
  %call15.i = tail call i32 @sock_create_kern(ptr noundef %net, i32 noundef %cond.i, i32 noundef 1, i32 noundef 6, ptr noundef %clcsock14.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end20.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sk_common_release(ptr noundef nonnull %call.i) #15
  br label %__smc_create.exit

if.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %clcsock14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clcsock14.i, align 8
  %sk22.i = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sk22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk22.i, align 16
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndbuf.i, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 16384) #15
  %sk_sndbuf27.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 21
  %12 = ptrtoint ptr %sk_sndbuf27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sk_sndbuf27.i, align 4
  %13 = ptrtoint ptr %sk22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk22.i, align 16
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_rcvbuf.i, align 8
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 16384) #15
  %sk_rcvbuf38.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %sk_rcvbuf38.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sk_rcvbuf38.i, align 8
  br label %__smc_create.exit

__smc_create.exit:                                ; preds = %if.end20.i, %if.then17.i, %if.end8.i.__smc_create.exit_crit_edge, %if.end.i.__smc_create.exit_crit_edge, %entry.__smc_create.exit_crit_edge
  %rc.1.i = phi i32 [ -94, %entry.__smc_create.exit_crit_edge ], [ 0, %if.end20.i ], [ %call15.i, %if.then17.i ], [ -105, %if.end8.i.__smc_create.exit_crit_edge ], [ -93, %if.end.i.__smc_create.exit_crit_edge ]
  ret i32 %rc.1.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83, !85, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151}
!llvm.named.register.sp = !{!153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__ksymtab_smc_hash_sk, !1, !"__ksymtab_smc_hash_sk", i1 false, i1 false}
!1 = !{!"../net/smc/af_smc.c", i32 97, i32 1}
!2 = !{ptr @__ksymtab_smc_unhash_sk, !3, !"__ksymtab_smc_unhash_sk", i1 false, i1 false}
!3 = !{!"../net/smc/af_smc.c", i32 108, i32 1}
!4 = !{ptr @smc_proto, !5, !"smc_proto", i1 false, i1 false}
!5 = !{!"../net/smc/af_smc.c", i32 110, i32 14}
!6 = !{ptr @__ksymtab_smc_proto, !7, !"__ksymtab_smc_proto", i1 false, i1 false}
!7 = !{!"../net/smc/af_smc.c", i32 120, i32 1}
!8 = !{ptr @smc_proto6, !9, !"smc_proto6", i1 false, i1 false}
!9 = !{!"../net/smc/af_smc.c", i32 122, i32 14}
!10 = !{ptr @__ksymtab_smc_proto6, !11, !"__ksymtab_smc_proto6", i1 false, i1 false}
!11 = !{!"../net/smc/af_smc.c", i32 132, i32 1}
!12 = !{ptr @__initcall__kmod_smc__628_3139_smc_init6, !13, !"__initcall__kmod_smc__628_3139_smc_init6", i1 false, i1 false}
!13 = !{!"../net/smc/af_smc.c", i32 3139, i32 1}
!14 = !{ptr @__exitcall_smc_exit, !15, !"__exitcall_smc_exit", i1 false, i1 false}
!15 = !{!"../net/smc/af_smc.c", i32 3140, i32 1}
!16 = !{ptr @__UNIQUE_ID_author629, !17, !"__UNIQUE_ID_author629", i1 false, i1 false}
!17 = !{!"../net/smc/af_smc.c", i32 3142, i32 1}
!18 = !{ptr @__UNIQUE_ID_description630, !19, !"__UNIQUE_ID_description630", i1 false, i1 false}
!19 = !{!"../net/smc/af_smc.c", i32 3143, i32 1}
!20 = !{ptr @__UNIQUE_ID_file631, !21, !"__UNIQUE_ID_file631", i1 false, i1 false}
!21 = !{!"../net/smc/af_smc.c", i32 3144, i32 1}
!22 = !{ptr @__UNIQUE_ID_license632, !21, !"__UNIQUE_ID_license632", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias633, !24, !"__UNIQUE_ID_alias633", i1 false, i1 false}
!24 = !{!"../net/smc/af_smc.c", i32 3145, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_userspace634, !26, !"__UNIQUE_ID_alias_userspace634", i1 false, i1 false}
!26 = !{!"../net/smc/af_smc.c", i32 3146, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias_tcp_ulp635, !26, !"__UNIQUE_ID_alias_tcp_ulp635", i1 false, i1 false}
!28 = !{ptr @smc_hs_wq, !29, !"smc_hs_wq", i1 false, i1 false}
!29 = !{!"../net/smc/af_smc.c", i32 62, i32 26}
!30 = !{ptr @smc_close_wq, !31, !"smc_close_wq", i1 false, i1 false}
!31 = !{!"../net/smc/af_smc.c", i32 63, i32 26}
!32 = !{ptr @smc_net_id, !33, !"smc_net_id", i1 false, i1 false}
!33 = !{!"../net/smc/af_smc.c", i32 2977, i32 14}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/sock.h", i32 729, i32 3}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/smc/af_smc.c", i32 76, i32 10}
!38 = !{ptr @smc_v4_hashinfo, !39, !"smc_v4_hashinfo", i1 false, i1 false}
!39 = !{!"../net/smc/af_smc.c", i32 75, i32 28}
!40 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/smc/af_smc.c", i32 80, i32 10}
!42 = !{ptr @smc_v6_hashinfo, !43, !"smc_v6_hashinfo", i1 false, i1 false}
!43 = !{!"../net/smc/af_smc.c", i32 79, i32 28}
!44 = !{ptr @smc_ulp_ops, !45, !"smc_ulp_ops", i1 false, i1 false}
!45 = !{!"../net/smc/af_smc.c", i32 2970, i32 27}
!46 = !{ptr @smc_sock_ops, !47, !"smc_sock_ops", i1 false, i1 false}
!47 = !{!"../net/smc/af_smc.c", i32 2839, i32 31}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/smc/smc_tracepoint.h", i32 16, i32 1}
!50 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/smc/af_smc.c", i32 620, i32 7}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/smc/af_smc.c", i32 581, i32 7}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/smc/af_smc.c", i32 58, i32 8}
!70 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @smc_client_lgr_pending, !69, !"smc_client_lgr_pending", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/smc/af_smc.c", i32 55, i32 8}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @smc_server_lgr_pending, !73, !"smc_server_lgr_pending", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/smc/af_smc.c", i32 2315, i32 3}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../net/smc/af_smc.c", i32 2330, i32 2}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!87 = !{ptr @smc_sock_alloc.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../net/smc/af_smc.c", i32 255, i32 2}
!89 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @smc_sock_alloc.__key.19, !91, !"__key", i1 false, i1 false}
!91 = !{!"../net/smc/af_smc.c", i32 256, i32 2}
!92 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @smc_sock_alloc.__key.21, !94, !"__key", i1 false, i1 false}
!94 = !{!"../net/smc/af_smc.c", i32 257, i32 2}
!95 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @smc_sock_alloc.__key.23, !94, !"__key", i1 false, i1 false}
!97 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @smc_sock_alloc.__key.25, !99, !"__key", i1 false, i1 false}
!99 = !{!"../net/smc/af_smc.c", i32 259, i32 2}
!100 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @smc_sock_alloc.__key.27, !102, !"__key", i1 false, i1 false}
!102 = !{!"../net/smc/af_smc.c", i32 260, i32 2}
!103 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @smc_sock_alloc.__key.29, !105, !"__key", i1 false, i1 false}
!105 = !{!"../net/smc/af_smc.c", i32 263, i32 2}
!106 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @smc_tcp_listen_work.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../net/smc/af_smc.c", i32 2216, i32 3}
!109 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @smc_net_stat_ops, !111, !"smc_net_stat_ops", i1 false, i1 false}
!111 = !{!"../net/smc/af_smc.c", i32 3006, i32 33}
!112 = !{ptr @smc_net_ops, !113, !"smc_net_ops", i1 false, i1 false}
!113 = !{!"../net/smc/af_smc.c", i32 2999, i32 33}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/smc/af_smc.c", i32 3035, i32 30}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/smc/af_smc.c", i32 3039, i32 33}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/smc/af_smc.c", i32 3045, i32 3}
!120 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @smc_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @smc_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/smc/af_smc.c", i32 3051, i32 3}
!125 = !{ptr @smc_init._entry.36, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @smc_init._entry_ptr.38, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/smc/af_smc.c", i32 3057, i32 3}
!129 = !{ptr @smc_init._entry.39, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @smc_init._entry_ptr.41, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/smc/af_smc.c", i32 3063, i32 3}
!133 = !{ptr @smc_init._entry.42, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @smc_init._entry_ptr.44, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/smc/af_smc.c", i32 3069, i32 3}
!137 = !{ptr @smc_init._entry.45, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @smc_init._entry_ptr.47, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/smc/af_smc.c", i32 3075, i32 3}
!141 = !{ptr @smc_init._entry.48, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @smc_init._entry_ptr.50, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/smc/af_smc.c", i32 3083, i32 3}
!145 = !{ptr @smc_init._entry.51, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @smc_init._entry_ptr.53, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/smc/af_smc.c", i32 3089, i32 3}
!149 = !{ptr @smc_init._entry.54, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @smc_init._entry_ptr.56, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @smc_sock_family_ops, !152, !"smc_sock_family_ops", i1 false, i1 false}
!152 = !{!"../net/smc/af_smc.c", i32 2913, i32 38}
!153 = !{!"sp"}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2148420772, i64 2148420804, i64 2148420833, i64 2148420867, i64 2148420898, i64 2148420921}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 822942, i64 823003}
!167 = !{i64 825674}
!168 = !{i64 825959}
!169 = !{i64 2148508797}
!170 = !{i64 2148423237, i64 2148423269, i64 2148423298, i64 2148423332, i64 2148423363, i64 2148423386}
!171 = !{i64 2149384911}
!172 = !{i64 2156878969}
!173 = !{i8 0, i8 2}
!174 = !{!"auto-init"}
!175 = !{i64 2159911978}
!176 = !{i64 2159916824}
!177 = !{i64 2156935752}
!178 = !{i64 926010, i64 926027, i64 926051, i64 926077, i64 926095}
!179 = !{i64 2156936095}
!180 = !{i64 2156929502}
!181 = !{i64 4756868}
!182 = !{i64 4757065}
!183 = !{i64 2152242298}
!184 = !{i64 2160078626, i64 2160078906, i64 2160079240, i64 2160079574}
!185 = !{i64 2152265374, i64 2152265399}
!186 = !{i32 0, i32 33}
!187 = !{i64 2149032619, i64 2149032624, i64 2149032637, i64 2149032681, i64 2149032715, i64 2149032736}
!188 = !{i64 2159669130}
!189 = !{i64 2159669371}
!190 = !{i64 2149443960}
!191 = !{i64 2149444996}
!192 = !{i64 2149435401}
!193 = !{i64 2149529125}
!194 = !{i64 2149435667}
