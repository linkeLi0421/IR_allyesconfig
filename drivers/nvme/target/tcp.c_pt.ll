; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/tcp.c_pt.bc'
source_filename = "../drivers/nvme/target/tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.171 }
%union.anon.171 = type { ptr }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.ida = type { %struct.xarray }
%struct.nvmet_tcp_queue = type { ptr, ptr, %struct.work_struct, %struct.nvmet_cq, %struct.nvmet_sq, ptr, i32, %struct.list_head, %struct.llist_head, %struct.list_head, i32, ptr, i32, i32, i32, ptr, %union.nvme_tcp_pdu, i8, i8, ptr, ptr, i32, %struct.spinlock, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.work_struct, i32, %struct.list_head, %struct.nvmet_tcp_cmd, %struct.page_frag_cache, ptr, ptr, ptr }
%struct.nvmet_cq = type { i16, i16 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.llist_head = type { ptr }
%union.nvme_tcp_pdu = type { %struct.nvme_tcp_cmd_pdu, [56 x i8] }
%struct.nvme_tcp_cmd_pdu = type { %struct.nvme_tcp_hdr, %struct.nvme_command }
%struct.nvme_tcp_hdr = type { i8, i8, i8, i8, i32 }
%struct.nvme_command = type { %union.anon.197 }
%union.anon.197 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.198 }
%struct.anon.198 = type { i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.206 }
%union.anon.206 = type { ptr, [124 x i8] }
%struct.nvmet_tcp_cmd = type { ptr, %struct.nvmet_req, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.msghdr, ptr, i32, %struct.list_head, %struct.llist_node, i32, ptr, i32, i32, i32 }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.201, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.201 = type { %struct.anon.204 }
%struct.anon.204 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.131, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.131 = type { ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmf_common_command = type { i8, i8, i16, i8, [35 x i8], [24 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.nvmet_tcp_port = type { ptr, %struct.work_struct, ptr, %struct.__kernel_sockaddr_storage, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.170, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.170 = type { %struct.atomic_t }
%struct.kvec = type { ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.nvme_tcp_data_pdu = type { %struct.nvme_tcp_hdr, i16, i16, i32, i32, [4 x i8] }
%struct.nvme_tcp_r2t_pdu = type { %struct.nvme_tcp_hdr, i16, i16, i32, i32, [4 x i8] }
%struct.nvme_tcp_rsp_pdu = type { %struct.nvme_tcp_hdr, %struct.nvme_completion }
%struct.nvme_sgl_desc = type { i64, i32, [3 x i8], i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }

@__param_str_so_priority = internal constant [22 x i8] c"nvmet_tcp.so_priority\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@so_priority = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_so_priority = internal constant %struct.kernel_param { ptr @__param_str_so_priority, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @so_priority } }, section "__param", align 4
@__UNIQUE_ID_so_prioritytype623 = internal constant [35 x i8] c"nvmet_tcp.parmtype=so_priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_so_priority624 = internal constant [62 x i8] c"nvmet_tcp.parm=so_priority:nvmet tcp socket optimize priority\00", section ".modinfo", align 1
@__param_str_idle_poll_period_usecs = internal constant [33 x i8] c"nvmet_tcp.idle_poll_period_usecs\00", align 1
@idle_poll_period_usecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_idle_poll_period_usecs = internal constant %struct.kernel_param { ptr @__param_str_idle_poll_period_usecs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @idle_poll_period_usecs } }, section "__param", align 4
@__UNIQUE_ID_idle_poll_period_usecstype625 = internal constant [46 x i8] c"nvmet_tcp.parmtype=idle_poll_period_usecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_idle_poll_period_usecs626 = internal constant [92 x i8] c"nvmet_tcp.parm=idle_poll_period_usecs:nvmet tcp io_work poll till idle time period in usecs\00", section ".modinfo", align 1
@nvmet_tcp_ops = internal constant { %struct.nvmet_fabrics_ops, [44 x i8] } { %struct.nvmet_fabrics_ops { ptr null, i32 3, i32 1, i32 0, ptr @nvmet_tcp_queue_response, ptr @nvmet_tcp_add_port, ptr @nvmet_tcp_remove_port, ptr @nvmet_tcp_delete_ctrl, ptr @nvmet_tcp_disc_port_addr, ptr @nvmet_tcp_install_queue, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_tcp_queue_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.71, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmet_tcp_queue_mutex, i64 52), ptr getelementptr (i8, ptr @nvmet_tcp_queue_mutex, i64 52) }, ptr @nvmet_tcp_queue_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvmet_tcp_queue_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmet_tcp_queue_list, ptr @nvmet_tcp_queue_list }, [24 x i8] zeroinitializer }, align 32
@nvmet_tcp_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nvmet_tcp__632_1889_nvmet_tcp_init6 = internal global ptr @nvmet_tcp_init, section ".initcall6.init", align 4
@__exitcall_nvmet_tcp_exit = internal global ptr @nvmet_tcp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file633 = internal constant [45 x i8] c"nvmet_tcp.file=drivers/nvme/target/nvmet-tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license634 = internal constant [25 x i8] c"nvmet_tcp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias635 = internal constant [34 x i8] c"nvmet_tcp.alias=nvmet-transport-3\00", section ".modinfo", align 1
@nvmet_tcp_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvmet_tcp: address family %d not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvmet_tcp_add_port\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvme/target/tcp.c\00", [38 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr = internal global ptr @nvmet_tcp_add_port._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@nvmet_tcp_add_port._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvmet_tcp: malformed ip/port passed: %s:%s\0A\00", [50 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr.5 = internal global ptr @nvmet_tcp_add_port._entry.3, section ".printk_index", align 4
@nvmet_tcp_add_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&port->accept_work)\00", [58 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet_tcp: failed to create a socket\0A\00", [56 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr.9 = internal global ptr @nvmet_tcp_add_port._entry.7, section ".printk_index", align 4
@nvmet_tcp_add_port._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvmet_tcp: failed to bind port socket %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr.12 = internal global ptr @nvmet_tcp_add_port._entry.10, section ".printk_index", align 4
@nvmet_tcp_add_port._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nvmet_tcp: failed to listen %d on port sock\0A\00", [49 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr.15 = internal global ptr @nvmet_tcp_add_port._entry.13, section ".printk_index", align 4
@nvmet_tcp_add_port._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016nvmet_tcp: enabling port %d (%pISpc)\0A\00", [56 x i8] zeroinitializer }, align 32
@nvmet_tcp_add_port._entry_ptr.18 = internal global ptr @nvmet_tcp_add_port._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvmet_tcp_accept_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014nvmet_tcp: failed to accept err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_tcp_accept_work\00", [42 x i8] zeroinitializer }, align 32
@nvmet_tcp_accept_work._entry_ptr = internal global ptr @nvmet_tcp_accept_work._entry, section ".printk_index", align 4
@nvmet_tcp_accept_work._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nvmet_tcp: failed to allocate queue\0A\00", [57 x i8] zeroinitializer }, align 32
@nvmet_tcp_accept_work._entry_ptr.23 = internal global ptr @nvmet_tcp_accept_work._entry.21, section ".printk_index", align 4
@nvmet_tcp_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&queue->release_work)\00", [56 x i8] zeroinitializer }, align 32
@nvmet_tcp_alloc_queue.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&queue->io_work)\00", [61 x i8] zeroinitializer }, align 32
@nvmet_tcp_alloc_queue.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&queue->state_lock\00", [45 x i8] zeroinitializer }, align 32
@nvmet_tcp_queue_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_tcp_try_recv_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013nvmet_tcp: unexpected pdu type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_tcp_try_recv_pdu\00", [41 x i8] zeroinitializer }, align 32
@nvmet_tcp_try_recv_pdu._entry_ptr = internal global ptr @nvmet_tcp_try_recv_pdu._entry, section ".printk_index", align 4
@nvmet_tcp_try_recv_pdu._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013nvmet_tcp: pdu %d bad hlen %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nvmet_tcp_try_recv_pdu._entry_ptr.34 = internal global ptr @nvmet_tcp_try_recv_pdu._entry.32, section ".printk_index", align 4
@nvme_tcp_pdu_sizes = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\80\00\00\00H\00\18", [25 x i8] zeroinitializer }, align 32
@nvmet_tcp_verify_hdgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013nvmet_tcp: queue %d: header digest enabled but no header digest\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_tcp_verify_hdgst\00", [41 x i8] zeroinitializer }, align 32
@nvmet_tcp_verify_hdgst._entry_ptr = internal global ptr @nvmet_tcp_verify_hdgst._entry, section ".printk_index", align 4
@nvmet_tcp_verify_hdgst._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013nvmet_tcp: queue %d: header digest error: recv %#x expected %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_tcp_verify_hdgst._entry_ptr.39 = internal global ptr @nvmet_tcp_verify_hdgst._entry.37, section ".printk_index", align 4
@nvmet_tcp_check_ddgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet_tcp: queue %d: data digest flag is cleared\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_tcp_check_ddgst\00", [42 x i8] zeroinitializer }, align 32
@nvmet_tcp_check_ddgst._entry_ptr = internal global ptr @nvmet_tcp_check_ddgst._entry, section ".printk_index", align 4
@nvmet_tcp_done_recv_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet_tcp: unexpected pdu type (%d) before icreq\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmet_tcp_done_recv_pdu\00", [40 x i8] zeroinitializer }, align 32
@nvmet_tcp_done_recv_pdu._entry_ptr = internal global ptr @nvmet_tcp_done_recv_pdu._entry, section ".printk_index", align 4
@nvmet_tcp_done_recv_pdu._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013nvmet_tcp: queue %d: out of commands (%d) send_list_len: %d, opcode: %d\00", [54 x i8] zeroinitializer }, align 32
@nvmet_tcp_done_recv_pdu._entry_ptr.46 = internal global ptr @nvmet_tcp_done_recv_pdu._entry.44, section ".printk_index", align 4
@nvmet_tcp_done_recv_pdu._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013nvmet_tcp: failed cmd %p id %d opcode %d, data_len: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nvmet_tcp_done_recv_pdu._entry_ptr.49 = internal global ptr @nvmet_tcp_done_recv_pdu._entry.47, section ".printk_index", align 4
@nvmet_tcp_done_recv_pdu._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_tcp: queue %d: failed to map data\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmet_tcp_done_recv_pdu._entry_ptr.52 = internal global ptr @nvmet_tcp_done_recv_pdu._entry.50, section ".printk_index", align 4
@nvmet_tcp_handle_icreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_tcp: bad nvme-tcp pdu length (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_tcp_handle_icreq\00", [41 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_icreq._entry_ptr = internal global ptr @nvmet_tcp_handle_icreq._entry, section ".printk_index", align 4
@nvmet_tcp_handle_icreq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013nvmet_tcp: queue %d: bad pfv %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_icreq._entry_ptr.57 = internal global ptr @nvmet_tcp_handle_icreq._entry.55, section ".printk_index", align 4
@nvmet_tcp_handle_icreq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvmet_tcp: queue %d: unsupported hpda %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_icreq._entry_ptr.60 = internal global ptr @nvmet_tcp_handle_icreq._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_h2c_data_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013nvmet_tcp: ttag %u unexpected data offset %u (expected %u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvmet_tcp_handle_h2c_data_pdu\00", [34 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_h2c_data_pdu._entry_ptr = internal global ptr @nvmet_tcp_handle_h2c_data_pdu._entry, section ".printk_index", align 4
@nvmet_tcp_handle_req_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.64, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_tcp_handle_req_failure\00", [35 x i8] zeroinitializer }, align 32
@nvmet_tcp_handle_req_failure._entry_ptr = internal global ptr @nvmet_tcp_handle_req_failure._entry, section ".printk_index", align 4
@nvmet_tcp_try_recv_ddgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013nvmet_tcp: queue %d: cmd %d pdu (%d) data digest error: recv %#x expected %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmet_tcp_try_recv_ddgst\00", [39 x i8] zeroinitializer }, align 32
@nvmet_tcp_try_recv_ddgst._entry_ptr = internal global ptr @nvmet_tcp_try_recv_ddgst._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvmet_tcp_queue_ida.xa_lock\00", [36 x i8] zeroinitializer }, align 32
@nvmet_tcp_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014nvmet_tcp: queue %d unhandled state %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_tcp_state_change\00", [41 x i8] zeroinitializer }, align 32
@nvmet_tcp_state_change._entry_ptr = internal global ptr @nvmet_tcp_state_change._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISc\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvmet_tcp_queue_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_tcp_queue_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvmet_tcp_wq\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 4294967192, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 4294967192, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 7, i64 8]
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"so_priority\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 28, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"idle_poll_period_usecs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 37, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"nvmet_tcp_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1843, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"nvmet_tcp_queue_mutex\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"nvmet_tcp_queue_list\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 162, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"nvmet_tcp_wq\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 165, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1710, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1719, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1725, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1732, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1747, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1753, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1758, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1666, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1671, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1605, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1606, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1610, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"nvmet_tcp_queue_ida\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 55, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1107, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1113, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"nvme_tcp_pdu_sizes\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1055, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 267, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 276, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 295, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 988, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1006, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1018, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1029, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 867, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 873, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 878, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 835, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 961, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 940, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1195, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 161, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1533, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1837, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 163, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [29 x i8] c"../drivers/nvme/target/tcp.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1859, i32 33 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_alias635, ptr @__UNIQUE_ID_file633, ptr @__UNIQUE_ID_idle_poll_period_usecs626, ptr @__UNIQUE_ID_idle_poll_period_usecstype625, ptr @__UNIQUE_ID_license634, ptr @__UNIQUE_ID_so_priority624, ptr @__UNIQUE_ID_so_prioritytype623, ptr @__exitcall_nvmet_tcp_exit, ptr @__initcall__kmod_nvmet_tcp__632_1889_nvmet_tcp_init6, ptr @__param_idle_poll_period_usecs, ptr @__param_so_priority, ptr @nvmet_tcp_accept_work._entry, ptr @nvmet_tcp_accept_work._entry.21, ptr @nvmet_tcp_accept_work._entry_ptr, ptr @nvmet_tcp_accept_work._entry_ptr.23, ptr @nvmet_tcp_add_port._entry, ptr @nvmet_tcp_add_port._entry.10, ptr @nvmet_tcp_add_port._entry.13, ptr @nvmet_tcp_add_port._entry.16, ptr @nvmet_tcp_add_port._entry.3, ptr @nvmet_tcp_add_port._entry.7, ptr @nvmet_tcp_add_port._entry_ptr, ptr @nvmet_tcp_add_port._entry_ptr.12, ptr @nvmet_tcp_add_port._entry_ptr.15, ptr @nvmet_tcp_add_port._entry_ptr.18, ptr @nvmet_tcp_add_port._entry_ptr.5, ptr @nvmet_tcp_add_port._entry_ptr.9, ptr @nvmet_tcp_check_ddgst._entry, ptr @nvmet_tcp_check_ddgst._entry_ptr, ptr @nvmet_tcp_done_recv_pdu._entry, ptr @nvmet_tcp_done_recv_pdu._entry.44, ptr @nvmet_tcp_done_recv_pdu._entry.47, ptr @nvmet_tcp_done_recv_pdu._entry.50, ptr @nvmet_tcp_done_recv_pdu._entry_ptr, ptr @nvmet_tcp_done_recv_pdu._entry_ptr.46, ptr @nvmet_tcp_done_recv_pdu._entry_ptr.49, ptr @nvmet_tcp_done_recv_pdu._entry_ptr.52, ptr @nvmet_tcp_exit, ptr @nvmet_tcp_handle_h2c_data_pdu._entry, ptr @nvmet_tcp_handle_h2c_data_pdu._entry_ptr, ptr @nvmet_tcp_handle_icreq._entry, ptr @nvmet_tcp_handle_icreq._entry.55, ptr @nvmet_tcp_handle_icreq._entry.58, ptr @nvmet_tcp_handle_icreq._entry_ptr, ptr @nvmet_tcp_handle_icreq._entry_ptr.57, ptr @nvmet_tcp_handle_icreq._entry_ptr.60, ptr @nvmet_tcp_handle_req_failure._entry, ptr @nvmet_tcp_handle_req_failure._entry_ptr, ptr @nvmet_tcp_state_change._entry, ptr @nvmet_tcp_state_change._entry_ptr, ptr @nvmet_tcp_try_recv_ddgst._entry, ptr @nvmet_tcp_try_recv_ddgst._entry_ptr, ptr @nvmet_tcp_try_recv_pdu._entry, ptr @nvmet_tcp_try_recv_pdu._entry.32, ptr @nvmet_tcp_try_recv_pdu._entry_ptr, ptr @nvmet_tcp_try_recv_pdu._entry_ptr.34, ptr @nvmet_tcp_verify_hdgst._entry, ptr @nvmet_tcp_verify_hdgst._entry.37, ptr @nvmet_tcp_verify_hdgst._entry_ptr, ptr @nvmet_tcp_verify_hdgst._entry_ptr.39, ptr @so_priority, ptr @idle_poll_period_usecs, ptr @nvmet_tcp_ops, ptr @nvmet_tcp_queue_mutex, ptr @nvmet_tcp_queue_list, ptr @nvmet_tcp_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nvmet_tcp_add_port.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @nvmet_tcp_alloc_queue.__key, ptr @.str.24, ptr @nvmet_tcp_alloc_queue.__key.25, ptr @.str.26, ptr @nvmet_tcp_alloc_queue.__key.27, ptr @.str.28, ptr @nvmet_tcp_queue_ida, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @nvme_tcp_pdu_sizes, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @so_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_poll_period_usecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_queue_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_queue_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_add_port._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_accept_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_accept_work._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_alloc_queue.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_alloc_queue.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_queue_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_try_recv_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_try_recv_pdu._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_pdu_sizes to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_verify_hdgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_verify_hdgst._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_check_ddgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_done_recv_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_done_recv_pdu._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_done_recv_pdu._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_done_recv_pdu._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_handle_icreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_handle_icreq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_handle_icreq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_handle_h2c_data_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_handle_req_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_try_recv_ddgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_tcp_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nvmet_unregister_transport(ptr noundef nonnull @nvmet_tcp_ops) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %.pn7 = load ptr, ptr @nvmet_tcp_queue_list, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @nvmet_tcp_queue_list
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %queue.0 = getelementptr i8, ptr %.pn9, i32 -744
  %1 = ptrtoint ptr %queue.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queue.0, align 8
  %call = tail call i32 @kernel_sock_shutdown(ptr noundef %2, i32 noundef 2) #10
  %3 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @nvmet_tcp_queue_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #10
  %5 = load ptr, ptr @nvmet_tcp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_tcp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.73, i32 noundef 16, i32 noundef 0) #10
  store ptr %call, ptr @nvmet_tcp_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nvmet_register_transport(ptr noundef nonnull @nvmet_tcp_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @nvmet_tcp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_queue_response(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %req, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %cmd2 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 8
  %cmp = icmp eq ptr %add.ptr, %3
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge, !prof !176

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %length = getelementptr inbounds %struct.nvme_common_command, ptr %5, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 8
  %rcv_state = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %rcv_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcv_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.then.if.end15_crit_edge, label %land.lhs.true8

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true8:                                   ; preds = %if.then
  %10 = tail call i32 @llvm.bswap.i32(i32 %7)
  %port = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inline_data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp10.not = icmp ugt i32 %10, %14
  br i1 %cmp10.not, label %land.lhs.true8.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 127
  br i1 %cmp.i.i, label %if.then.i, label %land.lhs.true11.nvme_is_write.exit_crit_edge, !prof !176

land.lhs.true11.nvme_is_write.exit_crit_edge:     ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit

if.then.i:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i = getelementptr inbounds %struct.nvmf_common_command, ptr %5, i32 0, i32 3
  br label %nvme_is_write.exit

nvme_is_write.exit:                               ; preds = %if.then.i, %land.lhs.true11.nvme_is_write.exit_crit_edge
  %retval.0.in.in.in.i = phi ptr [ %fctype.i, %if.then.i ], [ %5, %land.lhs.true11.nvme_is_write.exit_crit_edge ]
  %17 = ptrtoint ptr %retval.0.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %retval.0.in.in.i = load i8, ptr %retval.0.in.in.in.i, align 4
  %retval.0.in.i = and i8 %retval.0.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i)
  %retval.0.i.not = icmp eq i8 %retval.0.in.i, 0
  br i1 %retval.0.i.not, label %nvme_is_write.exit.if.end15_crit_edge, label %nvme_is_write.exit.cleanup_crit_edge

nvme_is_write.exit.cleanup_crit_edge:             ; preds = %nvme_is_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvme_is_write.exit.if.end15_crit_edge:            ; preds = %nvme_is_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %nvme_is_write.exit.if.end15_crit_edge, %land.lhs.true8.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %lentry = getelementptr i8, ptr %req, i32 448
  %resp_list = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %lentry, ptr noundef %lentry, ptr noundef %resp_list) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk.i, align 16
  %22 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %25 = load ptr, ptr @nvmet_tcp_wq, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %io_work = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %27, i32 0, i32 2
  %call19 = tail call zeroext i1 @queue_work_on(i32 noundef %24, ptr noundef %25, ptr noundef %io_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %nvme_is_write.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_tcp_add_port(ptr noundef %nport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %adrfam = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %adrfam to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %adrfam, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %do.end [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %2 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #14
  br label %err_port

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %af.0 = phi i16 [ 10, %sw.bb1 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %traddr = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 12
  %trsvcid = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 9
  %addr = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 3
  %call9 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext %af.0, ptr noundef %traddr, ptr noundef %trsvcid, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end23, label %do.end14

do.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %traddr, ptr noundef %trsvcid) #14
  br label %err_port

if.end23:                                         ; preds = %sw.epilog
  %nport24 = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %nport24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nport, ptr %nport24, align 8
  %accept_work = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %accept_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %accept_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %accept_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvmet_tcp_add_port.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry29 = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry29, ptr %entry29, align 8
  %prev.i = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry29, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvmet_tcp_accept_work, ptr %func, align 8
  %9 = ptrtoint ptr %nport24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nport24, align 8
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inline_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then35, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16384, ptr %inline_data_size, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end23.if.end38_crit_edge
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 4
  %conv40 = zext i16 %15 to i32
  %call41 = tail call i32 @sock_create(i32 noundef %conv40, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %err_port

if.end49:                                         ; preds = %if.end38
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 72
  %20 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %sk_user_data, align 4
  %21 = load ptr, ptr %call7.i.i, align 8
  %sk52 = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sk52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk52, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 77
  %24 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_data_ready, align 8
  %data_ready = getelementptr inbounds %struct.nvmet_tcp_port, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %data_ready, align 4
  %27 = load ptr, ptr %sk52, align 16
  %sk_data_ready55 = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 77
  %28 = ptrtoint ptr %sk_data_ready55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nvmet_tcp_listen_data_ready, ptr %sk_data_ready55, align 8
  %29 = load ptr, ptr %call7.i.i, align 8
  %sk57 = getelementptr inbounds %struct.socket, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sk57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk57, align 16
  tail call void @sock_set_reuseaddr(ptr noundef %31) #10
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %sk59 = getelementptr inbounds %struct.socket, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %sk59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk59, align 16
  tail call void @tcp_sock_set_nodelay(ptr noundef %35) #10
  %36 = load i32, ptr @so_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp60 = icmp sgt i32 %36, 0
  br i1 %cmp60, label %if.then62, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %sk64 = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sk64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk64, align 16
  tail call void @sock_set_priority(ptr noundef %40, i32 noundef %36) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end49.if.end65_crit_edge
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %call68 = tail call i32 @kernel_bind(ptr noundef %42, ptr noundef %addr, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call68) #14
  br label %err_sock

if.end76:                                         ; preds = %if.end65
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %call78 = tail call i32 @kernel_listen(ptr noundef %44, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call78) #14
  br label %err_sock

if.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %priv, align 4
  %portid = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %portid to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %portid, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %conv92 = zext i16 %48 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv92, ptr noundef %addr) #14
  br label %cleanup

err_sock:                                         ; preds = %do.end83, %do.end73
  %ret.0 = phi i32 [ %call68, %do.end73 ], [ %call78, %do.end83 ]
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i, align 8
  tail call void @sock_release(ptr noundef %50) #10
  br label %err_port

err_port:                                         ; preds = %err_sock, %do.end46, %do.end14, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %call9, %do.end14 ], [ %call41, %do.end46 ], [ %ret.0, %err_sock ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_port, %if.end86, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_port ], [ 0, %if.end86 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_remove_port(ptr nocapture noundef readonly %nport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %data_ready = getelementptr inbounds %struct.nvmet_tcp_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_ready, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %sk2 = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk2, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 77
  %12 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %sk_data_ready, align 8
  %13 = load ptr, ptr %1, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk4, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 72
  %16 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sk_user_data, align 4
  %17 = load ptr, ptr %1, align 4
  %sk6 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk6, align 16
  %sk_callback_lock7 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock7) #10
  %accept_work = getelementptr inbounds %struct.nvmet_tcp_port, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %accept_work) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %.pn10.i = load ptr, ptr @nvmet_tcp_queue_list, align 4
  %cmp.not12.i = icmp eq ptr %.pn10.i, @nvmet_tcp_queue_list
  br i1 %cmp.not12.i, label %entry.nvmet_tcp_destroy_port_queues.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nvmet_tcp_destroy_port_queues.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_destroy_port_queues.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn10.i, %entry.for.body.i_crit_edge ]
  %port1.i = getelementptr i8, ptr %.pn13.i, i32 -740
  %20 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port1.i, align 4
  %cmp2.i = icmp eq ptr %21, %1
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %queue.014.i = getelementptr i8, ptr %.pn13.i, i32 -744
  %22 = ptrtoint ptr %queue.014.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue.014.i, align 8
  %call.i = tail call i32 @kernel_sock_shutdown(ptr noundef %23, i32 noundef 2) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @nvmet_tcp_queue_list
  br i1 %cmp.not.i, label %for.inc.i.nvmet_tcp_destroy_port_queues.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nvmet_tcp_destroy_port_queues.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_destroy_port_queues.exit

nvmet_tcp_destroy_port_queues.exit:               ; preds = %for.inc.i.nvmet_tcp_destroy_port_queues.exit_crit_edge, %entry.nvmet_tcp_destroy_port_queues.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void @sock_release(ptr noundef %26) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_delete_ctrl(ptr noundef readnone %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %.pn10 = load ptr, ptr @nvmet_tcp_queue_list, align 4
  %cmp.not12 = icmp eq ptr %.pn10, @nvmet_tcp_queue_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %nvme_sq = getelementptr i8, ptr %.pn13, i32 -688
  %0 = ptrtoint ptr %nvme_sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvme_sq, align 8
  %cmp2 = icmp eq ptr %1, %ctrl
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %queue.014 = getelementptr i8, ptr %.pn13, i32 -744
  %2 = ptrtoint ptr %queue.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.014, align 8
  %call = tail call i32 @kernel_sock_shutdown(ptr noundef %3, i32 noundef 2) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @nvmet_tcp_queue_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_disc_port_addr(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %nport, ptr nocapture noundef writeonly %traddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %addr = getelementptr inbounds %struct.nvmet_tcp_port, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @inet_addr_is_any(ptr noundef %addr) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %req, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %sockaddr = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %3, i32 0, i32 24
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %traddr, ptr noundef nonnull @.str.70, ptr noundef %sockaddr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %traddr3 = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 12
  %4 = call ptr @memcpy(ptr %traddr, ptr %traddr3, i32 256)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @nvmet_tcp_install_queue(ptr noundef %sq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sq, i32 -56
  %qid = getelementptr inbounds %struct.nvmet_sq, ptr %sq, i32 0, i32 2
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %qid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.nvmet_sq, ptr %sq, i32 0, i32 3
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size, align 2
  %conv2 = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %nr_cmds = getelementptr i8, ptr %sq, i32 140
  %5 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %nr_cmds, align 4
  %6 = mul nuw nsw i32 %conv2, 960
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.nvmet_tcp_alloc_cmds.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.nvmet_tcp_alloc_cmds.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_alloc_cmds.exit.thread

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp27.not.i = icmp eq i16 %4, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_alloc_cmds.exit.thread10

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.nvmet_tcp_cmd, ptr %call8.i.i.i, i32 %i.028.i
  %call2.i = tail call fastcc i32 @nvmet_tcp_alloc_cmd(ptr noundef %add.ptr, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028.i)
  %cmp730.not.i = icmp eq i32 %i.028.i, 0
  br i1 %cmp730.not.i, label %nvmet_tcp_alloc_cmds.exit.thread13, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

nvmet_tcp_alloc_cmds.exit.thread13:               ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %nvmet_tcp_alloc_cmds.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %for.inc.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_alloc_cmds.exit.thread10

nvmet_tcp_alloc_cmds.exit.thread10:               ; preds = %for.inc.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge, %for.cond.preheader.i.nvmet_tcp_alloc_cmds.exit.thread10_crit_edge
  %cmds6.i = getelementptr i8, ptr %sq, i32 136
  %7 = ptrtoint ptr %cmds6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i.i, ptr %cmds6.i, align 8
  br label %nvmet_tcp_alloc_cmds.exit.thread

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec31.in.i = phi i32 [ %dec31.i, %while.body.i.while.body.i_crit_edge ], [ %i.028.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec31.i = add nsw i32 %dec31.in.i, -1
  %r2t_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %call8.i.i.i, i32 %dec31.i, i32 5
  %8 = ptrtoint ptr %r2t_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r2t_pdu.i.i, align 4
  tail call void @page_frag_free(ptr noundef %9) #10
  %data_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %call8.i.i.i, i32 %dec31.i, i32 4
  %10 = ptrtoint ptr %data_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_pdu.i.i, align 32
  tail call void @page_frag_free(ptr noundef %11) #10
  %rsp_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %call8.i.i.i, i32 %dec31.i, i32 3
  %12 = ptrtoint ptr %rsp_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsp_pdu.i.i, align 4
  tail call void @page_frag_free(ptr noundef %13) #10
  %cmd_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %call8.i.i.i, i32 %dec31.i, i32 2
  %14 = ptrtoint ptr %cmd_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_pdu.i.i, align 8
  tail call void @page_frag_free(ptr noundef %15) #10
  %cmp7.i = icmp sgt i32 %dec31.in.i, 1
  br i1 %cmp7.i, label %while.body.i.while.body.i_crit_edge, label %nvmet_tcp_alloc_cmds.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

nvmet_tcp_alloc_cmds.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %nvmet_tcp_alloc_cmds.exit.thread

nvmet_tcp_alloc_cmds.exit.thread:                 ; preds = %nvmet_tcp_alloc_cmds.exit, %nvmet_tcp_alloc_cmds.exit.thread10, %nvmet_tcp_alloc_cmds.exit.thread13, %if.end.nvmet_tcp_alloc_cmds.exit.thread_crit_edge
  %16 = phi i16 [ 0, %nvmet_tcp_alloc_cmds.exit.thread10 ], [ 6, %nvmet_tcp_alloc_cmds.exit ], [ 6, %nvmet_tcp_alloc_cmds.exit.thread13 ], [ 6, %if.end.nvmet_tcp_alloc_cmds.exit.thread_crit_edge ]
  ret i16 %16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_accept_work(ptr noundef %w) #3 align 64 {
entry:
  %newsock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsock) #10
  %0 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %newsock, align 4, !annotation !177
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call20 = call i32 @kernel_accept(ptr noundef %2, ptr noundef nonnull %newsock, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %entry.if.then_crit_edge, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  br label %if.end5

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.end13.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa = phi i32 [ %call20, %entry.if.then_crit_edge ], [ %call, %if.end13.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.lcssa)
  %cmp1.not = icmp eq i32 %call.lcssa, -11
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.lcssa) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsock) #10
  ret void

if.end5:                                          ; preds = %if.end13.if.end5_crit_edge, %entry.if.end5_crit_edge
  %3 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %newsock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1264) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.do.end10_crit_edge, label %do.body.i

if.end5.do.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body.i:                                        ; preds = %if.end5
  %release_work.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 26
  call void @__init_work(ptr noundef %release_work.i, i32 noundef 0) #10
  %6 = ptrtoint ptr %release_work.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %release_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 26, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @nvmet_tcp_alloc_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 26, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 26, i32 2
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvmet_tcp_release_queue_work, ptr %func.i, align 4
  %io_work.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %io_work.i, i32 noundef 0) #10
  %10 = ptrtoint ptr %io_work.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %io_work.i, align 8
  %lockdep_map12.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map12.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @nvmet_tcp_alloc_queue.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i81.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i81.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry14.i, ptr %prev.i81.i, align 8
  %func16.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %func16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nvmet_tcp_io_work, ptr %func16.i, align 4
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %call7.i.i.i, align 8
  %port19.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %port19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %port19.i, align 4
  %nr_cmds.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nr_cmds.i, align 4
  %state_lock.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %state_lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @nvmet_tcp_alloc_queue.__key.27, i16 noundef signext 3) #10
  %state.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 23
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state.i, align 4
  %free_list.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %free_list.i, ptr %free_list.i, align 8
  %prev.i82.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i82.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free_list.i, ptr %prev.i82.i, align 4
  %resp_list.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %resp_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %resp_list.i, align 8
  %resp_send_list.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %resp_send_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resp_send_list.i, ptr %resp_send_list.i, align 4
  %prev.i83.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resp_send_list.i, ptr %prev.i83.i, align 8
  %call24.i = call i32 @ida_alloc_range(ptr noundef nonnull @nvmet_tcp_queue_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %idx.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 27
  %23 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call24.i, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.i = icmp slt i32 %call24.i, 0
  br i1 %cmp.i, label %do.body.i.out_free_queue.i_crit_edge, label %if.end28.i

do.body.i.out_free_queue.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_queue.i

if.end28.i:                                       ; preds = %do.body.i
  %connect.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 29
  %call29.i = call fastcc i32 @nvmet_tcp_alloc_cmd(ptr noundef nonnull %call7.i.i.i, ptr noundef %connect.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.out_ida_remove.i_crit_edge

if.end28.i.out_ida_remove.i_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ida_remove.i

if.end32.i:                                       ; preds = %if.end28.i
  %nvme_sq.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 4
  %call33.i = call i32 @nvmet_sq_init(ptr noundef %nvme_sq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.out_free_connect.i_crit_edge

if.end32.i.out_free_connect.i_crit_edge:          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_connect.i

if.end36.i:                                       ; preds = %if.end32.i
  %offset.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %offset.i.i, align 4
  %left.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %left.i.i, align 8
  %cmd.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmd.i.i, align 8
  %rcv_state.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 14
  %27 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rcv_state.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %queue_list.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 28
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_tcp_queue_list, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %queue_list.i, ptr noundef %28, ptr noundef nonnull @nvmet_tcp_queue_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end36.i.list_add_tail.exit.i_crit_edge

if.end36.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %queue_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_tcp_queue_list, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvmet_tcp_queue_list, ptr %queue_list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 28, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %queue_list.i, ptr %28, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end36.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i.i, align 8
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk.i.i, align 16
  %sockaddr.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 24
  %call2.i.i = call i32 @kernel_getsockname(ptr noundef %33, ptr noundef %sockaddr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %list_add_tail.exit.i.out_destroy_sq.i_crit_edge, label %if.end.i.i

list_add_tail.exit.i.out_destroy_sq.i_crit_edge:  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_destroy_sq.i

if.end.i.i:                                       ; preds = %list_add_tail.exit.i
  %sockaddr_peer.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 25
  %call3.i.i = call i32 @kernel_getpeername(ptr noundef %33, ptr noundef %sockaddr_peer.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.out_destroy_sq.i_crit_edge, label %if.end6.i.i

if.end.i.i.out_destroy_sq.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_destroy_sq.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %36 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk.i.i, align 16
  call void @sock_no_linger(ptr noundef %37) #10
  %38 = load i32, ptr @so_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8.i.i = icmp sgt i32 %38, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end6.i.i.if.end11.i.i_crit_edge

if.end6.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk.i.i, align 16
  call void @sock_set_priority(ptr noundef %40, i32 noundef %38) #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end11.i.i_crit_edge
  %rcv_tos.i.i = getelementptr inbounds %struct.inet_sock, ptr %35, i32 0, i32 13
  %41 = ptrtoint ptr %rcv_tos.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rcv_tos.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp12.not.i.i = icmp eq i8 %42, 0
  br i1 %cmp12.not.i.i, label %if.end11.i.i.if.end18.i.i_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk.i.i, align 16
  call void @ip_sock_set_tos(ptr noundef %44, i32 noundef %conv.i.i) #10
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then14.i.i, %if.end11.i.i.if.end18.i.i_crit_edge
  %45 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %47 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk.i.i, align 16
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp22.not.i.i = icmp eq i8 %50, 1
  br i1 %cmp22.not.i.i, label %if.else.i.i, label %nvmet_tcp_set_queue_sock.exit.i

if.else.i.i:                                      ; preds = %if.end18.i.i
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %48, i32 0, i32 72
  %51 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i.i, ptr %sk_user_data.i.i, align 4
  %52 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk.i.i, align 16
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %53, i32 0, i32 77
  %54 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk_data_ready.i.i, align 8
  %data_ready.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 31
  %56 = ptrtoint ptr %data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %data_ready.i.i, align 8
  %57 = load ptr, ptr %sk.i.i, align 16
  %sk_data_ready28.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 77
  %58 = ptrtoint ptr %sk_data_ready28.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @nvmet_tcp_data_ready, ptr %sk_data_ready28.i.i, align 8
  %59 = load ptr, ptr %sk.i.i, align 16
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %59, i32 0, i32 76
  %60 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk_state_change.i.i, align 4
  %state_change.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 32
  %62 = ptrtoint ptr %state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %state_change.i.i, align 4
  %63 = load ptr, ptr %sk.i.i, align 16
  %sk_state_change31.i.i = getelementptr inbounds %struct.sock, ptr %63, i32 0, i32 76
  %64 = ptrtoint ptr %sk_state_change31.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @nvmet_tcp_state_change, ptr %sk_state_change31.i.i, align 4
  %65 = load ptr, ptr %sk.i.i, align 16
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %65, i32 0, i32 78
  %66 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk_write_space.i.i, align 4
  %write_space.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 33
  %68 = ptrtoint ptr %write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %write_space.i.i, align 8
  %69 = load ptr, ptr %sk.i.i, align 16
  %sk_write_space34.i.i = getelementptr inbounds %struct.sock, ptr %69, i32 0, i32 78
  %70 = ptrtoint ptr %sk_write_space34.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @nvmet_tcp_write_space, ptr %sk_write_space34.i.i, align 4
  %71 = load i32, ptr @idle_poll_period_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.nvmet_tcp_alloc_queue.exit_crit_edge, label %if.then35.i.i

if.else.i.i.nvmet_tcp_alloc_queue.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_alloc_queue.exit

if.then35.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %call3.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %71) #10
  %add.i.i.i = add i32 %call3.i.i.i.i, %72
  %poll_end.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 21
  %73 = ptrtoint ptr %poll_end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i.i.i, ptr %poll_end.i.i.i, align 4
  br label %nvmet_tcp_alloc_queue.exit

nvmet_tcp_set_queue_sock.exit.i:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_callback_lock41.i.i = getelementptr inbounds %struct.sock, ptr %48, i32 0, i32 50
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock41.i.i) #10
  br label %out_destroy_sq.i

out_destroy_sq.i:                                 ; preds = %nvmet_tcp_set_queue_sock.exit.i, %if.end.i.i.out_destroy_sq.i_crit_edge, %list_add_tail.exit.i.out_destroy_sq.i_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %call.i.i84.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_list.i) #10
  br i1 %call.i.i84.i, label %if.end.i.i85.i, label %out_destroy_sq.i.list_del_init.exit.i_crit_edge

out_destroy_sq.i.list_del_init.exit.i_crit_edge:  ; preds = %out_destroy_sq.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i85.i:                                   ; preds = %out_destroy_sq.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 28, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue_list.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i85.i, %out_destroy_sq.i.list_del_init.exit.i_crit_edge
  %80 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %queue_list.i, ptr %queue_list.i, align 8
  %prev.i3.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 28, i32 1
  %81 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %queue_list.i, ptr %prev.i3.i.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i) #10
  br label %out_free_connect.i

out_free_connect.i:                               ; preds = %list_del_init.exit.i, %if.end32.i.out_free_connect.i_crit_edge
  %r2t_pdu.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 29, i32 5
  %82 = ptrtoint ptr %r2t_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %r2t_pdu.i.i, align 4
  call void @page_frag_free(ptr noundef %83) #10
  %data_pdu.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 29, i32 4
  %84 = ptrtoint ptr %data_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_pdu.i.i, align 8
  call void @page_frag_free(ptr noundef %85) #10
  %rsp_pdu.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 29, i32 3
  %86 = ptrtoint ptr %rsp_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rsp_pdu.i.i, align 4
  call void @page_frag_free(ptr noundef %87) #10
  %cmd_pdu.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %call7.i.i.i, i32 0, i32 29, i32 2
  %88 = ptrtoint ptr %cmd_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd_pdu.i.i, align 8
  call void @page_frag_free(ptr noundef %89) #10
  br label %out_ida_remove.i

out_ida_remove.i:                                 ; preds = %out_free_connect.i, %if.end28.i.out_ida_remove.i_crit_edge
  %90 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %idx.i, align 4
  call void @ida_free(ptr noundef nonnull @nvmet_tcp_queue_ida, i32 noundef %91) #10
  br label %out_free_queue.i

out_free_queue.i:                                 ; preds = %out_ida_remove.i, %do.body.i.out_free_queue.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %do.end10

nvmet_tcp_alloc_queue.exit:                       ; preds = %if.then35.i.i, %if.else.i.i.nvmet_tcp_alloc_queue.exit_crit_edge
  %92 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i.i, align 8
  %sk.i.i.i = getelementptr inbounds %struct.socket, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sk.i.i.i, align 16
  %96 = getelementptr inbounds %struct.sock_common, ptr %95, i32 0, i32 18
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 8
  %99 = load ptr, ptr @nvmet_tcp_wq, align 4
  %call38.i.i = call zeroext i1 @queue_work_on(i32 noundef %98, ptr noundef %99, ptr noundef %io_work.i) #10
  %100 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock41.i90.i = getelementptr inbounds %struct.sock, ptr %101, i32 0, i32 50
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock41.i90.i) #10
  br label %if.end13

do.end10:                                         ; preds = %out_free_queue.i, %if.end5.do.end10_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  %102 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %newsock, align 4
  call void @sock_release(ptr noundef %103) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %nvmet_tcp_alloc_queue.exit
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @kernel_accept(ptr noundef %105, ptr noundef nonnull %newsock, i32 noundef 2048) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end13.if.then_crit_edge, label %if.end13.if.end5_crit_edge

if.end13.if.end5_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end13.if.then_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_listen_data_ready(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  br i1 %cmp, label %if.then2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %accept_work = getelementptr inbounds %struct.nvmet_tcp_port, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %accept_work) #10
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_release_queue_work(ptr noundef %w) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -696
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_tcp_queue_mutex, i32 noundef 0) #10
  %queue_list = getelementptr i8, ptr %w, i32 48
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %w, i32 52
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %queue_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queue_list, ptr %queue_list, align 4
  %prev.i3.i = getelementptr i8, ptr %w, i32 52
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue_list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_tcp_queue_mutex) #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %data_ready.i = getelementptr i8, ptr %w, i32 552
  %12 = ptrtoint ptr %data_ready.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_ready.i, align 8
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 16
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 77
  %16 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %sk_data_ready.i, align 8
  %state_change.i = getelementptr i8, ptr %w, i32 556
  %17 = ptrtoint ptr %state_change.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state_change.i, align 4
  %19 = load ptr, ptr %sk.i, align 16
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 76
  %20 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %sk_state_change.i, align 4
  %write_space.i = getelementptr i8, ptr %w, i32 560
  %21 = ptrtoint ptr %write_space.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_space.i, align 8
  %23 = load ptr, ptr %sk.i, align 16
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 78
  %24 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %sk_write_space.i, align 4
  %25 = load ptr, ptr %sk.i, align 16
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 72
  %26 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sk_user_data.i, align 4
  %27 = load ptr, ptr %sk.i, align 16
  %sk_callback_lock7.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock7.i) #10
  %io_work = getelementptr i8, ptr %w, i32 -688
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_work) #10
  %rcv_state = getelementptr i8, ptr %w, i32 -460
  %28 = ptrtoint ptr %rcv_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %rcv_state, align 4
  %nr_cmds.i = getelementptr i8, ptr %w, i32 -500
  %29 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp36.not.i = icmp eq i32 %30, 0
  br i1 %cmp36.not.i, label %list_del_init.exit.land.lhs.true.i_crit_edge, label %for.body.preheader.i

list_del_init.exit.land.lhs.true.i_crit_edge:     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.body.preheader.i:                             ; preds = %list_del_init.exit
  %cmds.i = getelementptr i8, ptr %w, i32 -504
  %31 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmds.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %nvmet_tcp_free_cmd_buffers.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.038.i = phi i32 [ %inc.i, %nvmet_tcp_free_cmd_buffers.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cmd.037.i = phi ptr [ %incdec.ptr.i, %nvmet_tcp_free_cmd_buffers.exit.i.for.body.i_crit_edge ], [ %32, %for.body.preheader.i ]
  %req.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 1
  %33 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req.i.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %36)
  %cmp.i.i.i.i.i = icmp eq i8 %36, 127
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i.nvme_is_write.exit.i.i.i_crit_edge, !prof !176

for.body.i.nvme_is_write.exit.i.i.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %34, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i

nvme_is_write.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %for.body.i.nvme_is_write.exit.i.i.i_crit_edge
  %retval.0.in.in.in.i.i.i.i = phi ptr [ %fctype.i.i.i.i, %if.then.i.i.i.i ], [ %34, %for.body.i.nvme_is_write.exit.i.i.i_crit_edge ]
  %37 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %retval.0.in.in.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i.i, align 4
  %retval.0.in.i.i.i.i = and i8 %retval.0.in.in.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i)
  %retval.0.i.not.i.i.i = icmp eq i8 %retval.0.in.i.i.i.i, 0
  br i1 %retval.0.i.not.i.i.i, label %nvme_is_write.exit.i.i.i.if.end.i_crit_edge, label %nvmet_tcp_has_data_in.exit.i.i

nvme_is_write.exit.i.i.i.if.end.i_crit_edge:      ; preds = %nvme_is_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

nvmet_tcp_has_data_in.exit.i.i:                   ; preds = %nvme_is_write.exit.i.i.i
  %rbytes_done.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 6
  %38 = ptrtoint ptr %rbytes_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rbytes_done.i.i.i, align 8
  %transfer_len.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %transfer_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i.i.i = icmp ult i32 %39, %41
  br i1 %cmp.i.i.i, label %nvmet_tcp_need_data_in.exit.i, label %nvmet_tcp_has_data_in.exit.i.i.if.end.i_crit_edge

nvmet_tcp_has_data_in.exit.i.i.if.end.i_crit_edge: ; preds = %nvmet_tcp_has_data_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

nvmet_tcp_need_data_in.exit.i:                    ; preds = %nvmet_tcp_has_data_in.exit.i.i
  %cqe.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cqe.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.nvme_completion, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i.i = icmp eq i16 %45, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %nvmet_tcp_need_data_in.exit.i.if.end.i_crit_edge

nvmet_tcp_need_data_in.exit.i.if.end.i_crit_edge: ; preds = %nvmet_tcp_need_data_in.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %nvmet_tcp_need_data_in.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nvmet_req_uninit(ptr noundef %req.i.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %nvmet_tcp_need_data_in.exit.i.if.end.i_crit_edge, %nvmet_tcp_has_data_in.exit.i.i.if.end.i_crit_edge, %nvme_is_write.exit.i.i.i.if.end.i_crit_edge
  %sg1.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %sg1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg1.i.i, align 4
  %sg_idx.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 10
  %48 = ptrtoint ptr %sg_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_idx.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.scatterlist, ptr %47, i32 %49
  %nr_mapped.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 11
  %50 = ptrtoint ptr %nr_mapped.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_mapped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp10.i.i = icmp sgt i32 %51, 0
  br i1 %cmp10.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge

if.end.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %kunmap.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %kunmap.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.scatterlist, ptr %arrayidx.i.i, i32 %i.011.i.i
  %52 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i.i, align 4
  %and.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !178

do.body2.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

sg_page.exit.i.i:                                 ; preds = %for.body.i.i
  %and.i.i.i = and i32 %53, -4
  %54 = inttoptr i32 %and.i.i.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #10
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %shr.i.i.i.i = lshr i32 %56, 30
  %57 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i.i.i.i, label %sg_page.exit.i.i.kunmap.exit.i.i_crit_edge [
    i32 2, label %sg_page.exit.i.i.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

sg_page.exit.i.i.if.end.i.i.i_crit_edge:          ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

sg_page.exit.i.i.kunmap.exit.i.i_crit_edge:       ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i.i.i:                        ; preds = %sg_page.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %58 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp2.i.not.i.i.i = icmp eq i32 %58, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.kunmap.exit.i.i_crit_edge

is_highmem_idx.exit.i.i.i.kunmap.exit.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, %sg_page.exit.i.i.if.end.i.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %54) #10
  br label %kunmap.exit.i.i

kunmap.exit.i.i:                                  ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i.i.i.kunmap.exit.i.i_crit_edge, %sg_page.exit.i.i.kunmap.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %59 = ptrtoint ptr %nr_mapped.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_mapped.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %60
  br i1 %cmp.i.i, label %kunmap.exit.i.i.for.body.i.i_crit_edge, label %kunmap.exit.i.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge

kunmap.exit.i.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge: ; preds = %kunmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit.i

kunmap.exit.i.i.for.body.i.i_crit_edge:           ; preds = %kunmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

nvmet_tcp_free_cmd_buffers.exit.i:                ; preds = %kunmap.exit.i.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge, %if.end.i.nvmet_tcp_free_cmd_buffers.exit.i_crit_edge
  %61 = ptrtoint ptr %nr_mapped.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %nr_mapped.i.i, align 4
  %iov.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 0, i32 13
  %62 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iov.i.i, align 8
  tail call void @kfree(ptr noundef %63) #10
  %64 = ptrtoint ptr %sg1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg1.i.i, align 4
  tail call void @sgl_free(ptr noundef %65) #10
  %66 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %iov.i.i, align 8
  %67 = ptrtoint ptr %sg1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %sg1.i.i, align 4
  %inc.i = add nuw i32 %i.038.i, 1
  %incdec.ptr.i = getelementptr %struct.nvmet_tcp_cmd, ptr %cmd.037.i, i32 1
  %68 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_cmds.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %69
  br i1 %cmp.i, label %nvmet_tcp_free_cmd_buffers.exit.i.for.body.i_crit_edge, label %for.end.i

nvmet_tcp_free_cmd_buffers.exit.i.for.body.i_crit_edge: ; preds = %nvmet_tcp_free_cmd_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %nvmet_tcp_free_cmd_buffers.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %phi.cmp.i = icmp eq i32 %69, 0
  br i1 %phi.cmp.i, label %for.end.i.land.lhs.true.i_crit_edge, label %for.end.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge

for.end.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_uninit_data_in_cmds.exit

for.end.i.land.lhs.true.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.i.land.lhs.true.i_crit_edge, %list_del_init.exit.land.lhs.true.i_crit_edge
  %connect.i = getelementptr i8, ptr %w, i32 56
  %req.i.i17.i = getelementptr i8, ptr %w, i32 64
  %70 = ptrtoint ptr %req.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %req.i.i17.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %73)
  %cmp.i.i.i.i18.i = icmp eq i8 %73, 127
  br i1 %cmp.i.i.i.i18.i, label %if.then.i.i.i20.i, label %land.lhs.true.i.nvme_is_write.exit.i.i25.i_crit_edge, !prof !176

land.lhs.true.i.nvme_is_write.exit.i.i25.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i25.i

if.then.i.i.i20.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i19.i = getelementptr inbounds %struct.nvmf_common_command, ptr %71, i32 0, i32 3
  br label %nvme_is_write.exit.i.i25.i

nvme_is_write.exit.i.i25.i:                       ; preds = %if.then.i.i.i20.i, %land.lhs.true.i.nvme_is_write.exit.i.i25.i_crit_edge
  %retval.0.in.in.in.i.i.i21.i = phi ptr [ %fctype.i.i.i19.i, %if.then.i.i.i20.i ], [ %71, %land.lhs.true.i.nvme_is_write.exit.i.i25.i_crit_edge ]
  %74 = ptrtoint ptr %retval.0.in.in.in.i.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %retval.0.in.in.i.i.i22.i = load i8, ptr %retval.0.in.in.in.i.i.i21.i, align 4
  %retval.0.in.i.i.i23.i = and i8 %retval.0.in.in.i.i.i22.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i23.i)
  %retval.0.i.not.i.i24.i = icmp eq i8 %retval.0.in.i.i.i23.i, 0
  br i1 %retval.0.i.not.i.i24.i, label %nvme_is_write.exit.i.i25.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge, label %nvmet_tcp_has_data_in.exit.i29.i

nvme_is_write.exit.i.i25.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge: ; preds = %nvme_is_write.exit.i.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_uninit_data_in_cmds.exit

nvmet_tcp_has_data_in.exit.i29.i:                 ; preds = %nvme_is_write.exit.i.i25.i
  %rbytes_done.i.i26.i = getelementptr i8, ptr %w, i32 416
  %75 = ptrtoint ptr %rbytes_done.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rbytes_done.i.i26.i, align 8
  %transfer_len.i.i27.i = getelementptr i8, ptr %w, i32 360
  %77 = ptrtoint ptr %transfer_len.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %transfer_len.i.i27.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp.i.i28.i = icmp ult i32 %76, %78
  br i1 %cmp.i.i28.i, label %nvmet_tcp_need_data_in.exit34.i, label %nvmet_tcp_has_data_in.exit.i29.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge

nvmet_tcp_has_data_in.exit.i29.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge: ; preds = %nvmet_tcp_has_data_in.exit.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_uninit_data_in_cmds.exit

nvmet_tcp_need_data_in.exit34.i:                  ; preds = %nvmet_tcp_has_data_in.exit.i29.i
  %cqe.i30.i = getelementptr i8, ptr %w, i32 68
  %79 = ptrtoint ptr %cqe.i30.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cqe.i30.i, align 4
  %status.i31.i = getelementptr inbounds %struct.nvme_completion, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %status.i31.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %status.i31.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i32.i = icmp eq i16 %82, 0
  br i1 %tobool.not.i32.i, label %if.then3.i, label %nvmet_tcp_need_data_in.exit34.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge

nvmet_tcp_need_data_in.exit34.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge: ; preds = %nvmet_tcp_need_data_in.exit34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_uninit_data_in_cmds.exit

if.then3.i:                                       ; preds = %nvmet_tcp_need_data_in.exit34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nvmet_tcp_finish_cmd(ptr noundef %connect.i) #10
  br label %nvmet_tcp_uninit_data_in_cmds.exit

nvmet_tcp_uninit_data_in_cmds.exit:               ; preds = %if.then3.i, %nvmet_tcp_need_data_in.exit34.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge, %nvmet_tcp_has_data_in.exit.i29.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge, %nvme_is_write.exit.i.i25.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge, %for.end.i.nvmet_tcp_uninit_data_in_cmds.exit_crit_edge
  %nvme_sq = getelementptr i8, ptr %w, i32 -640
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq) #10
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_work) #10
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 8
  tail call void @sock_release(ptr noundef %84) #10
  %cmds1.i = getelementptr i8, ptr %w, i32 -504
  %85 = ptrtoint ptr %cmds1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmds1.i, align 8
  %87 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp11.not.i = icmp eq i32 %88, 0
  br i1 %cmp11.not.i, label %nvmet_tcp_uninit_data_in_cmds.exit.nvmet_tcp_free_cmds.exit_crit_edge, label %nvmet_tcp_uninit_data_in_cmds.exit.for.body.i24_crit_edge

nvmet_tcp_uninit_data_in_cmds.exit.for.body.i24_crit_edge: ; preds = %nvmet_tcp_uninit_data_in_cmds.exit
  br label %for.body.i24

nvmet_tcp_uninit_data_in_cmds.exit.nvmet_tcp_free_cmds.exit_crit_edge: ; preds = %nvmet_tcp_uninit_data_in_cmds.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmds.exit

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %nvmet_tcp_uninit_data_in_cmds.exit.for.body.i24_crit_edge
  %i.012.i = phi i32 [ %inc.i22, %for.body.i24.for.body.i24_crit_edge ], [ 0, %nvmet_tcp_uninit_data_in_cmds.exit.for.body.i24_crit_edge ]
  %r2t_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %86, i32 %i.012.i, i32 5
  %89 = ptrtoint ptr %r2t_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %r2t_pdu.i.i, align 4
  tail call void @page_frag_free(ptr noundef %90) #10
  %data_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %86, i32 %i.012.i, i32 4
  %91 = ptrtoint ptr %data_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data_pdu.i.i, align 8
  tail call void @page_frag_free(ptr noundef %92) #10
  %rsp_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %86, i32 %i.012.i, i32 3
  %93 = ptrtoint ptr %rsp_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rsp_pdu.i.i, align 4
  tail call void @page_frag_free(ptr noundef %94) #10
  %cmd_pdu.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %86, i32 %i.012.i, i32 2
  %95 = ptrtoint ptr %cmd_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmd_pdu.i.i, align 8
  tail call void @page_frag_free(ptr noundef %96) #10
  %inc.i22 = add nuw i32 %i.012.i, 1
  %97 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_cmds.i, align 4
  %cmp.i23 = icmp ult i32 %inc.i22, %98
  br i1 %cmp.i23, label %for.body.i24.for.body.i24_crit_edge, label %for.body.i24.nvmet_tcp_free_cmds.exit_crit_edge

for.body.i24.nvmet_tcp_free_cmds.exit_crit_edge:  ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmds.exit

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i24

nvmet_tcp_free_cmds.exit:                         ; preds = %for.body.i24.nvmet_tcp_free_cmds.exit_crit_edge, %nvmet_tcp_uninit_data_in_cmds.exit.nvmet_tcp_free_cmds.exit_crit_edge
  %r2t_pdu.i7.i = getelementptr i8, ptr %w, i32 412
  %99 = ptrtoint ptr %r2t_pdu.i7.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %r2t_pdu.i7.i, align 4
  tail call void @page_frag_free(ptr noundef %100) #10
  %data_pdu.i8.i = getelementptr i8, ptr %w, i32 408
  %101 = ptrtoint ptr %data_pdu.i8.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data_pdu.i8.i, align 8
  tail call void @page_frag_free(ptr noundef %102) #10
  %rsp_pdu.i9.i = getelementptr i8, ptr %w, i32 404
  %103 = ptrtoint ptr %rsp_pdu.i9.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rsp_pdu.i9.i, align 4
  tail call void @page_frag_free(ptr noundef %104) #10
  %cmd_pdu.i10.i = getelementptr i8, ptr %w, i32 400
  %105 = ptrtoint ptr %cmd_pdu.i10.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cmd_pdu.i10.i, align 8
  tail call void @page_frag_free(ptr noundef %106) #10
  tail call void @kfree(ptr noundef %86) #10
  %hdr_digest = getelementptr i8, ptr %w, i32 -320
  %107 = ptrtoint ptr %hdr_digest to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %hdr_digest, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not = icmp eq i8 %108, 0
  br i1 %tobool.not, label %lor.lhs.false, label %nvmet_tcp_free_cmds.exit.if.then_crit_edge

nvmet_tcp_free_cmds.exit.if.then_crit_edge:       ; preds = %nvmet_tcp_free_cmds.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %nvmet_tcp_free_cmds.exit
  %data_digest = getelementptr i8, ptr %w, i32 -319
  %109 = ptrtoint ptr %data_digest to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %data_digest, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool3.not = icmp eq i8 %110, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %nvmet_tcp_free_cmds.exit.if.then_crit_edge
  %rcv_hash.i = getelementptr i8, ptr %w, i32 -312
  %111 = ptrtoint ptr %rcv_hash.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rcv_hash.i, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %114, i32 -128
  tail call void @kfree_sensitive(ptr noundef %112) #10
  %snd_hash.i = getelementptr i8, ptr %w, i32 -316
  %115 = ptrtoint ptr %snd_hash.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %snd_hash.i, align 4
  tail call void @kfree_sensitive(ptr noundef %116) #10
  tail call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i, ptr noundef %114) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %idx = getelementptr i8, ptr %w, i32 44
  %117 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %idx, align 4
  tail call void @ida_free(ptr noundef nonnull @nvmet_tcp_queue_ida, i32 noundef %118) #10
  %pf_cache = getelementptr i8, ptr %w, i32 536
  %119 = ptrtoint ptr %pf_cache to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pf_cache, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %121 = load ptr, ptr @mem_map, align 4
  %122 = ptrtoint ptr %120 to i32
  %sub.i = add i32 %122, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %123 = getelementptr %struct.page, ptr %121, i32 %shr.i, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %123, align 4
  %and.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i27, label %if.then.i.i, !prof !178

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %125, -1
  br label %virt_to_head_page.exit

if.end.i.i27:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.page, ptr %121, i32 %shr.i
  %126 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i27, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %126, %if.end.i.i27 ]
  %127 = inttoptr i32 %retval.0.i.i to ptr
  %pagecnt_bias = getelementptr i8, ptr %w, i32 544
  %128 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pagecnt_bias, align 8
  tail call void @__page_frag_cache_drain(ptr noundef %127, i32 noundef %129) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_io_work(ptr noundef %w) #3 align 64 {
entry:
  %sg.i.i.i119.i.i = alloca %struct.scatterlist, align 4
  %msg.i.i.i30 = alloca %struct.msghdr, align 8
  %iov.i.i.i31 = alloca %struct.kvec, align 4
  %sg.i.i.i83.i.i = alloca %struct.scatterlist, align 4
  %sg.i.i97.i.i.i = alloca %struct.scatterlist, align 4
  %sg.i.i73.i.i.i = alloca %struct.scatterlist, align 4
  %sg.i71.i.i.i.i = alloca %struct.scatterlist, align 4
  %msg.i115.i.i = alloca %struct.msghdr, align 8
  %iov.i116.i.i = alloca %struct.kvec, align 4
  %msg.i58.i.i = alloca %struct.msghdr, align 8
  %iov.i59.i.i = alloca %struct.kvec, align 4
  %sg.i.i.i41.i.i = alloca %struct.scatterlist, align 4
  %sg.i.i.i.i.i = alloca %struct.scatterlist, align 4
  %iov.i.i.i = alloca %struct.kvec, align 4
  %msg.i.i.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8
  %rcv_state.i.i = getelementptr i8, ptr %w, i32 228
  %pdu.i.i.i = getelementptr i8, ptr %w, i32 240
  %0 = getelementptr inbounds %struct.kvec, ptr %iov.i.i.i, i32 0, i32 1
  %1 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i.i, i32 0, i32 7
  %offset.i.i.i = getelementptr i8, ptr %w, i32 220
  %left.i.i.i = getelementptr i8, ptr %w, i32 224
  %hdr_digest.i.i.i.i = getelementptr i8, ptr %w, i32 368
  %hlen.i.i.i = getelementptr i8, ptr %w, i32 242
  %add.ptr.i.i.i = getelementptr i8, ptr %w, i32 248
  %flags.i.i.i.i = getelementptr i8, ptr %w, i32 241
  %rcv_hash.i.i.i.i = getelementptr i8, ptr %w, i32 376
  %data_digest.i.i.i = getelementptr i8, ptr %w, i32 369
  %plen.i.i.i.i = getelementptr i8, ptr %w, i32 244
  %state.i.i.i.i = getelementptr i8, ptr %w, i32 428
  %free_list.i.i.i.i.i = getelementptr i8, ptr %w, i32 192
  %cmd28.i.i.i.i = getelementptr i8, ptr %w, i32 232
  %nvme_cq.i.i.i.i = getelementptr i8, ptr %w, i32 44
  %nvme_sq.i143.i.i.i = getelementptr i8, ptr %w, i32 48
  %idx.i104.i.i = getelementptr i8, ptr %w, i32 732
  %nr_cmds.i.i.i.i.i = getelementptr i8, ptr %w, i32 188
  %cmds.i.i.i.i.i = getelementptr i8, ptr %w, i32 184
  %ttag.i.i.i.i.i = getelementptr i8, ptr %w, i32 250
  %connect.i.i.i.i.i = getelementptr i8, ptr %w, i32 744
  %data_offset.i.i.i.i.i = getelementptr i8, ptr %w, i32 252
  %data_length.i.i.i.i.i = getelementptr i8, ptr %w, i32 256
  %2 = getelementptr inbounds %struct.kvec, ptr %iov.i116.i.i, i32 0, i32 1
  %digest.i.i.i = getelementptr i8, ptr %w, i32 251
  %snd_hash.i.i.i.i = getelementptr i8, ptr %w, i32 372
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i58.i.i, i32 0, i32 7
  %4 = getelementptr inbounds %struct.kvec, ptr %iov.i59.i.i, i32 0, i32 1
  %send_list_len.i.i.i.i = getelementptr i8, ptr %w, i32 212
  %snd_cmd.i.i = getelementptr i8, ptr %w, i32 216
  %resp_send_list.i.i.i = getelementptr i8, ptr %w, i32 204
  %resp_list.i.i.i.i = getelementptr i8, ptr %w, i32 200
  %5 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i.i30, i32 0, i32 7
  %6 = getelementptr inbounds %struct.kvec, ptr %iov.i.i.i31, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %ops.0 = phi i32 [ 0, %entry ], [ %ops.4140147, %land.rhs.do.body_crit_edge ]
  %7 = add nsw i32 %ops.0, 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %do.body
  %ops.1 = phi i32 [ %ops.0, %do.body ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %do.body ], [ %inc6.i, %if.end5.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcv_state.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %9, label %for.body.i.if.end8.i.i_crit_edge [
    i32 3, label %for.body.i.if.end3_crit_edge
    i32 0, label %if.then4.i.i
  ], !prof !181

for.body.i.if.end3_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body.i.if.end8.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  %11 = call ptr @memset(ptr %msg.i.i.i, i32 0, i32 56)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %1, align 4
  %13 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr160.i.i.i = getelementptr i8, ptr %pdu.i.i.i, i32 %14
  %15 = ptrtoint ptr %iov.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr160.i.i.i, ptr %iov.i.i.i, align 4
  %16 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %left.i.i.i, align 8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %0, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %call161.i.i.i = call i32 @kernel_recvmsg(ptr noundef %20, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %iov.i.i.i, i32 noundef 1, i32 noundef %17, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i.i.i)
  %cmp162.i.i.i = icmp slt i32 %call161.i.i.i, 0
  br i1 %cmp162.i.i.i, label %if.then4.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge, label %if.then4.i.i.if.end.i.i.i_crit_edge, !prof !176

if.then4.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.then4.i.i
  br label %if.end.i.i.i

if.then4.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end50.i.i.i.if.end.i.i.i_crit_edge, %if.then4.i.i.if.end.i.i.i_crit_edge
  %call163.i.i.i = phi i32 [ %call.i.i.i, %if.end50.i.i.i.if.end.i.i.i_crit_edge ], [ %call161.i.i.i, %if.then4.i.i.if.end.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i.i.i, align 4
  %add.i.i.i = add i32 %22, %call163.i.i.i
  store i32 %add.i.i.i, ptr %offset.i.i.i, align 4
  %23 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %left.i.i.i, align 8
  %sub.i.i.i = sub i32 %24, %call163.i.i.i
  store i32 %sub.i.i.i, ptr %left.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call163.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %24, %call163.i.i.i
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %if.end.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge

if.end.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i.i)
  %cmp12.i.i.i = icmp eq i32 %add.i.i.i, 8
  %25 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hdr_digest.i.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i.i = icmp eq i8 %26, 0
  br i1 %cmp12.i.i.i, label %if.then13.i.i.i, label %if.end58.i.i.i, !prof !182

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  %27 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pdu.i.i.i, align 4
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %28, label %do.end.i.i.i [
    i8 0, label %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge
    i8 4, label %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge415
    i8 6, label %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge416
  ]

if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge416: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i.i

if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge415: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i.i

if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge:  ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i.i

do.end.i.i.i:                                     ; preds = %if.then13.i.i.i
  %conv.i.i.i = zext i8 %28 to i32
  %call26.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv.i.i.i) #14
  %30 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %rcv_state.i.i, align 4
  %31 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i156.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i156.i.i, label %if.else.i159.i.i, label %if.then.i157.i.i

if.then.i157.i.i:                                 ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %32) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.else.i159.i.i:                                 ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %call.i158.i.i = call i32 @kernel_sock_shutdown(ptr noundef %34, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge415, %if.then13.i.i.i.land.lhs.true.i.i.i.i_crit_edge416
  %35 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hlen.i.i.i, align 2
  %conv.i112.i.i.i = zext i8 %28 to i32
  %37 = lshr i32 46, %conv.i112.i.i.i
  %38 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.not.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.not.i.i.i.i, label %cond.true.i.i.i.i, label %land.lhs.true.i.i.i.i.nvmet_tcp_pdu_size.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.nvmet_tcp_pdu_size.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_pdu_size.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr [7 x i8], ptr @nvme_tcp_pdu_sizes, i32 0, i32 %conv.i112.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i.i, align 1
  br label %nvmet_tcp_pdu_size.exit.i.i.i

nvmet_tcp_pdu_size.exit.i.i.i:                    ; preds = %cond.true.i.i.i.i, %land.lhs.true.i.i.i.i.nvmet_tcp_pdu_size.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i8 [ %40, %cond.true.i.i.i.i ], [ 0, %land.lhs.true.i.i.i.i.nvmet_tcp_pdu_size.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %cond.i.i.i.i)
  %cmp32.not.i.i.i = icmp eq i8 %36, %cond.i.i.i.i
  br i1 %cmp32.not.i.i.i, label %if.end50.i.i.i, label %do.end43.i.i.i, !prof !178

do.end43.i.i.i:                                   ; preds = %nvmet_tcp_pdu_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i112.i.i.i.le = zext i8 %28 to i32
  %conv48.i.i.i = zext i8 %36 to i32
  %call49.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i112.i.i.i.le, i32 noundef %conv48.i.i.i) #14
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end50.i.i.i:                                   ; preds = %nvmet_tcp_pdu_size.exit.i.i.i
  %conv52.i.i.i = zext i8 %36 to i32
  %sub54.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -8, i32 -4
  %add56.i.i.i = add nsw i32 %sub54.i.i.i, %conv52.i.i.i
  %41 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add56.i.i.i, ptr %left.i.i.i, align 8
  %42 = ptrtoint ptr %iov.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i.i, ptr %iov.i.i.i, align 4
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add56.i.i.i, ptr %0, align 4
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %call.i.i.i = call i32 @kernel_recvmsg(ptr noundef %45, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %iov.i.i.i, i32 noundef 1, i32 noundef %add56.i.i.i, i32 noundef %47) #10
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end50.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge, label %if.end50.i.i.i.if.end.i.i.i_crit_edge, !prof !176

if.end50.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end50.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge: ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end58.i.i.i:                                   ; preds = %if.end10.i.i.i
  br i1 %tobool.not.i.i.i.i, label %if.end58.i.i.i.if.end67.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end58.i.i.i.if.end67.i.i.i_crit_edge:          ; preds = %if.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end58.i.i.i
  %48 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags.i.i.i.i, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i113.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i113.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i, !prof !176

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx.i104.i.i, align 4
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %52) #14
  br label %if.then66.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %53 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hlen.i.i.i, align 2
  %conv63.i.i.i = zext i8 %54 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %pdu.i.i.i, i32 %conv63.i.i.i
  %55 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %57 = ptrtoint ptr %rcv_hash.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rcv_hash.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i.i.i) #10
  %59 = call ptr @memset(ptr %sg.i.i.i.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i.i.i, ptr noundef %pdu.i.i.i, i32 noundef %conv63.i.i.i) #10
  %src1.i.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %src1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %sg.i.i.i.i.i, ptr %src1.i.i.i.i.i.i, align 4
  %nbytes2.i.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %nbytes2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv63.i.i.i, ptr %nbytes2.i.i.i.i.i.i, align 8
  %result3.i.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %58, i32 0, i32 3
  %62 = ptrtoint ptr %result3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i.i.i.i, ptr %result3.i.i.i.i.i.i, align 32
  %call.i.i.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %58) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i.i.i) #10
  %63 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hlen.i.i.i, align 2
  %conv6.i.i.i.i = zext i8 %64 to i32
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %pdu.i.i.i, i32 %conv6.i.i.i.i
  %65 = ptrtoint ptr %add.ptr7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr7.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %66)
  %cmp.not.i.i.i.i = icmp eq i32 %56, %66
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i.if.end67.i.i.i_crit_edge, label %do.end12.i.i.i.i

if.end.i.i.i.i.if.end67.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %idx.i104.i.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %56) #10
  %70 = call i32 @llvm.bswap.i32(i32 %66) #10
  %call15.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %68, i32 noundef %69, i32 noundef %70) #14
  br label %if.then66.i.i.i

if.then66.i.i.i:                                  ; preds = %do.end12.i.i.i.i, %do.end.i.i.i.i
  %71 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %rcv_state.i.i, align 4
  %72 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i115.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i115.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then66.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %73) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.else.i.i.i.i:                                  ; preds = %if.then66.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 8
  %call.i116.i.i.i = call i32 @kernel_sock_shutdown(ptr noundef %75, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end67.i.i.i:                                   ; preds = %if.end.i.i.i.i.if.end67.i.i.i_crit_edge, %if.end58.i.i.i.if.end67.i.i.i_crit_edge
  %76 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data_digest.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool68.not.i.i.i = icmp eq i8 %77, 0
  br i1 %tobool68.not.i.i.i, label %if.end67.i.i.i.if.end75.i.i.i_crit_edge, label %land.lhs.true70.i.i.i

if.end67.i.i.i.if.end75.i.i.i_crit_edge:          ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i.i.i

land.lhs.true70.i.i.i:                            ; preds = %if.end67.i.i.i
  %78 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hdr_digest.i.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.i.i.i.i = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %plen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %plen.i.i.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hlen.i.i.i, align 2
  %conv.i119.i.i.i = zext i8 %84 to i32
  %85 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags.i.i.i.i, align 1
  %87 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i121.i.i.i = icmp eq i8 %87, 0
  %88 = select i1 %tobool.not.i121.i.i.i, i1 true, i1 %tobool.not.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %88, i32 0, i32 4
  %89 = add nuw nsw i32 %spec.select.i.i.i.i, %conv.i119.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %89)
  %tobool4.not.i.i.i.i = icmp ne i32 %82, %89
  %90 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool8.not.i.i.i.i = icmp eq i8 %90, 0
  %or.cond.i.i.i.i = select i1 %tobool4.not.i.i.i.i, i1 %tobool8.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.then74.i.i.i, label %land.lhs.true70.i.i.i.if.end75.i.i.i_crit_edge, !prof !183

land.lhs.true70.i.i.i.if.end75.i.i.i_crit_edge:   ; preds = %land.lhs.true70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i.i.i

if.then74.i.i.i:                                  ; preds = %land.lhs.true70.i.i.i
  %91 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %idx.i104.i.i, align 4
  %call12.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %92) #14
  %93 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %rcv_state.i.i, align 4
  %94 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i127.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i127.i.i.i, label %if.else.i130.i.i.i, label %if.then.i128.i.i.i

if.then.i128.i.i.i:                               ; preds = %if.then74.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %95) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.else.i130.i.i.i:                               ; preds = %if.then74.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %call.i129.i.i.i = call i32 @kernel_sock_shutdown(ptr noundef %97, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end75.i.i.i:                                   ; preds = %land.lhs.true70.i.i.i.if.end75.i.i.i_crit_edge, %if.end67.i.i.i.if.end75.i.i.i_crit_edge
  %98 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i133.i.i.i = icmp eq i32 %99, 0
  %100 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pdu.i.i.i, align 4
  br i1 %cmp.i133.i.i.i, label %if.then.i134.i.i.i, label %if.end10.i.i.i.i, !prof !176

if.then.i134.i.i.i:                               ; preds = %if.end75.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp4.not.i.i.i.i = icmp eq i8 %101, 0
  br i1 %cmp4.not.i.i.i.i, label %if.end.i138.i.i.i, label %do.end.i137.i.i.i

do.end.i137.i.i.i:                                ; preds = %if.then.i134.i.i.i
  %conv.i135.i.i.i = zext i8 %101 to i32
  %call.i136.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv.i135.i.i.i) #14
  %102 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %rcv_state.i.i, align 4
  %103 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i148.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i148.i.i, label %if.else.i151.i.i, label %if.then.i149.i.i

if.then.i149.i.i:                                 ; preds = %do.end.i137.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %104) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.else.i151.i.i:                                 ; preds = %do.end.i137.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr, align 8
  %call.i150.i.i = call i32 @kernel_sock_shutdown(ptr noundef %106, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end.i138.i.i.i:                                ; preds = %if.then.i134.i.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i115.i.i) #10
  %107 = call ptr @memset(ptr %msg.i115.i.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i116.i.i) #10
  %108 = ptrtoint ptr %iov.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i116.i.i, align 4, !annotation !177
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %2, align 4, !annotation !177
  %110 = ptrtoint ptr %plen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %plen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %111)
  %cmp.not.i.i.i = icmp eq i32 %111, -2147483648
  br i1 %cmp.not.i.i.i, label %if.end.i138.i.i.i.if.end.i126.i.i_crit_edge, label %do.end.i122.i.i

if.end.i138.i.i.i.if.end.i126.i.i_crit_edge:      ; preds = %if.end.i138.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i126.i.i

do.end.i122.i.i:                                  ; preds = %if.end.i138.i.i.i
  %112 = call i32 @llvm.bswap.i32(i32 %111) #10
  %call.i118.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %112) #14
  %113 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %rcv_state.i.i, align 4
  %114 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i.i121.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i.i121.i.i, label %if.else.i.i125.i.i, label %if.then.i.i123.i.i

if.then.i.i123.i.i:                               ; preds = %do.end.i122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %115) #10
  br label %if.end.i126.i.i

if.else.i.i125.i.i:                               ; preds = %do.end.i122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 8
  %call.i.i124.i.i = call i32 @kernel_sock_shutdown(ptr noundef %117, i32 noundef 2) #10
  br label %if.end.i126.i.i

if.end.i126.i.i:                                  ; preds = %if.else.i.i125.i.i, %if.then.i.i123.i.i, %if.end.i138.i.i.i.if.end.i126.i.i_crit_edge
  %118 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp4.not.i.i.i = icmp eq i16 %119, 0
  br i1 %cmp4.not.i.i.i, label %if.end14.i.i.i, label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end.i126.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i127.i.i = zext i16 %119 to i32
  %120 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %idx.i104.i.i, align 4
  %call13.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %121, i32 noundef %conv.i127.i.i) #14
  br label %nvmet_tcp_handle_icreq.exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i126.i.i
  %122 = ptrtoint ptr %ttag.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ttag.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp16.not.i.i.i = icmp eq i8 %123, 0
  br i1 %cmp16.not.i.i.i, label %if.end27.i.i.i, label %do.end21.i.i.i

do.end21.i.i.i:                                   ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i129.i.i = zext i8 %123 to i32
  %124 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %idx.i104.i.i, align 4
  %call26.i130.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %125, i32 noundef %conv15.i129.i.i) #14
  br label %nvmet_tcp_handle_icreq.exit.i.i

if.end27.i.i.i:                                   ; preds = %if.end14.i.i.i
  %126 = ptrtoint ptr %digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %digest.i.i.i, align 1
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %hdr_digest.i.i.i.i, align 8
  %130 = lshr i8 %127, 1
  %.lobit.i.i.i = and i8 %130, 1
  %131 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %.lobit.i.i.i, ptr %data_digest.i.i.i, align 1
  %132 = and i8 %127, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %if.end27.i.i.i.if.end48.i.i.i_crit_edge, label %if.then43.i.i.i

if.end27.i.i.i.if.end48.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end27.i.i.i
  %call.i130.i.i.i = call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 128) #10
  %cmp.i.i.i132.i.i = icmp ugt ptr %call.i130.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i132.i.i, label %nvmet_tcp_alloc_crypto.exit.i.i.i, label %if.end.i.i133.i.i

if.end.i.i133.i.i:                                ; preds = %if.then43.i.i.i
  %reqsize.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i130.i.i.i, i32 0, i32 8
  %134 = ptrtoint ptr %reqsize.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %reqsize.i.i.i.i.i.i, align 32
  %add.i.i.i.i.i = add i32 %135, 128
  %call9.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i.i, i32 noundef 3264) #15
  %tobool.not.i.i.i139.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i139.i.i, label %ahash_request_alloc.exit.thread.i.i.i.i, label %if.end6.i.i.i.i, !prof !176

ahash_request_alloc.exit.thread.i.i.i.i:          ; preds = %if.end.i.i133.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %snd_hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %snd_hash.i.i.i.i, align 4
  br label %nvmet_tcp_alloc_crypto.exit.thread137.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i133.i.i
  %base.i.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i130.i.i.i, i32 0, i32 10
  %tfm1.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i.i.i, i32 0, i32 3
  %137 = ptrtoint ptr %tfm1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %base.i.i.i.i.i.i.i, ptr %tfm1.i.i.i.i.i.i, align 16
  %138 = ptrtoint ptr %snd_hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call9.i.i.i.i.i.i, ptr %snd_hash.i.i.i.i, align 4
  %complete.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %complete.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %complete.i.i.i.i.i, align 8
  %data2.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %data2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %data2.i.i.i.i.i, align 4
  %flags4.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %flags4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %flags4.i.i.i.i.i, align 4
  %142 = ptrtoint ptr %reqsize.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %reqsize.i.i.i.i.i.i, align 32
  %add.i26.i.i.i.i = add i32 %143, 128
  %call9.i.i52.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i26.i.i.i.i, i32 noundef 3264) #15
  %tobool.not.i55.i.i.i.i = icmp eq ptr %call9.i.i52.i.i.i.i, null
  br i1 %tobool.not.i55.i.i.i.i, label %free_snd_hash.i.i.i.i, label %nvmet_tcp_alloc_crypto.exit.thread.i.i.i, !prof !176

nvmet_tcp_alloc_crypto.exit.thread.i.i.i:         ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tfm1.i.i59.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i.i.i.i, i32 0, i32 3
  %144 = ptrtoint ptr %tfm1.i.i59.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %base.i.i.i.i.i.i.i, ptr %tfm1.i.i59.i.i.i.i, align 16
  %145 = ptrtoint ptr %rcv_hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call9.i.i52.i.i.i.i, ptr %rcv_hash.i.i.i.i, align 8
  %complete.i63.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i.i.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %complete.i63.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %complete.i63.i.i.i.i, align 8
  %data2.i64.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i.i.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %data2.i64.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %data2.i64.i.i.i.i, align 4
  %flags4.i65.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i.i.i.i, i32 0, i32 4
  %148 = ptrtoint ptr %flags4.i65.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %flags4.i65.i.i.i.i, align 4
  br label %if.end48.i.i.i

free_snd_hash.i.i.i.i:                            ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %rcv_hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %rcv_hash.i.i.i.i, align 8
  %150 = ptrtoint ptr %snd_hash.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %snd_hash.i.i.i.i, align 4
  call void @kfree_sensitive(ptr noundef %151) #10
  br label %nvmet_tcp_alloc_crypto.exit.thread137.i.i.i

nvmet_tcp_alloc_crypto.exit.thread137.i.i.i:      ; preds = %free_snd_hash.i.i.i.i, %ahash_request_alloc.exit.thread.i.i.i.i
  %base.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i130.i.i.i, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call.i130.i.i.i, ptr noundef %base.i.i.i.i.i.i) #10
  br label %nvmet_tcp_handle_icreq.exit.i.i

nvmet_tcp_alloc_crypto.exit.i.i.i:                ; preds = %if.then43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %call.i130.i.i.i to i32
  br label %nvmet_tcp_handle_icreq.exit.i.i

if.end48.i.i.i:                                   ; preds = %nvmet_tcp_alloc_crypto.exit.thread.i.i.i, %if.end27.i.i.i.if.end48.i.i.i_crit_edge
  %153 = call ptr @memset(ptr %pdu.i.i.i, i32 0, i32 128)
  %154 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %pdu.i.i.i, align 4
  %155 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -128, ptr %hlen.i.i.i, align 2
  %156 = ptrtoint ptr %plen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -2147483648, ptr %plen.i.i.i.i, align 4
  %157 = ptrtoint ptr %data_offset.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 16384, ptr %data_offset.i.i.i.i.i, align 4
  %158 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %hdr_digest.i.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool59.not.i.i.i = icmp eq i8 %159, 0
  br i1 %tobool59.not.i.i.i, label %if.end48.i.i.i.if.end64.i.i.i_crit_edge, label %if.then60.i.i.i

if.end48.i.i.i.if.end64.i.i.i_crit_edge:          ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i.i.i

if.then60.i.i.i:                                  ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %digest.i.i.i, align 1
  %162 = or i8 %161, 1
  store i8 %162, ptr %digest.i.i.i, align 1
  br label %if.end64.i.i.i

if.end64.i.i.i:                                   ; preds = %if.then60.i.i.i, %if.end48.i.i.i.if.end64.i.i.i_crit_edge
  %163 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %data_digest.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool66.not.i.i.i = icmp eq i8 %164, 0
  br i1 %tobool66.not.i.i.i, label %if.end64.i.i.i.if.end72.i.i.i_crit_edge, label %if.then67.i.i.i

if.end64.i.i.i.if.end72.i.i.i_crit_edge:          ; preds = %if.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i.i.i

if.then67.i.i.i:                                  ; preds = %if.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %digest.i.i.i, align 1
  %167 = or i8 %166, 2
  store i8 %167, ptr %digest.i.i.i, align 1
  br label %if.end72.i.i.i

if.end72.i.i.i:                                   ; preds = %if.then67.i.i.i, %if.end64.i.i.i.if.end72.i.i.i_crit_edge
  %168 = ptrtoint ptr %iov.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %pdu.i.i.i, ptr %iov.i116.i.i, align 4
  %169 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 128, ptr %2, align 4
  %170 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr, align 8
  %call74.i.i.i = call i32 @kernel_sendmsg(ptr noundef %171, ptr noundef nonnull %msg.i115.i.i, ptr noundef nonnull %iov.i116.i.i, i32 noundef 1, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i.i)
  %cmp75.i.i.i = icmp slt i32 %call74.i.i.i, 0
  br i1 %cmp75.i.i.i, label %free_crypto.i.i.i, label %if.end78.i.i.i

if.end78.i.i.i:                                   ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %state.i.i.i.i, align 4
  %173 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %offset.i.i.i, align 4
  %174 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 8, ptr %left.i.i.i, align 8
  %175 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  %176 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %rcv_state.i.i, align 4
  br label %nvmet_tcp_handle_icreq.exit.i.i

free_crypto.i.i.i:                                ; preds = %if.end72.i.i.i
  %177 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %hdr_digest.i.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool80.not.i.i.i = icmp eq i8 %178, 0
  br i1 %tobool80.not.i.i.i, label %lor.lhs.false82.i.i.i, label %free_crypto.i.i.i.if.then86.i.i.i_crit_edge

free_crypto.i.i.i.if.then86.i.i.i_crit_edge:      ; preds = %free_crypto.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86.i.i.i

lor.lhs.false82.i.i.i:                            ; preds = %free_crypto.i.i.i
  %179 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %data_digest.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool84.not.i.i.i = icmp eq i8 %180, 0
  br i1 %tobool84.not.i.i.i, label %lor.lhs.false82.i.i.i.nvmet_tcp_handle_icreq.exit.i.i_crit_edge, label %lor.lhs.false82.i.i.i.if.then86.i.i.i_crit_edge

lor.lhs.false82.i.i.i.if.then86.i.i.i_crit_edge:  ; preds = %lor.lhs.false82.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86.i.i.i

lor.lhs.false82.i.i.i.nvmet_tcp_handle_icreq.exit.i.i_crit_edge: ; preds = %lor.lhs.false82.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_handle_icreq.exit.i.i

if.then86.i.i.i:                                  ; preds = %lor.lhs.false82.i.i.i.if.then86.i.i.i_crit_edge, %free_crypto.i.i.i.if.then86.i.i.i_crit_edge
  %181 = ptrtoint ptr %rcv_hash.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rcv_hash.i.i.i.i, align 8
  %tfm.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %tfm.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tfm.i.i.i.i.i, align 16
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %184, i32 -128
  call void @kfree_sensitive(ptr noundef %182) #10
  %185 = ptrtoint ptr %snd_hash.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %snd_hash.i.i.i.i, align 4
  call void @kfree_sensitive(ptr noundef %186) #10
  call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i.i.i.i, ptr noundef %184) #10
  br label %nvmet_tcp_handle_icreq.exit.i.i

nvmet_tcp_handle_icreq.exit.i.i:                  ; preds = %if.then86.i.i.i, %lor.lhs.false82.i.i.i.nvmet_tcp_handle_icreq.exit.i.i_crit_edge, %if.end78.i.i.i, %nvmet_tcp_alloc_crypto.exit.i.i.i, %nvmet_tcp_alloc_crypto.exit.thread137.i.i.i, %do.end21.i.i.i, %do.end9.i.i.i
  %retval.0.i145.i.i = phi i32 [ -71, %do.end9.i.i.i ], [ -71, %do.end21.i.i.i ], [ 0, %if.end78.i.i.i ], [ %152, %nvmet_tcp_alloc_crypto.exit.i.i.i ], [ %call74.i.i.i, %if.then86.i.i.i ], [ %call74.i.i.i, %lor.lhs.false82.i.i.i.nvmet_tcp_handle_icreq.exit.i.i_crit_edge ], [ -12, %nvmet_tcp_alloc_crypto.exit.thread137.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i116.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i115.i.i) #10
  br label %nvmet_tcp_try_recv_pdu.exit.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end75.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %101)
  %cmp13.i.i.i.i = icmp eq i8 %101, 6
  br i1 %cmp13.i.i.i.i, label %if.then15.i.i.i.i, label %if.end26.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.end10.i.i.i.i
  %187 = ptrtoint ptr %nr_cmds.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nr_cmds.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i139.i.i.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i.i139.i.i.i, label %if.then15.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !176

if.then15.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %cmds.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cmds.i.i.i.i.i, align 8
  %191 = ptrtoint ptr %ttag.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %ttag.i.i.i.i.i, align 2
  %idxprom.i.i.i.i.i = zext i16 %192 to i32
  %arrayidx.i.i.i.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %190, i32 %idxprom.i.i.i.i.i
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i, %if.then15.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %cmd.0.i.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %connect.i.i.i.i.i, %if.then15.i.i.i.i.if.end.i.i.i.i.i_crit_edge ]
  %193 = ptrtoint ptr %data_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %data_offset.i.i.i.i.i, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194) #10
  %rbytes_done.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i.i.i.i, i32 0, i32 6
  %196 = ptrtoint ptr %rbytes_done.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rbytes_done.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp.not.i.i.i.i.i = icmp eq i32 %195, %197
  br i1 %cmp.not.i.i.i.i.i, label %if.end7.i.i.i.i.i, label %do.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %ttag.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %ttag.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %199 to i32
  %call.i.i140.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv.i.i.i.i.i, i32 noundef %195, i32 noundef %197) #14
  %req.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i.i.i.i, i32 0, i32 1
  call void @nvmet_req_complete(ptr noundef %req.i.i.i.i.i, i16 noundef zeroext 16386) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %data_length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %data_length.i.i.i.i.i, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #10
  %pdu_len.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i.i.i.i, i32 0, i32 8
  %203 = ptrtoint ptr %pdu_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %pdu_len.i.i.i.i.i, align 8
  %pdu_recv.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i.i.i.i, i32 0, i32 9
  %204 = ptrtoint ptr %pdu_recv.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %pdu_recv.i.i.i.i.i, align 4
  call fastcc void @nvmet_tcp_map_pdu_iovec(ptr noundef %cmd.0.i.i.i.i.i) #10
  %205 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %cmd.0.i.i.i.i.i, ptr %cmd28.i.i.i.i, align 8
  %206 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %rcv_state.i.i, align 4
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end10.i.i.i.i
  %207 = ptrtoint ptr %free_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile ptr, ptr %free_list.i.i.i.i.i, align 4
  %cmp.not.i157.i.i.i.i = icmp eq ptr %208, %free_list.i.i.i.i.i
  %add.ptr.i.i141.i.i.i = getelementptr i8, ptr %208, i32 -448
  %tobool.not14.i.i.i.i.i = icmp eq ptr %add.ptr.i.i141.i.i.i, null
  %tobool.not.i158.i.i.i.i = or i1 %cmp.not.i157.i.i.i.i, %tobool.not14.i.i.i.i.i
  br i1 %tobool.not.i158.i.i.i.i, label %do.end42.i.i.i.i, label %if.end.i159.i.i.i.i

if.end.i159.i.i.i.i:                              ; preds = %if.end26.i.i.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %208) #10
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i159.i.i.i.i.if.end46.i.i.i.i_crit_edge

if.end.i159.i.i.i.i.if.end46.i.i.i.i_crit_edge:   ; preds = %if.end.i159.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i159.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %208, align 4
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %210, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %214 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %212, ptr %210, align 4
  br label %if.end46.i.i.i.i

do.end42.i.i.i.i:                                 ; preds = %if.end26.i.i.i.i
  %215 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  %216 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %idx.i104.i.i, align 4
  %218 = ptrtoint ptr %nr_cmds.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %nr_cmds.i.i.i.i.i, align 4
  %220 = ptrtoint ptr %send_list_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %send_list_len.i.i.i.i, align 4
  %222 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %add.ptr.i.i.i, align 8
  %conv44.i.i.i.i = zext i8 %223 to i32
  %call45.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %217, i32 noundef %219, i32 noundef %221, i32 noundef %conv44.i.i.i.i) #14
  %224 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 3, ptr %rcv_state.i.i, align 4
  %225 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i109.i.i = icmp eq ptr %226, null
  br i1 %tobool.not.i109.i.i, label %if.else.i112.i.i, label %if.then.i110.i.i

if.then.i110.i.i:                                 ; preds = %do.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %226) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.else.i112.i.i:                                 ; preds = %do.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %add.ptr, align 8
  %call.i111.i.i = call i32 @kernel_sock_shutdown(ptr noundef %228, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread.i.i

if.end46.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i159.i.i.i.i.if.end46.i.i.i.i_crit_edge
  %229 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %208, ptr %208, align 4
  %prev.i3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  %230 = ptrtoint ptr %prev.i3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %208, ptr %prev.i3.i.i.i.i.i.i, align 4
  %rbytes_done.i160.i.i.i.i = getelementptr i8, ptr %208, i32 -88
  %iov.i.i.i.i.i = getelementptr i8, ptr %208, i32 -8
  %231 = ptrtoint ptr %iov.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %iov.i.i.i.i.i, align 8
  %flags.i.i.i.i.i = getelementptr i8, ptr %208, i32 -4
  %232 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %flags.i.i.i.i.i, align 4
  %233 = call ptr @memset(ptr %rbytes_done.i160.i.i.i.i, i32 0, i32 16)
  %234 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %add.ptr.i.i141.i.i.i, ptr %cmd28.i.i.i.i, align 8
  %req48.i.i.i.i = getelementptr i8, ptr %208, i32 -440
  %235 = ptrtoint ptr %req48.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %req48.i.i.i.i, align 8
  %237 = call ptr @memcpy(ptr %236, ptr %add.ptr.i.i.i, i32 64)
  %call50.i.i.i.i = call zeroext i1 @nvmet_req_init(ptr noundef %req48.i.i.i.i, ptr noundef %nvme_cq.i.i.i.i, ptr noundef %nvme_sq.i143.i.i.i, ptr noundef nonnull @nvmet_tcp_ops) #10
  br i1 %call50.i.i.i.i, label %if.end73.i.i.i.i, label %do.end62.i.i.i.i, !prof !178

do.end62.i.i.i.i:                                 ; preds = %if.end46.i.i.i.i
  %238 = ptrtoint ptr %req48.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %req48.i.i.i.i, align 8
  %command_id.i.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %command_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %command_id.i.i.i.i, align 2
  %conv66.i.i.i.i = zext i16 %241 to i32
  %242 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %239, align 8
  %conv69.i.i.i.i = zext i8 %243 to i32
  %length.i.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %239, i32 0, i32 6, i32 0, i32 1
  %244 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %length.i.i.i.i, align 8
  %246 = call i32 @llvm.bswap.i32(i32 %245) #10
  %call71.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %239, i32 noundef %conv66.i.i.i.i, i32 noundef %conv69.i.i.i.i, i32 noundef %246) #14
  %247 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cmd28.i.i.i.i, align 8
  %249 = ptrtoint ptr %req48.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %req48.i.i.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %250, i32 0, i32 6, i32 0, i32 1
  %251 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %length.i.i.i, align 8
  %253 = call i32 @llvm.bswap.i32(i32 %252) #10
  %req2.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %248, i32 0, i32 1
  %254 = ptrtoint ptr %req2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %req2.i.i.i, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %255, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %257)
  %cmp.i.i.i92.i.i = icmp eq i8 %257, 127
  br i1 %cmp.i.i.i92.i.i, label %if.then.i.i93.i.i, label %do.end62.i.i.i.i.nvme_is_write.exit.i.i.i_crit_edge, !prof !176

do.end62.i.i.i.i.nvme_is_write.exit.i.i.i_crit_edge: ; preds = %do.end62.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i

if.then.i.i93.i.i:                                ; preds = %do.end62.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %255, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i

nvme_is_write.exit.i.i.i:                         ; preds = %if.then.i.i93.i.i, %do.end62.i.i.i.i.nvme_is_write.exit.i.i.i_crit_edge
  %retval.0.in.in.in.i.i.i.i = phi ptr [ %fctype.i.i.i.i, %if.then.i.i93.i.i ], [ %255, %do.end62.i.i.i.i.nvme_is_write.exit.i.i.i_crit_edge ]
  %258 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %retval.0.in.in.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i.i, align 4
  %retval.0.in.i.i.i.i = and i8 %retval.0.in.in.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i)
  %retval.0.i.not.i.i.i = icmp eq i8 %retval.0.in.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i94.i.i = icmp eq i32 %252, 0
  %or.cond.i95.i.i = select i1 %retval.0.i.not.i.i.i, i1 true, i1 %tobool.not.i94.i.i
  br i1 %or.cond.i95.i.i, label %nvme_is_write.exit.i.i.i.if.then.i101.i.i_crit_edge, label %lor.lhs.false4.i.i.i

nvme_is_write.exit.i.i.i.if.then.i101.i.i_crit_edge: ; preds = %nvme_is_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i101.i.i

lor.lhs.false4.i.i.i:                             ; preds = %nvme_is_write.exit.i.i.i
  %port.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %248, i32 0, i32 1, i32 13
  %259 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %port.i.i.i, align 8
  %inline_data_size.i.i.i = getelementptr inbounds %struct.nvmet_port, ptr %260, i32 0, i32 13
  %261 = ptrtoint ptr %inline_data_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %inline_data_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %262)
  %cmp.i96.i.i = icmp ugt i32 %253, %262
  br i1 %cmp.i96.i.i, label %lor.lhs.false4.i.i.i.if.then.i101.i.i_crit_edge, label %if.end.i103.i.i

lor.lhs.false4.i.i.i.if.then.i101.i.i_crit_edge:  ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i101.i.i

if.then.i101.i.i:                                 ; preds = %lor.lhs.false4.i.i.i.if.then.i101.i.i_crit_edge, %nvme_is_write.exit.i.i.i.if.then.i101.i.i_crit_edge
  %263 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %offset.i.i.i, align 4
  %264 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 8, ptr %left.i.i.i, align 8
  %265 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  %266 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %rcv_state.i.i, align 4
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.end.i103.i.i:                                  ; preds = %lor.lhs.false4.i.i.i
  %call6.i.i.i = call fastcc i32 @nvmet_tcp_map_data(ptr noundef %248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i102.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i102.i.i, label %if.end12.i.i.i, label %do.end.i105.i.i, !prof !178

do.end.i105.i.i:                                  ; preds = %if.end.i103.i.i
  %267 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %idx.i104.i.i, align 4
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %268) #14
  %269 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 3, ptr %rcv_state.i.i, align 4
  %270 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i212.i.i = icmp eq ptr %271, null
  br i1 %tobool.not.i212.i.i, label %if.else.i215.i.i, label %if.then.i213.i.i

if.then.i213.i.i:                                 ; preds = %do.end.i105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %271) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.else.i215.i.i:                                 ; preds = %do.end.i105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %add.ptr, align 8
  %call.i214.i.i = call i32 @kernel_sock_shutdown(ptr noundef %273, i32 noundef 2) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %274 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1, ptr %rcv_state.i.i, align 4
  call fastcc void @nvmet_tcp_map_pdu_iovec(ptr noundef %248) #10
  %flags.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %248, i32 0, i32 14
  %275 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %276, 1
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.end73.i.i.i.i:                                 ; preds = %if.end46.i.i.i.i
  %277 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cmd28.i.i.i.i, align 8
  %call75.i.i.i.i = call fastcc i32 @nvmet_tcp_map_data(ptr noundef %278) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i.i.i)
  %tobool76.not.i.i.i.i = icmp eq i32 %call75.i.i.i.i, 0
  br i1 %tobool76.not.i.i.i.i, label %if.end95.i.i.i.i, label %do.end86.i.i.i.i, !prof !178

do.end86.i.i.i.i:                                 ; preds = %if.end73.i.i.i.i
  %279 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %idx.i104.i.i, align 4
  %call89.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %280) #14
  %281 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cmd28.i.i.i.i, align 8
  %req.i162.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %req.i162.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %req.i162.i.i.i.i, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %284, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %286)
  %cmp.i.i.i.i.i.i.i = icmp eq i8 %286, 127
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %do.end86.i.i.i.i.nvme_is_write.exit.i.i.i.i.i_crit_edge, !prof !176

do.end86.i.i.i.i.nvme_is_write.exit.i.i.i.i.i_crit_edge: ; preds = %do.end86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %do.end86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %284, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i.i.i

nvme_is_write.exit.i.i.i.i.i:                     ; preds = %if.then.i.i.i.i.i.i, %do.end86.i.i.i.i.nvme_is_write.exit.i.i.i.i.i_crit_edge
  %retval.0.in.in.in.i.i.i.i.i.i = phi ptr [ %fctype.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %284, %do.end86.i.i.i.i.nvme_is_write.exit.i.i.i.i.i_crit_edge ]
  %287 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %retval.0.in.in.i.i.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i.i.i.i, align 4
  %retval.0.in.i.i.i.i.i.i = and i8 %retval.0.in.in.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i.i.i)
  %retval.0.i.not.i.i.i.i.i = icmp eq i8 %retval.0.in.i.i.i.i.i.i, 0
  br i1 %retval.0.i.not.i.i.i.i.i, label %nvme_is_write.exit.i.i.i.i.i.if.else.i144.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

nvme_is_write.exit.i.i.i.i.i.if.else.i144.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i144.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %nvme_is_write.exit.i.i.i.i.i
  %pdu_len.i163.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %282, i32 0, i32 8
  %288 = ptrtoint ptr %pdu_len.i163.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %pdu_len.i163.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool.not.i164.i.i.i.i = icmp eq i32 %289, 0
  br i1 %tobool.not.i164.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.else.i144.i.i.i_crit_edge, label %nvmet_tcp_has_inline_data.exit.i.i.i.i

land.lhs.true.i.i.i.i.i.if.else.i144.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i144.i.i.i

nvmet_tcp_has_inline_data.exit.i.i.i.i:           ; preds = %land.lhs.true.i.i.i.i.i
  %rbytes_done.i165.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %282, i32 0, i32 6
  %290 = ptrtoint ptr %rbytes_done.i165.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %rbytes_done.i165.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %291, 0
  br i1 %tobool2.not.i.i.i.i.i, label %if.then92.i.i.i.i, label %nvmet_tcp_has_inline_data.exit.i.i.i.i.if.else.i144.i.i.i_crit_edge

nvmet_tcp_has_inline_data.exit.i.i.i.i.if.else.i144.i.i.i_crit_edge: ; preds = %nvmet_tcp_has_inline_data.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i144.i.i.i

if.then92.i.i.i.i:                                ; preds = %nvmet_tcp_has_inline_data.exit.i.i.i.i
  %292 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 3, ptr %rcv_state.i.i, align 4
  %293 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i89.i.i = icmp eq ptr %294, null
  br i1 %tobool.not.i89.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %294) #10
  br label %out.i.i.i.i

if.else.i.i.i:                                    ; preds = %if.then92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %295 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %add.ptr, align 8
  %call.i90.i.i = call i32 @kernel_sock_shutdown(ptr noundef %296, i32 noundef 2) #10
  br label %out.i.i.i.i

if.else.i144.i.i.i:                               ; preds = %nvmet_tcp_has_inline_data.exit.i.i.i.i.if.else.i144.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.else.i144.i.i.i_crit_edge, %nvme_is_write.exit.i.i.i.i.i.if.else.i144.i.i.i_crit_edge
  %conv93.i.i.i.i = trunc i32 %call75.i.i.i.i to i16
  call void @nvmet_req_complete(ptr noundef %req48.i.i.i.i, i16 noundef zeroext %conv93.i.i.i.i) #10
  br label %out.i.i.i.i

if.end95.i.i.i.i:                                 ; preds = %if.end73.i.i.i.i
  %297 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cmd28.i.i.i.i, align 8
  %req.i.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %req.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %req.i.i.i.i.i.i, align 8
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %300, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %302)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i8 %302, 127
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %if.end95.i.i.i.i.nvme_is_write.exit.i.i.i.i.i.i_crit_edge, !prof !176

if.end95.i.i.i.i.nvme_is_write.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.end95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %300, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i.i.i.i

nvme_is_write.exit.i.i.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i.i.i, %if.end95.i.i.i.i.nvme_is_write.exit.i.i.i.i.i.i_crit_edge
  %retval.0.in.in.in.i.i.i.i.i.i.i = phi ptr [ %fctype.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %300, %if.end95.i.i.i.i.nvme_is_write.exit.i.i.i.i.i.i_crit_edge ]
  %303 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %retval.0.in.in.i.i.i.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i.i.i.i.i, align 4
  %retval.0.in.i.i.i.i.i.i.i = and i8 %retval.0.in.in.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i.i.i.i)
  %retval.0.i.not.i.i.i.i.i.i = icmp eq i8 %retval.0.in.i.i.i.i.i.i.i, 0
  br i1 %retval.0.i.not.i.i.i.i.i.i, label %nvme_is_write.exit.i.i.i.i.i.i.if.end106.i.i.i.i_crit_edge, label %nvmet_tcp_has_data_in.exit.i.i.i.i.i

nvme_is_write.exit.i.i.i.i.i.i.if.end106.i.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i.i.i

nvmet_tcp_has_data_in.exit.i.i.i.i.i:             ; preds = %nvme_is_write.exit.i.i.i.i.i.i
  %rbytes_done.i.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 6
  %304 = ptrtoint ptr %rbytes_done.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rbytes_done.i.i.i.i.i.i, align 8
  %transfer_len.i.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 1, i32 11
  %306 = ptrtoint ptr %transfer_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %transfer_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %305, i32 %307)
  %cmp.i.i.i.i.i.i = icmp ult i32 %305, %307
  br i1 %cmp.i.i.i.i.i.i, label %nvmet_tcp_need_data_in.exit.i.i.i.i, label %nvmet_tcp_has_data_in.exit.i.i.i.i.i.if.end106.i.i.i.i_crit_edge

nvmet_tcp_has_data_in.exit.i.i.i.i.i.if.end106.i.i.i.i_crit_edge: ; preds = %nvmet_tcp_has_data_in.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i.i.i

nvmet_tcp_need_data_in.exit.i.i.i.i:              ; preds = %nvmet_tcp_has_data_in.exit.i.i.i.i.i
  %cqe.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 1, i32 1
  %308 = ptrtoint ptr %cqe.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cqe.i.i.i.i.i, align 4
  %status.i.i.i.i.i = getelementptr inbounds %struct.nvme_completion, ptr %309, i32 0, i32 4
  %310 = ptrtoint ptr %status.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %status.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %311)
  %tobool.not.i166.i.i.i.i = icmp eq i16 %311, 0
  br i1 %tobool.not.i166.i.i.i.i, label %if.then98.i.i.i.i, label %nvmet_tcp_need_data_in.exit.i.i.i.i.if.end106.i.i.i.i_crit_edge

nvmet_tcp_need_data_in.exit.i.i.i.i.if.end106.i.i.i.i_crit_edge: ; preds = %nvmet_tcp_need_data_in.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i.i.i

if.then98.i.i.i.i:                                ; preds = %nvmet_tcp_need_data_in.exit.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i171.i.i.i.i, label %if.then98.i.i.i.i.nvme_is_write.exit.i176.i.i.i.i_crit_edge, !prof !176

if.then98.i.i.i.i.nvme_is_write.exit.i176.i.i.i.i_crit_edge: ; preds = %if.then98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i176.i.i.i.i

if.then.i.i171.i.i.i.i:                           ; preds = %if.then98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i170.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %300, i32 0, i32 3
  br label %nvme_is_write.exit.i176.i.i.i.i

nvme_is_write.exit.i176.i.i.i.i:                  ; preds = %if.then.i.i171.i.i.i.i, %if.then98.i.i.i.i.nvme_is_write.exit.i176.i.i.i.i_crit_edge
  %retval.0.in.in.in.i.i172.i.i.i.i = phi ptr [ %fctype.i.i170.i.i.i.i, %if.then.i.i171.i.i.i.i ], [ %300, %if.then98.i.i.i.i.nvme_is_write.exit.i176.i.i.i.i_crit_edge ]
  %312 = ptrtoint ptr %retval.0.in.in.in.i.i172.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %retval.0.in.in.i.i173.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i172.i.i.i.i, align 4
  %retval.0.in.i.i174.i.i.i.i = and i8 %retval.0.in.in.i.i173.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i174.i.i.i.i)
  %retval.0.i.not.i175.i.i.i.i = icmp eq i8 %retval.0.in.i.i174.i.i.i.i, 0
  br i1 %retval.0.i.not.i175.i.i.i.i, label %nvme_is_write.exit.i176.i.i.i.i.if.end103.i.i.i.i_crit_edge, label %land.lhs.true.i179.i.i.i.i

nvme_is_write.exit.i176.i.i.i.i.if.end103.i.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i176.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i.i

land.lhs.true.i179.i.i.i.i:                       ; preds = %nvme_is_write.exit.i176.i.i.i.i
  %pdu_len.i177.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 8
  %313 = ptrtoint ptr %pdu_len.i177.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %pdu_len.i177.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i178.i.i.i.i = icmp ne i32 %314, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool2.not.i181.i.i.i.i = icmp eq i32 %305, 0
  %or.cond.i.i.i = select i1 %tobool.not.i178.i.i.i.i, i1 %tobool2.not.i181.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then101.i.i.i.i, label %land.lhs.true.i179.i.i.i.i.if.end103.i.i.i.i_crit_edge

land.lhs.true.i179.i.i.i.i.if.end103.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i179.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i.i

if.then101.i.i.i.i:                               ; preds = %land.lhs.true.i179.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %315 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 1, ptr %rcv_state.i.i, align 4
  call fastcc void @nvmet_tcp_map_pdu_iovec(ptr noundef %298) #10
  br label %nvmet_tcp_try_recv_pdu.exit.thread221.i.i

if.end103.i.i.i.i:                                ; preds = %land.lhs.true.i179.i.i.i.i.if.end103.i.i.i.i_crit_edge, %nvme_is_write.exit.i176.i.i.i.i.if.end103.i.i.i.i_crit_edge
  %316 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %298, align 8
  %cmd2.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %317, i32 0, i32 15
  %318 = ptrtoint ptr %cmd2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cmd2.i.i.i.i.i, align 8
  %cmp.i.i.i.i.i = icmp eq ptr %298, %319
  br i1 %cmp.i.i.i.i.i, label %if.then.i186.i.i.i.i, label %if.end103.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, !prof !176

if.end103.i.i.i.i.if.end15.i.i.i.i.i_crit_edge:   ; preds = %if.end103.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i.i

if.then.i186.i.i.i.i:                             ; preds = %if.end103.i.i.i.i
  %length.i.i.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %300, i32 0, i32 6, i32 0, i32 1
  %320 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %length.i.i.i.i.i, align 8
  %rcv_state.i185.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %317, i32 0, i32 14
  %322 = ptrtoint ptr %rcv_state.i185.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %rcv_state.i185.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp6.i.i.i.i.i = icmp ne i32 %323, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %321, 0
  %or.cond.i.i.i.i.i = select i1 %cmp6.i.i.i.i.i, i1 true, i1 %tobool7.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.then.i186.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, label %land.lhs.true8.i.i.i.i.i

if.then.i186.i.i.i.i.if.end15.i.i.i.i.i_crit_edge: ; preds = %if.then.i186.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i.i

land.lhs.true8.i.i.i.i.i:                         ; preds = %if.then.i186.i.i.i.i
  %324 = call i32 @llvm.bswap.i32(i32 %321) #10
  %port.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 1, i32 13
  %325 = ptrtoint ptr %port.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %port.i.i.i.i.i, align 8
  %inline_data_size.i.i.i.i.i = getelementptr inbounds %struct.nvmet_port, ptr %326, i32 0, i32 13
  %327 = ptrtoint ptr %inline_data_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %inline_data_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %324, i32 %328)
  %cmp10.not.i.i.i.i.i = icmp ugt i32 %324, %328
  br i1 %cmp10.not.i.i.i.i.i, label %land.lhs.true8.i.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, label %land.lhs.true11.i.i.i.i.i

land.lhs.true8.i.i.i.i.i.if.end15.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i.i

land.lhs.true11.i.i.i.i.i:                        ; preds = %land.lhs.true8.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i189.i.i.i.i, label %land.lhs.true11.i.i.i.i.i.nvme_is_write.exit.i194.i.i.i.i_crit_edge, !prof !176

land.lhs.true11.i.i.i.i.i.nvme_is_write.exit.i194.i.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i194.i.i.i.i

if.then.i.i189.i.i.i.i:                           ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i188.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %300, i32 0, i32 3
  br label %nvme_is_write.exit.i194.i.i.i.i

nvme_is_write.exit.i194.i.i.i.i:                  ; preds = %if.then.i.i189.i.i.i.i, %land.lhs.true11.i.i.i.i.i.nvme_is_write.exit.i194.i.i.i.i_crit_edge
  %retval.0.in.in.in.i.i190.i.i.i.i = phi ptr [ %fctype.i.i188.i.i.i.i, %if.then.i.i189.i.i.i.i ], [ %300, %land.lhs.true11.i.i.i.i.i.nvme_is_write.exit.i194.i.i.i.i_crit_edge ]
  %329 = ptrtoint ptr %retval.0.in.in.in.i.i190.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %retval.0.in.in.i.i191.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i190.i.i.i.i, align 4
  %retval.0.in.i.i192.i.i.i.i = and i8 %retval.0.in.in.i.i191.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i192.i.i.i.i)
  %retval.0.i.not.i193.i.i.i.i = icmp eq i8 %retval.0.in.i.i192.i.i.i.i, 0
  br i1 %retval.0.i.not.i193.i.i.i.i, label %nvme_is_write.exit.i194.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, label %nvme_is_write.exit.i194.i.i.i.i.out.i.i.i.i_crit_edge

nvme_is_write.exit.i194.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i194.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i.i

nvme_is_write.exit.i194.i.i.i.i.if.end15.i.i.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i194.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i.i

if.end15.i.i.i.i.i:                               ; preds = %nvme_is_write.exit.i194.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, %land.lhs.true8.i.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, %if.then.i186.i.i.i.i.if.end15.i.i.i.i.i_crit_edge, %if.end103.i.i.i.i.if.end15.i.i.i.i.i_crit_edge
  %lentry.i.i.i.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 16
  %resp_list.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %317, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @llist_add_batch(ptr noundef %lentry.i.i.i.i.i, ptr noundef %lentry.i.i.i.i.i, ptr noundef %resp_list.i.i.i.i.i) #10
  %330 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %317, align 8
  %sk.i.i.i.i.i.i = getelementptr inbounds %struct.socket, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %sk.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %sk.i.i.i.i.i.i, align 16
  %334 = getelementptr inbounds %struct.sock_common, ptr %333, i32 0, i32 18
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %334, align 8
  %337 = load ptr, ptr @nvmet_tcp_wq, align 4
  %338 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %298, align 8
  %io_work.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %339, i32 0, i32 2
  %call19.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef %336, ptr noundef %337, ptr noundef %io_work.i.i.i.i.i) #10
  br label %out.i.i.i.i

if.end106.i.i.i.i:                                ; preds = %nvmet_tcp_need_data_in.exit.i.i.i.i.if.end106.i.i.i.i_crit_edge, %nvmet_tcp_has_data_in.exit.i.i.i.i.i.if.end106.i.i.i.i_crit_edge, %nvme_is_write.exit.i.i.i.i.i.i.if.end106.i.i.i.i_crit_edge
  %execute.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %298, i32 0, i32 1, i32 14
  %340 = ptrtoint ptr %execute.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %execute.i.i.i.i, align 4
  call void %341(ptr noundef %req.i.i.i.i.i.i) #10
  br label %out.i.i.i.i

out.i.i.i.i:                                      ; preds = %if.end106.i.i.i.i, %if.end15.i.i.i.i.i, %nvme_is_write.exit.i194.i.i.i.i.out.i.i.i.i_crit_edge, %if.else.i144.i.i.i, %if.else.i.i.i, %if.then.i.i.i
  %ret.0.i.i.i.i = phi i32 [ 0, %if.end106.i.i.i.i ], [ -11, %if.else.i144.i.i.i ], [ 0, %nvme_is_write.exit.i194.i.i.i.i.out.i.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.i.i ], [ -11, %if.then.i.i.i ], [ -11, %if.else.i.i.i ]
  %342 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %offset.i.i.i, align 4
  %343 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 8, ptr %left.i.i.i, align 8
  %344 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  %345 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %rcv_state.i.i, align 4
  br label %nvmet_tcp_try_recv_pdu.exit.i.i

nvmet_tcp_try_recv_pdu.exit.thread.i.i:           ; preds = %if.else.i112.i.i, %if.then.i110.i.i, %do.end.i.i.i.i.i, %if.else.i151.i.i, %if.then.i149.i.i, %if.else.i130.i.i.i, %if.then.i128.i.i.i, %if.else.i.i.i.i, %if.then.i.i.i.i, %if.end50.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge, %do.end43.i.i.i, %if.else.i159.i.i, %if.then.i157.i.i, %if.end.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge, %if.then4.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge
  %retval.2.i.ph.i.i = phi i32 [ -12, %if.else.i112.i.i ], [ -12, %if.then.i110.i.i ], [ -71, %if.else.i151.i.i ], [ -71, %if.then.i149.i.i ], [ -5, %if.else.i159.i.i ], [ -5, %if.then.i157.i.i ], [ -71, %do.end.i.i.i.i.i ], [ -71, %if.else.i130.i.i.i ], [ -71, %if.then.i128.i.i.i ], [ -71, %if.else.i.i.i.i ], [ -71, %if.then.i.i.i.i ], [ -5, %do.end43.i.i.i ], [ -11, %if.end.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %if.end50.i.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge ], [ %call161.i.i.i, %if.then4.i.i.nvmet_tcp_try_recv_pdu.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i) #10
  br label %if.then26.i.i

nvmet_tcp_try_recv_pdu.exit.thread221.i.i:        ; preds = %if.then101.i.i.i.i, %if.end12.i.i.i, %if.else.i215.i.i, %if.then.i213.i.i, %if.then.i101.i.i, %if.end7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i) #10
  br label %if.end8thread-pre-split.i.i

nvmet_tcp_try_recv_pdu.exit.i.i:                  ; preds = %out.i.i.i.i, %nvmet_tcp_handle_icreq.exit.i.i
  %retval.2.i.i.i = phi i32 [ %retval.0.i145.i.i, %nvmet_tcp_handle_icreq.exit.i.i ], [ %ret.0.i.i.i.i, %out.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %retval.2.i.i.i, 0
  br i1 %cmp5.not.i.i, label %nvmet_tcp_try_recv_pdu.exit.i.i.if.end8thread-pre-split.i.i_crit_edge, label %nvmet_tcp_try_recv_pdu.exit.i.i.done_recv.i.i_crit_edge

nvmet_tcp_try_recv_pdu.exit.i.i.done_recv.i.i_crit_edge: ; preds = %nvmet_tcp_try_recv_pdu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_recv.i.i

nvmet_tcp_try_recv_pdu.exit.i.i.if.end8thread-pre-split.i.i_crit_edge: ; preds = %nvmet_tcp_try_recv_pdu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8thread-pre-split.i.i

if.end8thread-pre-split.i.i:                      ; preds = %nvmet_tcp_try_recv_pdu.exit.i.i.if.end8thread-pre-split.i.i_crit_edge, %nvmet_tcp_try_recv_pdu.exit.thread221.i.i
  %346 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %.pr.i.i = load i32, ptr %rcv_state.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end8thread-pre-split.i.i, %for.body.i.if.end8.i.i_crit_edge
  %347 = phi i32 [ %.pr.i.i, %if.end8thread-pre-split.i.i ], [ %9, %for.body.i.if.end8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %347)
  %cmp10.i.i = icmp eq i32 %347, 1
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  %348 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cmd28.i.i.i.i, align 8
  %count.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 12, i32 2, i32 4
  %350 = ptrtoint ptr %count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %count.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool.not34.i.i.i = icmp eq i32 %351, 0
  br i1 %tobool.not34.i.i.i, label %if.then11.i.i.while.end.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then11.i.i.while.end.i.i.i_crit_edge:          ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then11.i.i
  %recv_msg.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 12
  %msg_flags.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 12, i32 6
  %pdu_recv.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 9
  %rbytes_done.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 6
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i44.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %352 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %349, align 8
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %353, align 8
  %356 = ptrtoint ptr %msg_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %msg_flags.i.i.i, align 4
  %call5.i.i.i = call i32 @sock_recvmsg(ptr noundef %355, ptr noundef %recv_msg.i.i.i, i32 noundef %357) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i.i)
  %cmp.i42.i.i = icmp slt i32 %call5.i.i.i, 1
  br i1 %cmp.i42.i.i, label %nvmet_tcp_try_recv_data.exit.i.i, label %if.end.i44.i.i

if.end.i44.i.i:                                   ; preds = %while.body.i.i.i
  %358 = ptrtoint ptr %pdu_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %pdu_recv.i.i.i, align 4
  %add.i43.i.i = add i32 %359, %call5.i.i.i
  store i32 %add.i43.i.i, ptr %pdu_recv.i.i.i, align 4
  %360 = ptrtoint ptr %rbytes_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %rbytes_done.i.i.i, align 8
  %add6.i.i.i = add i32 %361, %call5.i.i.i
  store i32 %add6.i.i.i, ptr %rbytes_done.i.i.i, align 8
  %362 = ptrtoint ptr %count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %count.i.i.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i32 %363, 0
  br i1 %tobool.not.i.i.i, label %if.end.i44.i.i.while.end.i.i.i_crit_edge, label %if.end.i44.i.i.while.body.i.i.i_crit_edge

if.end.i44.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end.i44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end.i44.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end.i44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i44.i.i.while.end.i.i.i_crit_edge, %if.then11.i.i.while.end.i.i.i_crit_edge
  %sg1.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 1, i32 5
  %364 = ptrtoint ptr %sg1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %sg1.i.i.i.i, align 4
  %sg_idx.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 10
  %366 = ptrtoint ptr %sg_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %sg_idx.i.i.i.i, align 8
  %arrayidx.i.i45.i.i = getelementptr %struct.scatterlist, ptr %365, i32 %367
  %nr_mapped.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 11
  %368 = ptrtoint ptr %nr_mapped.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %nr_mapped.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %cmp10.i.i.i.i = icmp sgt i32 %369, 0
  br i1 %cmp10.i.i.i.i, label %while.end.i.i.i.for.body.i.i.i.i_crit_edge, label %while.end.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge

while.end.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_unmap_pdu_iovec.exit.i.i.i

while.end.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %while.end.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %kunmap.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %while.end.i.i.i.for.body.i.i.i.i_crit_edge
  %i.011.i.i.i.i = phi i32 [ %inc.i.i.i.i, %kunmap.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %while.end.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx2.i.i.i.i = getelementptr %struct.scatterlist, ptr %arrayidx.i.i45.i.i, i32 %i.011.i.i.i.i
  %370 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %371, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_page.exit.i.i.i.i, label %do.body2.i.i.i.i.i, !prof !178

do.body2.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

sg_page.exit.i.i.i.i:                             ; preds = %for.body.i.i.i.i
  %and.i.i.i.i.i = and i32 %371, -4
  %372 = inttoptr i32 %and.i.i.i.i.i to ptr
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #10
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %372, align 4
  %shr.i.i.i.i.i.i = lshr i32 %374, 30
  %375 = zext i32 %shr.i.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %375, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %shr.i.i.i.i.i.i, label %sg_page.exit.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge [
    i32 2, label %sg_page.exit.i.i.i.i.if.end.i.i.i46.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i.i.i
  ]

sg_page.exit.i.i.i.i.if.end.i.i.i46.i.i_crit_edge: ; preds = %sg_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i46.i.i

sg_page.exit.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge: ; preds = %sg_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i:                    ; preds = %sg_page.exit.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %376 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %376)
  %cmp2.i.not.i.i.i.i.i = icmp eq i32 %376, 2
  br i1 %cmp2.i.not.i.i.i.i.i, label %is_highmem_idx.exit.i.i.i.i.i.if.end.i.i.i46.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge

is_highmem_idx.exit.i.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i.if.end.i.i.i46.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i46.i.i

if.end.i.i.i46.i.i:                               ; preds = %is_highmem_idx.exit.i.i.i.i.i.if.end.i.i.i46.i.i_crit_edge, %sg_page.exit.i.i.i.i.if.end.i.i.i46.i.i_crit_edge
  call void @kunmap_high(ptr noundef %372) #10
  br label %kunmap.exit.i.i.i.i

kunmap.exit.i.i.i.i:                              ; preds = %if.end.i.i.i46.i.i, %is_highmem_idx.exit.i.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge, %sg_page.exit.i.i.i.i.kunmap.exit.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw nsw i32 %i.011.i.i.i.i, 1
  %377 = ptrtoint ptr %nr_mapped.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %nr_mapped.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %378
  br i1 %cmp.i.i.i.i, label %kunmap.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %kunmap.exit.i.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge

kunmap.exit.i.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge: ; preds = %kunmap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_unmap_pdu_iovec.exit.i.i.i

kunmap.exit.i.i.i.i.for.body.i.i.i.i_crit_edge:   ; preds = %kunmap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

nvmet_tcp_unmap_pdu_iovec.exit.i.i.i:             ; preds = %kunmap.exit.i.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge, %while.end.i.i.i.nvmet_tcp_unmap_pdu_iovec.exit.i.i.i_crit_edge
  %379 = ptrtoint ptr %nr_mapped.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %nr_mapped.i.i.i.i, align 4
  %380 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %data_digest.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool7.not.i.i.i = icmp eq i8 %381, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %if.then8.i.i.i

if.then8.i.i.i:                                   ; preds = %nvmet_tcp_unmap_pdu_iovec.exit.i.i.i
  %382 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %349, align 8
  %rcv_hash.i.i48.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %383, i32 0, i32 20
  %384 = ptrtoint ptr %rcv_hash.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %rcv_hash.i.i48.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i41.i.i) #10
  %tfm.i.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %385, i32 0, i32 3
  %386 = call ptr @memset(ptr %sg.i.i.i41.i.i, i32 255, i32 20)
  %387 = ptrtoint ptr %tfm.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %tfm.i.i.i.i.i.i.i, align 16
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %388, align 128
  %and.i.i.i30.i.i.i = and i32 %390, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i30.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then8.i.i.i.crypto_ahash_init.exit.i.i.i.i.i_crit_edge

if.then8.i.i.i.crypto_ahash_init.exit.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_ahash_init.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i.i.i.i.i = getelementptr i8, ptr %388, i32 -128
  %391 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %add.ptr.i.i.i.i.i.i.i.i, align 128
  %call2.i.i.i.i.i.i = call i32 %392(ptr noundef %385) #10
  br label %crypto_ahash_init.exit.i.i.i.i.i

crypto_ahash_init.exit.i.i.i.i.i:                 ; preds = %if.end.i.i.i.i.i.i, %if.then8.i.i.i.crypto_ahash_init.exit.i.i.i.i.i_crit_edge
  %393 = ptrtoint ptr %nr_mapped.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %nr_mapped.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp19.i.i.i.i.i = icmp sgt i32 %394, 0
  br i1 %cmp19.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i, label %crypto_ahash_init.exit.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge

crypto_ahash_init.exit.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge: ; preds = %crypto_ahash_init.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_prep_recv_ddgst.exit.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %crypto_ahash_init.exit.i.i.i.i.i
  %iov1.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 13
  %395 = ptrtoint ptr %iov1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %iov1.i.i.i.i.i, align 8
  %src1.i.i.i.i49.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 2
  %nbytes2.i.i.i.i50.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 1
  %result3.i.i.i.i51.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 3
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.021.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %iov.020.i.i.i.i.i = phi ptr [ %396, %for.body.lr.ph.i.i.i.i.i ], [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %397 = ptrtoint ptr %iov.020.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %iov.020.i.i.i.i.i, align 4
  %iov_len.i.i.i.i.i = getelementptr inbounds %struct.kvec, ptr %iov.020.i.i.i.i.i, i32 0, i32 1
  %399 = ptrtoint ptr %iov_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %iov_len.i.i.i.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i41.i.i, ptr noundef %398, i32 noundef %400) #10
  %401 = ptrtoint ptr %iov_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %iov_len.i.i.i.i.i, align 4
  %403 = ptrtoint ptr %src1.i.i.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %sg.i.i.i41.i.i, ptr %src1.i.i.i.i49.i.i, align 4
  %404 = ptrtoint ptr %nbytes2.i.i.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %402, ptr %nbytes2.i.i.i.i50.i.i, align 8
  %405 = ptrtoint ptr %result3.i.i.i.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr null, ptr %result3.i.i.i.i51.i.i, align 32
  %406 = ptrtoint ptr %tfm.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %tfm.i.i.i.i.i.i.i, align 16
  %__crt_alg.i.i.i.i.i.i = getelementptr i8, ptr %407, i32 12
  %408 = ptrtoint ptr %__crt_alg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %__crt_alg.i.i.i.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %409) #10
  %410 = ptrtoint ptr %tfm.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %tfm.i.i.i.i.i.i.i, align 16
  %update.i.i.i.i.i.i = getelementptr i8, ptr %411, i32 -124
  %412 = ptrtoint ptr %update.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %update.i.i.i.i.i.i, align 4
  %call3.i.i.i.i.i.i = call i32 %413(ptr noundef %385) #10
  call void @crypto_stats_ahash_update(i32 noundef %402, i32 noundef %call3.i.i.i.i.i.i, ptr noundef %409) #10
  %inc.i.i.i.i.i = add nuw nsw i32 %i.021.i.i.i.i.i, 1
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.kvec, ptr %iov.020.i.i.i.i.i, i32 1
  %414 = ptrtoint ptr %nr_mapped.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %nr_mapped.i.i.i.i, align 4
  %cmp.i.i.i52.i.i = icmp slt i32 %inc.i.i.i.i.i, %415
  br i1 %cmp.i.i.i52.i.i, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge

for.body.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_prep_recv_ddgst.exit.i.i.i

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

nvmet_tcp_prep_recv_ddgst.exit.i.i.i:             ; preds = %for.body.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge, %crypto_ahash_init.exit.i.i.i.i.i.nvmet_tcp_prep_recv_ddgst.exit.i.i.i_crit_edge
  %exp_ddgst.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 20
  %src1.i16.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 2
  %416 = ptrtoint ptr %src1.i16.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr null, ptr %src1.i16.i.i.i.i.i, align 4
  %nbytes2.i17.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 1
  %417 = ptrtoint ptr %nbytes2.i17.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %nbytes2.i17.i.i.i.i.i, align 8
  %result3.i18.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %385, i32 0, i32 3
  %418 = ptrtoint ptr %result3.i18.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %exp_ddgst.i.i.i.i.i, ptr %result3.i18.i.i.i.i.i, align 32
  %call4.i.i.i.i.i = call i32 @crypto_ahash_final(ptr noundef %385) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i41.i.i) #10
  %offset.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %383, i32 0, i32 12
  %419 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 0, ptr %offset.i.i.i.i, align 4
  %left.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %383, i32 0, i32 13
  %420 = ptrtoint ptr %left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 4, ptr %left.i.i.i.i, align 8
  br label %nvmet_tcp_try_recv_data.exit.thread.i.i

if.end9.i.i.i:                                    ; preds = %nvmet_tcp_unmap_pdu_iovec.exit.i.i.i
  %rbytes_done10.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 6
  %421 = ptrtoint ptr %rbytes_done10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %rbytes_done10.i.i.i, align 8
  %transfer_len.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 1, i32 11
  %423 = ptrtoint ptr %transfer_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %transfer_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %422, i32 %424)
  %cmp11.i.i.i = icmp eq i32 %422, %424
  br i1 %cmp11.i.i.i, label %if.then12.i.i.i, label %if.end9.i.i.i.if.end13.i.i.i_crit_edge

if.end9.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end9.i.i.i
  %flags.i.i53.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 14
  %425 = ptrtoint ptr %flags.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %flags.i.i53.i.i, align 4
  %and.i.i.i.i = and i32 %426, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i54.i.i = icmp eq i32 %and.i.i.i.i, 0
  %req3.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 1
  br i1 %tobool.not.i.i54.i.i, label %if.else.i.i57.i.i, label %if.then.i.i55.i.i, !prof !178

if.then.i.i55.i.i:                                ; preds = %if.then12.i.i.i
  %427 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %349, align 8
  %cmd2.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %428, i32 0, i32 15
  %429 = ptrtoint ptr %cmd2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %cmd2.i.i.i, align 8
  %cmp.i163.i.i = icmp eq ptr %349, %430
  br i1 %cmp.i163.i.i, label %if.then.i168.i.i, label %if.then.i.i55.i.i.if.end15.i.i.i_crit_edge, !prof !176

if.then.i.i55.i.i.if.end15.i.i.i_crit_edge:       ; preds = %if.then.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

if.then.i168.i.i:                                 ; preds = %if.then.i.i55.i.i
  %431 = ptrtoint ptr %req3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %req3.i.i.i.i, align 8
  %length.i164.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %432, i32 0, i32 6, i32 0, i32 1
  %433 = ptrtoint ptr %length.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %length.i164.i.i, align 8
  %rcv_state.i165.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %428, i32 0, i32 14
  %435 = ptrtoint ptr %rcv_state.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %rcv_state.i165.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %cmp6.i.i.i = icmp ne i32 %436, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %tobool7.not.i166.i.i = icmp eq i32 %434, 0
  %or.cond.i167.i.i = select i1 %cmp6.i.i.i, i1 true, i1 %tobool7.not.i166.i.i
  br i1 %or.cond.i167.i.i, label %if.then.i168.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true8.i.i.i

if.then.i168.i.i.if.end15.i.i.i_crit_edge:        ; preds = %if.then.i168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then.i168.i.i
  %437 = call i32 @llvm.bswap.i32(i32 %434) #10
  %port.i169.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 1, i32 13
  %438 = ptrtoint ptr %port.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %port.i169.i.i, align 8
  %inline_data_size.i170.i.i = getelementptr inbounds %struct.nvmet_port, ptr %439, i32 0, i32 13
  %440 = ptrtoint ptr %inline_data_size.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %inline_data_size.i170.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %437, i32 %441)
  %cmp10.not.i.i.i = icmp ugt i32 %437, %441
  br i1 %cmp10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true8.i.i.i.if.end15.i.i.i_crit_edge:    ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true8.i.i.i
  %442 = ptrtoint ptr %432 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %432, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %443)
  %cmp.i.i.i171.i.i = icmp eq i8 %443, 127
  br i1 %cmp.i.i.i171.i.i, label %if.then.i.i173.i.i, label %land.lhs.true11.i.i.i.nvme_is_write.exit.i178.i.i_crit_edge, !prof !176

land.lhs.true11.i.i.i.nvme_is_write.exit.i178.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i178.i.i

if.then.i.i173.i.i:                               ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i172.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %432, i32 0, i32 3
  br label %nvme_is_write.exit.i178.i.i

nvme_is_write.exit.i178.i.i:                      ; preds = %if.then.i.i173.i.i, %land.lhs.true11.i.i.i.nvme_is_write.exit.i178.i.i_crit_edge
  %retval.0.in.in.in.i.i174.i.i = phi ptr [ %fctype.i.i172.i.i, %if.then.i.i173.i.i ], [ %432, %land.lhs.true11.i.i.i.nvme_is_write.exit.i178.i.i_crit_edge ]
  %444 = ptrtoint ptr %retval.0.in.in.in.i.i174.i.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %retval.0.in.in.i.i175.i.i = load i8, ptr %retval.0.in.in.in.i.i174.i.i, align 4
  %retval.0.in.i.i176.i.i = and i8 %retval.0.in.in.i.i175.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i176.i.i)
  %retval.0.i.not.i177.i.i = icmp eq i8 %retval.0.in.i.i176.i.i, 0
  br i1 %retval.0.i.not.i177.i.i, label %nvme_is_write.exit.i178.i.i.if.end15.i.i.i_crit_edge, label %nvme_is_write.exit.i178.i.i.if.end13.i.i.i_crit_edge

nvme_is_write.exit.i178.i.i.if.end13.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i.i

nvme_is_write.exit.i178.i.i.if.end15.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %nvme_is_write.exit.i178.i.i.if.end15.i.i.i_crit_edge, %land.lhs.true8.i.i.i.if.end15.i.i.i_crit_edge, %if.then.i168.i.i.if.end15.i.i.i_crit_edge, %if.then.i.i55.i.i.if.end15.i.i.i_crit_edge
  %lentry.i.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 16
  %resp_list.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %428, i32 0, i32 8
  %call.i.i179.i.i = call zeroext i1 @llist_add_batch(ptr noundef %lentry.i.i.i, ptr noundef %lentry.i.i.i, ptr noundef %resp_list.i.i.i) #10
  %445 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %428, align 8
  %sk.i.i.i.i = getelementptr inbounds %struct.socket, ptr %446, i32 0, i32 4
  %447 = ptrtoint ptr %sk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %sk.i.i.i.i, align 16
  %449 = getelementptr inbounds %struct.sock_common, ptr %448, i32 0, i32 18
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %449, align 8
  %452 = load ptr, ptr @nvmet_tcp_wq, align 4
  %453 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %349, align 8
  %io_work.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %454, i32 0, i32 2
  %call19.i.i.i = call zeroext i1 @queue_work_on(i32 noundef %451, ptr noundef %452, ptr noundef %io_work.i.i.i) #10
  br label %if.end13.i.i.i

if.else.i.i57.i.i:                                ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %execute.i.i56.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %349, i32 0, i32 1, i32 14
  %455 = ptrtoint ptr %execute.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %execute.i.i56.i.i, align 4
  call void %456(ptr noundef %req3.i.i.i.i) #10
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.else.i.i57.i.i, %if.end15.i.i.i, %nvme_is_write.exit.i178.i.i.if.end13.i.i.i_crit_edge, %if.end9.i.i.i.if.end13.i.i.i_crit_edge
  %457 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 0, ptr %offset.i.i.i, align 4
  %458 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 8, ptr %left.i.i.i, align 8
  %459 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  br label %nvmet_tcp_try_recv_data.exit.thread.i.i

nvmet_tcp_try_recv_data.exit.thread.i.i:          ; preds = %if.end13.i.i.i, %nvmet_tcp_prep_recv_ddgst.exit.i.i.i
  %queue.sink.i.i.i = phi ptr [ %add.ptr, %if.end13.i.i.i ], [ %383, %nvmet_tcp_prep_recv_ddgst.exit.i.i.i ]
  %.sink.i.i.i = phi i32 [ 0, %if.end13.i.i.i ], [ 2, %nvmet_tcp_prep_recv_ddgst.exit.i.i.i ]
  %rcv_state.i33.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue.sink.i.i.i, i32 0, i32 14
  %460 = ptrtoint ptr %rcv_state.i33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %.sink.i.i.i, ptr %rcv_state.i33.i.i.i, align 4
  br label %if.end16.i.i

nvmet_tcp_try_recv_data.exit.i.i:                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp13.not.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %cmp13.not.i.i, label %nvmet_tcp_try_recv_data.exit.i.i.if.end16.i.i_crit_edge, label %nvmet_tcp_try_recv_data.exit.i.i.if.then26.i.i_crit_edge

nvmet_tcp_try_recv_data.exit.i.i.if.then26.i.i_crit_edge: ; preds = %nvmet_tcp_try_recv_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

nvmet_tcp_try_recv_data.exit.i.i.if.end16.i.i_crit_edge: ; preds = %nvmet_tcp_try_recv_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %nvmet_tcp_try_recv_data.exit.i.i.if.end16.i.i_crit_edge, %nvmet_tcp_try_recv_data.exit.thread.i.i, %if.end8.i.i.if.end16.i.i_crit_edge
  %461 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %rcv_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %462)
  %cmp18.i.i = icmp eq i32 %462, 2
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end16.i.i.if.end5.i_crit_edge

if.end16.i.i.if.end5.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %463 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cmd28.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i58.i.i) #10
  %465 = call ptr @memset(ptr %msg.i58.i.i, i32 0, i32 56)
  %466 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 64, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i59.i.i) #10
  %recv_ddgst.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 21
  %467 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %recv_ddgst.i.i.i, i32 %468
  %469 = ptrtoint ptr %iov.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %add.ptr.i62.i.i, ptr %iov.i59.i.i, align 4
  %470 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %left.i.i.i, align 8
  %472 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %471, ptr %4, align 4
  %473 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %add.ptr, align 8
  %call.i64.i.i = call i32 @kernel_recvmsg(ptr noundef %474, ptr noundef nonnull %msg.i58.i.i, ptr noundef nonnull %iov.i59.i.i, i32 noundef 1, i32 noundef %471, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i.i)
  %cmp.i65.i.i = icmp slt i32 %call.i64.i.i, 0
  br i1 %cmp.i65.i.i, label %if.then19.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge, label %if.end.i69.i.i, !prof !176

if.then19.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_try_recv_ddgst.exit.i.i

if.end.i69.i.i:                                   ; preds = %if.then19.i.i
  %475 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %offset.i.i.i, align 4
  %add.i66.i.i = add i32 %476, %call.i64.i.i
  store i32 %add.i66.i.i, ptr %offset.i.i.i, align 4
  %477 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %left.i.i.i, align 8
  %sub.i67.i.i = sub i32 %478, %call.i64.i.i
  store i32 %sub.i67.i.i, ptr %left.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %call.i64.i.i)
  %tobool7.not.i68.i.i = icmp eq i32 %478, %call.i64.i.i
  br i1 %tobool7.not.i68.i.i, label %if.end9.i71.i.i, label %if.end.i69.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge

if.end.i69.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge: ; preds = %if.end.i69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_try_recv_ddgst.exit.i.i

if.end9.i71.i.i:                                  ; preds = %if.end.i69.i.i
  %479 = ptrtoint ptr %data_digest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %data_digest.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %480)
  %tobool10.not.i.i.i = icmp eq i8 %480, 0
  br i1 %tobool10.not.i.i.i, label %if.end9.i71.i.i.if.end19.i.i.i_crit_edge, label %land.lhs.true.i72.i.i

if.end9.i71.i.i.if.end19.i.i.i_crit_edge:         ; preds = %if.end9.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

land.lhs.true.i72.i.i:                            ; preds = %if.end9.i71.i.i
  %exp_ddgst.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 20
  %481 = ptrtoint ptr %exp_ddgst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %exp_ddgst.i.i.i, align 8
  %483 = ptrtoint ptr %recv_ddgst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %recv_ddgst.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %482, i32 %484)
  %cmp12.not.i.i.i = icmp eq i32 %482, %484
  br i1 %cmp12.not.i.i.i, label %land.lhs.true.i72.i.i.if.end19.i.i.i_crit_edge, label %do.end.i78.i.i

land.lhs.true.i72.i.i.if.end19.i.i.i_crit_edge:   ; preds = %land.lhs.true.i72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

do.end.i78.i.i:                                   ; preds = %land.lhs.true.i72.i.i
  %485 = ptrtoint ptr %idx.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %idx.i104.i.i, align 4
  %req.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 1
  %487 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %req.i.i.i, align 8
  %command_id.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %488, i32 0, i32 2
  %489 = ptrtoint ptr %command_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %command_id.i.i.i, align 2
  %conv.i73.i.i = zext i16 %490 to i32
  %491 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %pdu.i.i.i, align 8
  %conv15.i.i.i = zext i8 %492 to i32
  %493 = call i32 @llvm.bswap.i32(i32 %484) #10
  %494 = call i32 @llvm.bswap.i32(i32 %482) #10
  %call18.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %486, i32 noundef %conv.i73.i.i, i32 noundef %conv15.i.i.i, i32 noundef %493, i32 noundef %494) #14
  call fastcc void @nvmet_tcp_finish_cmd(ptr noundef %464) #10
  %495 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 3, ptr %rcv_state.i.i, align 4
  %496 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i.i77.i.i = icmp eq ptr %497, null
  br i1 %tobool.not.i.i77.i.i, label %if.else.i.i81.i.i, label %if.then.i.i79.i.i

if.then.i.i79.i.i:                                ; preds = %do.end.i78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %497) #10
  br label %out.i.i.i

if.else.i.i81.i.i:                                ; preds = %do.end.i78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %498 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %add.ptr, align 8
  %call.i.i80.i.i = call i32 @kernel_sock_shutdown(ptr noundef %499, i32 noundef 2) #10
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %land.lhs.true.i72.i.i.if.end19.i.i.i_crit_edge, %if.end9.i71.i.i.if.end19.i.i.i_crit_edge
  %rbytes_done.i82.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 6
  %500 = ptrtoint ptr %rbytes_done.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %rbytes_done.i82.i.i, align 8
  %transfer_len.i83.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 1, i32 11
  %502 = ptrtoint ptr %transfer_len.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %transfer_len.i83.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %501, i32 %503)
  %cmp21.i.i.i = icmp eq i32 %501, %503
  br i1 %cmp21.i.i.i, label %if.then23.i.i.i, label %if.end19.i.i.i.out.i.i.i_crit_edge

if.end19.i.i.i.out.i.i.i_crit_edge:               ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end19.i.i.i
  %flags.i.i84.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 14
  %504 = ptrtoint ptr %flags.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %flags.i.i84.i.i, align 4
  %and.i.i85.i.i = and i32 %505, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85.i.i)
  %tobool.not.i53.i.i.i = icmp eq i32 %and.i.i85.i.i, 0
  %req3.i.i86.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 1
  br i1 %tobool.not.i53.i.i.i, label %if.else.i55.i.i.i, label %if.then.i54.i.i.i, !prof !178

if.then.i54.i.i.i:                                ; preds = %if.then23.i.i.i
  %506 = ptrtoint ptr %464 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %464, align 8
  %cmd2.i181.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %507, i32 0, i32 15
  %508 = ptrtoint ptr %cmd2.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cmd2.i181.i.i, align 8
  %cmp.i182.i.i = icmp eq ptr %464, %509
  br i1 %cmp.i182.i.i, label %if.then.i188.i.i, label %if.then.i54.i.i.i.if.end15.i208.i.i_crit_edge, !prof !176

if.then.i54.i.i.i.if.end15.i208.i.i_crit_edge:    ; preds = %if.then.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i208.i.i

if.then.i188.i.i:                                 ; preds = %if.then.i54.i.i.i
  %510 = ptrtoint ptr %req3.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %req3.i.i86.i.i, align 8
  %length.i183.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %511, i32 0, i32 6, i32 0, i32 1
  %512 = ptrtoint ptr %length.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %length.i183.i.i, align 8
  %rcv_state.i184.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %507, i32 0, i32 14
  %514 = ptrtoint ptr %rcv_state.i184.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %rcv_state.i184.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %cmp6.i185.i.i = icmp ne i32 %515, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %513)
  %tobool7.not.i186.i.i = icmp eq i32 %513, 0
  %or.cond.i187.i.i = select i1 %cmp6.i185.i.i, i1 true, i1 %tobool7.not.i186.i.i
  br i1 %or.cond.i187.i.i, label %if.then.i188.i.i.if.end15.i208.i.i_crit_edge, label %land.lhs.true8.i192.i.i

if.then.i188.i.i.if.end15.i208.i.i_crit_edge:     ; preds = %if.then.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i208.i.i

land.lhs.true8.i192.i.i:                          ; preds = %if.then.i188.i.i
  %516 = call i32 @llvm.bswap.i32(i32 %513) #10
  %port.i189.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 1, i32 13
  %517 = ptrtoint ptr %port.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %port.i189.i.i, align 8
  %inline_data_size.i190.i.i = getelementptr inbounds %struct.nvmet_port, ptr %518, i32 0, i32 13
  %519 = ptrtoint ptr %inline_data_size.i190.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %inline_data_size.i190.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %516, i32 %520)
  %cmp10.not.i191.i.i = icmp ugt i32 %516, %520
  br i1 %cmp10.not.i191.i.i, label %land.lhs.true8.i192.i.i.if.end15.i208.i.i_crit_edge, label %land.lhs.true11.i194.i.i

land.lhs.true8.i192.i.i.if.end15.i208.i.i_crit_edge: ; preds = %land.lhs.true8.i192.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i208.i.i

land.lhs.true11.i194.i.i:                         ; preds = %land.lhs.true8.i192.i.i
  %521 = ptrtoint ptr %511 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %511, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %522)
  %cmp.i.i.i193.i.i = icmp eq i8 %522, 127
  br i1 %cmp.i.i.i193.i.i, label %if.then.i.i196.i.i, label %land.lhs.true11.i194.i.i.nvme_is_write.exit.i201.i.i_crit_edge, !prof !176

land.lhs.true11.i194.i.i.nvme_is_write.exit.i201.i.i_crit_edge: ; preds = %land.lhs.true11.i194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i201.i.i

if.then.i.i196.i.i:                               ; preds = %land.lhs.true11.i194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i195.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %511, i32 0, i32 3
  br label %nvme_is_write.exit.i201.i.i

nvme_is_write.exit.i201.i.i:                      ; preds = %if.then.i.i196.i.i, %land.lhs.true11.i194.i.i.nvme_is_write.exit.i201.i.i_crit_edge
  %retval.0.in.in.in.i.i197.i.i = phi ptr [ %fctype.i.i195.i.i, %if.then.i.i196.i.i ], [ %511, %land.lhs.true11.i194.i.i.nvme_is_write.exit.i201.i.i_crit_edge ]
  %523 = ptrtoint ptr %retval.0.in.in.in.i.i197.i.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %retval.0.in.in.i.i198.i.i = load i8, ptr %retval.0.in.in.in.i.i197.i.i, align 4
  %retval.0.in.i.i199.i.i = and i8 %retval.0.in.in.i.i198.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i199.i.i)
  %retval.0.i.not.i200.i.i = icmp eq i8 %retval.0.in.i.i199.i.i, 0
  br i1 %retval.0.i.not.i200.i.i, label %nvme_is_write.exit.i201.i.i.if.end15.i208.i.i_crit_edge, label %nvme_is_write.exit.i201.i.i.out.i.i.i_crit_edge

nvme_is_write.exit.i201.i.i.out.i.i.i_crit_edge:  ; preds = %nvme_is_write.exit.i201.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

nvme_is_write.exit.i201.i.i.if.end15.i208.i.i_crit_edge: ; preds = %nvme_is_write.exit.i201.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i208.i.i

if.end15.i208.i.i:                                ; preds = %nvme_is_write.exit.i201.i.i.if.end15.i208.i.i_crit_edge, %land.lhs.true8.i192.i.i.if.end15.i208.i.i_crit_edge, %if.then.i188.i.i.if.end15.i208.i.i_crit_edge, %if.then.i54.i.i.i.if.end15.i208.i.i_crit_edge
  %lentry.i202.i.i = getelementptr %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 16
  %resp_list.i203.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %507, i32 0, i32 8
  %call.i.i204.i.i = call zeroext i1 @llist_add_batch(ptr noundef %lentry.i202.i.i, ptr noundef %lentry.i202.i.i, ptr noundef %resp_list.i203.i.i) #10
  %524 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %507, align 8
  %sk.i.i205.i.i = getelementptr inbounds %struct.socket, ptr %525, i32 0, i32 4
  %526 = ptrtoint ptr %sk.i.i205.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %sk.i.i205.i.i, align 16
  %528 = getelementptr inbounds %struct.sock_common, ptr %527, i32 0, i32 18
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %528, align 8
  %531 = load ptr, ptr @nvmet_tcp_wq, align 4
  %532 = ptrtoint ptr %464 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %464, align 8
  %io_work.i206.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %533, i32 0, i32 2
  %call19.i207.i.i = call zeroext i1 @queue_work_on(i32 noundef %530, ptr noundef %531, ptr noundef %io_work.i206.i.i) #10
  br label %out.i.i.i

if.else.i55.i.i.i:                                ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %execute.i.i87.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %464, i32 0, i32 1, i32 14
  %534 = ptrtoint ptr %execute.i.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %execute.i.i87.i.i, align 4
  call void %535(ptr noundef %req3.i.i86.i.i) #10
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.else.i55.i.i.i, %if.end15.i208.i.i, %nvme_is_write.exit.i201.i.i.out.i.i.i_crit_edge, %if.end19.i.i.i.out.i.i.i_crit_edge, %if.else.i.i81.i.i, %if.then.i.i79.i.i
  %ret.0.i.i.i = phi i32 [ 0, %if.end19.i.i.i.out.i.i.i_crit_edge ], [ -71, %if.then.i.i79.i.i ], [ -71, %if.else.i.i81.i.i ], [ 0, %if.else.i55.i.i.i ], [ 0, %nvme_is_write.exit.i201.i.i.out.i.i.i_crit_edge ], [ 0, %if.end15.i208.i.i ]
  %536 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 0, ptr %offset.i.i.i, align 4
  %537 = ptrtoint ptr %left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 8, ptr %left.i.i.i, align 8
  %538 = ptrtoint ptr %cmd28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr null, ptr %cmd28.i.i.i.i, align 8
  %539 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 0, ptr %rcv_state.i.i, align 4
  br label %nvmet_tcp_try_recv_ddgst.exit.i.i

nvmet_tcp_try_recv_ddgst.exit.i.i:                ; preds = %out.i.i.i, %if.end.i69.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge, %if.then19.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge
  %retval.0.i88.i.i = phi i32 [ %ret.0.i.i.i, %out.i.i.i ], [ %call.i64.i.i, %if.then19.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge ], [ -11, %if.end.i69.i.i.nvmet_tcp_try_recv_ddgst.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i59.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i58.i.i) #10
  br label %done_recv.i.i

done_recv.i.i:                                    ; preds = %nvmet_tcp_try_recv_ddgst.exit.i.i, %nvmet_tcp_try_recv_pdu.exit.i.i.done_recv.i.i_crit_edge
  %result.2.i.i = phi i32 [ %retval.2.i.i.i, %nvmet_tcp_try_recv_pdu.exit.i.i.done_recv.i.i_crit_edge ], [ %retval.0.i88.i.i, %nvmet_tcp_try_recv_ddgst.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2.i.i)
  %cmp25.i.i = icmp slt i32 %result.2.i.i, 0
  br i1 %cmp25.i.i, label %done_recv.i.i.if.then26.i.i_crit_edge, label %done_recv.i.i.if.end5.i_crit_edge

done_recv.i.i.if.end5.i_crit_edge:                ; preds = %done_recv.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

done_recv.i.i.if.then26.i.i_crit_edge:            ; preds = %done_recv.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

if.then26.i.i:                                    ; preds = %done_recv.i.i.if.then26.i.i_crit_edge, %nvmet_tcp_try_recv_data.exit.i.i.if.then26.i.i_crit_edge, %nvmet_tcp_try_recv_pdu.exit.thread.i.i
  %result.2228.i.i = phi i32 [ %retval.2.i.ph.i.i, %nvmet_tcp_try_recv_pdu.exit.thread.i.i ], [ %call5.i.i.i, %nvmet_tcp_try_recv_data.exit.i.i.if.then26.i.i_crit_edge ], [ %result.2.i.i, %done_recv.i.i.if.then26.i.i_crit_edge ]
  %540 = zext i32 %result.2228.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %540, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %result.2228.i.i, label %if.else.i [
    i32 -11, label %if.then26.i.i.if.end3_crit_edge
    i32 -32, label %if.then26.i.i.if.then.i112_crit_edge
    i32 -104, label %if.then26.i.i.if.then.i112_crit_edge417
  ]

if.then26.i.i.if.then.i112_crit_edge417:          ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i112

if.then26.i.i.if.then.i112_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i112

if.then26.i.i.if.end3_crit_edge:                  ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.i112:                                     ; preds = %if.then26.i.i.if.then.i112_crit_edge, %if.then26.i.i.if.then.i112_crit_edge417
  %541 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @kernel_sock_shutdown(ptr noundef %542, i32 noundef 2) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then26.i.i
  %543 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 3, ptr %rcv_state.i.i, align 4
  %544 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i.i114 = icmp eq ptr %545, null
  br i1 %tobool.not.i.i114, label %if.else.i.i, label %if.then.i.i115

if.then.i.i115:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %545) #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %546 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %add.ptr, align 8
  %call.i.i = call i32 @kernel_sock_shutdown(ptr noundef %547, i32 noundef 2) #10
  br label %cleanup

if.end5.i:                                        ; preds = %done_recv.i.i.if.end5.i_crit_edge, %if.end16.i.i.if.end5.i_crit_edge
  %inc.i = add i32 %ops.1, 1
  %inc6.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, 8
  br i1 %exitcond.not.i, label %if.end5.i.if.end3_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end5.i.if.end3_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.end5.i.if.end3_crit_edge, %if.then26.i.i.if.end3_crit_edge, %for.body.i.if.end3_crit_edge
  %ops.2 = phi i32 [ %ops.1, %if.then26.i.i.if.end3_crit_edge ], [ %ops.1, %for.body.i.if.end3_crit_edge ], [ %7, %if.end5.i.if.end3_crit_edge ]
  %cmp = phi i1 [ false, %if.then26.i.i.if.end3_crit_edge ], [ false, %for.body.i.if.end3_crit_edge ], [ true, %if.end5.i.if.end3_crit_edge ]
  %548 = add i32 %ops.2, 8
  br label %for.body.i33

for.body.i33:                                     ; preds = %if.end6.i.for.body.i33_crit_edge, %if.end3
  %ops.3 = phi i32 [ %ops.2, %if.end3 ], [ %inc.i103, %if.end6.i.for.body.i33_crit_edge ]
  %i.08.i = phi i32 [ 0, %if.end3 ], [ %inc7.i, %if.end6.i.for.body.i33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.08.i)
  %cmp1.i = icmp eq i32 %i.08.i, 7
  %549 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %snd_cmd.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %550, null
  br i1 %tobool.not.i.i, label %for.body.i33.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i33.if.then.i.i_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i33
  %551 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %552)
  %cmp.i.i = icmp eq i32 %552, 2
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end6.i.i_crit_edge

lor.lhs.false.i.i.if.end6.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i33.if.then.i.i_crit_edge
  %553 = ptrtoint ptr %resp_send_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load volatile ptr, ptr %resp_send_list.i.i.i, align 4
  %cmp.not.i.i.i34 = icmp eq ptr %554, %resp_send_list.i.i.i
  %add.ptr.i.i.i35 = getelementptr i8, ptr %554, i32 -448
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i34, ptr null, ptr %add.ptr.i.i.i35
  %555 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %spec.select.i.i.i, ptr %snd_cmd.i.i, align 8
  %tobool.not.i.i.i36 = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool.not.i.i.i36, label %if.then.i.i.i38, label %if.then.i.i.if.end28.i.i.i_crit_edge

if.then.i.i.if.end28.i.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i.i

if.then.i.i.i38:                                  ; preds = %if.then.i.i
  %call.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef %resp_list.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !184
  call void @llvm.prefetch.p0(ptr %resp_list.i.i.i.i, i32 1, i32 3, i32 1) #10
  %556 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %resp_list.i.i.i.i) #10, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %556, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool.not7.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not7.i.i.i.i, label %if.then.i.i.i38.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then.i.i.i38.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_process_resp_list.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i.i38
  %557 = inttoptr i32 %asmresult.i.i.i.i.i.i to ptr
  br label %for.body.i.i.i.i39

for.body.i.i.i.i39:                               ; preds = %list_add.exit.i.i.i.i.for.body.i.i.i.i39_crit_edge, %for.body.lr.ph.i.i.i.i
  %node.08.i.i.i.i = phi ptr [ %557, %for.body.lr.ph.i.i.i.i ], [ %567, %list_add.exit.i.i.i.i.for.body.i.i.i.i39_crit_edge ]
  %entry1.i.i.i.i = getelementptr i8, ptr %node.08.i.i.i.i, i32 -8
  %558 = ptrtoint ptr %resp_send_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %resp_send_list.i.i.i, align 4
  %call.i.i6.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry1.i.i.i.i, ptr noundef %resp_send_list.i.i.i, ptr noundef %559) #10
  br i1 %call.i.i6.i.i.i.i, label %if.end.i.i.i.i.i.i40, label %for.body.i.i.i.i39.list_add.exit.i.i.i.i_crit_edge

for.body.i.i.i.i39.list_add.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i.i.i

if.end.i.i.i.i.i.i40:                             ; preds = %for.body.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %entry1.i.i.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %561 = ptrtoint ptr %entry1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %559, ptr %entry1.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr i8, ptr %node.08.i.i.i.i, i32 -4
  %562 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %resp_send_list.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %563 = ptrtoint ptr %resp_send_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store volatile ptr %entry1.i.i.i.i, ptr %resp_send_list.i.i.i, align 4
  br label %list_add.exit.i.i.i.i

list_add.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i40, %for.body.i.i.i.i39.list_add.exit.i.i.i.i_crit_edge
  %564 = ptrtoint ptr %send_list_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %send_list_len.i.i.i.i, align 4
  %inc.i.i.i.i41 = add i32 %565, 1
  store i32 %inc.i.i.i.i41, ptr %send_list_len.i.i.i.i, align 4
  %566 = ptrtoint ptr %node.08.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %node.08.i.i.i.i, align 4
  %tobool.not.i.i.i.i42 = icmp eq ptr %567, null
  br i1 %tobool.not.i.i.i.i42, label %list_add.exit.i.i.i.i.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge, label %list_add.exit.i.i.i.i.for.body.i.i.i.i39_crit_edge

list_add.exit.i.i.i.i.for.body.i.i.i.i39_crit_edge: ; preds = %list_add.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i39

list_add.exit.i.i.i.i.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge: ; preds = %list_add.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_process_resp_list.exit.i.i.i

nvmet_tcp_process_resp_list.exit.i.i.i:           ; preds = %list_add.exit.i.i.i.i.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge, %if.then.i.i.i38.nvmet_tcp_process_resp_list.exit.i.i.i_crit_edge
  %568 = ptrtoint ptr %resp_send_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load volatile ptr, ptr %resp_send_list.i.i.i, align 4
  %cmp13.not.i.i.i = icmp eq ptr %569, %resp_send_list.i.i.i
  %add.ptr17.i.i.i = getelementptr i8, ptr %569, i32 -448
  %spec.select62.i.i.i = select i1 %cmp13.not.i.i.i, ptr null, ptr %add.ptr17.i.i.i
  %570 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr %spec.select62.i.i.i, ptr %snd_cmd.i.i, align 8
  %tobool23.not.i.i.i = icmp eq ptr %spec.select62.i.i.i, null
  br i1 %tobool23.not.i.i.i, label %nvmet_tcp_process_resp_list.exit.i.i.i.do.cond_crit_edge, label %nvmet_tcp_process_resp_list.exit.i.i.i.if.end28.i.i.i_crit_edge, !prof !176

nvmet_tcp_process_resp_list.exit.i.i.i.if.end28.i.i.i_crit_edge: ; preds = %nvmet_tcp_process_resp_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i.i

nvmet_tcp_process_resp_list.exit.i.i.i.do.cond_crit_edge: ; preds = %nvmet_tcp_process_resp_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.end28.i.i.i:                                   ; preds = %nvmet_tcp_process_resp_list.exit.i.i.i.if.end28.i.i.i_crit_edge, %if.then.i.i.if.end28.i.i.i_crit_edge
  %571 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %snd_cmd.i.i, align 8
  %entry30.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %572, i32 0, i32 15
  %call.i.i.i.i.i43 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry30.i.i.i) #10
  br i1 %call.i.i.i.i.i43, label %if.end.i.i.i.i.i44, label %if.end28.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.end28.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i44:                               ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %572, i32 0, i32 15, i32 1
  %573 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %575 = ptrtoint ptr %entry30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %entry30.i.i.i, align 4
  %prev1.i.i.i63.i.i.i = getelementptr inbounds %struct.list_head, ptr %576, i32 0, i32 1
  %577 = ptrtoint ptr %prev1.i.i.i63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr %574, ptr %prev1.i.i.i63.i.i.i, align 4
  %578 = ptrtoint ptr %574 to i32
  call void @__asan_store4_noabort(i32 %578)
  store volatile ptr %576, ptr %574, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i44, %if.end28.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %579 = ptrtoint ptr %entry30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store volatile ptr %entry30.i.i.i, ptr %entry30.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %572, i32 0, i32 15, i32 1
  %580 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store ptr %entry30.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %581 = ptrtoint ptr %send_list_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %send_list_len.i.i.i.i, align 4
  %dec.i.i.i = add i32 %582, -1
  store i32 %dec.i.i.i, ptr %send_list_len.i.i.i.i, align 4
  %583 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %snd_cmd.i.i, align 8
  %req.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1
  %585 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %req.i.i.i.i, align 8
  %587 = ptrtoint ptr %586 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %586, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %588)
  %cmp.i.i.i.i.i.i45 = icmp eq i8 %588, 127
  br i1 %cmp.i.i.i.i.i.i45, label %if.then.i.i.i.i.i46, label %list_del_init.exit.i.i.i.nvme_is_write.exit.i.i.i.i_crit_edge, !prof !176

list_del_init.exit.i.i.i.nvme_is_write.exit.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i.i

if.then.i.i.i.i.i46:                              ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %586, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i.i

nvme_is_write.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i46, %list_del_init.exit.i.i.i.nvme_is_write.exit.i.i.i.i_crit_edge
  %retval.0.in.in.in.i.i.i.i.i = phi ptr [ %fctype.i.i.i.i.i, %if.then.i.i.i.i.i46 ], [ %586, %list_del_init.exit.i.i.i.nvme_is_write.exit.i.i.i.i_crit_edge ]
  %589 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %589)
  %retval.0.in.in.i.i.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i.i.i, align 4
  %retval.0.in.i.i.i.i.i = and i8 %retval.0.in.in.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i.i)
  %retval.0.i.not.i.i.i.i = icmp eq i8 %retval.0.in.i.i.i.i.i, 0
  br i1 %retval.0.i.not.i.i.i.i, label %land.lhs.true.i.i.i.i48, label %nvme_is_write.exit.i.i.i.i.if.else.i.i.i64_crit_edge

nvme_is_write.exit.i.i.i.i.if.else.i.i.i64_crit_edge: ; preds = %nvme_is_write.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i64

land.lhs.true.i.i.i.i48:                          ; preds = %nvme_is_write.exit.i.i.i.i
  %transfer_len.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1, i32 11
  %590 = ptrtoint ptr %transfer_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %transfer_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %591)
  %cmp.not.i.i.i.i47 = icmp eq i32 %591, 0
  br i1 %cmp.not.i.i.i.i47, label %land.lhs.true.i.i.i.i48.if.else.i.i.i64_crit_edge, label %nvmet_tcp_need_data_out.exit.i.i.i

land.lhs.true.i.i.i.i48.if.else.i.i.i64_crit_edge: ; preds = %land.lhs.true.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i64

nvmet_tcp_need_data_out.exit.i.i.i:               ; preds = %land.lhs.true.i.i.i.i48
  %cqe.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1, i32 1
  %592 = ptrtoint ptr %cqe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %cqe.i.i.i.i, align 4
  %status.i.i.i.i = getelementptr inbounds %struct.nvme_completion, ptr %593, i32 0, i32 4
  %594 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %594)
  %595 = load i16, ptr %status.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %595)
  %tobool.not.i64.i.i.i = icmp eq i16 %595, 0
  br i1 %tobool.not.i64.i.i.i, label %if.then32.i.i.i, label %nvmet_tcp_need_data_out.exit.i.i.i.if.else.i.i.i64_crit_edge

nvmet_tcp_need_data_out.exit.i.i.i.if.else.i.i.i64_crit_edge: ; preds = %nvmet_tcp_need_data_out.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i64

if.then32.i.i.i:                                  ; preds = %nvmet_tcp_need_data_out.exit.i.i.i
  %data_pdu.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 4
  %596 = ptrtoint ptr %data_pdu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %data_pdu.i.i.i.i, align 8
  %598 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %584, align 8
  %hdr_digest.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %599, i32 0, i32 17
  %600 = ptrtoint ptr %hdr_digest.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %hdr_digest.i.i.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %601)
  %tobool.not.i.i.i.i.i49 = icmp eq i8 %601, 0
  %data_digest.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %599, i32 0, i32 18
  %602 = ptrtoint ptr %data_digest.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %data_digest.i.i.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %603)
  %tobool.not.i69.i.i.i.i = icmp eq i8 %603, 0
  %conv.i70.i.i.i.i = select i1 %tobool.not.i69.i.i.i.i, i32 0, i32 4
  %offset.i.i.i.i50 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 17
  %604 = ptrtoint ptr %offset.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 0, ptr %offset.i.i.i.i50, align 4
  %state.i.i.i.i51 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 19
  %605 = ptrtoint ptr %state.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %605)
  store i32 0, ptr %state.i.i.i.i51, align 4
  %606 = ptrtoint ptr %597 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 7, ptr %597, align 4
  %sqhd_disabled.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %599, i32 0, i32 4, i32 5
  %607 = ptrtoint ptr %sqhd_disabled.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %sqhd_disabled.i.i.i.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %608)
  %tobool.not.i65.i.i.i = icmp eq i8 %608, 0
  %conv.i.i.i.i = select i1 %tobool.not.i65.i.i.i, i8 4, i8 12
  %flags.i.i.i.i52 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %597, i32 0, i32 1
  %609 = ptrtoint ptr %flags.i.i.i.i52 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %conv.i.i.i.i, ptr %flags.i.i.i.i52, align 1
  %hlen.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %597, i32 0, i32 2
  %610 = ptrtoint ptr %hlen.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 24, ptr %hlen.i.i.i.i, align 2
  %add.i.i.i.i = select i1 %tobool.not.i.i.i.i.i49, i8 24, i8 28
  %pdo.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %597, i32 0, i32 3
  %611 = ptrtoint ptr %pdo.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %add.i.i.i.i, ptr %pdo.i.i.i.i, align 1
  %add17.i.i.i.i = zext i8 %add.i.i.i.i to i32
  %612 = ptrtoint ptr %transfer_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %transfer_len.i.i.i.i, align 8
  %add18.i.i.i.i = add nuw nsw i32 %conv.i70.i.i.i.i, %add17.i.i.i.i
  %add20.i.i.i.i = add i32 %add18.i.i.i.i, %613
  %614 = call i32 @llvm.bswap.i32(i32 %add20.i.i.i.i) #10
  %plen.i.i.i.i53 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %597, i32 0, i32 4
  %615 = ptrtoint ptr %plen.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %614, ptr %plen.i.i.i.i53, align 4
  %616 = ptrtoint ptr %cqe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cqe.i.i.i.i, align 4
  %command_id.i.i.i.i54 = getelementptr inbounds %struct.nvme_completion, ptr %617, i32 0, i32 3
  %618 = ptrtoint ptr %command_id.i.i.i.i54 to i32
  call void @__asan_load2_noabort(i32 %618)
  %619 = load i16, ptr %command_id.i.i.i.i54, align 4
  %command_id23.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %597, i32 0, i32 1
  %620 = ptrtoint ptr %command_id23.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %620)
  store i16 %619, ptr %command_id23.i.i.i.i, align 4
  %621 = ptrtoint ptr %transfer_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %transfer_len.i.i.i.i, align 8
  %623 = call i32 @llvm.bswap.i32(i32 %622) #10
  %data_length.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %597, i32 0, i32 4
  %624 = ptrtoint ptr %data_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 %623, ptr %data_length.i.i.i.i, align 4
  %wbytes_done.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 7
  %625 = ptrtoint ptr %wbytes_done.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %wbytes_done.i.i.i.i, align 4
  %627 = call i32 @llvm.bswap.i32(i32 %626) #10
  %data_offset.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %597, i32 0, i32 3
  %628 = ptrtoint ptr %data_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %627, ptr %data_offset.i.i.i.i, align 4
  %629 = ptrtoint ptr %data_digest.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %data_digest.i.i.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %630)
  %tobool26.not.i.i.i.i = icmp eq i8 %630, 0
  br i1 %tobool26.not.i.i.i.i, label %if.then32.i.i.i.if.end.i.i.i.i63_crit_edge, label %if.then.i.i.i.i61

if.then32.i.i.i.if.end.i.i.i.i63_crit_edge:       ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i63

if.then.i.i.i.i61:                                ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %631 = or i8 %conv.i.i.i.i, 2
  %632 = ptrtoint ptr %flags.i.i.i.i52 to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %631, ptr %flags.i.i.i.i52, align 1
  %snd_hash.i.i.i.i55 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %599, i32 0, i32 19
  %633 = ptrtoint ptr %snd_hash.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %snd_hash.i.i.i.i55, align 4
  %sg.i.i.i.i.i56 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1, i32 5
  %635 = ptrtoint ptr %sg.i.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %sg.i.i.i.i.i56, align 4
  %exp_ddgst.i.i.i.i.i57 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 20
  %637 = ptrtoint ptr %transfer_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %transfer_len.i.i.i.i, align 8
  %src1.i.i.i.i.i.i58 = getelementptr inbounds %struct.ahash_request, ptr %634, i32 0, i32 2
  %639 = ptrtoint ptr %src1.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %636, ptr %src1.i.i.i.i.i.i58, align 4
  %nbytes2.i.i.i.i.i.i59 = getelementptr inbounds %struct.ahash_request, ptr %634, i32 0, i32 1
  %640 = ptrtoint ptr %nbytes2.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 %638, ptr %nbytes2.i.i.i.i.i.i59, align 8
  %result3.i.i.i.i.i.i60 = getelementptr inbounds %struct.ahash_request, ptr %634, i32 0, i32 3
  %641 = ptrtoint ptr %result3.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %641)
  store ptr %exp_ddgst.i.i.i.i.i57, ptr %result3.i.i.i.i.i.i60, align 32
  %call.i.i68.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %634) #10
  br label %if.end.i.i.i.i63

if.end.i.i.i.i63:                                 ; preds = %if.then.i.i.i.i61, %if.then32.i.i.i.if.end.i.i.i.i63_crit_edge
  %642 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %584, align 8
  %hdr_digest.i.i.i.i62 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %643, i32 0, i32 17
  %644 = ptrtoint ptr %hdr_digest.i.i.i.i62 to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %hdr_digest.i.i.i.i62, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %645)
  %tobool33.not.i.i.i.i = icmp eq i8 %645, 0
  br i1 %tobool33.not.i.i.i.i, label %if.end.i.i.i.i63.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge, label %if.then34.i.i.i.i

if.end.i.i.i.i63.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_fetch_cmd.exit.i.i

if.then34.i.i.i.i:                                ; preds = %if.end.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  %646 = ptrtoint ptr %flags.i.i.i.i52 to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %flags.i.i.i.i52, align 1
  %648 = or i8 %647, 1
  store i8 %648, ptr %flags.i.i.i.i52, align 1
  %snd_hash40.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %599, i32 0, i32 19
  %649 = ptrtoint ptr %snd_hash40.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %snd_hash40.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i71.i.i.i.i) #10
  %651 = call ptr @memset(ptr %sg.i71.i.i.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i71.i.i.i.i, ptr noundef %597, i32 noundef 24) #10
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %597, i32 24
  %src1.i.i72.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %650, i32 0, i32 2
  %652 = ptrtoint ptr %src1.i.i72.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store ptr %sg.i71.i.i.i.i, ptr %src1.i.i72.i.i.i.i, align 4
  %nbytes2.i.i73.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %650, i32 0, i32 1
  %653 = ptrtoint ptr %nbytes2.i.i73.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 24, ptr %nbytes2.i.i73.i.i.i.i, align 8
  %result3.i.i74.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %650, i32 0, i32 3
  %654 = ptrtoint ptr %result3.i.i74.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %654)
  store ptr %add.ptr.i.i.i.i.i, ptr %result3.i.i74.i.i.i.i, align 32
  %call.i75.i.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %650) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i71.i.i.i.i) #10
  br label %nvmet_tcp_fetch_cmd.exit.i.i

if.else.i.i.i64:                                  ; preds = %nvmet_tcp_need_data_out.exit.i.i.i.if.else.i.i.i64_crit_edge, %land.lhs.true.i.i.i.i48.if.else.i.i.i64_crit_edge, %nvme_is_write.exit.i.i.i.i.if.else.i.i.i64_crit_edge
  br i1 %cmp.i.i.i.i.i.i45, label %if.then.i.i.i.i.i.i66, label %if.else.i.i.i64.nvme_is_write.exit.i.i.i.i.i71_crit_edge, !prof !176

if.else.i.i.i64.nvme_is_write.exit.i.i.i.i.i71_crit_edge: ; preds = %if.else.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i.i.i.i.i71

if.then.i.i.i.i.i.i66:                            ; preds = %if.else.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i.i.i.i.i65 = getelementptr inbounds %struct.nvmf_common_command, ptr %586, i32 0, i32 3
  br label %nvme_is_write.exit.i.i.i.i.i71

nvme_is_write.exit.i.i.i.i.i71:                   ; preds = %if.then.i.i.i.i.i.i66, %if.else.i.i.i64.nvme_is_write.exit.i.i.i.i.i71_crit_edge
  %retval.0.in.in.in.i.i.i.i.i.i67 = phi ptr [ %fctype.i.i.i.i.i.i65, %if.then.i.i.i.i.i.i66 ], [ %586, %if.else.i.i.i64.nvme_is_write.exit.i.i.i.i.i71_crit_edge ]
  %655 = ptrtoint ptr %retval.0.in.in.in.i.i.i.i.i.i67 to i32
  call void @__asan_load1_noabort(i32 %655)
  %retval.0.in.in.i.i.i.i.i.i68 = load i8, ptr %retval.0.in.in.in.i.i.i.i.i.i67, align 4
  %retval.0.in.i.i.i.i.i.i69 = and i8 %retval.0.in.in.i.i.i.i.i.i68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i.i.i.i69)
  %retval.0.i.not.i.i.i.i.i70 = icmp eq i8 %retval.0.in.i.i.i.i.i.i69, 0
  br i1 %retval.0.i.not.i.i.i.i.i70, label %nvme_is_write.exit.i.i.i.i.i71.if.else38.i.i.i_crit_edge, label %nvmet_tcp_has_data_in.exit.i.i.i.i

nvme_is_write.exit.i.i.i.i.i71.if.else38.i.i.i_crit_edge: ; preds = %nvme_is_write.exit.i.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38.i.i.i

nvmet_tcp_has_data_in.exit.i.i.i.i:               ; preds = %nvme_is_write.exit.i.i.i.i.i71
  %rbytes_done.i.i.i.i.i72 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 6
  %656 = ptrtoint ptr %rbytes_done.i.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %rbytes_done.i.i.i.i.i72, align 8
  %transfer_len.i.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1, i32 11
  %658 = ptrtoint ptr %transfer_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %transfer_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %657, i32 %659)
  %cmp.i.i.i.i.i73 = icmp ult i32 %657, %659
  br i1 %cmp.i.i.i.i.i73, label %nvmet_tcp_need_data_in.exit.i.i.i, label %nvmet_tcp_has_data_in.exit.i.i.i.i.if.else38.i.i.i_crit_edge

nvmet_tcp_has_data_in.exit.i.i.i.i.if.else38.i.i.i_crit_edge: ; preds = %nvmet_tcp_has_data_in.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38.i.i.i

nvmet_tcp_need_data_in.exit.i.i.i:                ; preds = %nvmet_tcp_has_data_in.exit.i.i.i.i
  %cqe.i69.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 1, i32 1
  %660 = ptrtoint ptr %cqe.i69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %cqe.i69.i.i.i, align 4
  %status.i70.i.i.i = getelementptr inbounds %struct.nvme_completion, ptr %661, i32 0, i32 4
  %662 = ptrtoint ptr %status.i70.i.i.i to i32
  call void @__asan_load2_noabort(i32 %662)
  %663 = load i16, ptr %status.i70.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %663)
  %tobool.not.i71.i.i.i = icmp eq i16 %663, 0
  br i1 %tobool.not.i71.i.i.i, label %if.then36.i.i.i, label %nvmet_tcp_need_data_in.exit.i.i.i.if.else38.i.i.i_crit_edge

nvmet_tcp_need_data_in.exit.i.i.i.if.else38.i.i.i_crit_edge: ; preds = %nvmet_tcp_need_data_in.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38.i.i.i

if.then36.i.i.i:                                  ; preds = %nvmet_tcp_need_data_in.exit.i.i.i
  %r2t_pdu.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 5
  %664 = ptrtoint ptr %r2t_pdu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %r2t_pdu.i.i.i.i, align 4
  %666 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %584, align 8
  %hdr_digest.i.i74.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %667, i32 0, i32 17
  %668 = ptrtoint ptr %hdr_digest.i.i74.i.i.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %hdr_digest.i.i74.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %669)
  %tobool.not.i.i75.i.i.i = icmp eq i8 %669, 0
  %offset.i76.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 17
  %670 = ptrtoint ptr %offset.i76.i.i.i to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 0, ptr %offset.i76.i.i.i, align 4
  %state.i77.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 19
  %671 = ptrtoint ptr %state.i77.i.i.i to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 2, ptr %state.i77.i.i.i, align 4
  %672 = ptrtoint ptr %665 to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 9, ptr %665, align 4
  %flags.i78.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %665, i32 0, i32 1
  %673 = ptrtoint ptr %flags.i78.i.i.i to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 0, ptr %flags.i78.i.i.i, align 1
  %hlen.i79.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %665, i32 0, i32 2
  %674 = ptrtoint ptr %hlen.i79.i.i.i to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 24, ptr %hlen.i79.i.i.i, align 2
  %pdo.i80.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %665, i32 0, i32 3
  %675 = ptrtoint ptr %pdo.i80.i.i.i to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 0, ptr %pdo.i80.i.i.i, align 1
  %add.i81.i.i.i = select i1 %tobool.not.i.i75.i.i.i, i32 402653184, i32 469762048
  %plen.i82.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %665, i32 0, i32 4
  %676 = ptrtoint ptr %plen.i82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %add.i81.i.i.i, ptr %plen.i82.i.i.i, align 4
  %677 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %req.i.i.i.i, align 8
  %command_id.i84.i.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %678, i32 0, i32 2
  %679 = ptrtoint ptr %command_id.i84.i.i.i to i32
  call void @__asan_load2_noabort(i32 %679)
  %680 = load i16, ptr %command_id.i84.i.i.i, align 2
  %command_id11.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %665, i32 0, i32 1
  %681 = ptrtoint ptr %command_id11.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %681)
  store i16 %680, ptr %command_id11.i.i.i.i, align 4
  %682 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %584, align 8
  %nr_cmds.i.i.i.i.i74 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %683, i32 0, i32 6
  %684 = ptrtoint ptr %nr_cmds.i.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %nr_cmds.i.i.i.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %685)
  %tobool.not.i43.i.i.i.i = icmp eq i32 %685, 0
  br i1 %tobool.not.i43.i.i.i.i, label %if.then36.i.i.i.nvmet_tcp_cmd_tag.exit.i.i.i.i_crit_edge, label %if.end.i.i85.i.i.i, !prof !176

if.then36.i.i.i.nvmet_tcp_cmd_tag.exit.i.i.i.i_crit_edge: ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_cmd_tag.exit.i.i.i.i

if.end.i.i85.i.i.i:                               ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmds.i.i.i.i.i75 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %683, i32 0, i32 5
  %686 = ptrtoint ptr %cmds.i.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %cmds.i.i.i.i.i75, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %584 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %687 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 480
  %conv.i44.i.i.i.i = trunc i32 %sub.ptr.div.i.i.i.i.i to i16
  br label %nvmet_tcp_cmd_tag.exit.i.i.i.i

nvmet_tcp_cmd_tag.exit.i.i.i.i:                   ; preds = %if.end.i.i85.i.i.i, %if.then36.i.i.i.nvmet_tcp_cmd_tag.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i16 [ %conv.i44.i.i.i.i, %if.end.i.i85.i.i.i ], [ -1, %if.then36.i.i.i.nvmet_tcp_cmd_tag.exit.i.i.i.i_crit_edge ]
  %ttag.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %665, i32 0, i32 2
  %688 = ptrtoint ptr %ttag.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 %retval.0.i.i.i.i.i, ptr %ttag.i.i.i.i, align 2
  %689 = ptrtoint ptr %transfer_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %transfer_len.i.i.i.i.i, align 8
  %691 = ptrtoint ptr %rbytes_done.i.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %rbytes_done.i.i.i.i.i72, align 8
  %sub.i.i.i.i = sub i32 %690, %692
  %693 = call i32 @llvm.bswap.i32(i32 %sub.i.i.i.i) #10
  %r2t_length.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %665, i32 0, i32 4
  %694 = ptrtoint ptr %r2t_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %693, ptr %r2t_length.i.i.i.i, align 4
  %695 = ptrtoint ptr %rbytes_done.i.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %rbytes_done.i.i.i.i.i72, align 8
  %697 = call i32 @llvm.bswap.i32(i32 %696) #10
  %r2t_offset.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %665, i32 0, i32 3
  %698 = ptrtoint ptr %r2t_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 %697, ptr %r2t_offset.i.i.i.i, align 4
  %699 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %584, align 8
  %hdr_digest.i87.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %700, i32 0, i32 17
  %701 = ptrtoint ptr %hdr_digest.i87.i.i.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %hdr_digest.i87.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %702)
  %tobool.not.i88.i.i.i = icmp eq i8 %702, 0
  br i1 %tobool.not.i88.i.i.i, label %nvmet_tcp_cmd_tag.exit.i.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge, label %if.then.i95.i.i.i

nvmet_tcp_cmd_tag.exit.i.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge: ; preds = %nvmet_tcp_cmd_tag.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_fetch_cmd.exit.i.i

if.then.i95.i.i.i:                                ; preds = %nvmet_tcp_cmd_tag.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %703 = ptrtoint ptr %flags.i78.i.i.i to i32
  call void @__asan_store1_noabort(i32 %703)
  store i8 1, ptr %flags.i78.i.i.i, align 1
  %snd_hash.i89.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %667, i32 0, i32 19
  %704 = ptrtoint ptr %snd_hash.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %snd_hash.i89.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i73.i.i.i) #10
  %706 = call ptr @memset(ptr %sg.i.i73.i.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i73.i.i.i, ptr noundef %665, i32 noundef 24) #10
  %add.ptr.i.i90.i.i.i = getelementptr i8, ptr %665, i32 24
  %src1.i.i.i91.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %705, i32 0, i32 2
  %707 = ptrtoint ptr %src1.i.i.i91.i.i.i to i32
  call void @__asan_store4_noabort(i32 %707)
  store ptr %sg.i.i73.i.i.i, ptr %src1.i.i.i91.i.i.i, align 4
  %nbytes2.i.i.i92.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %705, i32 0, i32 1
  %708 = ptrtoint ptr %nbytes2.i.i.i92.i.i.i to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 24, ptr %nbytes2.i.i.i92.i.i.i, align 8
  %result3.i.i.i93.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %705, i32 0, i32 3
  %709 = ptrtoint ptr %result3.i.i.i93.i.i.i to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr %add.ptr.i.i90.i.i.i, ptr %result3.i.i.i93.i.i.i, align 32
  %call.i.i94.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %705) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i73.i.i.i) #10
  br label %nvmet_tcp_fetch_cmd.exit.i.i

if.else38.i.i.i:                                  ; preds = %nvmet_tcp_need_data_in.exit.i.i.i.if.else38.i.i.i_crit_edge, %nvmet_tcp_has_data_in.exit.i.i.i.i.if.else38.i.i.i_crit_edge, %nvme_is_write.exit.i.i.i.i.i71.if.else38.i.i.i_crit_edge
  %rsp_pdu.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 3
  %710 = ptrtoint ptr %rsp_pdu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %rsp_pdu.i.i.i.i, align 4
  %712 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %584, align 8
  %hdr_digest.i.i98.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %713, i32 0, i32 17
  %714 = ptrtoint ptr %hdr_digest.i.i98.i.i.i to i32
  call void @__asan_load1_noabort(i32 %714)
  %715 = load i8, ptr %hdr_digest.i.i98.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %715)
  %tobool.not.i.i99.i.i.i = icmp eq i8 %715, 0
  %offset.i100.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 17
  %716 = ptrtoint ptr %offset.i100.i.i.i to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 0, ptr %offset.i100.i.i.i, align 4
  %state.i101.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %584, i32 0, i32 19
  %717 = ptrtoint ptr %state.i101.i.i.i to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 4, ptr %state.i101.i.i.i, align 4
  %718 = ptrtoint ptr %711 to i32
  call void @__asan_store1_noabort(i32 %718)
  store i8 5, ptr %711, align 8
  %flags.i102.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %711, i32 0, i32 1
  %719 = ptrtoint ptr %flags.i102.i.i.i to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 0, ptr %flags.i102.i.i.i, align 1
  %hlen.i103.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %711, i32 0, i32 2
  %720 = ptrtoint ptr %hlen.i103.i.i.i to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 24, ptr %hlen.i103.i.i.i, align 2
  %pdo.i104.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %711, i32 0, i32 3
  %721 = ptrtoint ptr %pdo.i104.i.i.i to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 0, ptr %pdo.i104.i.i.i, align 1
  %add.i105.i.i.i = select i1 %tobool.not.i.i99.i.i.i, i32 402653184, i32 469762048
  %plen.i106.i.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %711, i32 0, i32 4
  %722 = ptrtoint ptr %plen.i106.i.i.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store i32 %add.i105.i.i.i, ptr %plen.i106.i.i.i, align 4
  %723 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %584, align 8
  %hdr_digest.i107.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %724, i32 0, i32 17
  %725 = ptrtoint ptr %hdr_digest.i107.i.i.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %hdr_digest.i107.i.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %726)
  %tobool.not.i108.i.i.i = icmp eq i8 %726, 0
  br i1 %tobool.not.i108.i.i.i, label %if.else38.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge, label %if.then.i115.i.i.i

if.else38.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge: ; preds = %if.else38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_fetch_cmd.exit.i.i

if.then.i115.i.i.i:                               ; preds = %if.else38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %727 = ptrtoint ptr %flags.i102.i.i.i to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 1, ptr %flags.i102.i.i.i, align 1
  %snd_hash.i109.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %713, i32 0, i32 19
  %728 = ptrtoint ptr %snd_hash.i109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %snd_hash.i109.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i97.i.i.i) #10
  %730 = call ptr @memset(ptr %sg.i.i97.i.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i97.i.i.i, ptr noundef %711, i32 noundef 24) #10
  %add.ptr.i.i110.i.i.i = getelementptr i8, ptr %711, i32 24
  %src1.i.i.i111.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %729, i32 0, i32 2
  %731 = ptrtoint ptr %src1.i.i.i111.i.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store ptr %sg.i.i97.i.i.i, ptr %src1.i.i.i111.i.i.i, align 4
  %nbytes2.i.i.i112.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %729, i32 0, i32 1
  %732 = ptrtoint ptr %nbytes2.i.i.i112.i.i.i to i32
  call void @__asan_store4_noabort(i32 %732)
  store i32 24, ptr %nbytes2.i.i.i112.i.i.i, align 8
  %result3.i.i.i113.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %729, i32 0, i32 3
  %733 = ptrtoint ptr %result3.i.i.i113.i.i.i to i32
  call void @__asan_store4_noabort(i32 %733)
  store ptr %add.ptr.i.i110.i.i.i, ptr %result3.i.i.i113.i.i.i, align 32
  %call.i.i114.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %729) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i97.i.i.i) #10
  br label %nvmet_tcp_fetch_cmd.exit.i.i

nvmet_tcp_fetch_cmd.exit.i.i:                     ; preds = %if.then.i115.i.i.i, %if.else38.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge, %if.then.i95.i.i.i, %nvmet_tcp_cmd_tag.exit.i.i.i.i.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge, %if.then34.i.i.i.i, %if.end.i.i.i.i63.nvmet_tcp_fetch_cmd.exit.i.i_crit_edge
  %734 = ptrtoint ptr %snd_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %snd_cmd.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %735, null
  br i1 %tobool1.not.i.i, label %nvmet_tcp_fetch_cmd.exit.i.i.do.cond_crit_edge, label %nvmet_tcp_fetch_cmd.exit.i.i.if.end6.i.i_crit_edge, !prof !176

nvmet_tcp_fetch_cmd.exit.i.i.if.end6.i.i_crit_edge: ; preds = %nvmet_tcp_fetch_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

nvmet_tcp_fetch_cmd.exit.i.i.do.cond_crit_edge:   ; preds = %nvmet_tcp_fetch_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.end6.i.i:                                      ; preds = %nvmet_tcp_fetch_cmd.exit.i.i.if.end6.i.i_crit_edge, %lor.lhs.false.i.i.if.end6.i.i_crit_edge
  %cmd.0.i.i = phi ptr [ %735, %nvmet_tcp_fetch_cmd.exit.i.i.if.end6.i.i_crit_edge ], [ %550, %lor.lhs.false.i.i.if.end6.i.i_crit_edge ]
  %state7.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 19
  %736 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %state7.i.i, align 4
  %738 = zext i32 %737 to i64
  call void @__sanitizer_cov_trace_switch(i64 %738, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %737, label %if.end6.i.i.if.end23.i.i_crit_edge [
    i32 0, label %if.then9.i.i
    i32 1, label %if.end6.i.i.if.then17.i.i_crit_edge
  ]

if.end6.i.i.if.then17.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i.i

if.end6.i.i.if.end23.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %739 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i77.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %740, i32 0, i32 17
  %741 = ptrtoint ptr %hdr_digest.i.i77.i.i to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %hdr_digest.i.i77.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %742)
  %tobool.not.i.i78.i.i = icmp eq i8 %742, 0
  %conv.i.i79.i.i = select i1 %tobool.not.i.i78.i.i, i32 0, i32 4
  %offset.i.i.i76 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %743 = ptrtoint ptr %offset.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %offset.i.i.i76, align 4
  %sub.i.i.i77 = sub i32 24, %744
  %add.i.i.i78 = add i32 %sub.i.i.i77, %conv.i.i79.i.i
  %745 = ptrtoint ptr %740 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %740, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %747 = load ptr, ptr @mem_map, align 4
  %data_pdu.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 4
  %748 = ptrtoint ptr %data_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %data_pdu.i.i.i, align 8
  %750 = ptrtoint ptr %749 to i32
  %sub2.i.i.i = add i32 %750, 1073741824
  %shr.i.i.i = lshr i32 %sub2.i.i.i, 12
  %add.ptr.i80.i.i = getelementptr %struct.page, ptr %747, i32 %shr.i.i.i
  %and.i.i.i = and i32 %750, 4095
  %add7.i.i.i = add i32 %and.i.i.i, %744
  %call8.i.i.i = call i32 @kernel_sendpage(ptr noundef %746, ptr noundef %add.ptr.i80.i.i, i32 noundef %add7.i.i.i, i32 noundef %add.i.i.i78, i32 noundef 163904) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i.i.i)
  %cmp.i.i.i79 = icmp slt i32 %call8.i.i.i, 1
  br i1 %cmp.i.i.i79, label %if.then9.i.i.done_send.i.i_crit_edge, label %if.end.i.i.i80

if.then9.i.i.done_send.i.i_crit_edge:             ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_send.i.i

if.end.i.i.i80:                                   ; preds = %if.then9.i.i
  %751 = ptrtoint ptr %offset.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %offset.i.i.i76, align 4
  %add11.i.i.i = add i32 %752, %call8.i.i.i
  store i32 %add11.i.i.i, ptr %offset.i.i.i76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i78, i32 %call8.i.i.i)
  %tobool.not.i81.i.i = icmp eq i32 %add.i.i.i78, %call8.i.i.i
  br i1 %tobool.not.i81.i.i, label %if.end14.thread.i.i, label %if.end.i.i.i80.do.cond_crit_edge

if.end.i.i.i80.do.cond_crit_edge:                 ; preds = %if.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.end14.thread.i.i:                              ; preds = %if.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  %753 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_store4_noabort(i32 %753)
  store i32 1, ptr %state7.i.i, align 4
  %754 = ptrtoint ptr %offset.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 0, ptr %offset.i.i.i76, align 4
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end14.thread.i.i, %if.end6.i.i.if.then17.i.i_crit_edge
  %755 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %cmd.0.i.i, align 8
  %cur_sg.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 18
  %757 = ptrtoint ptr %cur_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %cur_sg.i.i.i, align 8
  %tobool.not87.i.i.i = icmp eq ptr %758, null
  br i1 %tobool.not87.i.i.i, label %if.then17.i.i.while.end.i.i.i92_crit_edge, label %while.body.lr.ph.i.i.i83

if.then17.i.i.while.end.i.i.i92_crit_edge:        ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i92

while.body.lr.ph.i.i.i83:                         ; preds = %if.then17.i.i
  %offset.i84.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %wbytes_done.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 7
  %transfer_len.i.i.i81 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 1, i32 11
  %data_digest.i.i.i82 = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %756, i32 0, i32 18
  %sqhd_disabled.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %756, i32 0, i32 4, i32 5
  br label %while.body.i.i.i85

while.body.i.i.i85:                               ; preds = %cleanup.i.i.i.while.body.i.i.i85_crit_edge, %while.body.lr.ph.i.i.i83
  %759 = phi ptr [ %758, %while.body.lr.ph.i.i.i83 ], [ %793, %cleanup.i.i.i.while.body.i.i.i85_crit_edge ]
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %759, align 4
  %and.i.i.i.i.i84 = and i32 %761, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i84)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i84, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_page.exit.i.i.i, label %do.body2.i.i.i.i, !prof !178

do.body2.i.i.i.i:                                 ; preds = %while.body.i.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

sg_page.exit.i.i.i:                               ; preds = %while.body.i.i.i85
  %and.i.i.i.i86 = and i32 %761, -4
  %762 = inttoptr i32 %and.i.i.i.i86 to ptr
  %length.i.i.i87 = getelementptr inbounds %struct.scatterlist, ptr %759, i32 0, i32 2
  %763 = ptrtoint ptr %length.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %length.i.i.i87, align 4
  %765 = ptrtoint ptr %offset.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %offset.i84.i.i, align 4
  %sub.i85.i.i = sub i32 %764, %766
  br i1 %cmp1.i, label %sg_page.exit.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i88

sg_page.exit.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %sg_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i88:                            ; preds = %sg_page.exit.i.i.i
  %767 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %cmd.0.i.i, align 8
  %send_list_len.i86.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %768, i32 0, i32 10
  %769 = ptrtoint ptr %send_list_len.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %send_list_len.i86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %770)
  %tobool6.not.i.i.i = icmp eq i32 %770, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i88.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i88.if.then.i89.i.i_crit_edge

land.lhs.true.i.i.i88.if.then.i89.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i89.i.i

land.lhs.true.i.i.i88.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i88.lor.lhs.false.i.i.i_crit_edge, %sg_page.exit.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %771 = ptrtoint ptr %wbytes_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %wbytes_done.i.i.i, align 4
  %add.i87.i.i = add i32 %772, %sub.i85.i.i
  %773 = ptrtoint ptr %transfer_len.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %transfer_len.i.i.i81, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i87.i.i, i32 %774)
  %cmp.i88.i.i = icmp ult i32 %add.i87.i.i, %774
  br i1 %cmp.i88.i.i, label %lor.lhs.false.i.i.i.if.then.i89.i.i_crit_edge, label %lor.lhs.false7.i.i.i

lor.lhs.false.i.i.i.if.then.i89.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i89.i.i

lor.lhs.false7.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %775 = ptrtoint ptr %data_digest.i.i.i82 to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %data_digest.i.i.i82, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %776)
  %tobool8.not.i.i.i89 = icmp eq i8 %776, 0
  br i1 %tobool8.not.i.i.i89, label %lor.lhs.false9.i.i.i, label %lor.lhs.false7.i.i.i.if.then.i89.i.i_crit_edge

lor.lhs.false7.i.i.i.if.then.i89.i.i_crit_edge:   ; preds = %lor.lhs.false7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i89.i.i

lor.lhs.false9.i.i.i:                             ; preds = %lor.lhs.false7.i.i.i
  %777 = ptrtoint ptr %sqhd_disabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %sqhd_disabled.i.i.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %778)
  %tobool10.not.i.i.i90 = icmp eq i8 %778, 0
  br i1 %tobool10.not.i.i.i90, label %lor.lhs.false9.i.i.i.if.then.i89.i.i_crit_edge, label %lor.lhs.false9.i.i.i.if.end.i90.i.i_crit_edge

lor.lhs.false9.i.i.i.if.end.i90.i.i_crit_edge:    ; preds = %lor.lhs.false9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i90.i.i

lor.lhs.false9.i.i.i.if.then.i89.i.i_crit_edge:   ; preds = %lor.lhs.false9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i89.i.i

if.then.i89.i.i:                                  ; preds = %lor.lhs.false9.i.i.i.if.then.i89.i.i_crit_edge, %lor.lhs.false7.i.i.i.if.then.i89.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i89.i.i_crit_edge, %land.lhs.true.i.i.i88.if.then.i89.i.i_crit_edge
  br label %if.end.i90.i.i

if.end.i90.i.i:                                   ; preds = %if.then.i89.i.i, %lor.lhs.false9.i.i.i.if.end.i90.i.i_crit_edge
  %flags.0.i.i.i = phi i32 [ 163904, %if.then.i89.i.i ], [ 64, %lor.lhs.false9.i.i.i.if.end.i90.i.i_crit_edge ]
  %779 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %cmd.0.i.i, align 8
  %781 = ptrtoint ptr %780 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %780, align 8
  %call13.i.i.i91 = call i32 @kernel_sendpage(ptr noundef %782, ptr noundef %762, i32 noundef %766, i32 noundef %sub.i85.i.i, i32 noundef %flags.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i.i.i91)
  %cmp14.i.i.i = icmp slt i32 %call13.i.i.i91, 1
  br i1 %cmp14.i.i.i, label %if.end.i90.i.i.done_send.i.i_crit_edge, label %if.end16.i.i.i

if.end.i90.i.i.done_send.i.i_crit_edge:           ; preds = %if.end.i90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_send.i.i

if.end16.i.i.i:                                   ; preds = %if.end.i90.i.i
  %783 = ptrtoint ptr %offset.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %offset.i84.i.i, align 4
  %add18.i.i.i = add i32 %784, %call13.i.i.i91
  store i32 %add18.i.i.i, ptr %offset.i84.i.i, align 4
  %785 = ptrtoint ptr %wbytes_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %wbytes_done.i.i.i, align 4
  %add20.i.i.i = add i32 %786, %call13.i.i.i91
  store i32 %add20.i.i.i, ptr %wbytes_done.i.i.i, align 4
  %787 = ptrtoint ptr %cur_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %cur_sg.i.i.i, align 8
  %length23.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %788, i32 0, i32 2
  %789 = ptrtoint ptr %length23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %length23.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i.i.i, i32 %790)
  %cmp24.i.i.i = icmp eq i32 %add18.i.i.i, %790
  br i1 %cmp24.i.i.i, label %if.then25.i.i.i, label %if.end16.i.i.i.cleanup.i.i.i_crit_edge

if.end16.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i.i.i = call ptr @sg_next(ptr noundef %788) #10
  %791 = ptrtoint ptr %cur_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %791)
  store ptr %call27.i.i.i, ptr %cur_sg.i.i.i, align 8
  %792 = ptrtoint ptr %offset.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %792)
  store i32 0, ptr %offset.i84.i.i, align 4
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then25.i.i.i, %if.end16.i.i.i.cleanup.i.i.i_crit_edge
  %793 = phi ptr [ %788, %if.end16.i.i.i.cleanup.i.i.i_crit_edge ], [ %call27.i.i.i, %if.then25.i.i.i ]
  %tobool.not.i91.i.i = icmp eq ptr %793, null
  br i1 %tobool.not.i91.i.i, label %cleanup.i.i.i.while.end.i.i.i92_crit_edge, label %cleanup.i.i.i.while.body.i.i.i85_crit_edge

cleanup.i.i.i.while.body.i.i.i85_crit_edge:       ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i85

cleanup.i.i.i.while.end.i.i.i92_crit_edge:        ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i92

while.end.i.i.i92:                                ; preds = %cleanup.i.i.i.while.end.i.i.i92_crit_edge, %if.then17.i.i.while.end.i.i.i92_crit_edge
  %data_digest33.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %756, i32 0, i32 18
  %794 = ptrtoint ptr %data_digest33.i.i.i to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %data_digest33.i.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %795)
  %tobool34.not.i.i.i = icmp eq i8 %795, 0
  br i1 %tobool34.not.i.i.i, label %if.else.i93.i.i, label %if.then35.i.i.i

if.then35.i.i.i:                                  ; preds = %while.end.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  %796 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 3, ptr %state7.i.i, align 4
  %offset36.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %797 = ptrtoint ptr %offset36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %797)
  store i32 0, ptr %offset36.i.i.i, align 4
  br label %if.end44.i.i.i

if.else.i93.i.i:                                  ; preds = %while.end.i.i.i92
  %sqhd_disabled38.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %756, i32 0, i32 4, i32 5
  %798 = ptrtoint ptr %sqhd_disabled38.i.i.i to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %sqhd_disabled38.i.i.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %799)
  %tobool39.not.i.i.i = icmp eq i8 %799, 0
  br i1 %tobool39.not.i.i.i, label %if.else42.i.i.i, label %if.then40.i.i.i

if.then40.i.i.i:                                  ; preds = %if.else.i93.i.i
  %800 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %cmd.0.i.i, align 8
  %snd_cmd.i94.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %801, i32 0, i32 11
  %802 = ptrtoint ptr %snd_cmd.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %802)
  store ptr null, ptr %snd_cmd.i94.i.i, align 8
  %803 = load ptr, ptr %cmd.0.i.i, align 8
  %connect.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %803, i32 0, i32 29
  %cmp.i.i.i.i93 = icmp eq ptr %connect.i.i.i.i, %cmd.0.i.i
  br i1 %cmp.i.i.i.i93, label %if.then40.i.i.i.if.end44.i.i.i_crit_edge, label %if.end.i.i97.i.i, !prof !176

if.then40.i.i.i.if.end44.i.i.i_crit_edge:         ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i.i

if.end.i.i97.i.i:                                 ; preds = %if.then40.i.i.i
  %entry2.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15
  %free_list.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %803, i32 0, i32 7
  %prev.i.i.i95.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %803, i32 0, i32 7, i32 1
  %804 = ptrtoint ptr %prev.i.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %prev.i.i.i95.i.i, align 4
  %call.i.i.i.i96.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry2.i.i.i.i, ptr noundef %805, ptr noundef %free_list.i.i.i.i) #10
  br i1 %call.i.i.i.i96.i.i, label %if.end.i.i.i.i99.i.i, label %if.end.i.i97.i.i.if.end44.i.i.i_crit_edge

if.end.i.i97.i.i.if.end44.i.i.i_crit_edge:        ; preds = %if.end.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i.i

if.end.i.i.i.i99.i.i:                             ; preds = %if.end.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %806 = ptrtoint ptr %prev.i.i.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %806)
  store ptr %entry2.i.i.i.i, ptr %prev.i.i.i95.i.i, align 4
  %807 = ptrtoint ptr %entry2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %807)
  store ptr %free_list.i.i.i.i, ptr %entry2.i.i.i.i, align 4
  %prev3.i.i.i.i98.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15, i32 1
  %808 = ptrtoint ptr %prev3.i.i.i.i98.i.i to i32
  call void @__asan_store4_noabort(i32 %808)
  store ptr %805, ptr %prev3.i.i.i.i98.i.i, align 4
  %809 = ptrtoint ptr %805 to i32
  call void @__asan_store4_noabort(i32 %809)
  store volatile ptr %entry2.i.i.i.i, ptr %805, align 4
  br label %if.end44.i.i.i

if.else42.i.i.i:                                  ; preds = %if.else.i93.i.i
  %rsp_pdu.i.i100.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 3
  %810 = ptrtoint ptr %rsp_pdu.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %rsp_pdu.i.i100.i.i, align 4
  %812 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i.i101.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %813, i32 0, i32 17
  %814 = ptrtoint ptr %hdr_digest.i.i.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %hdr_digest.i.i.i101.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %815)
  %tobool.not.i.i.i102.i.i = icmp eq i8 %815, 0
  %offset.i.i103.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %816 = ptrtoint ptr %offset.i.i103.i.i to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 0, ptr %offset.i.i103.i.i, align 4
  %817 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 4, ptr %state7.i.i, align 4
  %818 = ptrtoint ptr %811 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 5, ptr %811, align 8
  %flags.i.i105.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %811, i32 0, i32 1
  %819 = ptrtoint ptr %flags.i.i105.i.i to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 0, ptr %flags.i.i105.i.i, align 1
  %hlen.i.i106.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %811, i32 0, i32 2
  %820 = ptrtoint ptr %hlen.i.i106.i.i to i32
  call void @__asan_store1_noabort(i32 %820)
  store i8 24, ptr %hlen.i.i106.i.i, align 2
  %pdo.i.i107.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %811, i32 0, i32 3
  %821 = ptrtoint ptr %pdo.i.i107.i.i to i32
  call void @__asan_store1_noabort(i32 %821)
  store i8 0, ptr %pdo.i.i107.i.i, align 1
  %add.i.i108.i.i = select i1 %tobool.not.i.i.i102.i.i, i32 402653184, i32 469762048
  %plen.i.i109.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %811, i32 0, i32 4
  %822 = ptrtoint ptr %plen.i.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 %add.i.i108.i.i, ptr %plen.i.i109.i.i, align 4
  %823 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i110.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %824, i32 0, i32 17
  %825 = ptrtoint ptr %hdr_digest.i.i110.i.i to i32
  call void @__asan_load1_noabort(i32 %825)
  %826 = load i8, ptr %hdr_digest.i.i110.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %826)
  %tobool.not.i.i111.i.i = icmp eq i8 %826, 0
  br i1 %tobool.not.i.i111.i.i, label %if.else42.i.i.i.if.end44.i.i.i_crit_edge, label %if.then.i.i118.i.i

if.else42.i.i.i.if.end44.i.i.i_crit_edge:         ; preds = %if.else42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i.i

if.then.i.i118.i.i:                               ; preds = %if.else42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %827 = ptrtoint ptr %flags.i.i105.i.i to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 1, ptr %flags.i.i105.i.i, align 1
  %snd_hash.i.i112.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %813, i32 0, i32 19
  %828 = ptrtoint ptr %snd_hash.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %snd_hash.i.i112.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i83.i.i) #10
  %830 = call ptr @memset(ptr %sg.i.i.i83.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i83.i.i, ptr noundef %811, i32 noundef 24) #10
  %add.ptr.i.i.i113.i.i = getelementptr i8, ptr %811, i32 24
  %src1.i.i.i.i114.i.i = getelementptr inbounds %struct.ahash_request, ptr %829, i32 0, i32 2
  %831 = ptrtoint ptr %src1.i.i.i.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %831)
  store ptr %sg.i.i.i83.i.i, ptr %src1.i.i.i.i114.i.i, align 4
  %nbytes2.i.i.i.i115.i.i = getelementptr inbounds %struct.ahash_request, ptr %829, i32 0, i32 1
  %832 = ptrtoint ptr %nbytes2.i.i.i.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %832)
  store i32 24, ptr %nbytes2.i.i.i.i115.i.i, align 8
  %result3.i.i.i.i116.i.i = getelementptr inbounds %struct.ahash_request, ptr %829, i32 0, i32 3
  %833 = ptrtoint ptr %result3.i.i.i.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %833)
  store ptr %add.ptr.i.i.i113.i.i, ptr %result3.i.i.i.i116.i.i, align 32
  %call.i.i.i117.i.i = call i32 @crypto_ahash_digest(ptr noundef %829) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i83.i.i) #10
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then.i.i118.i.i, %if.else42.i.i.i.if.end44.i.i.i_crit_edge, %if.end.i.i.i.i99.i.i, %if.end.i.i97.i.i.if.end44.i.i.i_crit_edge, %if.then40.i.i.i.if.end44.i.i.i_crit_edge, %if.then35.i.i.i
  %sqhd_disabled46.i.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %756, i32 0, i32 4, i32 5
  %834 = ptrtoint ptr %sqhd_disabled46.i.i.i to i32
  call void @__asan_load1_noabort(i32 %834)
  %835 = load i8, ptr %sqhd_disabled46.i.i.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %835)
  %tobool47.not.i.i.i = icmp eq i8 %835, 0
  br i1 %tobool47.not.i.i.i, label %if.end44.i.i.i.if.end23thread-pre-split.i.i_crit_edge, label %if.then48.i.i.i

if.end44.i.i.i.if.end23thread-pre-split.i.i_crit_edge: ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23thread-pre-split.i.i

if.then48.i.i.i:                                  ; preds = %if.end44.i.i.i
  %nr_mapped.i.i.i.i94 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 11
  %836 = ptrtoint ptr %nr_mapped.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %nr_mapped.i.i.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %837)
  %cmp.i84.i.i.i = icmp sgt i32 %837, 0
  br i1 %cmp.i84.i.i.i, label %do.end.i.i.i.i95, label %if.then48.i.i.i.nvmet_tcp_free_cmd_buffers.exit.i.i.i_crit_edge, !prof !176

if.then48.i.i.i.nvmet_tcp_free_cmd_buffers.exit.i.i.i_crit_edge: ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit.i.i.i

do.end.i.i.i.i95:                                 ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef 9, ptr noundef null) #10
  br label %nvmet_tcp_free_cmd_buffers.exit.i.i.i

nvmet_tcp_free_cmd_buffers.exit.i.i.i:            ; preds = %do.end.i.i.i.i95, %if.then48.i.i.i.nvmet_tcp_free_cmd_buffers.exit.i.i.i_crit_edge
  %iov.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 13
  %838 = ptrtoint ptr %iov.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %iov.i.i.i.i, align 8
  call void @kfree(ptr noundef %839) #10
  %sg.i.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 1, i32 5
  %840 = ptrtoint ptr %sg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %sg.i.i.i.i, align 4
  call void @sgl_free(ptr noundef %841) #10
  %842 = ptrtoint ptr %iov.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %842)
  store ptr null, ptr %iov.i.i.i.i, align 8
  %843 = ptrtoint ptr %sg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %843)
  store ptr null, ptr %sg.i.i.i.i, align 4
  br label %if.end23thread-pre-split.i.i

if.end23thread-pre-split.i.i:                     ; preds = %nvmet_tcp_free_cmd_buffers.exit.i.i.i, %if.end44.i.i.i.if.end23thread-pre-split.i.i_crit_edge
  %844 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %.pr240.i.i = load i32, ptr %state7.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end23thread-pre-split.i.i, %if.end6.i.i.if.end23.i.i_crit_edge
  %845 = phi i32 [ %.pr240.i.i, %if.end23thread-pre-split.i.i ], [ %737, %if.end6.i.i.if.end23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %845)
  %cmp25.i.i96 = icmp eq i32 %845, 3
  br i1 %cmp25.i.i96, label %if.then26.i.i98, label %if.end23.i.i.if.end32.i.i_crit_edge

if.end23.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i.i

if.then26.i.i98:                                  ; preds = %if.end23.i.i
  %846 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %cmd.0.i.i, align 8
  %offset.i120.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %848 = ptrtoint ptr %offset.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load i32, ptr %offset.i120.i.i, align 4
  %sub.i121.i.i = sub i32 4, %849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i30) #10
  %850 = call ptr @memset(ptr %msg.i.i.i30, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i.i31) #10
  %exp_ddgst.i.i.i97 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 20
  %add.ptr.i122.i.i = getelementptr i8, ptr %exp_ddgst.i.i.i97, i32 %849
  %851 = ptrtoint ptr %iov.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %851)
  store ptr %add.ptr.i122.i.i, ptr %iov.i.i.i31, align 4
  %852 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %852)
  store i32 %sub.i121.i.i, ptr %6, align 4
  br i1 %cmp1.i, label %if.then26.i.i98.if.else.i125.i.i_crit_edge, label %land.lhs.true.i124.i.i

if.then26.i.i98.if.else.i125.i.i_crit_edge:       ; preds = %if.then26.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i125.i.i

land.lhs.true.i124.i.i:                           ; preds = %if.then26.i.i98
  %send_list_len.i123.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %847, i32 0, i32 10
  %853 = ptrtoint ptr %send_list_len.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %send_list_len.i123.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %854)
  %tobool4.not.i.i.i = icmp eq i32 %854, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i124.i.i.if.else.i125.i.i_crit_edge, label %land.lhs.true.i124.i.i.if.end.i127.i.i_crit_edge

land.lhs.true.i124.i.i.if.end.i127.i.i_crit_edge: ; preds = %land.lhs.true.i124.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i127.i.i

land.lhs.true.i124.i.i.if.else.i125.i.i_crit_edge: ; preds = %land.lhs.true.i124.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i125.i.i

if.else.i125.i.i:                                 ; preds = %land.lhs.true.i124.i.i.if.else.i125.i.i_crit_edge, %if.then26.i.i98.if.else.i125.i.i_crit_edge
  br label %if.end.i127.i.i

if.end.i127.i.i:                                  ; preds = %if.else.i125.i.i, %land.lhs.true.i124.i.i.if.end.i127.i.i_crit_edge
  %.sink41.i.i.i = phi i32 [ 192, %if.else.i125.i.i ], [ 32832, %land.lhs.true.i124.i.i.if.end.i127.i.i_crit_edge ]
  %855 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %855)
  store i32 %.sink41.i.i.i, ptr %5, align 4
  %856 = ptrtoint ptr %847 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %847, align 8
  %call.i.i.i99 = call i32 @kernel_sendmsg(ptr noundef %857, ptr noundef nonnull %msg.i.i.i30, ptr noundef nonnull %iov.i.i.i31, i32 noundef 1, i32 noundef %sub.i121.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i99)
  %cmp.i126.i.i = icmp slt i32 %call.i.i.i99, 1
  br i1 %cmp.i126.i.i, label %if.end.i127.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge, label %if.end11.i.i.i, !prof !176

if.end.i127.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge: ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_try_send_ddgst.exit.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i127.i.i
  %858 = ptrtoint ptr %offset.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %offset.i120.i.i, align 4
  %add.i128.i.i = add i32 %859, %call.i.i.i99
  store i32 %add.i128.i.i, ptr %offset.i120.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i121.i.i, i32 %call.i.i.i99)
  %tobool14.not.i.i.i = icmp eq i32 %sub.i121.i.i, %call.i.i.i99
  br i1 %tobool14.not.i.i.i, label %if.end16.i130.i.i, label %if.end11.i.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge

if.end11.i.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_try_send_ddgst.exit.i.i

if.end16.i130.i.i:                                ; preds = %if.end11.i.i.i
  %sqhd_disabled.i129.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %847, i32 0, i32 4, i32 5
  %860 = ptrtoint ptr %sqhd_disabled.i129.i.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %sqhd_disabled.i129.i.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %861)
  %tobool17.not.i.i.i = icmp eq i8 %861, 0
  br i1 %tobool17.not.i.i.i, label %if.else20.i.i.i, label %if.then18.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end16.i130.i.i
  %862 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %cmd.0.i.i, align 8
  %snd_cmd.i131.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %863, i32 0, i32 11
  %864 = ptrtoint ptr %snd_cmd.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %864)
  store ptr null, ptr %snd_cmd.i131.i.i, align 8
  %865 = load ptr, ptr %cmd.0.i.i, align 8
  %connect.i.i132.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %865, i32 0, i32 29
  %cmp.i.i133.i.i = icmp eq ptr %connect.i.i132.i.i, %cmd.0.i.i
  br i1 %cmp.i.i133.i.i, label %if.then18.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge, label %if.end.i.i138.i.i, !prof !176

if.then18.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_try_send_ddgst.exit.thread.i.i

if.end.i.i138.i.i:                                ; preds = %if.then18.i.i.i
  %entry2.i.i134.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15
  %free_list.i.i135.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %865, i32 0, i32 7
  %prev.i.i.i136.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %865, i32 0, i32 7, i32 1
  %866 = ptrtoint ptr %prev.i.i.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %prev.i.i.i136.i.i, align 4
  %call.i.i.i.i137.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry2.i.i134.i.i, ptr noundef %867, ptr noundef %free_list.i.i135.i.i) #10
  br i1 %call.i.i.i.i137.i.i, label %if.end.i.i.i.i140.i.i, label %if.end.i.i138.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge

if.end.i.i138.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_try_send_ddgst.exit.thread.i.i

if.end.i.i.i.i140.i.i:                            ; preds = %if.end.i.i138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %868 = ptrtoint ptr %prev.i.i.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %868)
  store ptr %entry2.i.i134.i.i, ptr %prev.i.i.i136.i.i, align 4
  %869 = ptrtoint ptr %entry2.i.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %869)
  store ptr %free_list.i.i135.i.i, ptr %entry2.i.i134.i.i, align 4
  %prev3.i.i.i.i139.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15, i32 1
  %870 = ptrtoint ptr %prev3.i.i.i.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store ptr %867, ptr %prev3.i.i.i.i139.i.i, align 4
  %871 = ptrtoint ptr %867 to i32
  call void @__asan_store4_noabort(i32 %871)
  store volatile ptr %entry2.i.i134.i.i, ptr %867, align 4
  br label %nvmet_try_send_ddgst.exit.thread.i.i

if.else20.i.i.i:                                  ; preds = %if.end16.i130.i.i
  %rsp_pdu.i.i141.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 3
  %872 = ptrtoint ptr %rsp_pdu.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %rsp_pdu.i.i141.i.i, align 4
  %874 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i.i142.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %875, i32 0, i32 17
  %876 = ptrtoint ptr %hdr_digest.i.i.i142.i.i to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %hdr_digest.i.i.i142.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %877)
  %tobool.not.i.i.i143.i.i = icmp eq i8 %877, 0
  %878 = ptrtoint ptr %offset.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %878)
  store i32 0, ptr %offset.i120.i.i, align 4
  %879 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 4, ptr %state7.i.i, align 4
  %880 = ptrtoint ptr %873 to i32
  call void @__asan_store1_noabort(i32 %880)
  store i8 5, ptr %873, align 8
  %flags.i.i145.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %873, i32 0, i32 1
  %881 = ptrtoint ptr %flags.i.i145.i.i to i32
  call void @__asan_store1_noabort(i32 %881)
  store i8 0, ptr %flags.i.i145.i.i, align 1
  %hlen.i.i146.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %873, i32 0, i32 2
  %882 = ptrtoint ptr %hlen.i.i146.i.i to i32
  call void @__asan_store1_noabort(i32 %882)
  store i8 24, ptr %hlen.i.i146.i.i, align 2
  %pdo.i.i147.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %873, i32 0, i32 3
  %883 = ptrtoint ptr %pdo.i.i147.i.i to i32
  call void @__asan_store1_noabort(i32 %883)
  store i8 0, ptr %pdo.i.i147.i.i, align 1
  %add.i.i148.i.i = select i1 %tobool.not.i.i.i143.i.i, i32 402653184, i32 469762048
  %plen.i.i149.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %873, i32 0, i32 4
  %884 = ptrtoint ptr %plen.i.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %884)
  store i32 %add.i.i148.i.i, ptr %plen.i.i149.i.i, align 4
  %885 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i150.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %886, i32 0, i32 17
  %887 = ptrtoint ptr %hdr_digest.i.i150.i.i to i32
  call void @__asan_load1_noabort(i32 %887)
  %888 = load i8, ptr %hdr_digest.i.i150.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %888)
  %tobool.not.i.i151.i.i = icmp eq i8 %888, 0
  br i1 %tobool.not.i.i151.i.i, label %if.else20.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge, label %if.then.i.i158.i.i

if.else20.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge: ; preds = %if.else20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_try_send_ddgst.exit.thread.i.i

if.then.i.i158.i.i:                               ; preds = %if.else20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %889 = ptrtoint ptr %flags.i.i145.i.i to i32
  call void @__asan_store1_noabort(i32 %889)
  store i8 1, ptr %flags.i.i145.i.i, align 1
  %snd_hash.i.i152.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %875, i32 0, i32 19
  %890 = ptrtoint ptr %snd_hash.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %snd_hash.i.i152.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i119.i.i) #10
  %892 = call ptr @memset(ptr %sg.i.i.i119.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i119.i.i, ptr noundef %873, i32 noundef 24) #10
  %add.ptr.i.i.i153.i.i = getelementptr i8, ptr %873, i32 24
  %src1.i.i.i.i154.i.i = getelementptr inbounds %struct.ahash_request, ptr %891, i32 0, i32 2
  %893 = ptrtoint ptr %src1.i.i.i.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %893)
  store ptr %sg.i.i.i119.i.i, ptr %src1.i.i.i.i154.i.i, align 4
  %nbytes2.i.i.i.i155.i.i = getelementptr inbounds %struct.ahash_request, ptr %891, i32 0, i32 1
  %894 = ptrtoint ptr %nbytes2.i.i.i.i155.i.i to i32
  call void @__asan_store4_noabort(i32 %894)
  store i32 24, ptr %nbytes2.i.i.i.i155.i.i, align 8
  %result3.i.i.i.i156.i.i = getelementptr inbounds %struct.ahash_request, ptr %891, i32 0, i32 3
  %895 = ptrtoint ptr %result3.i.i.i.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %895)
  store ptr %add.ptr.i.i.i153.i.i, ptr %result3.i.i.i.i156.i.i, align 32
  %call.i.i.i157.i.i = call i32 @crypto_ahash_digest(ptr noundef %891) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i119.i.i) #10
  br label %nvmet_try_send_ddgst.exit.thread.i.i

nvmet_try_send_ddgst.exit.thread.i.i:             ; preds = %if.then.i.i158.i.i, %if.else20.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge, %if.end.i.i.i.i140.i.i, %if.end.i.i138.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge, %if.then18.i.i.i.nvmet_try_send_ddgst.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i31) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i30) #10
  %896 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %.pr.i.i100 = load i32, ptr %state7.i.i, align 4
  br label %if.end32.i.i

nvmet_try_send_ddgst.exit.i.i:                    ; preds = %if.end11.i.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge, %if.end.i127.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge
  %retval.0.i159.i.i = phi i32 [ %call.i.i.i99, %if.end.i127.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge ], [ -11, %if.end11.i.i.i.nvmet_try_send_ddgst.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i31) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i30) #10
  br label %done_send.i.i

if.end32.i.i:                                     ; preds = %nvmet_try_send_ddgst.exit.thread.i.i, %if.end23.i.i.if.end32.i.i_crit_edge
  %897 = phi i32 [ %.pr.i.i100, %nvmet_try_send_ddgst.exit.thread.i.i ], [ %845, %if.end23.i.i.if.end32.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %897)
  %cmp34.i.i = icmp eq i32 %897, 2
  br i1 %cmp34.i.i, label %if.then35.i.i, label %if.end32.i.i.if.end41.i.i_crit_edge

if.end32.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  %898 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i161.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %899, i32 0, i32 17
  %900 = ptrtoint ptr %hdr_digest.i.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %900)
  %901 = load i8, ptr %hdr_digest.i.i161.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %901)
  %tobool.not.i.i162.i.i = icmp eq i8 %901, 0
  %conv.i.i163.i.i = select i1 %tobool.not.i.i162.i.i, i32 0, i32 4
  %offset.i164.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %902 = ptrtoint ptr %offset.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %offset.i164.i.i, align 4
  %sub.i165.i.i = sub i32 24, %903
  %add.i166.i.i = add i32 %sub.i165.i.i, %conv.i.i163.i.i
  br i1 %cmp1.i, label %if.then35.i.i.if.else.i169.i.i_crit_edge, label %land.lhs.true.i168.i.i

if.then35.i.i.if.else.i169.i.i_crit_edge:         ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i169.i.i

land.lhs.true.i168.i.i:                           ; preds = %if.then35.i.i
  %send_list_len.i167.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %899, i32 0, i32 10
  %904 = ptrtoint ptr %send_list_len.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %send_list_len.i167.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %905)
  %tobool2.not.i.i.i = icmp eq i32 %905, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i168.i.i.if.else.i169.i.i_crit_edge, label %land.lhs.true.i168.i.i.if.end.i175.i.i_crit_edge

land.lhs.true.i168.i.i.if.end.i175.i.i_crit_edge: ; preds = %land.lhs.true.i168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i175.i.i

land.lhs.true.i168.i.i.if.else.i169.i.i_crit_edge: ; preds = %land.lhs.true.i168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i169.i.i

if.else.i169.i.i:                                 ; preds = %land.lhs.true.i168.i.i.if.else.i169.i.i_crit_edge, %if.then35.i.i.if.else.i169.i.i_crit_edge
  br label %if.end.i175.i.i

if.end.i175.i.i:                                  ; preds = %if.else.i169.i.i, %land.lhs.true.i168.i.i.if.end.i175.i.i_crit_edge
  %flags.0.i170.i.i = phi i32 [ 192, %if.else.i169.i.i ], [ 163904, %land.lhs.true.i168.i.i.if.end.i175.i.i_crit_edge ]
  %906 = ptrtoint ptr %899 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %899, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %908 = load ptr, ptr @mem_map, align 4
  %r2t_pdu.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 5
  %909 = ptrtoint ptr %r2t_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %r2t_pdu.i.i.i, align 4
  %911 = ptrtoint ptr %910 to i32
  %sub5.i.i.i = add i32 %911, 1073741824
  %shr.i171.i.i = lshr i32 %sub5.i.i.i, 12
  %add.ptr.i172.i.i = getelementptr %struct.page, ptr %908, i32 %shr.i171.i.i
  %and.i173.i.i = and i32 %911, 4095
  %add10.i.i.i = add i32 %and.i173.i.i, %903
  %call11.i.i.i101 = call i32 @kernel_sendpage(ptr noundef %907, ptr noundef %add.ptr.i172.i.i, i32 noundef %add10.i.i.i, i32 noundef %add.i166.i.i, i32 noundef %flags.0.i170.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.i.i101)
  %cmp.i174.i.i = icmp slt i32 %call11.i.i.i101, 1
  br i1 %cmp.i174.i.i, label %if.end.i175.i.i.done_send.i.i_crit_edge, label %if.end14.i176.i.i

if.end.i175.i.i.done_send.i.i_crit_edge:          ; preds = %if.end.i175.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_send.i.i

if.end14.i176.i.i:                                ; preds = %if.end.i175.i.i
  %912 = ptrtoint ptr %offset.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load i32, ptr %offset.i164.i.i, align 4
  %add16.i.i.i = add i32 %913, %call11.i.i.i101
  store i32 %add16.i.i.i, ptr %offset.i164.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i166.i.i, i32 %call11.i.i.i101)
  %tobool18.not.i.i.i = icmp eq i32 %add.i166.i.i, %call11.i.i.i101
  br i1 %tobool18.not.i.i.i, label %nvmet_try_send_r2t.exit.i.i, label %if.end14.i176.i.i.do.cond_crit_edge

if.end14.i176.i.i.do.cond_crit_edge:              ; preds = %if.end14.i176.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

nvmet_try_send_r2t.exit.i.i:                      ; preds = %if.end14.i176.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %914 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %cmd.0.i.i, align 8
  %snd_cmd.i177.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %915, i32 0, i32 11
  %916 = ptrtoint ptr %snd_cmd.i177.i.i to i32
  call void @__asan_store4_noabort(i32 %916)
  store ptr null, ptr %snd_cmd.i177.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %nvmet_try_send_r2t.exit.i.i, %if.end32.i.i.if.end41.i.i_crit_edge
  %917 = ptrtoint ptr %state7.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %state7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %918)
  %cmp43.i.i = icmp eq i32 %918, 4
  br i1 %cmp43.i.i, label %if.then44.i.i, label %if.end41.i.i.if.end6.i_crit_edge

if.end41.i.i.if.end6.i_crit_edge:                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then44.i.i:                                    ; preds = %if.end41.i.i
  %919 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %cmd.0.i.i, align 8
  %hdr_digest.i.i180.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %920, i32 0, i32 17
  %921 = ptrtoint ptr %hdr_digest.i.i180.i.i to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %hdr_digest.i.i180.i.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %922)
  %tobool.not.i.i181.i.i = icmp eq i8 %922, 0
  %conv.i.i182.i.i = select i1 %tobool.not.i.i181.i.i, i32 0, i32 4
  %offset.i183.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 17
  %923 = ptrtoint ptr %offset.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %offset.i183.i.i, align 4
  %sub.i184.i.i = sub i32 24, %924
  %add.i185.i.i = add i32 %sub.i184.i.i, %conv.i.i182.i.i
  br i1 %cmp1.i, label %if.then44.i.i.if.else.i189.i.i_crit_edge, label %land.lhs.true.i188.i.i

if.then44.i.i.if.else.i189.i.i_crit_edge:         ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i189.i.i

land.lhs.true.i188.i.i:                           ; preds = %if.then44.i.i
  %send_list_len.i186.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %920, i32 0, i32 10
  %925 = ptrtoint ptr %send_list_len.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %send_list_len.i186.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %926)
  %tobool2.not.i187.i.i = icmp eq i32 %926, 0
  br i1 %tobool2.not.i187.i.i, label %land.lhs.true.i188.i.i.if.else.i189.i.i_crit_edge, label %land.lhs.true.i188.i.i.if.end.i198.i.i_crit_edge

land.lhs.true.i188.i.i.if.end.i198.i.i_crit_edge: ; preds = %land.lhs.true.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i198.i.i

land.lhs.true.i188.i.i.if.else.i189.i.i_crit_edge: ; preds = %land.lhs.true.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i189.i.i

if.else.i189.i.i:                                 ; preds = %land.lhs.true.i188.i.i.if.else.i189.i.i_crit_edge, %if.then44.i.i.if.else.i189.i.i_crit_edge
  br label %if.end.i198.i.i

if.end.i198.i.i:                                  ; preds = %if.else.i189.i.i, %land.lhs.true.i188.i.i.if.end.i198.i.i_crit_edge
  %flags.0.i190.i.i = phi i32 [ 192, %if.else.i189.i.i ], [ 163904, %land.lhs.true.i188.i.i.if.end.i198.i.i_crit_edge ]
  %927 = ptrtoint ptr %920 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %920, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %929 = load ptr, ptr @mem_map, align 4
  %rsp_pdu.i.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 3
  %930 = ptrtoint ptr %rsp_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %rsp_pdu.i.i.i, align 4
  %932 = ptrtoint ptr %931 to i32
  %sub5.i191.i.i = add i32 %932, 1073741824
  %shr.i192.i.i = lshr i32 %sub5.i191.i.i, 12
  %add.ptr.i193.i.i = getelementptr %struct.page, ptr %929, i32 %shr.i192.i.i
  %and.i194.i.i = and i32 %932, 4095
  %add10.i195.i.i = add i32 %and.i194.i.i, %924
  %call11.i196.i.i = call i32 @kernel_sendpage(ptr noundef %928, ptr noundef %add.ptr.i193.i.i, i32 noundef %add10.i195.i.i, i32 noundef %add.i185.i.i, i32 noundef %flags.0.i190.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i196.i.i)
  %cmp.i197.i.i = icmp slt i32 %call11.i196.i.i, 1
  br i1 %cmp.i197.i.i, label %if.end.i198.i.i.done_send.i.i_crit_edge, label %if.end14.i201.i.i

if.end.i198.i.i.done_send.i.i_crit_edge:          ; preds = %if.end.i198.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_send.i.i

if.end14.i201.i.i:                                ; preds = %if.end.i198.i.i
  %933 = ptrtoint ptr %offset.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %offset.i183.i.i, align 4
  %add16.i199.i.i = add i32 %934, %call11.i196.i.i
  store i32 %add16.i199.i.i, ptr %offset.i183.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i185.i.i, i32 %call11.i196.i.i)
  %tobool18.not.i200.i.i = icmp eq i32 %add.i185.i.i, %call11.i196.i.i
  br i1 %tobool18.not.i200.i.i, label %if.end20.i204.i.i, label %if.end14.i201.i.i.do.cond_crit_edge

if.end14.i201.i.i.do.cond_crit_edge:              ; preds = %if.end14.i201.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.end20.i204.i.i:                                ; preds = %if.end14.i201.i.i
  %nr_mapped.i.i202.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 11
  %935 = ptrtoint ptr %nr_mapped.i.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %nr_mapped.i.i202.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %936)
  %cmp.i.i203.i.i = icmp sgt i32 %936, 0
  br i1 %cmp.i.i203.i.i, label %do.end.i.i205.i.i, label %if.end20.i204.i.i.nvmet_tcp_free_cmd_buffers.exit.i210.i.i_crit_edge, !prof !176

if.end20.i204.i.i.nvmet_tcp_free_cmd_buffers.exit.i210.i.i_crit_edge: ; preds = %if.end20.i204.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit.i210.i.i

do.end.i.i205.i.i:                                ; preds = %if.end20.i204.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef 9, ptr noundef null) #10
  br label %nvmet_tcp_free_cmd_buffers.exit.i210.i.i

nvmet_tcp_free_cmd_buffers.exit.i210.i.i:         ; preds = %do.end.i.i205.i.i, %if.end20.i204.i.i.nvmet_tcp_free_cmd_buffers.exit.i210.i.i_crit_edge
  %iov.i.i206.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 13
  %937 = ptrtoint ptr %iov.i.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %iov.i.i206.i.i, align 8
  call void @kfree(ptr noundef %938) #10
  %sg.i.i207.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 1, i32 5
  %939 = ptrtoint ptr %sg.i.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %sg.i.i207.i.i, align 4
  call void @sgl_free(ptr noundef %940) #10
  %941 = ptrtoint ptr %iov.i.i206.i.i to i32
  call void @__asan_store4_noabort(i32 %941)
  store ptr null, ptr %iov.i.i206.i.i, align 8
  %942 = ptrtoint ptr %sg.i.i207.i.i to i32
  call void @__asan_store4_noabort(i32 %942)
  store ptr null, ptr %sg.i.i207.i.i, align 4
  %943 = ptrtoint ptr %cmd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %cmd.0.i.i, align 8
  %snd_cmd.i208.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %944, i32 0, i32 11
  %945 = ptrtoint ptr %snd_cmd.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %945)
  store ptr null, ptr %snd_cmd.i208.i.i, align 8
  %946 = load ptr, ptr %cmd.0.i.i, align 8
  %connect.i.i209.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %946, i32 0, i32 29
  %cmp.i42.i.i.i = icmp eq ptr %connect.i.i209.i.i, %cmd.0.i.i
  br i1 %cmp.i42.i.i.i, label %nvmet_tcp_free_cmd_buffers.exit.i210.i.i.if.end6.i_crit_edge, label %if.end.i.i215.i.i, !prof !176

nvmet_tcp_free_cmd_buffers.exit.i210.i.i.if.end6.i_crit_edge: ; preds = %nvmet_tcp_free_cmd_buffers.exit.i210.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end.i.i215.i.i:                                ; preds = %nvmet_tcp_free_cmd_buffers.exit.i210.i.i
  %entry2.i.i211.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15
  %free_list.i.i212.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %946, i32 0, i32 7
  %prev.i.i.i213.i.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %946, i32 0, i32 7, i32 1
  %947 = ptrtoint ptr %prev.i.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %prev.i.i.i213.i.i, align 4
  %call.i.i.i.i214.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry2.i.i211.i.i, ptr noundef %948, ptr noundef %free_list.i.i212.i.i) #10
  br i1 %call.i.i.i.i214.i.i, label %if.end.i.i.i.i217.i.i, label %if.end.i.i215.i.i.if.end6.i_crit_edge

if.end.i.i215.i.i.if.end6.i_crit_edge:            ; preds = %if.end.i.i215.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end.i.i.i.i217.i.i:                            ; preds = %if.end.i.i215.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %949 = ptrtoint ptr %prev.i.i.i213.i.i to i32
  call void @__asan_store4_noabort(i32 %949)
  store ptr %entry2.i.i211.i.i, ptr %prev.i.i.i213.i.i, align 4
  %950 = ptrtoint ptr %entry2.i.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %950)
  store ptr %free_list.i.i212.i.i, ptr %entry2.i.i211.i.i, align 4
  %prev3.i.i.i.i216.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd.0.i.i, i32 0, i32 15, i32 1
  %951 = ptrtoint ptr %prev3.i.i.i.i216.i.i to i32
  call void @__asan_store4_noabort(i32 %951)
  store ptr %948, ptr %prev3.i.i.i.i216.i.i, align 4
  %952 = ptrtoint ptr %948 to i32
  call void @__asan_store4_noabort(i32 %952)
  store volatile ptr %entry2.i.i211.i.i, ptr %948, align 4
  br label %if.end6.i

done_send.i.i:                                    ; preds = %if.end.i198.i.i.done_send.i.i_crit_edge, %if.end.i175.i.i.done_send.i.i_crit_edge, %nvmet_try_send_ddgst.exit.i.i, %if.end.i90.i.i.done_send.i.i_crit_edge, %if.then9.i.i.done_send.i.i_crit_edge
  %ret.4.i.i = phi i32 [ %retval.0.i159.i.i, %nvmet_try_send_ddgst.exit.i.i ], [ %call11.i196.i.i, %if.end.i198.i.i.done_send.i.i_crit_edge ], [ %call8.i.i.i, %if.then9.i.i.done_send.i.i_crit_edge ], [ %call11.i.i.i101, %if.end.i175.i.i.done_send.i.i_crit_edge ], [ %call13.i.i.i91, %if.end.i90.i.i.done_send.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i.i)
  %cmp48.i.i = icmp slt i32 %ret.4.i.i, 0
  br i1 %cmp48.i.i, label %if.then49.i.i, label %done_send.i.i.if.end6.i_crit_edge

done_send.i.i.if.end6.i_crit_edge:                ; preds = %done_send.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then49.i.i:                                    ; preds = %done_send.i.i
  %953 = zext i32 %ret.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %953, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %ret.4.i.i, label %if.else.i122 [
    i32 -11, label %if.then49.i.i.do.cond_crit_edge
    i32 -32, label %if.then49.i.i.if.then.i118_crit_edge
    i32 -104, label %if.then49.i.i.if.then.i118_crit_edge418
  ]

if.then49.i.i.if.then.i118_crit_edge418:          ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i118

if.then49.i.i.if.then.i118_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i118

if.then49.i.i.do.cond_crit_edge:                  ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then.i118:                                     ; preds = %if.then49.i.i.if.then.i118_crit_edge, %if.then49.i.i.if.then.i118_crit_edge418
  %954 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %add.ptr, align 8
  %call.i117 = call i32 @kernel_sock_shutdown(ptr noundef %955, i32 noundef 2) #10
  br label %cleanup

if.else.i122:                                     ; preds = %if.then49.i.i
  %956 = ptrtoint ptr %rcv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %956)
  store i32 3, ptr %rcv_state.i.i, align 4
  %957 = ptrtoint ptr %nvme_sq.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %nvme_sq.i143.i.i.i, align 8
  %tobool.not.i.i121 = icmp eq ptr %958, null
  br i1 %tobool.not.i.i121, label %if.else.i.i125, label %if.then.i.i123

if.then.i.i123:                                   ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %958) #10
  br label %cleanup

if.else.i.i125:                                   ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #12
  %959 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %add.ptr, align 8
  %call.i.i124 = call i32 @kernel_sock_shutdown(ptr noundef %960, i32 noundef 2) #10
  br label %cleanup

if.end6.i:                                        ; preds = %done_send.i.i.if.end6.i_crit_edge, %if.end.i.i.i.i217.i.i, %if.end.i.i215.i.i.if.end6.i_crit_edge, %nvmet_tcp_free_cmd_buffers.exit.i210.i.i.if.end6.i_crit_edge, %if.end41.i.i.if.end6.i_crit_edge
  %inc.i103 = add i32 %ops.3, 1
  %inc7.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i104 = icmp eq i32 %inc7.i, 8
  br i1 %exitcond.not.i104, label %if.end6.i.land.rhs_crit_edge, label %if.end6.i.for.body.i33_crit_edge

if.end6.i.for.body.i33_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i33

if.end6.i.land.rhs_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.cond:                                          ; preds = %if.then49.i.i.do.cond_crit_edge, %if.end14.i201.i.i.do.cond_crit_edge, %if.end14.i176.i.i.do.cond_crit_edge, %if.end.i.i.i80.do.cond_crit_edge, %nvmet_tcp_fetch_cmd.exit.i.i.do.cond_crit_edge, %nvmet_tcp_process_resp_list.exit.i.i.i.do.cond_crit_edge
  br i1 %cmp, label %do.cond.land.rhs_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.cond.land.rhs_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %do.cond.land.rhs_crit_edge, %if.end6.i.land.rhs_crit_edge
  %ops.4140147 = phi i32 [ %ops.3, %do.cond.land.rhs_crit_edge ], [ %548, %if.end6.i.land.rhs_crit_edge ]
  %cmp12 = icmp slt i32 %ops.4140147, 64
  br i1 %cmp12, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.cond.do.end_crit_edge
  %pending.1.off0148 = phi i1 [ false, %do.cond.do.end_crit_edge ], [ true, %land.rhs.do.end_crit_edge ]
  %ops.4141 = phi i32 [ %ops.3, %do.cond.do.end_crit_edge ], [ %ops.4140147, %land.rhs.do.end_crit_edge ]
  %961 = load i32, ptr @idle_poll_period_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %961)
  %tobool.not.i = icmp eq i32 %961, 0
  br i1 %tobool.not.i, label %do.end.nvmet_tcp_check_queue_deadline.exit_crit_edge, label %if.end.i

do.end.nvmet_tcp_check_queue_deadline.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_check_queue_deadline.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ops.4141)
  %tobool1.not.i = icmp eq i32 %ops.4141, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %962 = load volatile i32, ptr @jiffies, align 128
  %call3.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %961) #10
  %add.i.i = add i32 %call3.i.i.i, %962
  %poll_end.i.i = getelementptr i8, ptr %w, i32 380
  %963 = ptrtoint ptr %poll_end.i.i to i32
  call void @__asan_store4_noabort(i32 %963)
  store i32 %add.i.i, ptr %poll_end.i.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %poll_end.i = getelementptr i8, ptr %w, i32 380
  %964 = ptrtoint ptr %poll_end.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load i32, ptr %poll_end.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %966 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %965, %966
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br label %nvmet_tcp_check_queue_deadline.exit

nvmet_tcp_check_queue_deadline.exit:              ; preds = %if.end3.i, %do.end.nvmet_tcp_check_queue_deadline.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i, %if.end3.i ], [ false, %do.end.nvmet_tcp_check_queue_deadline.exit_crit_edge ]
  %brmerge = or i1 %pending.1.off0148, %retval.0.i
  br i1 %brmerge, label %if.then15, label %nvmet_tcp_check_queue_deadline.exit.cleanup_crit_edge

nvmet_tcp_check_queue_deadline.exit.cleanup_crit_edge: ; preds = %nvmet_tcp_check_queue_deadline.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %nvmet_tcp_check_queue_deadline.exit
  call void @__sanitizer_cov_trace_pc() #12
  %967 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %add.ptr, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %968, i32 0, i32 4
  %969 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %sk.i, align 16
  %971 = getelementptr inbounds %struct.sock_common, ptr %970, i32 0, i32 18
  %972 = ptrtoint ptr %971 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load i32, ptr %971, align 8
  %974 = load ptr, ptr @nvmet_tcp_wq, align 4
  %call17 = call zeroext i1 @queue_work_on(i32 noundef %973, ptr noundef %974, ptr noundef %w) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %nvmet_tcp_check_queue_deadline.exit.cleanup_crit_edge, %if.else.i.i125, %if.then.i.i123, %if.then.i118, %if.else.i.i, %if.then.i.i115, %if.then.i112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_tcp_alloc_cmd(ptr noundef %queue, ptr noundef %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_digest.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue, i32 0, i32 17
  %0 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr_digest.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %conv.i = select i1 %tobool.not.i, i32 0, i32 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %c, align 8
  %port = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %nport = getelementptr inbounds %struct.nvmet_tcp_port, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nport, align 4
  %port2 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 1, i32 13
  %7 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %port2, align 8
  %pf_cache = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue, i32 0, i32 30
  %add = or i32 %conv.i, 72
  %call.i = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache, i32 noundef %add, i32 noundef 3520, i32 noundef -1) #10
  %cmd_pdu = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_pdu to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %cmd_pdu, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 1
  %cmd = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd, ptr %req, align 8
  %add10 = or i32 %conv.i, 24
  %call.i67 = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache, i32 noundef %add10, i32 noundef 3520, i32 noundef -1) #10
  %rsp_pdu = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 3
  %10 = ptrtoint ptr %rsp_pdu to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i67, ptr %rsp_pdu, align 4
  %tobool13.not = icmp eq ptr %call.i67, null
  br i1 %tobool13.not, label %if.end.out_free_cmd_crit_edge, label %if.end15

if.end.out_free_cmd_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_cmd

if.end15:                                         ; preds = %if.end
  %cqe = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %call.i67, i32 0, i32 1
  %cqe18 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %cqe18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cqe, ptr %cqe18, align 4
  %call.i68 = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache, i32 noundef %add10, i32 noundef 3520, i32 noundef -1) #10
  %data_pdu = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 4
  %12 = ptrtoint ptr %data_pdu to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i68, ptr %data_pdu, align 8
  %tobool24.not = icmp eq ptr %call.i68, null
  br i1 %tobool24.not, label %if.end15.out_free_rsp_crit_edge, label %if.end26

if.end15.out_free_rsp_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_rsp

if.end26:                                         ; preds = %if.end15
  %call.i69 = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache, i32 noundef %add10, i32 noundef 3520, i32 noundef -1) #10
  %r2t_pdu = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 5
  %13 = ptrtoint ptr %r2t_pdu to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i69, ptr %r2t_pdu, align 4
  %tobool32.not = icmp eq ptr %call.i69, null
  br i1 %tobool32.not, label %out_free_data, label %if.end34

if.end34:                                         ; preds = %if.end26
  %msg_flags = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16448, ptr %msg_flags, align 4
  %entry35 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 15
  %free_list = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %queue, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry35, ptr noundef %16, ptr noundef %free_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry35, ptr %prev.i, align 4
  %18 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_list, ptr %entry35, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %c, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry35, ptr %16, align 4
  br label %cleanup

out_free_data:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %data_pdu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_pdu, align 8
  tail call void @page_frag_free(ptr noundef %22) #10
  br label %out_free_rsp

out_free_rsp:                                     ; preds = %out_free_data, %if.end15.out_free_rsp_crit_edge
  %23 = ptrtoint ptr %rsp_pdu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rsp_pdu, align 4
  tail call void @page_frag_free(ptr noundef %24) #10
  br label %out_free_cmd

out_free_cmd:                                     ; preds = %out_free_rsp, %if.end.out_free_cmd_crit_edge
  %25 = ptrtoint ptr %cmd_pdu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_pdu, align 8
  tail call void @page_frag_free(ptr noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_cmd, %if.end.i.i, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_free_cmd ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_sq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_sq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_tcp_finish_cmd(ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1
  tail call void @nvmet_req_uninit(ptr noundef %req) #10
  %sg1.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg1.i, align 4
  %sg_idx.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %sg_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_idx.i, align 8
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %1, i32 %3
  %nr_mapped.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 11
  %4 = ptrtoint ptr %nr_mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i = icmp sgt i32 %5, 0
  br i1 %cmp10.i, label %entry.for.body.i_crit_edge, label %entry.nvmet_tcp_free_cmd_buffers.exit_crit_edge

entry.nvmet_tcp_free_cmd_buffers.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %kunmap.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %kunmap.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.scatterlist, ptr %arrayidx.i, i32 %i.011.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !178

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %and.i.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shr.i.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %shr.i.i.i, label %sg_page.exit.i.kunmap.exit.i_crit_edge [
    i32 2, label %sg_page.exit.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

sg_page.exit.i.if.end.i.i_crit_edge:              ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

sg_page.exit.i.kunmap.exit.i_crit_edge:           ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i

is_highmem_idx.exit.i.i:                          ; preds = %sg_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i.i.kunmap.exit.i_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit.i

is_highmem_idx.exit.i.i.if.end.i.i_crit_edge:     ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, %sg_page.exit.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %8) #10
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i.i.kunmap.exit.i_crit_edge, %sg_page.exit.i.kunmap.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %13 = ptrtoint ptr %nr_mapped.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_mapped.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %kunmap.exit.i.for.body.i_crit_edge, label %kunmap.exit.i.nvmet_tcp_free_cmd_buffers.exit_crit_edge

kunmap.exit.i.nvmet_tcp_free_cmd_buffers.exit_crit_edge: ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit

kunmap.exit.i.for.body.i_crit_edge:               ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

nvmet_tcp_free_cmd_buffers.exit:                  ; preds = %kunmap.exit.i.nvmet_tcp_free_cmd_buffers.exit_crit_edge, %entry.nvmet_tcp_free_cmd_buffers.exit_crit_edge
  %15 = ptrtoint ptr %nr_mapped.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr_mapped.i, align 4
  %iov.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 13
  %16 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iov.i, align 8
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg1.i, align 4
  tail call void @sgl_free(ptr noundef %19) #10
  %20 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %iov.i, align 8
  %21 = ptrtoint ptr %sg1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sg1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ctrl_fatal_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_req_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_tcp_map_data(ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %length = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dptr = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 6
  %type = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 127
  br i1 %cmp.i.i, label %if.then.i, label %if.then3.nvme_is_write.exit_crit_edge, !prof !176

if.then3.nvme_is_write.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i = getelementptr inbounds %struct.nvmf_common_command, ptr %1, i32 0, i32 3
  br label %nvme_is_write.exit

nvme_is_write.exit:                               ; preds = %if.then.i, %if.then3.nvme_is_write.exit_crit_edge
  %retval.0.in.in.in.i = phi ptr [ %fctype.i, %if.then.i ], [ %1, %if.then3.nvme_is_write.exit_crit_edge ]
  %9 = ptrtoint ptr %retval.0.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %retval.0.in.in.i = load i8, ptr %retval.0.in.in.in.i, align 4
  %retval.0.in.i = and i8 %retval.0.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i)
  %retval.0.i.not = icmp eq i8 %retval.0.in.i, 0
  br i1 %retval.0.i.not, label %nvme_is_write.exit.cleanup_crit_edge, label %if.end7

nvme_is_write.exit.cleanup_crit_edge:             ; preds = %nvme_is_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %nvme_is_write.exit
  %port = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 13
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inline_data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %13)
  %cmp9 = icmp ugt i32 %4, %13
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %pdu_len = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 8
  %14 = ptrtoint ptr %pdu_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %pdu_len, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %transfer_len = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_len, align 8
  %add = add i32 %16, %4
  store i32 %add, ptr %transfer_len, align 8
  %conv15 = zext i32 %4 to i64
  %sg_cnt = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %call17 = tail call ptr @sgl_alloc(i64 noundef %conv15, i32 noundef 3264, ptr noundef %sg_cnt) #10
  %sg = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %sg, align 4
  %tobool21.not = icmp eq ptr %call17, null
  br i1 %tobool21.not, label %if.end13.cleanup_crit_edge, label %if.end23

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %cur_sg = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 18
  %18 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %cur_sg, align 8
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %22)
  %cmp.i.i.i = icmp eq i8 %22, 127
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end23.nvme_is_write.exit.i_crit_edge, !prof !176

if.end23.nvme_is_write.exit.i_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit.i

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %20, i32 0, i32 3
  br label %nvme_is_write.exit.i

nvme_is_write.exit.i:                             ; preds = %if.then.i.i, %if.end23.nvme_is_write.exit.i_crit_edge
  %retval.0.in.in.in.i.i = phi ptr [ %fctype.i.i, %if.then.i.i ], [ %20, %if.end23.nvme_is_write.exit.i_crit_edge ]
  %23 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %retval.0.in.in.i.i = load i8, ptr %retval.0.in.in.in.i.i, align 4
  %retval.0.in.i.i = and i8 %retval.0.in.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i)
  %retval.0.i.not.i = icmp eq i8 %retval.0.in.i.i, 0
  br i1 %retval.0.i.not.i, label %nvme_is_write.exit.i.cleanup_crit_edge, label %nvmet_tcp_has_data_in.exit

nvme_is_write.exit.i.cleanup_crit_edge:           ; preds = %nvme_is_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_tcp_has_data_in.exit:                       ; preds = %nvme_is_write.exit.i
  %rbytes_done.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 6
  %24 = ptrtoint ptr %rbytes_done.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rbytes_done.i, align 8
  %26 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i = icmp ult i32 %25, %27
  br i1 %cmp.i, label %if.then27, label %nvmet_tcp_has_data_in.exit.cleanup_crit_edge

nvmet_tcp_has_data_in.exit.cleanup_crit_edge:     ; preds = %nvmet_tcp_has_data_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %nvmet_tcp_has_data_in.exit
  %28 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_cnt, align 8
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 8) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !176

kmalloc_array.exit.thread:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %iov63 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %iov63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %iov63, align 8
  br label %err

if.end7.i:                                        ; preds = %if.then27
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #15
  %iov = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 13
  %34 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i, ptr %iov, align 8
  %tobool32.not = icmp eq ptr %call8.i, null
  br i1 %tobool32.not, label %if.end7.i.err_crit_edge, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.err_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

err:                                              ; preds = %if.end7.i.err_crit_edge, %kmalloc_array.exit.thread
  %iov65 = phi ptr [ %iov63, %kmalloc_array.exit.thread ], [ %iov, %if.end7.i.err_crit_edge ]
  %nr_mapped.i = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 11
  %35 = ptrtoint ptr %nr_mapped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i60 = icmp sgt i32 %36, 0
  br i1 %cmp.i60, label %do.end.i, label %err.nvmet_tcp_free_cmd_buffers.exit_crit_edge, !prof !176

err.nvmet_tcp_free_cmd_buffers.exit_crit_edge:    ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_free_cmd_buffers.exit

do.end.i:                                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef 9, ptr noundef null) #10
  br label %nvmet_tcp_free_cmd_buffers.exit

nvmet_tcp_free_cmd_buffers.exit:                  ; preds = %do.end.i, %err.nvmet_tcp_free_cmd_buffers.exit_crit_edge
  %37 = ptrtoint ptr %iov65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iov65, align 8
  tail call void @kfree(ptr noundef %38) #10
  %39 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg, align 4
  tail call void @sgl_free(ptr noundef %40) #10
  %41 = ptrtoint ptr %iov65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %iov65, align 8
  %42 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %sg, align 4
  br label %cleanup

cleanup:                                          ; preds = %nvmet_tcp_free_cmd_buffers.exit, %if.end7.i.cleanup_crit_edge, %nvmet_tcp_has_data_in.exit.cleanup_crit_edge, %nvme_is_write.exit.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %nvme_is_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %nvmet_tcp_free_cmd_buffers.exit ], [ 0, %entry.cleanup_crit_edge ], [ 16386, %nvme_is_write.exit.cleanup_crit_edge ], [ 16406, %if.end7.cleanup_crit_edge ], [ 6, %if.end13.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ], [ 0, %nvmet_tcp_has_data_in.exit.cleanup_crit_edge ], [ 0, %nvme_is_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_tcp_map_pdu_iovec(ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iov1 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %iov1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov1, align 8
  %pdu_len = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 8
  %2 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdu_len, align 8
  %sub = add i32 %3, 4095
  %div39 = lshr i32 %sub, 12
  %nr_mapped = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 11
  %4 = ptrtoint ptr %nr_mapped to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div39, ptr %nr_mapped, align 4
  %rbytes_done = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %rbytes_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rbytes_done, align 8
  %div240 = lshr i32 %6, 12
  %sg_idx = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 10
  %7 = ptrtoint ptr %sg_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div240, ptr %sg_idx, align 8
  %rem = and i32 %6, 4095
  %sg3 = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %sg3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg3, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %9, i32 %div240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not41 = icmp eq i32 %3, 0
  br i1 %tobool.not41, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %length5.peel = getelementptr %struct.scatterlist, ptr %9, i32 %div240, i32 2
  %10 = ptrtoint ptr %length5.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length5.peel, align 4
  %sub6.peel = sub i32 %11, %rem
  %12 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub6.peel)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and.i.i.peel = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.peel)
  %tobool.i.not.i.peel = icmp eq i32 %and.i.i.peel, 0
  br i1 %tobool.i.not.i.peel, label %sg_page.exit.peel, label %while.body.preheader.do.body2.i_crit_edge, !prof !178

while.body.preheader.do.body2.i_crit_edge:        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

sg_page.exit.peel:                                ; preds = %while.body.preheader
  %and.i.peel = and i32 %14, -4
  %15 = inttoptr i32 %and.i.peel to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %shr.i.i.peel = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %shr.i.i.peel, label %sg_page.exit.peel.if.then.i.peel_crit_edge [
    i32 2, label %sg_page.exit.peel.if.else.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i.peel
  ]

sg_page.exit.peel.if.else.i.peel_crit_edge:       ; preds = %sg_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.peel

sg_page.exit.peel.if.then.i.peel_crit_edge:       ; preds = %sg_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel:                       ; preds = %sg_page.exit.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i.peel = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i.peel, label %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, label %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge

is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.peel

if.else.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, %sg_page.exit.peel.if.else.i.peel_crit_edge
  %call6.i.peel = tail call ptr @kmap_high(ptr noundef %15) #10
  br label %kmap.exit.peel

if.then.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge, %sg_page.exit.peel.if.then.i.peel_crit_edge
  %call5.i.peel = tail call ptr @page_address(ptr noundef %15) #10
  br label %kmap.exit.peel

kmap.exit.peel:                                   ; preds = %if.then.i.peel, %if.else.i.peel
  %addr.0.i.peel = phi ptr [ %call6.i.peel, %if.else.i.peel ], [ %call5.i.peel, %if.then.i.peel ]
  %offset8.peel = getelementptr %struct.scatterlist, ptr %9, i32 %div240, i32 1
  %20 = ptrtoint ptr %offset8.peel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset8.peel, align 4
  %add.ptr.peel = getelementptr i8, ptr %addr.0.i.peel, i32 %21
  %add.ptr9.peel = getelementptr i8, ptr %add.ptr.peel, i32 %rem
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr9.peel, ptr %1, align 4
  %iov_len10.peel = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %iov_len10.peel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %12, ptr %iov_len10.peel, align 4
  %sub11.peel = sub i32 %3, %12
  %call12.peel = tail call ptr @sg_next(ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.peel)
  %tobool.not.peel = icmp eq i32 %sub11.peel, 0
  br i1 %tobool.not.peel, label %kmap.exit.peel.while.end_crit_edge, label %kmap.exit.peel.while.body_crit_edge

kmap.exit.peel.while.body_crit_edge:              ; preds = %kmap.exit.peel
  br label %while.body

kmap.exit.peel.while.end_crit_edge:               ; preds = %kmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %kmap.exit.while.body_crit_edge, %kmap.exit.peel.while.body_crit_edge
  %iov.045.pn = phi ptr [ %iov.045, %kmap.exit.while.body_crit_edge ], [ %1, %kmap.exit.peel.while.body_crit_edge ]
  %sg.043 = phi ptr [ %call12, %kmap.exit.while.body_crit_edge ], [ %call12.peel, %kmap.exit.peel.while.body_crit_edge ]
  %length.042 = phi i32 [ %sub11, %kmap.exit.while.body_crit_edge ], [ %sub11.peel, %kmap.exit.peel.while.body_crit_edge ]
  %iov.045 = getelementptr %struct.kvec, ptr %iov.045.pn, i32 1
  %length5 = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 2
  %24 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length5, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %length.042, i32 %25)
  %27 = ptrtoint ptr %sg.043 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg.043, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %while.body.do.body2.i_crit_edge, !prof !178

while.body.do.body2.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %while.body.do.body2.i_crit_edge, %while.body.preheader.do.body2.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i = and i32 %28, -4
  %29 = inttoptr i32 %and.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shr.i.i = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %shr.i.i, label %sg_page.exit.if.then.i_crit_edge [
    i32 2, label %sg_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.if.else.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sg_page.exit.if.then.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %sg_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %29) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %sg_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %29) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %offset8 = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 1
  %34 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset8, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %35
  %36 = ptrtoint ptr %iov.045 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %iov.045, align 4
  %iov_len10 = getelementptr %struct.kvec, ptr %iov.045.pn, i32 1, i32 1
  %37 = ptrtoint ptr %iov_len10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %26, ptr %iov_len10, align 4
  %sub11 = sub i32 %length.042, %26
  %call12 = tail call ptr @sg_next(ptr noundef %sg.043) #10
  %tobool.not = icmp eq i32 %sub11, 0
  br i1 %tobool.not, label %kmap.exit.while.end_crit_edge, label %kmap.exit.while.body_crit_edge, !llvm.loop !187

kmap.exit.while.body_crit_edge:                   ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

kmap.exit.while.end_crit_edge:                    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %kmap.exit.while.end_crit_edge, %kmap.exit.peel.while.end_crit_edge, %entry.while.end_crit_edge
  %msg_iter = getelementptr inbounds %struct.nvmet_tcp_cmd, ptr %cmd, i32 0, i32 12, i32 2
  %38 = ptrtoint ptr %iov1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iov1, align 8
  %40 = ptrtoint ptr %nr_mapped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_mapped, align 4
  %42 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdu_len, align 8
  tail call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef %39, i32 noundef %41, i32 noundef %43) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sgl_alloc(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_frag_alloc_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getpeername(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_tos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_data_ready(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !176

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk.i, align 16
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 18
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = load ptr, ptr @nvmet_tcp_wq, align 4
  %io_work = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @queue_work_on(i32 noundef %8, ptr noundef %9, ptr noundef %io_work) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_state_change(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %3, label %do.end [
    i8 4, label %if.end.sw.bb_crit_edge
    i8 8, label %if.end.sw.bb_crit_edge11
    i8 7, label %if.end.sw.bb_crit_edge12
  ]

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge11:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge11, %if.end.sw.bb_crit_edge12
  %state_lock.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %state_lock.i) #10
  %state.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 2
  br i1 %cmp.not.i, label %sw.bb.nvmet_tcp_schedule_release_queue.exit_crit_edge, label %if.then.i

sw.bb.nvmet_tcp_schedule_release_queue.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_tcp_schedule_release_queue.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state.i, align 4
  %release_work.i = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %release_work.i) #10
  br label %nvmet_tcp_schedule_release_queue.exit

nvmet_tcp_schedule_release_queue.exit:            ; preds = %if.then.i, %sw.bb.nvmet_tcp_schedule_release_queue.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #10
  br label %done

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  %conv3 = zext i8 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %10, i32 noundef %conv3) #14
  br label %done

done:                                             ; preds = %do.end, %nvmet_tcp_schedule_release_queue.exit, %entry.done_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_tcp_write_space(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !176

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then10, label %if.end11, !prof !176

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %write_space = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %write_space to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_space, align 8
  tail call void %5(ptr noundef %sk) #10
  br label %out

if.end11:                                         ; preds = %if.end
  %sk_sndbuf.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %6 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  %sk_wmem_queued.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %8 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  %10 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %shr.i.i.i = ashr i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %shr.i.i.i)
  %cmp.not.i.i = icmp slt i32 %sub.i.i.i, %shr.i.i.i
  br i1 %cmp.not.i.i, label %if.end11.out_crit_edge, label %land.rhs.i.i

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.i.i:                                     ; preds = %if.end11
  %11 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %13 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i.i.i = icmp slt i32 %12, %14
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %land.rhs.i.i.out_crit_edge

land.rhs.i.i.out_crit_edge:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot.i.i.i, align 8
  %stream_memory_free.i.i.i = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 28
  %17 = ptrtoint ptr %stream_memory_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream_memory_free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then12_crit_edge, label %sk_stream_is_writeable.exit

if.end.i.i.i.if.then12_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

sk_stream_is_writeable.exit:                      ; preds = %if.end.i.i.i
  %call.i.i.i = tail call zeroext i1 %18(ptr noundef %sk, i32 noundef 0) #10
  br i1 %call.i.i.i, label %sk_stream_is_writeable.exit.if.then12_crit_edge, label %sk_stream_is_writeable.exit.out_crit_edge

sk_stream_is_writeable.exit.out_crit_edge:        ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sk_stream_is_writeable.exit.if.then12_crit_edge:  ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %sk_stream_is_writeable.exit.if.then12_crit_edge, %if.end.i.i.i.if.then12_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %19 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk.i, align 16
  %25 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 18
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %28 = load ptr, ptr @nvmet_tcp_wq, align 4
  %io_work = getelementptr inbounds %struct.nvmet_tcp_queue, ptr %1, i32 0, i32 2
  %call14 = tail call zeroext i1 @queue_work_on(i32 noundef %27, ptr noundef %28, ptr noundef %io_work) #10
  br label %out

out:                                              ; preds = %if.then12, %sk_stream_is_writeable.exit.out_crit_edge, %land.rhs.i.i.out_crit_edge, %if.end11.out_crit_edge, %if.then10, %entry.out_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_addr_is_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !154, !155, !156, !157, !159, !161, !162, !163, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__param_so_priority, !1, !"__param_so_priority", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/tcp.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_so_prioritytype623, !1, !"__UNIQUE_ID_so_prioritytype623", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_so_priority624, !4, !"__UNIQUE_ID_so_priority624", i1 false, i1 false}
!4 = !{!"../drivers/nvme/target/tcp.c", i32 30, i32 1}
!5 = !{ptr @__param_idle_poll_period_usecs, !6, !"__param_idle_poll_period_usecs", i1 false, i1 false}
!6 = !{!"../drivers/nvme/target/tcp.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_idle_poll_period_usecstype625, !6, !"__UNIQUE_ID_idle_poll_period_usecstype625", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_idle_poll_period_usecs626, !9, !"__UNIQUE_ID_idle_poll_period_usecs626", i1 false, i1 false}
!9 = !{!"../drivers/nvme/target/tcp.c", i32 39, i32 1}
!10 = !{ptr @__initcall__kmod_nvmet_tcp__632_1889_nvmet_tcp_init6, !11, !"__initcall__kmod_nvmet_tcp__632_1889_nvmet_tcp_init6", i1 false, i1 false}
!11 = !{!"../drivers/nvme/target/tcp.c", i32 1889, i32 1}
!12 = !{ptr @__exitcall_nvmet_tcp_exit, !13, !"__exitcall_nvmet_tcp_exit", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/tcp.c", i32 1890, i32 1}
!14 = !{ptr @__UNIQUE_ID_file633, !15, !"__UNIQUE_ID_file633", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/tcp.c", i32 1892, i32 1}
!16 = !{ptr @__UNIQUE_ID_license634, !15, !"__UNIQUE_ID_license634", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias635, !18, !"__UNIQUE_ID_alias635", i1 false, i1 false}
!18 = !{!"../drivers/nvme/target/tcp.c", i32 1893, i32 1}
!19 = !{ptr @so_priority, !20, !"so_priority", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/tcp.c", i32 28, i32 12}
!21 = !{ptr @idle_poll_period_usecs, !22, !"idle_poll_period_usecs", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/tcp.c", i32 37, i32 12}
!23 = !{ptr @nvmet_tcp_wq, !24, !"nvmet_tcp_wq", i1 false, i1 false}
!24 = !{!"../drivers/nvme/target/tcp.c", i32 165, i32 33}
!25 = !{ptr @__param_str_so_priority, !1, !"__param_str_so_priority", i1 false, i1 false}
!26 = !{ptr @__param_str_idle_poll_period_usecs, !6, !"__param_str_idle_poll_period_usecs", i1 false, i1 false}
!27 = !{ptr @nvmet_tcp_ops, !28, !"nvmet_tcp_ops", i1 false, i1 false}
!28 = !{!"../drivers/nvme/target/tcp.c", i32 1843, i32 39}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nvme/target/tcp.c", i32 1710, i32 3}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nvmet_tcp_add_port._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvmet_tcp_add_port._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nvme/target/tcp.c", i32 1719, i32 3}
!37 = !{ptr @nvmet_tcp_add_port._entry.3, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvmet_tcp_add_port._entry_ptr.5, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @nvmet_tcp_add_port.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/nvme/target/tcp.c", i32 1725, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nvme/target/tcp.c", i32 1732, i32 3}
!44 = !{ptr @nvmet_tcp_add_port._entry.7, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvmet_tcp_add_port._entry_ptr.9, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nvme/target/tcp.c", i32 1747, i32 3}
!48 = !{ptr @nvmet_tcp_add_port._entry.10, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvmet_tcp_add_port._entry_ptr.12, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvme/target/tcp.c", i32 1753, i32 3}
!52 = !{ptr @nvmet_tcp_add_port._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvmet_tcp_add_port._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/nvme/target/tcp.c", i32 1758, i32 2}
!56 = !{ptr @nvmet_tcp_add_port._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvmet_tcp_add_port._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/nvme/target/tcp.c", i32 1666, i32 5}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nvmet_tcp_accept_work._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvmet_tcp_accept_work._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nvme/target/tcp.c", i32 1671, i32 4}
!65 = !{ptr @nvmet_tcp_accept_work._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @nvmet_tcp_accept_work._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @nvmet_tcp_alloc_queue.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/nvme/target/tcp.c", i32 1605, i32 2}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvmet_tcp_alloc_queue.__key.25, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/nvme/target/tcp.c", i32 1606, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nvmet_tcp_alloc_queue.__key.27, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/nvme/target/tcp.c", i32 1610, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nvme/target/tcp.c", i32 1107, i32 4}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nvmet_tcp_try_recv_pdu._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvmet_tcp_try_recv_pdu._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/tcp.c", i32 1113, i32 4}
!85 = !{ptr @nvmet_tcp_try_recv_pdu._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nvmet_tcp_try_recv_pdu._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @nvme_tcp_pdu_sizes, !88, !"nvme_tcp_pdu_sizes", i1 false, i1 false}
!88 = !{!"../drivers/nvme/target/tcp.c", i32 1055, i32 17}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/nvme/target/tcp.c", i32 267, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nvmet_tcp_verify_hdgst._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nvmet_tcp_verify_hdgst._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/nvme/target/tcp.c", i32 276, i32 3}
!96 = !{ptr @nvmet_tcp_verify_hdgst._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nvmet_tcp_verify_hdgst._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/nvme/target/tcp.c", i32 295, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @nvmet_tcp_check_ddgst._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @nvmet_tcp_check_ddgst._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/nvme/target/tcp.c", i32 988, i32 4}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nvmet_tcp_done_recv_pdu._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nvmet_tcp_done_recv_pdu._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nvme/target/tcp.c", i32 1006, i32 3}
!110 = !{ptr @nvmet_tcp_done_recv_pdu._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nvmet_tcp_done_recv_pdu._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/nvme/target/tcp.c", i32 1018, i32 3}
!114 = !{ptr @nvmet_tcp_done_recv_pdu._entry.47, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @nvmet_tcp_done_recv_pdu._entry_ptr.49, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/nvme/target/tcp.c", i32 1029, i32 3}
!118 = !{ptr @nvmet_tcp_done_recv_pdu._entry.50, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @nvmet_tcp_done_recv_pdu._entry_ptr.52, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/nvme/target/tcp.c", i32 867, i32 3}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @nvmet_tcp_handle_icreq._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @nvmet_tcp_handle_icreq._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/nvme/target/tcp.c", i32 873, i32 3}
!127 = !{ptr @nvmet_tcp_handle_icreq._entry.55, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @nvmet_tcp_handle_icreq._entry_ptr.57, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/nvme/target/tcp.c", i32 878, i32 3}
!131 = !{ptr @nvmet_tcp_handle_icreq._entry.58, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @nvmet_tcp_handle_icreq._entry_ptr.60, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/nvme/target/tcp.c", i32 835, i32 27}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/nvme/target/tcp.c", i32 961, i32 3}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @nvmet_tcp_handle_h2c_data_pdu._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @nvmet_tcp_handle_h2c_data_pdu._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nvme/target/tcp.c", i32 940, i32 3}
!142 = !{ptr @nvmet_tcp_handle_req_failure._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @nvmet_tcp_handle_req_failure._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/nvme/target/tcp.c", i32 1195, i32 3}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nvmet_tcp_try_recv_ddgst._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @nvmet_tcp_try_recv_ddgst._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/nvme/target/tcp.c", i32 161, i32 8}
!151 = !{ptr @nvmet_tcp_queue_ida, !150, !"nvmet_tcp_queue_ida", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/target/tcp.c", i32 1533, i32 3}
!154 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @nvmet_tcp_state_change._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @nvmet_tcp_state_change._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/nvme/target/tcp.c", i32 1837, i32 19}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/nvme/target/tcp.c", i32 163, i32 8}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @nvmet_tcp_queue_mutex, !160, !"nvmet_tcp_queue_mutex", i1 false, i1 false}
!163 = !{ptr @nvmet_tcp_queue_list, !164, !"nvmet_tcp_queue_list", i1 false, i1 false}
!164 = !{!"../drivers/nvme/target/tcp.c", i32 162, i32 8}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/nvme/target/tcp.c", i32 1859, i32 33}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{!"auto-init"}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{i64 2154925531, i64 2154926023, i64 2154925568, i64 2154925624, i64 2154925658, i64 2154925682, i64 2154925723, i64 2154925744, i64 2154925772, i64 2154925806}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!182 = !{!"branch_weights", i32 1073205, i32 2146410443}
!183 = !{!"branch_weights", i32 1, i32 4001}
!184 = !{i64 2149243977}
!185 = !{i64 891345, i64 891362, i64 891386, i64 891412, i64 891430}
!186 = !{i64 2149244330}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.peeled.count", i32 1}
