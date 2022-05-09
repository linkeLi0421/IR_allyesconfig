; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/tcp.c_pt.bc'
source_filename = "../drivers/nvme/host/tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.171 }
%union.anon.171 = type { ptr }
%struct.nvmf_transport_ops = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_tcp_ctrl = type { ptr, %struct.blk_mq_tag_set, %struct.list_head, %struct.blk_mq_tag_set, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.nvme_ctrl, %struct.work_struct, %struct.delayed_work, %struct.nvme_tcp_request, [3 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.205 }
%union.anon.205 = type { ptr, [124 x i8] }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvme_command = type { %union.anon.199 }
%union.anon.199 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.200 }
%struct.anon.200 = type { i64, i64 }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nvme_tcp_request = type { %struct.nvme_request, ptr, ptr, i32, i32, i32, i32, i32, i16, i16, %struct.list_head, %struct.llist_node, i32, ptr, %struct.iov_iter, i32, i32, i32 }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%union.nvme_result = type { i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.nvmf_ctrl_options = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, ptr, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.nvme_subsystem = type { i32, %struct.device, %struct.kref, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, [223 x i8], [20 x i8], [40 x i8], [8 x i8], i8, i32, i16, i16, %struct.ida, i32 }
%struct.ida = type { %struct.xarray }
%struct.nvme_tcp_queue = type { ptr, %struct.work_struct, i32, %struct.mutex, %struct.mutex, %struct.llist_head, %struct.list_head, i8, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i8, i8, i8, ptr, ptr, i32, i32, %struct.page_frag_cache, ptr, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.170, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.170 = type { %struct.atomic_t }
%struct.nvme_tcp_hdr = type { i8, i8, i8, i8, i32 }
%struct.nvme_tcp_cmd_pdu = type { %struct.nvme_tcp_hdr, %struct.nvme_command }
%struct.nvme_sgl_desc = type { i64, i32, [3 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.131, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.131 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvme_tcp_data_pdu = type { %struct.nvme_tcp_hdr, i16, i16, i32, i32, [4 x i8] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.nvme_tcp_icreq_pdu = type { %struct.nvme_tcp_hdr, i16, i8, i8, i32, [112 x i8] }
%struct.nvme_tcp_icresp_pdu = type { %struct.nvme_tcp_hdr, i16, i8, i8, i32, [112 x i8] }
%struct.read_descriptor_t = type { i32, i32, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.132, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.133, %union.anon.134, %union.anon.135, %union.anon.140, ptr, ptr }
%union.anon.132 = type { %struct.list_head }
%union.anon.133 = type { %struct.hlist_node }
%union.anon.134 = type { %struct.rb_node }
%union.anon.135 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, %struct.list_head, ptr }
%union.anon.140 = type { i64, [8 x i8] }
%struct.nvme_tcp_rsp_pdu = type { %struct.nvme_tcp_hdr, %struct.nvme_completion }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%struct.nvme_tcp_r2t_pdu = type { %struct.nvme_tcp_hdr, i16, i16, i32, i32, [4 x i8] }
%struct.blk_mq_hw_ctx = type { %struct.anon.177, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.177 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.155, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%union.anon.155 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_so_priority = internal constant [21 x i8] c"nvme_tcp.so_priority\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@so_priority = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_so_priority = internal constant %struct.kernel_param { ptr @__param_str_so_priority, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @so_priority } }, section "__param", align 4
@__UNIQUE_ID_so_prioritytype671 = internal constant [34 x i8] c"nvme_tcp.parmtype=so_priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_so_priority672 = internal constant [60 x i8] c"nvme_tcp.parm=so_priority:nvme tcp socket optimize priority\00", section ".modinfo", align 1
@nvme_tcp_transport = internal global { %struct.nvmf_transport_ops, [36 x i8] } { %struct.nvmf_transport_ops { %struct.list_head zeroinitializer, ptr null, ptr @.str, i32 4, i32 3116552, ptr @nvme_tcp_create_ctrl }, [36 x i8] zeroinitializer }, align 32
@nvme_tcp_ctrl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.156, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvme_tcp_ctrl_mutex, i64 52), ptr getelementptr (i8, ptr @nvme_tcp_ctrl_mutex, i64 52) }, ptr @nvme_tcp_ctrl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.157, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvme_tcp_ctrl_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvme_tcp_ctrl_list, ptr @nvme_tcp_ctrl_list }, [24 x i8] zeroinitializer }, align 32
@nvme_delete_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_tcp_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nvme_tcp__702_2690_nvme_tcp_init_module6 = internal global ptr @nvme_tcp_init_module, section ".initcall6.init", align 4
@__exitcall_nvme_tcp_cleanup_module = internal global ptr @nvme_tcp_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file703 = internal constant [41 x i8] c"nvme_tcp.file=drivers/nvme/host/nvme-tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license704 = internal constant [24 x i8] c"nvme_tcp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ctrl->connect_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ctrl->connect_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ctrl->err_work)\00", [61 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&ctrl->ctrl.reset_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8009\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@nvme_tcp_create_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 2581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013nvme_tcp: malformed address passed: %s:%s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_tcp_create_ctrl\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nvme/host/tcp.c\00", [40 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl._entry_ptr = internal global ptr @nvme_tcp_create_ctrl._entry, section ".printk_index", align 4
@nvme_tcp_create_ctrl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 2590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvme_tcp: malformed src address passed: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl._entry_ptr.14 = internal global ptr @nvme_tcp_create_ctrl._entry.12, section ".printk_index", align 4
@nvme_tcp_create_ctrl._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 2598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nvme_tcp: invalid interface passed: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl._entry_ptr.17 = internal global ptr @nvme_tcp_create_ctrl._entry.15, section ".printk_index", align 4
@nvme_tcp_ctrl_ops = internal constant { %struct.nvme_ctrl_ops, [56 x i8] } { %struct.nvme_ctrl_ops { ptr @.str, ptr null, i32 1, ptr @nvmf_reg_read32, ptr @nvmf_reg_write32, ptr @nvmf_reg_read64, ptr @nvme_tcp_free_ctrl, ptr @nvme_tcp_submit_async_event, ptr @nvme_tcp_delete_ctrl, ptr @nvmf_get_address }, [56 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_tcp_create_ctrl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 2631, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"new ctrl: NQN \22%s\22, addr %pISp\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_tcp_create_ctrl._entry_ptr.22 = internal global ptr @nvme_tcp_create_ctrl._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_tcp_reconnect_ctrl_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 2122, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Successfully reconnected (%d attempt)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_tcp_reconnect_ctrl_work\00", [35 x i8] zeroinitializer }, align 32
@nvme_tcp_reconnect_ctrl_work._entry_ptr = internal global ptr @nvme_tcp_reconnect_ctrl_work._entry, section ".printk_index", align 4
@nvme_tcp_reconnect_ctrl_work._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.11, i32 2130, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed reconnect attempt %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nvme_tcp_reconnect_ctrl_work._entry_ptr.27 = internal global ptr @nvme_tcp_reconnect_ctrl_work._entry.25, section ".printk_index", align 4
@nvme_tcp_reconnect_or_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_tcp_reconnect_or_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.11, i32 2029, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reconnecting in %d seconds...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_tcp_reconnect_or_remove\00", [35 x i8] zeroinitializer }, align 32
@nvme_tcp_reconnect_or_remove._entry_ptr = internal global ptr @nvme_tcp_reconnect_or_remove._entry, section ".printk_index", align 4
@nvme_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_tcp_reconnect_or_remove._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.11, i32 2033, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Removing controller...\0A\00", [40 x i8] zeroinitializer }, align 32
@nvme_tcp_reconnect_or_remove._entry_ptr.32 = internal global ptr @nvme_tcp_reconnect_or_remove._entry.30, section ".printk_index", align 4
@nvme_tcp_error_recovery_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvme_reset_ctrl_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_tcp_try_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.11, i32 1144, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to send request %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_tcp_try_send\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_tcp_try_send._entry_ptr = internal global ptr @nvme_tcp_try_send._entry, section ".printk_index", align 4
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.11, i32 2049, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"icdoff is not supported!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_tcp_setup_ctrl\00", [44 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_ctrl._entry_ptr = internal global ptr @nvme_tcp_setup_ctrl._entry, section ".printk_index", align 4
@nvme_tcp_setup_ctrl._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.11, i32 2055, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Mandatory sgls are not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_ctrl._entry_ptr.41 = internal global ptr @nvme_tcp_setup_ctrl._entry.39, section ".printk_index", align 4
@nvme_tcp_setup_ctrl._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.11, i32 2062, ptr @.str.44, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"queue_size %zu > ctrl sqsize %u, clamping down\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_ctrl._entry_ptr.45 = internal global ptr @nvme_tcp_setup_ctrl._entry.42, section ".printk_index", align 4
@nvme_tcp_setup_ctrl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.11, i32 2067, ptr @.str.44, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sqsize %u > ctrl maxcmd %u, clamping down\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_ctrl._entry_ptr.48 = internal global ptr @nvme_tcp_setup_ctrl._entry.46, section ".printk_index", align 4
@nvme_tcp_setup_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_tcp_setup_ctrl.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_tcp_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&queue->queue_lock\00", [45 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&queue->send_mutex\00", [45 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&queue->io_work)\00", [61 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.11, i32 1468, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create socket: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_tcp_alloc_queue\00", [43 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry_ptr = internal global ptr @nvme_tcp_alloc_queue._entry, section ".printk_index", align 4
@nvme_tcp_alloc_queue._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.11, i32 1510, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to bind queue %d socket %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry_ptr.59 = internal global ptr @nvme_tcp_alloc_queue._entry.57, section ".printk_index", align 4
@nvme_tcp_alloc_queue._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.11, i32 1524, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to bind to interface %s queue %d err %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry_ptr.62 = internal global ptr @nvme_tcp_alloc_queue._entry.60, section ".printk_index", align 4
@nvme_tcp_alloc_queue._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.11, i32 1535, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate queue %d crypto\0A\00", [60 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry_ptr.65 = internal global ptr @nvme_tcp_alloc_queue._entry.63, section ".printk_index", align 4
@nvme_tcp_alloc_queue.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.56, ptr @.str.11, ptr @.str.67, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvme_tcp\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"connecting queue %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.11, i32 1555, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to connect socket: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_queue._entry_ptr.70 = internal global ptr @nvme_tcp_alloc_queue._entry.68, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nvme_tcp_recv_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.11, i32 858, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"receive failed:  %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_tcp_recv_skb\00", [46 x i8] zeroinitializer }, align 32
@nvme_tcp_recv_skb._entry_ptr = internal global ptr @nvme_tcp_recv_skb._entry, section ".printk_index", align 4
@nvme_tcp_recv_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.11, i32 706, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported pdu type (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_tcp_recv_pdu\00", [46 x i8] zeroinitializer }, align 32
@nvme_tcp_recv_pdu._entry_ptr = internal global ptr @nvme_tcp_recv_pdu._entry, section ".printk_index", align 4
@nvme_tcp_verify_hdgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.11, i32 380, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"queue %d: header digest flag is cleared\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_tcp_verify_hdgst\00", [42 x i8] zeroinitializer }, align 32
@nvme_tcp_verify_hdgst._entry_ptr = internal global ptr @nvme_tcp_verify_hdgst._entry, section ".printk_index", align 4
@nvme_tcp_verify_hdgst._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.11, i32 390, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"header digest error: recv %#x expected %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@nvme_tcp_verify_hdgst._entry_ptr.79 = internal global ptr @nvme_tcp_verify_hdgst._entry.77, section ".printk_index", align 4
@nvme_tcp_check_ddgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.11, i32 409, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"queue %d: data digest flag is cleared\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_tcp_check_ddgst\00", [43 x i8] zeroinitializer }, align 32
@nvme_tcp_check_ddgst._entry_ptr = internal global ptr @nvme_tcp_check_ddgst._entry, section ".printk_index", align 4
@nvme_tcp_handle_c2h_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.11, i32 531, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"got bad c2hdata.command_id %#x on queue %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_tcp_handle_c2h_data\00", [39 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_c2h_data._entry_ptr = internal global ptr @nvme_tcp_handle_c2h_data._entry, section ".printk_index", align 4
@nvme_tcp_handle_c2h_data._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.11, i32 538, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"queue %d tag %#x unexpected data\0A\00", [62 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_c2h_data._entry_ptr.86 = internal global ptr @nvme_tcp_handle_c2h_data._entry.84, section ".printk_index", align 4
@nvme_tcp_handle_c2h_data._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.11, i32 548, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"queue %d tag %#x SUCCESS set but not last PDU\0A\00", [49 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_c2h_data._entry_ptr.89 = internal global ptr @nvme_tcp_handle_c2h_data._entry.87, section ".printk_index", align 4
@nvme_find_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.92, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nvme_tcp: could not locate request for tag %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_find_rq\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nvme/host/nvme.h\00", [39 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr = internal global ptr @nvme_find_rq._entry, section ".printk_index", align 4
@nvme_find_rq._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.92, i32 530, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"request %#x genctr mismatch (got %#x expected %#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr.95 = internal global ptr @nvme_find_rq._entry.93, section ".printk_index", align 4
@nvme_tcp_process_nvme_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.11, i32 506, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"got bad cqe.command_id %#x on queue %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_tcp_process_nvme_cqe\00", [38 x i8] zeroinitializer }, align 32
@nvme_tcp_process_nvme_cqe._entry_ptr = internal global ptr @nvme_tcp_process_nvme_cqe._entry, section ".printk_index", align 4
@nvme_tcp_handle_r2t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.11, i32 624, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"got bad r2t.command_id %#x on queue %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_tcp_handle_r2t\00", [44 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_r2t._entry_ptr = internal global ptr @nvme_tcp_handle_r2t._entry, section ".printk_index", align 4
@nvme_tcp_handle_r2t._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.11, i32 632, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"req %d r2t len is %u, probably a bug...\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_r2t._entry_ptr.102 = internal global ptr @nvme_tcp_handle_r2t._entry.100, section ".printk_index", align 4
@nvme_tcp_handle_r2t._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.11, i32 639, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"req %d r2t len %u exceeded data len %u (%zu sent)\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_r2t._entry_ptr.105 = internal global ptr @nvme_tcp_handle_r2t._entry.103, section ".printk_index", align 4
@nvme_tcp_handle_r2t._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.11, i32 646, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"req %d unexpected r2t offset %u (expected %zu)\0A\00", [48 x i8] zeroinitializer }, align 32
@nvme_tcp_handle_r2t._entry_ptr.108 = internal global ptr @nvme_tcp_handle_r2t._entry.106, section ".printk_index", align 4
@nvme_tcp_recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.11, i32 744, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"queue %d no space in request %#x\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_tcp_recv_data\00", [45 x i8] zeroinitializer }, align 32
@nvme_tcp_recv_data._entry_ptr = internal global ptr @nvme_tcp_recv_data._entry, section ".printk_index", align 4
@nvme_tcp_recv_data._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.11, i32 764, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"queue %d failed to copy request %#x data\00", [55 x i8] zeroinitializer }, align 32
@nvme_tcp_recv_data._entry_ptr.113 = internal global ptr @nvme_tcp_recv_data._entry.111, section ".printk_index", align 4
@nvme_tcp_recv_ddgst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.11, i32 819, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data digest error: recv %#x expected %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_tcp_recv_ddgst\00", [44 x i8] zeroinitializer }, align 32
@nvme_tcp_recv_ddgst._entry_ptr = internal global ptr @nvme_tcp_recv_ddgst._entry, section ".printk_index", align 4
@nvme_tcp_error_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.11, i32 492, ptr @.str.44, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting error recovery\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvme_tcp_error_recovery\00", [40 x i8] zeroinitializer }, align 32
@nvme_tcp_error_recovery._entry_ptr = internal global ptr @nvme_tcp_error_recovery._entry, section ".printk_index", align 4
@nvme_reset_wq = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.11, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_tcp: queue %d: bad type returned %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_tcp_init_connection\00", [39 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr = internal global ptr @nvme_tcp_init_connection._entry, section ".printk_index", align 4
@nvme_tcp_init_connection._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.11, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nvme_tcp: queue %d: bad pdu length returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.123 = internal global ptr @nvme_tcp_init_connection._entry.121, section ".printk_index", align 4
@nvme_tcp_init_connection._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.11, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvme_tcp: queue %d: bad pfv returned %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.126 = internal global ptr @nvme_tcp_init_connection._entry.124, section ".printk_index", align 4
@nvme_tcp_init_connection._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.120, ptr @.str.11, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013nvme_tcp: queue %d: data digest mismatch host: %s ctrl: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.129 = internal global ptr @nvme_tcp_init_connection._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.120, ptr @.str.11, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013nvme_tcp: queue %d: header digest mismatch host: %s ctrl: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.134 = internal global ptr @nvme_tcp_init_connection._entry.132, section ".printk_index", align 4
@nvme_tcp_init_connection._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.120, ptr @.str.11, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvme_tcp: queue %d: unsupported cpda returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.137 = internal global ptr @nvme_tcp_init_connection._entry.135, section ".printk_index", align 4
@nvme_tcp_init_connection._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.120, ptr @.str.11, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nvme_tcp: queue %d: invalid maxh2cdata returned %u\0A\00", [42 x i8] zeroinitializer }, align 32
@nvme_tcp_init_connection._entry_ptr.140 = internal global ptr @nvme_tcp_init_connection._entry.138, section ".printk_index", align 4
@nvme_tcp_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.11, i32 913, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"queue %d socket state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_tcp_state_change\00", [42 x i8] zeroinitializer }, align 32
@nvme_tcp_state_change._entry_ptr = internal global ptr @nvme_tcp_state_change._entry, section ".printk_index", align 4
@nvme_tcp_admin_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_tcp_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_tcp_timeout, ptr null, ptr @nvme_complete_rq, ptr @nvme_tcp_init_admin_hctx, ptr null, ptr @nvme_tcp_init_request, ptr @nvme_tcp_exit_request, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@admin_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_tcp_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_tcp_queue_rq, ptr @nvme_tcp_commit_rqs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_tcp_timeout, ptr @nvme_tcp_poll, ptr @nvme_complete_rq, ptr @nvme_tcp_init_hctx, ptr null, ptr @nvme_tcp_init_request, ptr @nvme_tcp_exit_request, ptr null, ptr null, ptr @nvme_tcp_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_io_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_tcp_setup_cmd_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.11, i32 2394, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map data (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvme_tcp_setup_cmd_pdu\00", [41 x i8] zeroinitializer }, align 32
@nvme_tcp_setup_cmd_pdu._entry_ptr = internal global ptr @nvme_tcp_setup_cmd_pdu._entry, section ".printk_index", align 4
@nvme_tcp_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.11, i32 2299, ptr @.str.44, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"queue %d: timeout request %#x type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvme_tcp_timeout\00", [47 x i8] zeroinitializer }, align 32
@nvme_tcp_timeout._entry_ptr = internal global ptr @nvme_tcp_timeout._entry, section ".printk_index", align 4
@nvme_tcp_map_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.11, i32 2473, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mapped %d/%d/%d default/read/poll queues.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_tcp_map_queues\00", [44 x i8] zeroinitializer }, align 32
@nvme_tcp_map_queues._entry_ptr = internal global ptr @nvme_tcp_map_queues._entry, section ".printk_index", align 4
@nvme_tcp_start_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.11, i32 1644, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to connect queue: %d ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_tcp_start_queue\00", [43 x i8] zeroinitializer }, align 32
@nvme_tcp_start_queue._entry_ptr = internal global ptr @nvme_tcp_start_queue._entry, section ".printk_index", align 4
@nvme_tcp_alloc_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.11, i32 1832, ptr @.str.35, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to set any I/O queues\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_tcp_alloc_io_queues\00", [39 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_io_queues._entry_ptr = internal global ptr @nvme_tcp_alloc_io_queues._entry, section ".printk_index", align 4
@nvme_tcp_alloc_io_queues._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.11, i32 1838, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"creating %d I/O queues.\0A\00", [39 x i8] zeroinitializer }, align 32
@nvme_tcp_alloc_io_queues._entry_ptr.155 = internal global ptr @nvme_tcp_alloc_io_queues._entry.153, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvme_tcp_ctrl_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_tcp_ctrl_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvme_tcp_wq\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 4294967192, i64 4294967264]
@__sancov_gen_cov_switch_values.160 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 7, i64 9]
@___asan_gen_.162 = private unnamed_addr constant [12 x i8] c"so_priority\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 29, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"nvme_tcp_transport\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2652, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"nvme_tcp_ctrl_mutex\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"nvme_tcp_ctrl_list\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 138, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"nvme_tcp_wq\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 140, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2653, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2562, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2564, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2565, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2569, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2580, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2589, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2597, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"nvme_tcp_ctrl_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2515, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2630, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2121, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2129, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2028, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2033, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1143, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 428, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2049, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2055, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2060, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2065, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1450, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1454, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1455, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1467, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1508, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1522, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1534, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1548, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1554, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 857, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 705, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 378, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 388, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 407, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 529, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 536, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 546, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 523, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [28 x i8] c"../drivers/nvme/host/nvme.h\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 528, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 504, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 622, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 630, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 637, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 644, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 742, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 762, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 816, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 492, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1214, i32 27 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1330, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1336, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1342, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1350, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1360, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1368, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1375, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 911, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant [22 x i8] c"nvme_tcp_admin_mq_ops\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2506, i32 32 }
@___asan_gen_.594 = private unnamed_addr constant [16 x i8] c"nvme_tcp_mq_ops\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2494, i32 32 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2393, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2297, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2469, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1643, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1831, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 1837, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 139, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.655 = private constant [27 x i8] c"../drivers/nvme/host/tcp.c\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 2666, i32 32 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @__UNIQUE_ID_file703, ptr @__UNIQUE_ID_license704, ptr @__UNIQUE_ID_so_priority672, ptr @__UNIQUE_ID_so_prioritytype671, ptr @__exitcall_nvme_tcp_cleanup_module, ptr @__initcall__kmod_nvme_tcp__702_2690_nvme_tcp_init_module6, ptr @__param_so_priority, ptr @nvme_find_rq._entry, ptr @nvme_find_rq._entry.93, ptr @nvme_find_rq._entry_ptr, ptr @nvme_find_rq._entry_ptr.95, ptr @nvme_tcp_alloc_io_queues._entry, ptr @nvme_tcp_alloc_io_queues._entry.153, ptr @nvme_tcp_alloc_io_queues._entry_ptr, ptr @nvme_tcp_alloc_io_queues._entry_ptr.155, ptr @nvme_tcp_alloc_queue._entry, ptr @nvme_tcp_alloc_queue._entry.57, ptr @nvme_tcp_alloc_queue._entry.60, ptr @nvme_tcp_alloc_queue._entry.63, ptr @nvme_tcp_alloc_queue._entry.68, ptr @nvme_tcp_alloc_queue._entry_ptr, ptr @nvme_tcp_alloc_queue._entry_ptr.59, ptr @nvme_tcp_alloc_queue._entry_ptr.62, ptr @nvme_tcp_alloc_queue._entry_ptr.65, ptr @nvme_tcp_alloc_queue._entry_ptr.70, ptr @nvme_tcp_check_ddgst._entry, ptr @nvme_tcp_check_ddgst._entry_ptr, ptr @nvme_tcp_cleanup_module, ptr @nvme_tcp_create_ctrl._entry, ptr @nvme_tcp_create_ctrl._entry.12, ptr @nvme_tcp_create_ctrl._entry.15, ptr @nvme_tcp_create_ctrl._entry.18, ptr @nvme_tcp_create_ctrl._entry_ptr, ptr @nvme_tcp_create_ctrl._entry_ptr.14, ptr @nvme_tcp_create_ctrl._entry_ptr.17, ptr @nvme_tcp_create_ctrl._entry_ptr.22, ptr @nvme_tcp_error_recovery._entry, ptr @nvme_tcp_error_recovery._entry_ptr, ptr @nvme_tcp_handle_c2h_data._entry, ptr @nvme_tcp_handle_c2h_data._entry.84, ptr @nvme_tcp_handle_c2h_data._entry.87, ptr @nvme_tcp_handle_c2h_data._entry_ptr, ptr @nvme_tcp_handle_c2h_data._entry_ptr.86, ptr @nvme_tcp_handle_c2h_data._entry_ptr.89, ptr @nvme_tcp_handle_r2t._entry, ptr @nvme_tcp_handle_r2t._entry.100, ptr @nvme_tcp_handle_r2t._entry.103, ptr @nvme_tcp_handle_r2t._entry.106, ptr @nvme_tcp_handle_r2t._entry_ptr, ptr @nvme_tcp_handle_r2t._entry_ptr.102, ptr @nvme_tcp_handle_r2t._entry_ptr.105, ptr @nvme_tcp_handle_r2t._entry_ptr.108, ptr @nvme_tcp_init_connection._entry, ptr @nvme_tcp_init_connection._entry.121, ptr @nvme_tcp_init_connection._entry.124, ptr @nvme_tcp_init_connection._entry.127, ptr @nvme_tcp_init_connection._entry.132, ptr @nvme_tcp_init_connection._entry.135, ptr @nvme_tcp_init_connection._entry.138, ptr @nvme_tcp_init_connection._entry_ptr, ptr @nvme_tcp_init_connection._entry_ptr.123, ptr @nvme_tcp_init_connection._entry_ptr.126, ptr @nvme_tcp_init_connection._entry_ptr.129, ptr @nvme_tcp_init_connection._entry_ptr.134, ptr @nvme_tcp_init_connection._entry_ptr.137, ptr @nvme_tcp_init_connection._entry_ptr.140, ptr @nvme_tcp_map_queues._entry, ptr @nvme_tcp_map_queues._entry_ptr, ptr @nvme_tcp_process_nvme_cqe._entry, ptr @nvme_tcp_process_nvme_cqe._entry_ptr, ptr @nvme_tcp_reconnect_ctrl_work._entry, ptr @nvme_tcp_reconnect_ctrl_work._entry.25, ptr @nvme_tcp_reconnect_ctrl_work._entry_ptr, ptr @nvme_tcp_reconnect_ctrl_work._entry_ptr.27, ptr @nvme_tcp_reconnect_or_remove._entry, ptr @nvme_tcp_reconnect_or_remove._entry.30, ptr @nvme_tcp_reconnect_or_remove._entry_ptr, ptr @nvme_tcp_reconnect_or_remove._entry_ptr.32, ptr @nvme_tcp_recv_data._entry, ptr @nvme_tcp_recv_data._entry.111, ptr @nvme_tcp_recv_data._entry_ptr, ptr @nvme_tcp_recv_data._entry_ptr.113, ptr @nvme_tcp_recv_ddgst._entry, ptr @nvme_tcp_recv_ddgst._entry_ptr, ptr @nvme_tcp_recv_pdu._entry, ptr @nvme_tcp_recv_pdu._entry_ptr, ptr @nvme_tcp_recv_skb._entry, ptr @nvme_tcp_recv_skb._entry_ptr, ptr @nvme_tcp_setup_cmd_pdu._entry, ptr @nvme_tcp_setup_cmd_pdu._entry_ptr, ptr @nvme_tcp_setup_ctrl._entry, ptr @nvme_tcp_setup_ctrl._entry.39, ptr @nvme_tcp_setup_ctrl._entry.42, ptr @nvme_tcp_setup_ctrl._entry.46, ptr @nvme_tcp_setup_ctrl._entry_ptr, ptr @nvme_tcp_setup_ctrl._entry_ptr.41, ptr @nvme_tcp_setup_ctrl._entry_ptr.45, ptr @nvme_tcp_setup_ctrl._entry_ptr.48, ptr @nvme_tcp_start_queue._entry, ptr @nvme_tcp_start_queue._entry_ptr, ptr @nvme_tcp_state_change._entry, ptr @nvme_tcp_state_change._entry_ptr, ptr @nvme_tcp_timeout._entry, ptr @nvme_tcp_timeout._entry_ptr, ptr @nvme_tcp_try_send._entry, ptr @nvme_tcp_try_send._entry_ptr, ptr @nvme_tcp_verify_hdgst._entry, ptr @nvme_tcp_verify_hdgst._entry.77, ptr @nvme_tcp_verify_hdgst._entry_ptr, ptr @nvme_tcp_verify_hdgst._entry_ptr.79, ptr @so_priority, ptr @nvme_tcp_transport, ptr @nvme_tcp_ctrl_mutex, ptr @nvme_tcp_ctrl_list, ptr @nvme_tcp_wq, ptr @.str, ptr @nvme_tcp_create_ctrl.__key, ptr @.str.1, ptr @nvme_tcp_create_ctrl.__key.2, ptr @.str.3, ptr @nvme_tcp_create_ctrl.__key.4, ptr @.str.5, ptr @nvme_tcp_create_ctrl.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @nvme_tcp_ctrl_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @nvme_tcp_alloc_queue.__key, ptr @.str.50, ptr @nvme_tcp_alloc_queue.__key.51, ptr @.str.52, ptr @nvme_tcp_alloc_queue.__key.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @nvme_tcp_admin_mq_ops, ptr @nvme_tcp_mq_ops, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @so_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_transport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_ctrl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_ctrl_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_ctrl_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_create_ctrl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_reconnect_ctrl_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_reconnect_ctrl_work._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_reconnect_or_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_reconnect_or_remove._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_try_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_setup_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_setup_ctrl._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_setup_ctrl._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_setup_ctrl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_queue._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_recv_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_recv_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_verify_hdgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_verify_hdgst._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_check_ddgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_c2h_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_c2h_data._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_c2h_data._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_process_nvme_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_r2t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_r2t._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_r2t._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_handle_r2t._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_recv_data._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_recv_ddgst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_error_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_init_connection._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_admin_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_setup_cmd_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_map_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_start_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_tcp_alloc_io_queues._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvmf_unregister_transport(ptr noundef nonnull @nvme_tcp_transport) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_tcp_ctrl_mutex, i32 noundef 0) #13
  %.pn8 = load ptr, ptr @nvme_tcp_ctrl_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @nvme_tcp_ctrl_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %ctrl1 = getelementptr i8, ptr %.pn10, i32 452
  %call = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl1) #13
  %0 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @nvme_tcp_ctrl_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_tcp_ctrl_mutex) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_delete_wq to i32))
  %1 = load ptr, ptr @nvme_delete_wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #13
  %2 = load ptr, ptr @nvme_tcp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_delete_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.158, i32 noundef 24, i32 noundef 0) #13
  store ptr %call, ptr @nvme_tcp_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @nvmf_register_transport(ptr noundef nonnull @nvme_tcp_transport) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvme_tcp_create_ctrl(ptr noundef %dev, ptr noundef %opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4488) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %ctrl2 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6
  %opts3 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 93
  %3 = ptrtoint ptr %opts3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %opts, ptr %opts3, align 8
  %nr_io_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 8
  %4 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_io_queues, align 4
  %nr_write_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 18
  %6 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_write_queues, align 4
  %nr_poll_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 19
  %8 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_poll_queues, align 4
  %add = add i32 %5, 1
  %add4 = add i32 %add, %7
  %add5 = add i32 %add4, %9
  %queue_count = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 30
  %10 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add5, ptr %queue_count, align 4
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 7
  %11 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_size, align 4
  %13 = trunc i32 %12 to i16
  %conv = add i16 %13, -1
  %sqsize = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 44
  %14 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %sqsize, align 2
  %kato = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 12
  %15 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %kato, align 4
  %kato9 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 59
  %17 = ptrtoint ptr %kato9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %kato9, align 8
  %connect_work = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %connect_work, i32 noundef 0) #13
  %18 = ptrtoint ptr %connect_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %connect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvme_tcp_create_ctrl.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry17 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %19 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i259 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry17, ptr %prev.i259, align 4
  %func = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nvme_tcp_reconnect_ctrl_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvme_tcp_create_ctrl.__key.2) #13
  %err_work = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %err_work, i32 noundef 0) #13
  %22 = ptrtoint ptr %err_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %err_work, align 8
  %lockdep_map32 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvme_tcp_create_ctrl.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry34 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i260 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry34, ptr %prev.i260, align 8
  %func36 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nvme_tcp_error_recovery_work, ptr %func36, align 4
  %reset_work = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 20
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #13
  %26 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map48 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map48, ptr noundef nonnull @.str.7, ptr noundef nonnull @nvme_tcp_create_ctrl.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry51 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 20, i32 1
  %27 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i261 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 20, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry51, ptr %prev.i261, align 8
  %func54 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 20, i32 2
  %29 = ptrtoint ptr %func54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvme_reset_ctrl_work, ptr %func54, align 4
  %30 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %opts, align 4
  %and = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.then58, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then58:                                        ; preds = %if.end
  %call59 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.8, i32 noundef 3264) #13
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %32 = ptrtoint ptr %trsvcid to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call59, ptr %trsvcid, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.then58.out_free_ctrl_crit_edge, label %if.end63

if.then58.out_free_ctrl_crit_edge:                ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_ctrl

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opts, align 4
  %or = or i32 %34, 8
  store i32 %or, ptr %opts, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end.if.end65_crit_edge
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %35 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %traddr, align 4
  %trsvcid66 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %37 = ptrtoint ptr %trsvcid66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trsvcid66, align 4
  %addr = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 4
  %call67 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %36, ptr noundef %38, ptr noundef %addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end76, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %traddr, align 4
  %41 = ptrtoint ptr %trsvcid66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trsvcid66, align 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %40, ptr noundef %42) #17
  br label %out_free_ctrl

if.end76:                                         ; preds = %if.end65
  %43 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %opts, align 4
  %and78 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end91_crit_edge, label %if.then80

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then80:                                        ; preds = %if.end76
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %45 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_traddr, align 4
  %src_addr = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 5
  %call81 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %46, ptr noundef null, ptr noundef %src_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end91_crit_edge, label %do.end86

if.then80.if.end91_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

do.end86:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_traddr, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %48) #17
  br label %out_free_ctrl

if.end91:                                         ; preds = %if.then80.if.end91_crit_edge, %if.end76.if.end91_crit_edge
  %49 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %opts, align 4
  %and93 = and i32 %50, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end106_crit_edge, label %if.then95

if.end91.if.end106_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then95:                                        ; preds = %if.end91
  %host_iface = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 6
  %51 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_iface, align 4
  %call96 = tail call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %52) #13
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %do.end101, label %if.then95.if.end106_crit_edge

if.then95.if.end106_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host_iface, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %54) #17
  br label %out_free_ctrl

if.end106:                                        ; preds = %if.then95.if.end106_crit_edge, %if.end91.if.end106_crit_edge
  %duplicate_connect = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 11
  %55 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %duplicate_connect, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool107.not = icmp eq i8 %56, 0
  br i1 %tobool107.not, label %land.lhs.true, label %if.end106.if.end111_crit_edge

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end106
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_tcp_ctrl_mutex, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true
  %.pn.in.i = phi ptr [ @nvme_tcp_ctrl_list, %land.lhs.true ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %57 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @nvme_tcp_ctrl_list
  br i1 %cmp.not.i, label %nvme_tcp_existing_controller.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ctrl1.i = getelementptr i8, ptr %.pn.i, i32 452
  %call.i = tail call zeroext i1 @nvmf_ip_options_match(ptr noundef %ctrl1.i, ptr noundef %opts) #13
  br i1 %call.i, label %nvme_tcp_existing_controller.exit.thread, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

nvme_tcp_existing_controller.exit.thread:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_tcp_ctrl_mutex) #13
  br label %out_free_ctrl

nvme_tcp_existing_controller.exit:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_tcp_ctrl_mutex) #13
  br label %if.end111

if.end111:                                        ; preds = %nvme_tcp_existing_controller.exit, %if.end106.if.end111_crit_edge
  %58 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %queue_count, align 4
  %60 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 348) #13
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !324

kcalloc.exit.thread:                              ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free_ctrl

if.end7.i.i:                                      ; preds = %if.end111
  %63 = extractvalue { i32, i1 } %60, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #18
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool116.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool116.not, label %if.end7.i.i.out_free_ctrl_crit_edge, label %if.end118

if.end7.i.i.out_free_ctrl_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_ctrl

if.end118:                                        ; preds = %if.end7.i.i
  %call120 = tail call i32 @nvme_init_ctrl(ptr noundef %ctrl2, ptr noundef %dev, ptr noundef nonnull @nvme_tcp_ctrl_ops, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %out_kfree_queues

if.end123:                                        ; preds = %if.end118
  %call125 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl2, i32 noundef 3) #13
  br i1 %call125, label %if.end167, label %land.end

land.end:                                         ; preds = %if.end123
  %.b258 = load i1, ptr @nvme_tcp_create_ctrl.__already_done, align 1
  br i1 %.b258, label %land.end.out_uninit_ctrl_crit_edge, label %if.then133, !prof !325

land.end.out_uninit_ctrl_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_uninit_ctrl

if.then133:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_tcp_create_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2621, i32 noundef 9, ptr noundef null) #13
  br label %out_uninit_ctrl

if.end167:                                        ; preds = %if.end123
  %call169 = tail call fastcc i32 @nvme_tcp_setup_ctrl(ptr noundef %ctrl2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %do.end175, label %if.end167.out_uninit_ctrl_crit_edge

if.end167.out_uninit_ctrl_crit_edge:              ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_uninit_ctrl

do.end175:                                        ; preds = %if.end167
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 17
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 8
  %subsys.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 23
  %67 = ptrtoint ptr %subsys.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %subsys.i, align 4
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %opts3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %opts3, align 8
  %subsysnqn.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %subsysnqn.i, align 4
  br label %nvmf_ctrl_subsysnqn.exit

if.end.i:                                         ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #15
  %subnqn.i = getelementptr inbounds %struct.nvme_subsystem, ptr %68, i32 0, i32 7
  br label %nvmf_ctrl_subsysnqn.exit

nvmf_ctrl_subsysnqn.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %subnqn.i, %if.end.i ], [ %72, %if.then.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i, ptr noundef %addr) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_tcp_ctrl_mutex, i32 noundef 0) #13
  %73 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_tcp_ctrl_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %73, ptr noundef nonnull @nvme_tcp_ctrl_list) #13
  br i1 %call.i.i, label %if.end.i.i262, label %nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge

nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge: ; preds = %nvmf_ctrl_subsysnqn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i262:                                    ; preds = %nvmf_ctrl_subsysnqn.exit
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_tcp_ctrl_list, i32 0, i32 1), align 4
  %74 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @nvme_tcp_ctrl_list, ptr %list, align 4
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %prev.i, align 8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list, ptr %73, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i262, %nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_tcp_ctrl_mutex) #13
  br label %cleanup

out_uninit_ctrl:                                  ; preds = %if.end167.out_uninit_ctrl_crit_edge, %if.then133, %land.end.out_uninit_ctrl_crit_edge
  %ret.0 = phi i32 [ %call169, %if.end167.out_uninit_ctrl_crit_edge ], [ -4, %if.then133 ], [ -4, %land.end.out_uninit_ctrl_crit_edge ]
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl2) #13
  %device.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %call7.i.i, i32 0, i32 6, i32 17
  %77 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %78) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, 0
  %spec.select = select i1 %cmp, i32 -5, i32 %ret.0
  %79 = inttoptr i32 %spec.select to ptr
  br label %cleanup

out_kfree_queues:                                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %81) #13
  br label %out_free_ctrl

out_free_ctrl:                                    ; preds = %out_kfree_queues, %if.end7.i.i.out_free_ctrl_crit_edge, %kcalloc.exit.thread, %nvme_tcp_existing_controller.exit.thread, %do.end101, %do.end86, %do.end72, %if.then58.out_free_ctrl_crit_edge
  %ret.1 = phi i32 [ %call67, %do.end72 ], [ %call81, %do.end86 ], [ %call120, %out_kfree_queues ], [ -19, %do.end101 ], [ -12, %if.then58.out_free_ctrl_crit_edge ], [ -12, %if.end7.i.i.out_free_ctrl_crit_edge ], [ -114, %nvme_tcp_existing_controller.exit.thread ], [ -12, %kcalloc.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %82 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free_ctrl, %out_uninit_ctrl, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %82, %out_free_ctrl ], [ %79, %out_uninit_ctrl ], [ %ctrl2, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_reconnect_ctrl_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr i8, ptr %work, i32 -3604
  %nr_reconnects = getelementptr i8, ptr %work, i32 -196
  %0 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_reconnects, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nr_reconnects, align 8
  %call2 = tail call fastcc i32 @nvme_tcp_setup_ctrl(ptr noundef %ctrl1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %device = getelementptr i8, ptr %work, i32 -2388
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %4 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_reconnects, align 8
  br i1 %tobool.not, label %do.end, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5) #17
  %6 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nr_reconnects, align 8
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %5) #17
  tail call fastcc void @nvme_tcp_reconnect_or_remove(ptr noundef %ctrl1)
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_error_recovery_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr i8, ptr %work, i32 -3560
  tail call void @nvme_stop_keep_alive(ptr noundef %ctrl1) #13
  %async_event_work = getelementptr i8, ptr %work, i32 -760
  %call = tail call zeroext i1 @flush_work(ptr noundef %async_event_work) #13
  tail call fastcc void @nvme_tcp_teardown_io_queues(ptr noundef %ctrl1, i1 noundef zeroext false)
  tail call void @nvme_start_queues(ptr noundef %ctrl1) #13
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl1) #13
  %admin_q.i = getelementptr i8, ptr %work, i32 -3408
  %0 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_sync_queue(ptr noundef %1) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl1, i32 noundef 0) #13
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl1) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl1, i32 noundef 0) #13
  %pdu.i.i = getelementptr i8, ptr %work, i32 176
  %2 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.nvme_tcp_destroy_admin_queue.exit_crit_edge, label %if.then.i.i

entry.nvme_tcp_destroy_admin_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_destroy_admin_queue.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work) #13
  %4 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdu.i.i, align 8
  tail call void @page_frag_free(ptr noundef %5) #13
  %6 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pdu.i.i, align 8
  br label %nvme_tcp_destroy_admin_queue.exit

nvme_tcp_destroy_admin_queue.exit:                ; preds = %if.then.i.i, %entry.nvme_tcp_destroy_admin_queue.exit_crit_edge
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl1, i32 noundef 0) #13
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl1) #13
  %call2 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 3) #13
  br i1 %call2, label %if.end43, label %if.then

if.then:                                          ; preds = %nvme_tcp_destroy_admin_queue.exit
  %state = getelementptr i8, ptr %work, i32 -3556
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = add i32 %8, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %land.rhs6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs6:                                        ; preds = %if.then
  %.b56 = load i1, ptr @nvme_tcp_error_recovery_work.__already_done, align 1
  br i1 %.b56, label %land.rhs6.cleanup_crit_edge, label %if.then13, !prof !325

land.rhs6.cleanup_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_tcp_error_recovery_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2151, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end43:                                         ; preds = %nvme_tcp_destroy_admin_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @nvme_tcp_reconnect_or_remove(ptr noundef %ctrl1)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then13, %land.rhs6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_reset_ctrl_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1384
  tail call void @nvme_stop_ctrl(ptr noundef %add.ptr) #13
  %err_work.i = getelementptr i8, ptr %work, i32 2176
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %err_work.i) #13
  %connect_work.i = getelementptr i8, ptr %work, i32 2220
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect_work.i) #13
  tail call fastcc void @nvme_tcp_teardown_io_queues(ptr noundef %add.ptr, i1 noundef zeroext false) #13
  tail call void @nvme_stop_admin_queue(ptr noundef %add.ptr) #13
  %call6.i = tail call i32 @nvme_disable_ctrl(ptr noundef %add.ptr) #13
  tail call void @nvme_stop_admin_queue(ptr noundef %add.ptr) #13
  %admin_q.i.c.i = getelementptr i8, ptr %work, i32 -1232
  %0 = ptrtoint ptr %admin_q.i.c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q.i.c.i, align 8
  tail call void @blk_sync_queue(ptr noundef %1) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %add.ptr, i32 noundef 0) #13
  tail call void @nvme_cancel_admin_tagset(ptr noundef %add.ptr) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %add.ptr, i32 noundef 0) #13
  %pdu.i.i = getelementptr i8, ptr %work, i32 2352
  %2 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.nvme_tcp_destroy_admin_queue.exit_crit_edge, label %if.then.i.i

entry.nvme_tcp_destroy_admin_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_destroy_admin_queue.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %async_event_work.i.i = getelementptr i8, ptr %work, i32 1416
  %call1.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work.i.i) #13
  %4 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdu.i.i, align 8
  tail call void @page_frag_free(ptr noundef %5) #13
  %6 = ptrtoint ptr %pdu.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pdu.i.i, align 8
  br label %nvme_tcp_destroy_admin_queue.exit

nvme_tcp_destroy_admin_queue.exit:                ; preds = %if.then.i.i, %entry.nvme_tcp_destroy_admin_queue.exit_crit_edge
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %add.ptr, i32 noundef 0) #13
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %add.ptr, i32 noundef 3) #13
  br i1 %call, label %if.end41, label %if.then

if.then:                                          ; preds = %nvme_tcp_destroy_admin_queue.exit
  %state = getelementptr i8, ptr %work, i32 -1380
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = add i32 %8, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %land.rhs4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs4:                                        ; preds = %if.then
  %.b55 = load i1, ptr @nvme_reset_ctrl_work.__already_done, align 1
  br i1 %.b55, label %land.rhs4.cleanup_crit_edge, label %if.then11, !prof !325

land.rhs4.cleanup_crit_edge:                      ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_reset_ctrl_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2188, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end41:                                         ; preds = %nvme_tcp_destroy_admin_queue.exit
  %call42 = tail call fastcc i32 @nvme_tcp_setup_ctrl(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %out_fail

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_fail:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %nr_reconnects = getelementptr i8, ptr %work, i32 2024
  %11 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_reconnects, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %nr_reconnects, align 8
  tail call fastcc void @nvme_tcp_reconnect_or_remove(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end41.cleanup_crit_edge, %if.then11, %land.rhs4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_change_ctrl_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_tcp_setup_ctrl(ptr noundef %ctrl, i1 noundef zeroext %new) unnamed_addr #3 align 64 {
entry:
  %nr_io_queues.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %opts1 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %0 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts1, align 8
  %call.i.i = tail call fastcc i32 @nvme_tcp_alloc_queue(ptr noundef %ctrl, i32 noundef 0, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %ctrl, i32 -640
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %hdr_digest.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hdr_digest.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_digest.i.i.i.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i.i = icmp eq i8 %5, 0
  %pf_cache.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %3, i32 0, i32 27
  %add.i.i.i = select i1 %tobool.not.i.i.i.i, i32 72, i32 76
  %call.i.i.i.i = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache.i.i.i, i32 noundef %add.i.i.i, i32 noundef 3520, i32 noundef -1) #13
  %pdu.i.i.i = getelementptr i8, ptr %ctrl, i32 3736
  %6 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i.i, ptr %pdu.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %nvme_tcp_configure_admin_queue.exit.thread249, label %if.end.i

nvme_tcp_configure_admin_queue.exit.thread249:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef 0) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i.i, align 8
  %queue5.i.i.i = getelementptr i8, ptr %ctrl, i32 3740
  %9 = ptrtoint ptr %queue5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %queue5.i.i.i, align 4
  br i1 %new, label %if.then2.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then2.i:                                       ; preds = %if.end.i
  %admin_tag_set.i.i = getelementptr i8, ptr %ctrl, i32 -444
  %10 = call ptr @memset(ptr %admin_tag_set.i.i, i32 0, i32 184)
  %ops.i.i = getelementptr i8, ptr %ctrl, i32 -404
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nvme_tcp_admin_mq_ops, ptr %ops.i.i, align 4
  %queue_depth.i.i = getelementptr i8, ptr %ctrl, i32 -396
  %12 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %queue_depth.i.i, align 4
  %reserved_tags.i.i = getelementptr i8, ptr %ctrl, i32 -392
  %13 = ptrtoint ptr %reserved_tags.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %reserved_tags.i.i, align 4
  %numa_node.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 11
  %14 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numa_node.i.i, align 4
  %numa_node1.i.i = getelementptr i8, ptr %ctrl, i32 -384
  %16 = ptrtoint ptr %numa_node1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %numa_node1.i.i, align 4
  %flags.i.i = getelementptr i8, ptr %ctrl, i32 -376
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %flags.i.i, align 4
  %cmd_size.i.i = getelementptr i8, ptr %ctrl, i32 -388
  %18 = ptrtoint ptr %cmd_size.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %cmd_size.i.i, align 4
  %driver_data.i.i = getelementptr i8, ptr %ctrl, i32 -372
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i.i, ptr %driver_data.i.i, align 4
  %nr_hw_queues.i.i = getelementptr i8, ptr %ctrl, i32 -400
  %20 = ptrtoint ptr %nr_hw_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nr_hw_queues.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %21 = load i32, ptr @admin_timeout, align 4
  %mul.i.i = mul i32 %21, 100
  %nr_maps.i.i = getelementptr i8, ptr %ctrl, i32 -380
  %22 = ptrtoint ptr %nr_maps.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i.i, ptr %nr_maps.i.i, align 4
  %call14.i.i = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %admin_tag_set.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  %23 = inttoptr i32 %call14.i.i to ptr
  %spec.select.i.i = select i1 %tobool15.not.i.i, ptr %admin_tag_set.i.i, ptr %23
  %admin_tagset.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 13
  %24 = ptrtoint ptr %admin_tagset.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select.i.i, ptr %admin_tagset.i, align 4
  %cmp.i.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %spec.select.i.i to i32
  br label %out_free_queue.i

if.end9.i:                                        ; preds = %if.then2.i
  %call11.i = tail call ptr @blk_mq_init_queue(ptr noundef %spec.select.i.i) #13
  %fabrics_q.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %26 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call11.i, ptr %fabrics_q.i, align 8
  %cmp.i86.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %call11.i to i32
  br label %if.then49.i

if.end17.i:                                       ; preds = %if.end9.i
  %28 = ptrtoint ptr %admin_tagset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %admin_tagset.i, align 4
  %call19.i = tail call ptr @blk_mq_init_queue(ptr noundef %29) #13
  %admin_q.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %30 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call19.i, ptr %admin_q.i, align 8
  %cmp.i87.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %if.then22.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %call19.i to i32
  br label %if.then45.i

if.end26.i:                                       ; preds = %if.end17.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @nvme_tcp_start_queue(ptr noundef %ctrl, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.out_cleanup_queue.i_crit_edge

if.end26.i.out_cleanup_queue.i_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cleanup_queue.i

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call i32 @nvme_enable_ctrl(ptr noundef %ctrl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.out_stop_queue.i_crit_edge

if.end30.i.out_stop_queue.i_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_stop_queue.i

if.end34.i:                                       ; preds = %if.end30.i
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl) #13
  %call35.i = tail call i32 @nvme_init_ctrl_finish(ptr noundef %ctrl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end_crit_edge, label %out_quiesce_queue.i

if.end34.i.if.end_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

out_quiesce_queue.i:                              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  %admin_q39.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %32 = ptrtoint ptr %admin_q39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %admin_q39.i, align 8
  tail call void @blk_sync_queue(ptr noundef %33) #13
  br label %out_stop_queue.i

out_stop_queue.i:                                 ; preds = %out_quiesce_queue.i, %if.end30.i.out_stop_queue.i_crit_edge
  %error.0.i = phi i32 [ %call31.i, %if.end30.i.out_stop_queue.i_crit_edge ], [ %call35.i, %out_quiesce_queue.i ]
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef 0) #13
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl) #13
  br label %out_cleanup_queue.i

out_cleanup_queue.i:                              ; preds = %out_stop_queue.i, %if.end26.i.out_cleanup_queue.i_crit_edge
  %error.1.i = phi i32 [ %call27.i, %if.end26.i.out_cleanup_queue.i_crit_edge ], [ %error.0.i, %out_stop_queue.i ]
  br i1 %new, label %if.then41.i, label %out_cleanup_queue.i.out_free_queue.i_crit_edge

out_cleanup_queue.i.out_free_queue.i_crit_edge:   ; preds = %out_cleanup_queue.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_queue.i

if.then41.i:                                      ; preds = %out_cleanup_queue.i
  call void @__sanitizer_cov_trace_pc() #15
  %admin_q42.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %34 = ptrtoint ptr %admin_q42.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %admin_q42.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %35) #13
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.then41.i, %if.then22.i
  %error.2.ph.i = phi i32 [ %error.1.i, %if.then41.i ], [ %31, %if.then22.i ]
  %fabrics_q46.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %36 = ptrtoint ptr %fabrics_q46.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fabrics_q46.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %37) #13
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.then45.i, %if.then14.i
  %error.3.ph.i = phi i32 [ %error.2.ph.i, %if.then45.i ], [ %27, %if.then14.i ]
  %admin_tagset50.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 13
  %38 = ptrtoint ptr %admin_tagset50.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %admin_tagset50.i, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %39) #13
  br label %out_free_queue.i

out_free_queue.i:                                 ; preds = %if.then49.i, %out_cleanup_queue.i.out_free_queue.i_crit_edge, %if.then6.i
  %error.4.i = phi i32 [ %25, %if.then6.i ], [ %error.3.ph.i, %if.then49.i ], [ %error.1.i, %out_cleanup_queue.i.out_free_queue.i_crit_edge ]
  %40 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdu.i.i.i, align 8
  %tobool.not.i88.i = icmp eq ptr %41, null
  br i1 %tobool.not.i88.i, label %out_free_queue.i.nvme_tcp_configure_admin_queue.exit_crit_edge, label %if.then.i.i

out_free_queue.i.nvme_tcp_configure_admin_queue.exit_crit_edge: ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_configure_admin_queue.exit

if.then.i.i:                                      ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #15
  %async_event_work.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 66
  %call1.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work.i.i) #13
  %42 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdu.i.i.i, align 8
  tail call void @page_frag_free(ptr noundef %43) #13
  %44 = ptrtoint ptr %pdu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %pdu.i.i.i, align 8
  br label %nvme_tcp_configure_admin_queue.exit

nvme_tcp_configure_admin_queue.exit:              ; preds = %if.then.i.i, %out_free_queue.i.nvme_tcp_configure_admin_queue.exit_crit_edge
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.4.i)
  %tobool2.not = icmp eq i32 %error.4.i, 0
  br i1 %tobool2.not, label %nvme_tcp_configure_admin_queue.exit.if.end_crit_edge, label %nvme_tcp_configure_admin_queue.exit.cleanup_crit_edge

nvme_tcp_configure_admin_queue.exit.cleanup_crit_edge: ; preds = %nvme_tcp_configure_admin_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

nvme_tcp_configure_admin_queue.exit.if.end_crit_edge: ; preds = %nvme_tcp_configure_admin_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %nvme_tcp_configure_admin_queue.exit.if.end_crit_edge, %if.end34.i.if.end_crit_edge
  %icdoff = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 89
  %45 = ptrtoint ptr %icdoff to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %icdoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool3.not = icmp eq i16 %46, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.37) #17
  br label %destroy_admin

if.end5:                                          ; preds = %if.end
  %sgls.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 49
  %49 = ptrtoint ptr %sgls.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sgls.i, align 4
  %and.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %device11 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %51 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.40) #17
  br label %destroy_admin

if.end12:                                         ; preds = %if.end5
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 7
  %53 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %queue_size, align 4
  %sqsize = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 44
  %55 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sqsize, align 2
  %conv = zext i16 %56 to i32
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add)
  %cmp = icmp ugt i32 %54, %add
  br i1 %cmp, label %do.end17, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %device18 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %57 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device18, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.43, i32 noundef %54, i32 noundef %add) #17
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.end12.if.end23_crit_edge
  %59 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sqsize, align 2
  %maxcmd = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 90
  %61 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %maxcmd, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp28.not = icmp ult i16 %60, %62
  br i1 %cmp28.not, label %if.end23.if.end44_crit_edge, label %do.end33

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %conv27 = zext i16 %62 to i32
  %conv25 = zext i16 %60 to i32
  %add26 = add nuw nsw i32 %conv25, 1
  %device34 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %63 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device34, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.47, i32 noundef %add26, i32 noundef %conv27) #17
  %65 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %maxcmd, align 2
  %sub = add i16 %66, -1
  %67 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %sub, ptr %sqsize, align 2
  br label %if.end44

if.end44:                                         ; preds = %do.end33, %if.end23.if.end44_crit_edge
  %queue_count = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 30
  %68 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp45 = icmp ugt i32 %69, 1
  br i1 %cmp45, label %if.then47, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #13
  %70 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %opts1, align 8
  %nr_io_queues1.i.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %nr_io_queues1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_io_queues1.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %74 = load volatile i32, ptr @__num_online_cpus, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %73, i32 %74) #13
  %76 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %opts1, align 8
  %nr_write_queues.i.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %77, i32 0, i32 18
  %78 = ptrtoint ptr %nr_write_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_write_queues.i.i.i, align 4
  %call.i.i.i31.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %80 = load volatile i32, ptr @__num_online_cpus, align 4
  %81 = tail call i32 @llvm.umin.i32(i32 %79, i32 %80) #13
  %82 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %opts1, align 8
  %nr_poll_queues.i.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %83, i32 0, i32 19
  %84 = ptrtoint ptr %nr_poll_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_poll_queues.i.i.i, align 4
  %call.i.i.i32.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %86 = load volatile i32, ptr @__num_online_cpus, align 4
  %87 = tail call i32 @llvm.umin.i32(i32 %85, i32 %86) #13
  %add.i.i.i217 = add i32 %81, %75
  %add18.i.i.i = add i32 %add.i.i.i217, %87
  %88 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add18.i.i.i, ptr %nr_io_queues.i.i, align 4
  %call1.i.i218 = call i32 @nvme_set_queue_count(ptr noundef %ctrl, ptr noundef nonnull %nr_io_queues.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i218)
  %tobool.not.i.i219 = icmp eq i32 %call1.i.i218, 0
  br i1 %tobool.not.i.i219, label %if.end.i.i221, label %if.then47.nvme_tcp_configure_io_queues.exit.thread254_crit_edge

if.then47.nvme_tcp_configure_io_queues.exit.thread254_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_configure_io_queues.exit.thread254

if.end.i.i221:                                    ; preds = %if.then47
  %89 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_io_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i220 = icmp eq i32 %90, 0
  br i1 %cmp.i.i220, label %do.end.i.i, label %if.end3.i.i

do.end.i.i:                                       ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #15
  %device.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %91 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.151) #17
  br label %nvme_tcp_configure_io_queues.exit.thread254

if.end3.i.i:                                      ; preds = %if.end.i.i221
  %add.i.i = add i32 %90, 1
  %93 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i.i, ptr %queue_count, align 4
  %device7.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %94 = ptrtoint ptr %device7.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.154, i32 noundef %90) #17
  %96 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nr_io_queues.i.i, align 4
  %98 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %opts1, align 8
  %nr_write_queues.i17.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %99, i32 0, i32 18
  %100 = ptrtoint ptr %nr_write_queues.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr_write_queues.i17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i.i222 = icmp eq i32 %101, 0
  br i1 %tobool.not.i.i.i222, label %if.end3.i.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.i.if.else.i.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i
  %nr_io_queues2.i.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %99, i32 0, i32 8
  %102 = ptrtoint ptr %nr_io_queues2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr_io_queues2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %103)
  %cmp.i.i.i = icmp ugt i32 %97, %103
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %io_queues.i.i.i = getelementptr i8, ptr %ctrl, i32 3832
  %arrayidx.i.i.i = getelementptr i8, ptr %ctrl, i32 3836
  %104 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx.i.i.i, align 4
  %sub.i.i.i = sub i32 %97, %103
  %105 = ptrtoint ptr %nr_write_queues.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr_write_queues.i17.i.i, align 4
  %107 = call i32 @llvm.umin.i32(i32 %106, i32 %sub.i.i.i) #13
  %108 = ptrtoint ptr %io_queues.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %io_queues.i.i.i, align 8
  %sub12.i.i.i = sub i32 %sub.i.i.i, %107
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end3.i.i.if.else.i.i.i_crit_edge
  %nr_io_queues13.i.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %99, i32 0, i32 8
  %109 = ptrtoint ptr %nr_io_queues13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_io_queues13.i.i.i, align 4
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 %97) #13
  %io_queues20.i.i.i = getelementptr i8, ptr %ctrl, i32 3832
  %112 = ptrtoint ptr %io_queues20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %io_queues20.i.i.i, align 8
  %sub24.i.i.i = sub i32 %97, %111
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %nr_io_queues.addr.0.i.i.i = phi i32 [ %sub12.i.i.i, %if.then.i.i.i ], [ %sub24.i.i.i, %if.else.i.i.i ]
  %nr_poll_queues.i18.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %99, i32 0, i32 19
  %113 = ptrtoint ptr %nr_poll_queues.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nr_poll_queues.i18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool25.not.i.i.i = icmp eq i32 %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_io_queues.addr.0.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %nr_io_queues.addr.0.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool25.not.i.i.i, i1 true, i1 %tobool27.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.nvme_tcp_set_io_queues.exit.i.i_crit_edge, label %if.then28.i.i.i

if.end.i.i.i.nvme_tcp_set_io_queues.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_set_io_queues.exit.i.i

if.then28.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = call i32 @llvm.umin.i32(i32 %114, i32 %nr_io_queues.addr.0.i.i.i) #13
  %arrayidx37.i.i.i = getelementptr i8, ptr %ctrl, i32 3840
  %116 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx37.i.i.i, align 8
  br label %nvme_tcp_set_io_queues.exit.i.i

nvme_tcp_set_io_queues.exit.i.i:                  ; preds = %if.then28.i.i.i, %if.end.i.i.i.nvme_tcp_set_io_queues.exit.i.i_crit_edge
  %117 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp21.i.i.i = icmp ugt i32 %118, 1
  br i1 %cmp21.i.i.i, label %nvme_tcp_set_io_queues.exit.i.i.for.body.i.i.i_crit_edge, label %nvme_tcp_set_io_queues.exit.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge

nvme_tcp_set_io_queues.exit.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge: ; preds = %nvme_tcp_set_io_queues.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_alloc_io_queues.exit.thread88.i

nvme_tcp_set_io_queues.exit.i.i.for.body.i.i.i_crit_edge: ; preds = %nvme_tcp_set_io_queues.exit.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %nvme_tcp_set_io_queues.exit.i.i.for.body.i.i.i_crit_edge
  %i.022.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %nvme_tcp_set_io_queues.exit.i.i.for.body.i.i.i_crit_edge ]
  %119 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %sqsize, align 2
  %conv.i.i.i = zext i16 %120 to i32
  %add.i19.i.i = add nuw nsw i32 %conv.i.i.i, 1
  %call.i.i.i = call fastcc i32 @nvme_tcp_alloc_queue(ptr noundef %ctrl, i32 noundef %i.022.i.i.i, i32 noundef %add.i19.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i.i, label %for.inc.i.i.i, label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
  %i.123.i.i.i = add i32 %i.022.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.123.i.i.i)
  %cmp224.i.i.i = icmp sgt i32 %i.123.i.i.i, 0
  br i1 %cmp224.i.i.i, label %for.cond1.preheader.i.i.i.for.body4.i.i.i_crit_edge, label %for.cond1.preheader.i.i.i.nvme_tcp_configure_io_queues.exit.thread254_crit_edge

for.cond1.preheader.i.i.i.nvme_tcp_configure_io_queues.exit.thread254_crit_edge: ; preds = %for.cond1.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_configure_io_queues.exit.thread254

for.cond1.preheader.i.i.i.for.body4.i.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i.i
  br label %for.body4.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.022.i.i.i, 1
  %121 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %queue_count, align 4
  %cmp.i21.i.i = icmp ult i32 %inc.i.i.i, %122
  br i1 %cmp.i21.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge

for.inc.i.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_alloc_io_queues.exit.thread88.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.body4.i.i.i:                                  ; preds = %for.body4.i.i.i.for.body4.i.i.i_crit_edge, %for.cond1.preheader.i.i.i.for.body4.i.i.i_crit_edge
  %i.125.i.i.i = phi i32 [ %i.1.i.i.i, %for.body4.i.i.i.for.body4.i.i.i_crit_edge ], [ %i.123.i.i.i, %for.cond1.preheader.i.i.i.for.body4.i.i.i_crit_edge ]
  call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef %i.125.i.i.i) #13
  %i.1.i.i.i = add nsw i32 %i.125.i.i.i, -1
  %cmp2.not.i.i.i = icmp eq i32 %i.1.i.i.i, 0
  br i1 %cmp2.not.i.i.i, label %nvme_tcp_alloc_io_queues.exit.i, label %for.body4.i.i.i.for.body4.i.i.i_crit_edge

for.body4.i.i.i.for.body4.i.i.i_crit_edge:        ; preds = %for.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i.i.i

nvme_tcp_configure_io_queues.exit.thread254:      ; preds = %for.cond1.preheader.i.i.i.nvme_tcp_configure_io_queues.exit.thread254_crit_edge, %do.end.i.i, %if.then47.nvme_tcp_configure_io_queues.exit.thread254_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %for.cond1.preheader.i.i.i.nvme_tcp_configure_io_queues.exit.thread254_crit_edge ], [ %call1.i.i218, %if.then47.nvme_tcp_configure_io_queues.exit.thread254_crit_edge ], [ -12, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #13
  br label %destroy_admin

nvme_tcp_alloc_io_queues.exit.thread88.i:         ; preds = %for.inc.i.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge, %nvme_tcp_set_io_queues.exit.i.i.nvme_tcp_alloc_io_queues.exit.thread88.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #13
  br i1 %new, label %if.then2.i228, label %nvme_tcp_alloc_io_queues.exit.thread88.i.if.end18.i_crit_edge

nvme_tcp_alloc_io_queues.exit.thread88.i.if.end18.i_crit_edge: ; preds = %nvme_tcp_alloc_io_queues.exit.thread88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

nvme_tcp_alloc_io_queues.exit.i:                  ; preds = %for.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #13
  br label %destroy_admin

if.then2.i228:                                    ; preds = %nvme_tcp_alloc_io_queues.exit.thread88.i
  %tag_set.i.i = getelementptr i8, ptr %ctrl, i32 -636
  %123 = call ptr @memset(ptr %tag_set.i.i, i32 0, i32 184)
  %ops2.i.i = getelementptr i8, ptr %ctrl, i32 -596
  %124 = ptrtoint ptr %ops2.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @nvme_tcp_mq_ops, ptr %ops2.i.i, align 4
  %125 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %sqsize, align 2
  %conv.i.i = zext i16 %126 to i32
  %add.i66.i = add nuw nsw i32 %conv.i.i, 1
  %queue_depth3.i.i = getelementptr i8, ptr %ctrl, i32 -588
  %127 = ptrtoint ptr %queue_depth3.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i66.i, ptr %queue_depth3.i.i, align 4
  %reserved_tags4.i.i = getelementptr i8, ptr %ctrl, i32 -584
  %128 = ptrtoint ptr %reserved_tags4.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %reserved_tags4.i.i, align 4
  %numa_node5.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 11
  %129 = ptrtoint ptr %numa_node5.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %numa_node5.i.i, align 4
  %numa_node6.i.i = getelementptr i8, ptr %ctrl, i32 -576
  %131 = ptrtoint ptr %numa_node6.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %numa_node6.i.i, align 4
  %flags7.i.i = getelementptr i8, ptr %ctrl, i32 -568
  %132 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 33, ptr %flags7.i.i, align 4
  %cmd_size8.i.i = getelementptr i8, ptr %ctrl, i32 -580
  %133 = ptrtoint ptr %cmd_size8.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 128, ptr %cmd_size8.i.i, align 4
  %driver_data9.i.i = getelementptr i8, ptr %ctrl, i32 -564
  %134 = ptrtoint ptr %driver_data9.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr.i.i.i, ptr %driver_data9.i.i, align 4
  %135 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %queue_count, align 4
  %sub.i.i = add i32 %136, -1
  %nr_hw_queues10.i.i = getelementptr i8, ptr %ctrl, i32 -592
  %137 = ptrtoint ptr %nr_hw_queues10.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i.i, ptr %nr_hw_queues10.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %138 = load i32, ptr @nvme_io_timeout, align 4
  %mul11.i.i = mul i32 %138, 100
  %timeout12.i.i = getelementptr i8, ptr %ctrl, i32 -572
  %139 = ptrtoint ptr %timeout12.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul11.i.i, ptr %timeout12.i.i, align 4
  %140 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %opts1, align 8
  %nr_poll_queues.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %141, i32 0, i32 19
  %142 = ptrtoint ptr %nr_poll_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nr_poll_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool13.not.i.i = icmp eq i32 %143, 0
  %cond.i.i = select i1 %tobool13.not.i.i, i32 2, i32 3
  %nr_maps.i.i224 = getelementptr i8, ptr %ctrl, i32 -600
  %144 = ptrtoint ptr %nr_maps.i.i224 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %cond.i.i, ptr %nr_maps.i.i224, align 4
  %call14.i.i225 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i225)
  %tobool15.not.i.i226 = icmp eq i32 %call14.i.i225, 0
  %145 = inttoptr i32 %call14.i.i225 to ptr
  %spec.select.i.i227 = select i1 %tobool15.not.i.i226, ptr %tag_set.i.i, ptr %145
  %tagset.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %146 = ptrtoint ptr %tagset.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %spec.select.i.i227, ptr %tagset.i, align 8
  %cmp.i69.i = icmp ugt ptr %spec.select.i.i227, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then6.i229, label %if.end9.i231

if.then6.i229:                                    ; preds = %if.then2.i228
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %spec.select.i.i227 to i32
  br label %out_free_io_queues.i

if.end9.i231:                                     ; preds = %if.then2.i228
  %call11.i230 = call ptr @blk_mq_init_queue(ptr noundef %spec.select.i.i227) #13
  %connect_q.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 7
  %148 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call11.i230, ptr %connect_q.i, align 4
  %cmp.i70.i = icmp ugt ptr %call11.i230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %if.then14.i232, label %if.end9.i231.if.end18.i_crit_edge

if.end9.i231.if.end18.i_crit_edge:                ; preds = %if.end9.i231
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then14.i232:                                   ; preds = %if.end9.i231
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %call11.i230 to i32
  br label %if.then36.i

if.end18.i:                                       ; preds = %if.end9.i231.if.end18.i_crit_edge, %nvme_tcp_alloc_io_queues.exit.thread88.i.if.end18.i_crit_edge
  %150 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp19.i.i = icmp ugt i32 %151, 1
  br i1 %cmp19.i.i, label %if.end18.i.for.body.i.i_crit_edge, label %if.end18.i.if.end22.i_crit_edge

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.end18.i.for.body.i.i_crit_edge:                ; preds = %if.end18.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end18.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end18.i.for.body.i.i_crit_edge ]
  %call.i.i233 = call fastcc i32 @nvme_tcp_start_queue(ptr noundef %ctrl, i32 noundef %i.020.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i233)
  %tobool.not.i72.i = icmp eq i32 %call.i.i233, 0
  br i1 %tobool.not.i72.i, label %for.inc.i.i, label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i
  %i.121.i.i = add i32 %i.020.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.121.i.i)
  %cmp222.i.i = icmp sgt i32 %i.121.i.i, 0
  br i1 %cmp222.i.i, label %for.cond1.preheader.i.i.for.body3.i.i_crit_edge, label %for.cond1.preheader.i.i.out_cleanup_connect_q.i_crit_edge

for.cond1.preheader.i.i.out_cleanup_connect_q.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cleanup_connect_q.i

for.cond1.preheader.i.i.for.body3.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body3.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %152 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %queue_count, align 4
  %cmp.i73.i = icmp ult i32 %inc.i.i, %153
  br i1 %cmp.i73.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end22.i_crit_edge

for.inc.i.i.if.end22.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge
  %i.123.i.i = phi i32 [ %i.1.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ %i.121.i.i, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge ]
  call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.123.i.i) #13
  %i.1.i.i = add nsw i32 %i.123.i.i, -1
  %cmp2.not.i.i = icmp eq i32 %i.1.i.i, 0
  br i1 %cmp2.not.i.i, label %for.body3.i.i.out_cleanup_connect_q.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i.i

for.body3.i.i.out_cleanup_connect_q.i_crit_edge:  ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cleanup_connect_q.i

if.end22.i:                                       ; preds = %for.inc.i.i.if.end22.i_crit_edge, %if.end18.i.if.end22.i_crit_edge
  br i1 %new, label %if.end22.i.if.end53_crit_edge, label %if.then24.i

if.end22.i.if.end53_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then24.i:                                      ; preds = %if.end22.i
  call void @nvme_start_queues(ptr noundef %ctrl) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %154 = load i32, ptr @nvme_io_timeout, align 4
  %mul.i = mul i32 %154, 100
  %call25.i = call i32 @nvme_wait_freeze_timeout(ptr noundef %ctrl, i32 noundef %mul.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @nvme_stop_queues(ptr noundef %ctrl) #13
  call void @nvme_sync_io_queues(ptr noundef %ctrl) #13
  %155 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp4.i.i = icmp ugt i32 %156, 1
  br i1 %cmp4.i.i, label %if.then27.i.for.body.i78.i_crit_edge, label %out_cleanup_connect_q.thread.i

if.then27.i.for.body.i78.i_crit_edge:             ; preds = %if.then27.i
  br label %for.body.i78.i

out_cleanup_connect_q.thread.i:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nvme_cancel_tagset(ptr noundef %ctrl) #13
  br label %out_free_io_queues.i

for.body.i78.i:                                   ; preds = %for.body.i78.i.for.body.i78.i_crit_edge, %if.then27.i.for.body.i78.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i76.i, %for.body.i78.i.for.body.i78.i_crit_edge ], [ 1, %if.then27.i.for.body.i78.i_crit_edge ]
  call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.05.i.i) #13
  %inc.i76.i = add nuw i32 %i.05.i.i, 1
  %157 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %queue_count, align 4
  %cmp.i77.i = icmp ult i32 %inc.i76.i, %158
  br i1 %cmp.i77.i, label %for.body.i78.i.for.body.i78.i_crit_edge, label %for.body.i78.i.out_cleanup_connect_q.i_crit_edge

for.body.i78.i.out_cleanup_connect_q.i_crit_edge: ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cleanup_connect_q.i

for.body.i78.i.for.body.i78.i_crit_edge:          ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i78.i

if.end28.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  %tagset29.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %159 = ptrtoint ptr %tagset29.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tagset29.i, align 8
  %161 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %queue_count, align 4
  %sub.i = add i32 %162, -1
  call void @blk_mq_update_nr_hw_queues(ptr noundef %160, i32 noundef %sub.i) #13
  call void @nvme_unfreeze(ptr noundef %ctrl) #13
  br label %if.end53

out_cleanup_connect_q.i:                          ; preds = %for.body.i78.i.out_cleanup_connect_q.i_crit_edge, %for.body3.i.i.out_cleanup_connect_q.i_crit_edge, %for.cond1.preheader.i.i.out_cleanup_connect_q.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i233, %for.cond1.preheader.i.i.out_cleanup_connect_q.i_crit_edge ], [ -19, %for.body.i78.i.out_cleanup_connect_q.i_crit_edge ], [ %call.i.i233, %for.body3.i.i.out_cleanup_connect_q.i_crit_edge ]
  call void @nvme_cancel_tagset(ptr noundef %ctrl) #13
  br i1 %new, label %if.then32.i, label %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge

out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge: ; preds = %out_cleanup_connect_q.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_io_queues.i

if.then32.i:                                      ; preds = %out_cleanup_connect_q.i
  call void @__sanitizer_cov_trace_pc() #15
  %connect_q33.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 7
  %163 = ptrtoint ptr %connect_q33.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %connect_q33.i, align 4
  call void @blk_cleanup_queue(ptr noundef %164) #13
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then32.i, %if.then14.i232
  %ret.1.ph.i = phi i32 [ %ret.0.i, %if.then32.i ], [ %149, %if.then14.i232 ]
  %tagset37.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %165 = ptrtoint ptr %tagset37.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tagset37.i, align 8
  call void @blk_mq_free_tag_set(ptr noundef %166) #13
  br label %out_free_io_queues.i

out_free_io_queues.i:                             ; preds = %if.then36.i, %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge, %out_cleanup_connect_q.thread.i, %if.then6.i229
  %ret.2.i = phi i32 [ %147, %if.then6.i229 ], [ %ret.1.ph.i, %if.then36.i ], [ %ret.0.i, %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge ], [ -19, %out_cleanup_connect_q.thread.i ]
  %167 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %168)
  %cmp4.i80.i = icmp ugt i32 %168, 1
  br i1 %cmp4.i80.i, label %out_free_io_queues.i.for.body.i84.i_crit_edge, label %out_free_io_queues.i.destroy_admin_crit_edge

out_free_io_queues.i.destroy_admin_crit_edge:     ; preds = %out_free_io_queues.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_admin

out_free_io_queues.i.for.body.i84.i_crit_edge:    ; preds = %out_free_io_queues.i
  br label %for.body.i84.i

for.body.i84.i:                                   ; preds = %for.body.i84.i.for.body.i84.i_crit_edge, %out_free_io_queues.i.for.body.i84.i_crit_edge
  %i.05.i81.i = phi i32 [ %inc.i82.i, %for.body.i84.i.for.body.i84.i_crit_edge ], [ 1, %out_free_io_queues.i.for.body.i84.i_crit_edge ]
  call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef %i.05.i81.i) #13
  %inc.i82.i = add nuw i32 %i.05.i81.i, 1
  %169 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %queue_count, align 4
  %cmp.i83.i = icmp ult i32 %inc.i82.i, %170
  br i1 %cmp.i83.i, label %for.body.i84.i.for.body.i84.i_crit_edge, label %for.body.i84.i.destroy_admin_crit_edge

for.body.i84.i.destroy_admin_crit_edge:           ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_admin

for.body.i84.i.for.body.i84.i_crit_edge:          ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i84.i

if.end53:                                         ; preds = %if.end28.i, %if.end22.i.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %call54 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 1) #13
  br i1 %call54, label %if.end160, label %if.then55

if.then55:                                        ; preds = %if.end53
  %state = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 1
  %171 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %state, align 4
  %173 = add i32 %172, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %173)
  %174 = icmp ult i32 %173, -2
  br i1 %174, label %land.rhs65, label %if.then55.if.end97_crit_edge

if.then55.if.end97_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.rhs65:                                       ; preds = %if.then55
  %.b216 = load i1, ptr @nvme_tcp_setup_ctrl.__already_done, align 1
  br i1 %.b216, label %land.rhs65.if.end97_crit_edge, label %if.then72, !prof !325

land.rhs65.if.end97_crit_edge:                    ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then72:                                        ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_tcp_setup_ctrl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2084, i32 noundef 9, ptr noundef null) #13
  br label %if.end97

if.end97:                                         ; preds = %if.then72, %land.rhs65.if.end97_crit_edge, %if.then55.if.end97_crit_edge
  br i1 %new, label %land.rhs114, label %if.end97.if.end152_crit_edge

if.end97.if.end152_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

land.rhs114:                                      ; preds = %if.end97
  %.b214215 = load i1, ptr @nvme_tcp_setup_ctrl.__already_done.49, align 1
  br i1 %.b214215, label %land.rhs114.if.end152_crit_edge, label %if.then125, !prof !325

land.rhs114.if.end152_crit_edge:                  ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then125:                                       ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_tcp_setup_ctrl.__already_done.49, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2085, i32 noundef 9, ptr noundef null) #13
  br label %if.end152

if.end152:                                        ; preds = %if.then125, %land.rhs114.if.end152_crit_edge, %if.end97.if.end152_crit_edge
  %175 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %176)
  %cmp162 = icmp ugt i32 %176, 1
  br i1 %cmp162, label %if.then164, label %if.end152.destroy_admin_crit_edge

if.end152.destroy_admin_crit_edge:                ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_admin

if.end160:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void @nvme_start_ctrl(ptr noundef %ctrl) #13
  br label %cleanup

if.then164:                                       ; preds = %if.end152
  call void @nvme_stop_queues(ptr noundef %ctrl) #13
  call void @nvme_sync_io_queues(ptr noundef %ctrl) #13
  %177 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp4.i = icmp ugt i32 %178, 1
  br i1 %cmp4.i, label %if.then164.for.body.i_crit_edge, label %if.then164.nvme_tcp_stop_io_queues.exit_crit_edge

if.then164.nvme_tcp_stop_io_queues.exit_crit_edge: ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit

if.then164.for.body.i_crit_edge:                  ; preds = %if.then164
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then164.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then164.for.body.i_crit_edge ]
  call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.05.i) #13
  %inc.i = add nuw i32 %i.05.i, 1
  %179 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %queue_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %180
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge

for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

nvme_tcp_stop_io_queues.exit:                     ; preds = %for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge, %if.then164.nvme_tcp_stop_io_queues.exit_crit_edge
  call void @nvme_cancel_tagset(ptr noundef %ctrl) #13
  %181 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp4.i.i236 = icmp ugt i32 %182, 1
  br i1 %cmp4.i.i236, label %nvme_tcp_stop_io_queues.exit.for.body.i.i240_crit_edge, label %nvme_tcp_stop_io_queues.exit.nvme_tcp_stop_io_queues.exit.i_crit_edge

nvme_tcp_stop_io_queues.exit.nvme_tcp_stop_io_queues.exit.i_crit_edge: ; preds = %nvme_tcp_stop_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit.i

nvme_tcp_stop_io_queues.exit.for.body.i.i240_crit_edge: ; preds = %nvme_tcp_stop_io_queues.exit
  br label %for.body.i.i240

for.body.i.i240:                                  ; preds = %for.body.i.i240.for.body.i.i240_crit_edge, %nvme_tcp_stop_io_queues.exit.for.body.i.i240_crit_edge
  %i.05.i.i237 = phi i32 [ %inc.i.i238, %for.body.i.i240.for.body.i.i240_crit_edge ], [ 1, %nvme_tcp_stop_io_queues.exit.for.body.i.i240_crit_edge ]
  call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.05.i.i237) #13
  %inc.i.i238 = add nuw i32 %i.05.i.i237, 1
  %183 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %queue_count, align 4
  %cmp.i.i239 = icmp ult i32 %inc.i.i238, %184
  br i1 %cmp.i.i239, label %for.body.i.i240.for.body.i.i240_crit_edge, label %for.body.i.i240.nvme_tcp_stop_io_queues.exit.i_crit_edge

for.body.i.i240.nvme_tcp_stop_io_queues.exit.i_crit_edge: ; preds = %for.body.i.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit.i

for.body.i.i240.for.body.i.i240_crit_edge:        ; preds = %for.body.i.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i240

nvme_tcp_stop_io_queues.exit.i:                   ; preds = %for.body.i.i240.nvme_tcp_stop_io_queues.exit.i_crit_edge, %nvme_tcp_stop_io_queues.exit.nvme_tcp_stop_io_queues.exit.i_crit_edge
  br i1 %new, label %if.then.i, label %nvme_tcp_stop_io_queues.exit.i.if.end.i243_crit_edge

nvme_tcp_stop_io_queues.exit.i.if.end.i243_crit_edge: ; preds = %nvme_tcp_stop_io_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i243

if.then.i:                                        ; preds = %nvme_tcp_stop_io_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %connect_q.i241 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 7
  %185 = ptrtoint ptr %connect_q.i241 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %connect_q.i241, align 4
  call void @blk_cleanup_queue(ptr noundef %186) #13
  %tagset.i242 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %187 = ptrtoint ptr %tagset.i242 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tagset.i242, align 8
  call void @blk_mq_free_tag_set(ptr noundef %188) #13
  br label %if.end.i243

if.end.i243:                                      ; preds = %if.then.i, %nvme_tcp_stop_io_queues.exit.i.if.end.i243_crit_edge
  %189 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp4.i5.i = icmp ugt i32 %190, 1
  br i1 %cmp4.i5.i, label %if.end.i243.for.body.i9.i_crit_edge, label %if.end.i243.destroy_admin_crit_edge

if.end.i243.destroy_admin_crit_edge:              ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_admin

if.end.i243.for.body.i9.i_crit_edge:              ; preds = %if.end.i243
  br label %for.body.i9.i

for.body.i9.i:                                    ; preds = %for.body.i9.i.for.body.i9.i_crit_edge, %if.end.i243.for.body.i9.i_crit_edge
  %i.05.i6.i = phi i32 [ %inc.i7.i, %for.body.i9.i.for.body.i9.i_crit_edge ], [ 1, %if.end.i243.for.body.i9.i_crit_edge ]
  call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef %i.05.i6.i) #13
  %inc.i7.i = add nuw i32 %i.05.i6.i, 1
  %191 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %queue_count, align 4
  %cmp.i8.i = icmp ult i32 %inc.i7.i, %192
  br i1 %cmp.i8.i, label %for.body.i9.i.for.body.i9.i_crit_edge, label %for.body.i9.i.destroy_admin_crit_edge

for.body.i9.i.destroy_admin_crit_edge:            ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_admin

for.body.i9.i.for.body.i9.i_crit_edge:            ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i9.i

destroy_admin:                                    ; preds = %for.body.i9.i.destroy_admin_crit_edge, %if.end.i243.destroy_admin_crit_edge, %if.end152.destroy_admin_crit_edge, %for.body.i84.i.destroy_admin_crit_edge, %out_free_io_queues.i.destroy_admin_crit_edge, %nvme_tcp_alloc_io_queues.exit.i, %nvme_tcp_configure_io_queues.exit.thread254, %if.then7, %if.then4
  %ret.0 = phi i32 [ -95, %if.then4 ], [ -22, %if.end152.destroy_admin_crit_edge ], [ -95, %if.then7 ], [ %retval.0.i.ph.i, %nvme_tcp_configure_io_queues.exit.thread254 ], [ -22, %if.end.i243.destroy_admin_crit_edge ], [ %call.i.i.i, %nvme_tcp_alloc_io_queues.exit.i ], [ %ret.2.i, %out_free_io_queues.i.destroy_admin_crit_edge ], [ %ret.2.i, %for.body.i84.i.destroy_admin_crit_edge ], [ -22, %for.body.i9.i.destroy_admin_crit_edge ]
  call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %193 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %admin_q, align 8
  call void @blk_sync_queue(ptr noundef %194) #13
  call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef 0)
  call void @nvme_cancel_admin_tagset(ptr noundef %ctrl) #13
  call fastcc void @nvme_tcp_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %new)
  br label %cleanup

cleanup:                                          ; preds = %destroy_admin, %if.end160, %nvme_tcp_configure_admin_queue.exit.cleanup_crit_edge, %nvme_tcp_configure_admin_queue.exit.thread249, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %destroy_admin ], [ 0, %if.end160 ], [ %error.4.i, %nvme_tcp_configure_admin_queue.exit.cleanup_crit_edge ], [ -12, %nvme_tcp_configure_admin_queue.exit.thread249 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_uninit_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_reconnect_or_remove(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end54_crit_edge [
    i32 3, label %if.end40
    i32 0, label %entry.land.rhs_crit_edge
    i32 1, label %entry.land.rhs_crit_edge67
  ]

entry.land.rhs_crit_edge67:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge67
  %.b66 = load i1, ptr @nvme_tcp_reconnect_or_remove.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end54_crit_edge, label %if.then11, !prof !325

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nvme_tcp_reconnect_or_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2023, i32 noundef 9, ptr noundef null) #13
  br label %if.end54

if.end40:                                         ; preds = %entry
  %call = tail call zeroext i1 @nvmf_should_reconnect(ptr noundef %ctrl) #13
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 8
  br i1 %call, label %do.end44, label %do.end51

do.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %5 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts, align 8
  %reconnect_delay = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconnect_delay, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %8) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %9 = load ptr, ptr @nvme_wq, align 4
  %connect_work = getelementptr i8, ptr %ctrl, i32 3604
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  %reconnect_delay47 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %reconnect_delay47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reconnect_delay47, align 4
  %mul = mul i32 %13, 100
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %connect_work, i32 noundef %mul) #13
  br label %if.end54

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.31) #17
  %call53 = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %do.end44, %if.then11, %land.rhs.if.end54_crit_edge, %entry.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmf_should_reconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_keep_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_teardown_io_queues(ptr noundef %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  tail call void @nvme_start_freeze(ptr noundef %ctrl) #13
  tail call void @nvme_stop_queues(ptr noundef %ctrl) #13
  tail call void @nvme_sync_io_queues(ptr noundef %ctrl) #13
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4.i = icmp ugt i32 %3, 1
  br i1 %cmp4.i, label %if.end.for.body.i_crit_edge, label %if.end.nvme_tcp_stop_io_queues.exit_crit_edge

if.end.nvme_tcp_stop_io_queues.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.05.i) #13
  %inc.i = add nuw i32 %i.05.i, 1
  %4 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge

for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

nvme_tcp_stop_io_queues.exit:                     ; preds = %for.body.i.nvme_tcp_stop_io_queues.exit_crit_edge, %if.end.nvme_tcp_stop_io_queues.exit_crit_edge
  tail call void @nvme_cancel_tagset(ptr noundef %ctrl) #13
  br i1 %remove, label %if.then1, label %nvme_tcp_stop_io_queues.exit.if.end2_crit_edge

nvme_tcp_stop_io_queues.exit.if.end2_crit_edge:   ; preds = %nvme_tcp_stop_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then1:                                         ; preds = %nvme_tcp_stop_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvme_start_queues(ptr noundef %ctrl) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %nvme_tcp_stop_io_queues.exit.if.end2_crit_edge
  %6 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.i.i = icmp ugt i32 %7, 1
  br i1 %cmp4.i.i, label %if.end2.for.body.i.i_crit_edge, label %if.end2.nvme_tcp_stop_io_queues.exit.i_crit_edge

if.end2.nvme_tcp_stop_io_queues.exit.i_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit.i

if.end2.for.body.i.i_crit_edge:                   ; preds = %if.end2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end2.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.end2.for.body.i.i_crit_edge ]
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef %i.05.i.i) #13
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %8 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.nvme_tcp_stop_io_queues.exit.i_crit_edge

for.body.i.i.nvme_tcp_stop_io_queues.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_stop_io_queues.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

nvme_tcp_stop_io_queues.exit.i:                   ; preds = %for.body.i.i.nvme_tcp_stop_io_queues.exit.i_crit_edge, %if.end2.nvme_tcp_stop_io_queues.exit.i_crit_edge
  br i1 %remove, label %if.then.i, label %nvme_tcp_stop_io_queues.exit.i.if.end.i_crit_edge

nvme_tcp_stop_io_queues.exit.i.if.end.i_crit_edge: ; preds = %nvme_tcp_stop_io_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %nvme_tcp_stop_io_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %connect_q.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 7
  %10 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connect_q.i, align 4
  tail call void @blk_cleanup_queue(ptr noundef %11) #13
  %tagset.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %12 = ptrtoint ptr %tagset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tagset.i, align 8
  tail call void @blk_mq_free_tag_set(ptr noundef %13) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %nvme_tcp_stop_io_queues.exit.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp4.i5.i = icmp ugt i32 %15, 1
  br i1 %cmp4.i5.i, label %if.end.i.for.body.i9.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i.for.body.i9.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i9.i

for.body.i9.i:                                    ; preds = %for.body.i9.i.for.body.i9.i_crit_edge, %if.end.i.for.body.i9.i_crit_edge
  %i.05.i6.i = phi i32 [ %inc.i7.i, %for.body.i9.i.for.body.i9.i_crit_edge ], [ 1, %if.end.i.for.body.i9.i_crit_edge ]
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef %i.05.i6.i) #13
  %inc.i7.i = add nuw i32 %i.05.i6.i, 1
  %16 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue_count, align 4
  %cmp.i8.i = icmp ult i32 %inc.i7.i, %17
  br i1 %cmp.i8.i, label %for.body.i9.i.for.body.i9.i_crit_edge, label %for.body.i9.i.return_crit_edge

for.body.i9.i.return_crit_edge:                   ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.i9.i.for.body.i9.i_crit_edge:            ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i9.i

return:                                           ; preds = %for.body.i9.i.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_freeze(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_sync_io_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cancel_tagset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_stop_queue(ptr nocapture noundef readonly %nctrl, i32 noundef %qid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -640
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %queue_lock = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 3
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %flags = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 19
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @kernel_sock_shutdown(ptr noundef %3, i32 noundef 2) #13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #13
  %8 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk.i.i, align 16
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 72
  %10 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk_user_data.i.i, align 4
  %data_ready.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 29
  %11 = ptrtoint ptr %data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_ready.i.i, align 4
  %13 = load ptr, ptr %sk.i.i, align 16
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %sk_data_ready.i.i, align 8
  %state_change.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 28
  %15 = ptrtoint ptr %state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state_change.i.i, align 4
  %17 = load ptr, ptr %sk.i.i, align 16
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 76
  %18 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %sk_state_change.i.i, align 4
  %write_space.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 30
  %19 = ptrtoint ptr %write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_space.i.i, align 4
  %21 = load ptr, ptr %sk.i.i, align 16
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 78
  %22 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %sk_write_space.i.i, align 4
  %23 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock7.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock7.i.i) #13
  %io_work.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_work.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_free_queue(ptr nocapture noundef readonly %nctrl, i32 noundef %qid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -640
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid
  %flags = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 19
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdr_digest = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 21
  %2 = ptrtoint ptr %hdr_digest to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr_digest, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %data_digest = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 22
  %4 = ptrtoint ptr %data_digest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_digest, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %rcv_hash.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 23
  %6 = ptrtoint ptr %rcv_hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcv_hash.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  tail call void @kfree_sensitive(ptr noundef %7) #13
  %snd_hash.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 24
  %10 = ptrtoint ptr %snd_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %snd_hash.i, align 4
  tail call void @kfree_sensitive(ptr noundef %11) #13
  tail call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i, ptr noundef %9) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false.if.end5_crit_edge
  %pf_cache = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 27
  %12 = ptrtoint ptr %pf_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf_cache, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %13 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %16 = getelementptr %struct.page, ptr %14, i32 %shr.i, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !325

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %18, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i28 = getelementptr %struct.page, ptr %14, i32 %shr.i
  %19 = ptrtoint ptr %add.ptr.i28 to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %pagecnt_bias = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 27, i32 3
  %21 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagecnt_bias, align 4
  tail call void @__page_frag_cache_drain(ptr noundef %20, i32 noundef %22) #13
  %23 = ptrtoint ptr %pf_cache to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pf_cache, align 4
  br label %if.end14

if.end14:                                         ; preds = %virt_to_head_page.exit, %if.end5.if.end14_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void @sock_release(ptr noundef %25) #13
  %pdu = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 8
  %26 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdu, align 4
  tail call void @kfree(ptr noundef %27) #13
  %send_mutex = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 4
  tail call void @mutex_destroy(ptr noundef %send_mutex) #13
  %queue_lock = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 3
  tail call void @mutex_destroy(ptr noundef %queue_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_sync_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cancel_admin_tagset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef 0)
  br i1 %remove, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %1) #13
  %fabrics_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabrics_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %3) #13
  %admin_tagset = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 13
  %4 = ptrtoint ptr %admin_tagset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %admin_tagset, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdu.i = getelementptr i8, ptr %ctrl, i32 3736
  %6 = ptrtoint ptr %pdu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdu.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.nvme_tcp_free_admin_queue.exit_crit_edge, label %if.then.i

if.end.nvme_tcp_free_admin_queue.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_free_admin_queue.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %async_event_work.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 66
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work.i) #13
  %8 = ptrtoint ptr %pdu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdu.i, align 8
  tail call void @page_frag_free(ptr noundef %9) #13
  %10 = ptrtoint ptr %pdu.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pdu.i, align 8
  br label %nvme_tcp_free_admin_queue.exit

nvme_tcp_free_admin_queue.exit:                   ; preds = %if.then.i, %if.end.nvme_tcp_free_admin_queue.exit_crit_edge
  tail call fastcc void @nvme_tcp_free_queue(ptr noundef %ctrl, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_teardown_ctrl(ptr noundef %ctrl, i1 noundef zeroext %shutdown) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %err_work = getelementptr i8, ptr %ctrl, i32 3560
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %err_work) #13
  %connect_work = getelementptr i8, ptr %ctrl, i32 3604
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect_work) #13
  tail call fastcc void @nvme_tcp_teardown_io_queues(ptr noundef %ctrl, i1 noundef zeroext %shutdown)
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  br i1 %shutdown, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @nvme_shutdown_ctrl(ptr noundef %ctrl) #13
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  %admin_q.i.c17 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %admin_q.i.c17 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q.i.c17, align 8
  tail call void @blk_sync_queue(ptr noundef %1) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef 0) #13
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl) #13
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl) #13
  br label %nvme_tcp_teardown_admin_queue.exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @nvme_disable_ctrl(ptr noundef %ctrl) #13
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #13
  %admin_q.i.c = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %2 = ptrtoint ptr %admin_q.i.c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %admin_q.i.c, align 8
  tail call void @blk_sync_queue(ptr noundef %3) #13
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl, i32 noundef 0) #13
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl) #13
  br label %nvme_tcp_teardown_admin_queue.exit

nvme_tcp_teardown_admin_queue.exit:               ; preds = %if.else, %if.then
  tail call fastcc void @nvme_tcp_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %shutdown) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_shutdown_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_disable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmf_ip_options_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read32(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_write32(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read64(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_free_ctrl(ptr noundef %nctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr i8, ptr %nctrl, i32 -452
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.free_ctrl_crit_edge, label %if.end

entry.free_ctrl_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ctrl

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_tcp_ctrl_mutex, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %nctrl, i32 -448
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %nctrl, i32 -448
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_tcp_ctrl_mutex) #13
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 93
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  tail call void @nvmf_free_options(ptr noundef %11) #13
  br label %free_ctrl

free_ctrl:                                        ; preds = %list_del.exit, %entry.free_ctrl_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -640
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void @kfree(ptr noundef %13) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_submit_async_event(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %arg, i32 -640
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %pdu1 = getelementptr i8, ptr %arg, i32 3736
  %2 = ptrtoint ptr %pdu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu1, align 8
  %hdr_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = call ptr @memset(ptr %3, i32 0, i32 72)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %3, align 8
  %8 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd2 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %3, i32 0, i32 1
  %hlen = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %hlen to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 72, ptr %hlen, align 2
  %add = select i1 %tobool.not.i, i32 1207959552, i32 1275068416
  %plen = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %plen, align 4
  %15 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %cmd2, align 8
  %command_id = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %command_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 31, ptr %command_id, align 2
  %flags12 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags12, align 1
  %19 = or i8 %18, 64
  store i8 %19, ptr %flags12, align 1
  %dptr.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 6
  %20 = ptrtoint ptr %dptr.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %dptr.i, align 8
  %length.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %length.i, align 8
  %type.i = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 90, ptr %type.i, align 1
  %state = getelementptr i8, ptr %arg, i32 3824
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 8
  %offset = getelementptr i8, ptr %arg, i32 3816
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %offset, align 8
  %curr_bio = getelementptr i8, ptr %arg, i32 3784
  %25 = ptrtoint ptr %curr_bio to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %curr_bio, align 8
  %data_len = getelementptr i8, ptr %arg, i32 3744
  %26 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data_len, align 8
  %queue2.i = getelementptr i8, ptr %arg, i32 3740
  %27 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue2.i, align 4
  %lentry.i = getelementptr i8, ptr %arg, i32 3776
  %req_list.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %lentry.i, ptr noundef %lentry.i, ptr noundef %req_list.i) #13
  br i1 %call.i.i, label %land.lhs.true.i, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %send_list.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %send_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %send_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %send_list.i
  br i1 %cmp.i.not.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %request.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 14
  %31 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %request.i, align 4
  %tobool4.not.i = icmp ne ptr %32, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %33 = phi i1 [ true, %land.lhs.true.i.land.end.i_crit_edge ], [ true, %if.end.land.end.i_crit_edge ], [ %tobool4.not.i, %land.rhs.i ]
  %io_cpu.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %io_cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_cpu.i, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !313) #13
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %39)
  %cmp.i = icmp ne i32 %35, %39
  %brmerge39.i = select i1 %cmp.i, i1 true, i1 %33
  br i1 %brmerge39.i, label %land.end.i.if.end.i_crit_edge, label %land.lhs.true11.i

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true11.i:                                ; preds = %land.end.i
  %send_mutex.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 4
  %call12.i = tail call i32 @mutex_trylock(ptr noundef %send_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true11.i.if.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true11.i
  %more_requests.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 7
  %40 = ptrtoint ptr %more_requests.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %more_requests.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i
  %call.i40.i = tail call fastcc i32 @nvme_tcp_try_send(ptr noundef %28) #13
  %cmp.i41.i = icmp sgt i32 %call.i40.i, 0
  br i1 %cmp.i41.i, label %do.body.i.i.do.body.i.i_crit_edge, label %nvme_tcp_send_all.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

nvme_tcp_send_all.exit.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %more_requests.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %more_requests.i, align 4
  tail call void @mutex_unlock(ptr noundef %send_mutex.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %nvme_tcp_send_all.exit.i, %land.lhs.true11.i.if.end.i_crit_edge, %land.end.i.if.end.i_crit_edge
  %send_list.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 6
  %42 = ptrtoint ptr %send_list.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %send_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %43, %send_list.i.i
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.if.then22.i_crit_edge

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %44 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i5.i.i = icmp eq ptr %45, null
  br i1 %cmp.i5.i.i, label %nvme_tcp_queue_more.exit.i, label %lor.lhs.false.i.i.if.then22.i_crit_edge

lor.lhs.false.i.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

nvme_tcp_queue_more.exit.i:                       ; preds = %lor.lhs.false.i.i
  %more_requests.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 7
  %46 = ptrtoint ptr %more_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %more_requests.i.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool2.i.not.i = icmp eq i8 %47, 0
  br i1 %tobool2.i.not.i, label %nvme_tcp_queue_more.exit.i.nvme_tcp_queue_request.exit_crit_edge, label %nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge

nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

nvme_tcp_queue_more.exit.i.nvme_tcp_queue_request.exit_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_queue_request.exit

if.then22.i:                                      ; preds = %nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge, %lor.lhs.false.i.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %48 = ptrtoint ptr %io_cpu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_cpu.i, align 4
  %50 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %28, i32 0, i32 1
  %call24.i = tail call zeroext i1 @queue_work_on(i32 noundef %49, ptr noundef %50, ptr noundef %io_work.i) #13
  br label %nvme_tcp_queue_request.exit

nvme_tcp_queue_request.exit:                      ; preds = %if.then22.i, %nvme_tcp_queue_more.exit.i.nvme_tcp_queue_request.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_delete_ctrl(ptr noundef %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvme_tcp_teardown_ctrl(ptr noundef %ctrl, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_get_address(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_free_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_tcp_try_send(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  %sg.i.i112 = alloca %struct.scatterlist, align 4
  %sg.i.i81 = alloca %struct.scatterlist, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.nvme_tcp_queue, ptr %queue, i32 0, i32 14
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %send_list.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %queue, i32 0, i32 6
  %2 = ptrtoint ptr %send_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %send_list.i, align 4
  %cmp.not.i = icmp eq ptr %3, %send_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -64
  %tobool.not39.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not39.i
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end25.i_crit_edge

if.then.if.end25.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then.i:                                        ; preds = %if.then
  %req_list.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %queue, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_list.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  tail call void @llvm.prefetch.p0(ptr %req_list.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %req_list.i.i) #13, !srcloc !327
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not6.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not6.i.i, label %if.then.i.nvme_tcp_process_req_list.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.nvme_tcp_process_req_list.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_process_req_list.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %5 = inttoptr i32 %asmresult.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %node.07.i.i = phi ptr [ %5, %for.body.lr.ph.i.i ], [ %13, %list_add.exit.i.i.for.body.i.i_crit_edge ]
  %entry1.i.i = getelementptr i8, ptr %node.07.i.i, i32 -8
  %6 = ptrtoint ptr %send_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_list.i, align 4
  %call.i.i5.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.i.i, ptr noundef %send_list.i, ptr noundef %7) #13
  br i1 %call.i.i5.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add.exit.i.i_crit_edge

for.body.i.i.list_add.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry1.i.i, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %entry1.i.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %node.07.i.i, i32 -4
  %10 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %send_list.i, ptr %prev3.i.i.i.i, align 4
  %11 = ptrtoint ptr %send_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry1.i.i, ptr %send_list.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add.exit.i.i_crit_edge
  %12 = ptrtoint ptr %node.07.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.07.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %list_add.exit.i.i.nvme_tcp_process_req_list.exit.i_crit_edge, label %list_add.exit.i.i.for.body.i.i_crit_edge

list_add.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

list_add.exit.i.i.nvme_tcp_process_req_list.exit.i_crit_edge: ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_process_req_list.exit.i

nvme_tcp_process_req_list.exit.i:                 ; preds = %list_add.exit.i.i.nvme_tcp_process_req_list.exit.i_crit_edge, %if.then.i.nvme_tcp_process_req_list.exit.i_crit_edge
  %14 = ptrtoint ptr %send_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %send_list.i, align 4
  %cmp12.not.i = icmp eq ptr %15, %send_list.i
  %add.ptr16.i = getelementptr i8, ptr %15, i32 -64
  %tobool20.not40.i = icmp eq ptr %add.ptr16.i, null
  %tobool20.not.i = or i1 %cmp12.not.i, %tobool20.not40.i
  br i1 %tobool20.not.i, label %nvme_tcp_fetch_request.exit.thread, label %nvme_tcp_process_req_list.exit.i.if.end25.i_crit_edge, !prof !324

nvme_tcp_process_req_list.exit.i.if.end25.i_crit_edge: ; preds = %nvme_tcp_process_req_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

nvme_tcp_fetch_request.exit.thread:               ; preds = %nvme_tcp_process_req_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %request, align 4
  br label %cleanup

if.end25.i:                                       ; preds = %nvme_tcp_process_req_list.exit.i.if.end25.i_crit_edge, %if.then.if.end25.i_crit_edge
  %req.0.i = phi ptr [ %add.ptr.i, %if.then.if.end25.i_crit_edge ], [ %add.ptr16.i, %nvme_tcp_process_req_list.exit.i.if.end25.i_crit_edge ]
  %entry26.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %req.0.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry26.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end25.i.nvme_tcp_fetch_request.exit_crit_edge

if.end25.i.nvme_tcp_fetch_request.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_fetch_request.exit

if.end.i.i.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %req.0.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %entry26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry26.i, align 4
  %prev1.i.i.i38.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i38.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %nvme_tcp_fetch_request.exit

nvme_tcp_fetch_request.exit:                      ; preds = %if.end.i.i.i, %if.end25.i.nvme_tcp_fetch_request.exit_crit_edge
  %23 = ptrtoint ptr %entry26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %entry26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %req.0.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req.0.i, ptr %request, align 4
  br label %if.end5

if.end5:                                          ; preds = %nvme_tcp_fetch_request.exit, %entry.if.end5_crit_edge
  %26 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %request, align 4
  %state = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then7, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  %queue1.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue1.i, align 4
  %pdu2.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %pdu2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdu2.i, align 8
  %ctrl.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 18
  %34 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl.i.i.i, align 4
  %async_req.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %35, i32 0, i32 9
  %cmp.i.i.i = icmp eq ptr %async_req.i.i.i, %27
  br i1 %cmp.i.i.i, label %if.then7.nvme_tcp_has_inline_data.exit.thread.i_crit_edge, label %if.end.i.i, !prof !324

if.then7.nvme_tcp_has_inline_data.exit.thread.i_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_has_inline_data.exit.thread.i

if.end.i.i:                                       ; preds = %if.then7
  %cmd_flags.i.i = getelementptr i8, ptr %27, i32 -180
  %36 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_has_inline_data.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %data_len.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 3
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge, label %nvme_tcp_has_inline_data.exit.i

land.lhs.true.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_has_inline_data.exit.thread.i

nvme_tcp_has_inline_data.exit.thread.i:           ; preds = %land.lhs.true.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge, %if.end.i.i.nvme_tcp_has_inline_data.exit.thread.i_crit_edge, %if.then7.nvme_tcp_has_inline_data.exit.thread.i_crit_edge
  %hdr_digest.i73.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 21
  %40 = ptrtoint ptr %hdr_digest.i73.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hdr_digest.i73.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i74.i = icmp eq i8 %41, 0
  %add75.i = select i1 %tobool.not.i74.i, i32 72, i32 76
  %offset76.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 15
  %42 = ptrtoint ptr %offset76.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset76.i, align 8
  %sub77.i = sub i32 %add75.i, %43
  br label %lor.lhs.false.i

nvme_tcp_has_inline_data.exit.i:                  ; preds = %land.lhs.true.i.i
  %cmnd_capsule_len.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 17
  %44 = ptrtoint ptr %cmnd_capsule_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmnd_capsule_len.i.i.i, align 4
  %sub.i.i.i = add i32 %45, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub.i.i.i)
  %cmp7.i.not.i = icmp ugt i32 %39, %sub.i.i.i
  %hdr_digest.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 21
  %46 = ptrtoint ptr %hdr_digest.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hdr_digest.i.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i74 = icmp eq i8 %47, 0
  %add.i = select i1 %tobool.not.i.i74, i32 72, i32 76
  %offset.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 15
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i, align 8
  %sub.i = sub i32 %add.i, %49
  br i1 %cmp7.i.not.i, label %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge, label %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge

nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge: ; preds = %nvme_tcp_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge: ; preds = %nvme_tcp_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge, %nvme_tcp_has_inline_data.exit.thread.i
  %sub84.i = phi i32 [ %sub77.i, %nvme_tcp_has_inline_data.exit.thread.i ], [ %sub.i, %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge ]
  %50 = phi i32 [ %43, %nvme_tcp_has_inline_data.exit.thread.i ], [ %49, %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge ]
  %offset82.i = phi ptr [ %offset76.i, %nvme_tcp_has_inline_data.exit.thread.i ], [ %offset.i, %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge ]
  %tobool.not.i80.i = phi i1 [ %tobool.not.i74.i, %nvme_tcp_has_inline_data.exit.thread.i ], [ %tobool.not.i.i74, %nvme_tcp_has_inline_data.exit.i.lor.lhs.false.i_crit_edge ]
  %send_list.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 6
  %51 = ptrtoint ptr %send_list.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %send_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %52, %send_list.i.i
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %lor.lhs.false.i.nvme_tcp_queue_more.exit.thread.i_crit_edge

lor.lhs.false.i.nvme_tcp_queue_more.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_queue_more.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i
  %req_list.i.i75 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 5
  %53 = ptrtoint ptr %req_list.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %req_list.i.i75, align 4
  %cmp.i5.i.i = icmp eq ptr %54, null
  br i1 %cmp.i5.i.i, label %nvme_tcp_queue_more.exit.i, label %lor.lhs.false.i.i.nvme_tcp_queue_more.exit.thread.i_crit_edge

lor.lhs.false.i.i.nvme_tcp_queue_more.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_queue_more.exit.thread.i

nvme_tcp_queue_more.exit.i:                       ; preds = %lor.lhs.false.i.i
  %more_requests.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 7
  %55 = ptrtoint ptr %more_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %more_requests.i.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool2.i.not.i = icmp eq i8 %56, 0
  br i1 %tobool2.i.not.i, label %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge, label %nvme_tcp_queue_more.exit.i.nvme_tcp_queue_more.exit.thread.i_crit_edge

nvme_tcp_queue_more.exit.i.nvme_tcp_queue_more.exit.thread.i_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_queue_more.exit.thread.i

nvme_tcp_queue_more.exit.i.if.end.i_crit_edge:    ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

nvme_tcp_queue_more.exit.thread.i:                ; preds = %nvme_tcp_queue_more.exit.i.nvme_tcp_queue_more.exit.thread.i_crit_edge, %lor.lhs.false.i.i.nvme_tcp_queue_more.exit.thread.i_crit_edge, %lor.lhs.false.i.nvme_tcp_queue_more.exit.thread.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %nvme_tcp_queue_more.exit.thread.i, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge
  %sub85.i = phi i32 [ %sub.i, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ %sub84.i, %nvme_tcp_queue_more.exit.thread.i ], [ %sub84.i, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %57 = phi i32 [ %49, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ %50, %nvme_tcp_queue_more.exit.thread.i ], [ %50, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %offset83.i = phi ptr [ %offset.i, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ %offset82.i, %nvme_tcp_queue_more.exit.thread.i ], [ %offset82.i, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %tobool.not.i81.i = phi i1 [ %tobool.not.i.i74, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ %tobool.not.i80.i, %nvme_tcp_queue_more.exit.thread.i ], [ %tobool.not.i80.i, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %retval.0.i79.i = phi i1 [ true, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ false, %nvme_tcp_queue_more.exit.thread.i ], [ false, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %flags.0.i = phi i32 [ 163904, %nvme_tcp_has_inline_data.exit.i.if.end.i_crit_edge ], [ 163904, %nvme_tcp_queue_more.exit.thread.i ], [ 192, %nvme_tcp_queue_more.exit.i.if.end.i_crit_edge ]
  %tobool.not.i.not.i = xor i1 %tobool.not.i81.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool11.not.i = icmp eq i32 %57, 0
  %or.cond.i = select i1 %tobool.not.i.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.then12.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %snd_hash.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 24
  %58 = ptrtoint ptr %snd_hash.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %snd_hash.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #13
  %60 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %33, i32 noundef 72) #13
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 72
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %59, i32 0, i32 2
  %61 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 72, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %59, i32 0, i32 3
  %63 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i.i, ptr %result3.i.i.i, align 32
  %call.i.i = call i32 @crypto_ahash_digest(ptr noundef %59) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %64 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %66 = load ptr, ptr @mem_map, align 4
  %67 = ptrtoint ptr %33 to i32
  %sub14.i = add i32 %67, 1073741824
  %shr.i = lshr i32 %sub14.i, 12
  %add.ptr.i76 = getelementptr %struct.page, ptr %66, i32 %shr.i
  %and.i = and i32 %67, 4095
  %68 = ptrtoint ptr %offset83.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset83.i, align 8
  %add18.i = add i32 %69, %and.i
  %call19.i = call i32 @kernel_sendpage(ptr noundef %65, ptr noundef %add.ptr.i76, i32 noundef %add18.i, i32 noundef %sub85.i, i32 noundef %flags.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 1
  br i1 %cmp.i, label %if.end13.i.done_crit_edge, label %if.end24.i, !prof !324

if.end13.i.done_crit_edge:                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end24.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub85.i, i32 %call19.i)
  %tobool26.not.i = icmp eq i32 %sub85.i, %call19.i
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end37.i

if.then27.i:                                      ; preds = %if.end24.i
  br i1 %retval.0.i79.i, label %if.then29.i, label %if.else35.i

if.then29.i:                                      ; preds = %if.then27.i
  %70 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %state, align 8
  %data_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 22
  %71 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool30.not.i = icmp eq i8 %72, 0
  br i1 %tobool30.not.i, label %if.then29.i.if.end11_crit_edge, label %if.then31.i

if.then29.i.if.end11_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then31.i:                                      ; preds = %if.then29.i
  %snd_hash32.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 24
  %73 = ptrtoint ptr %snd_hash32.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %snd_hash32.i, align 4
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tfm.i.i.i, align 16
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 128
  %and.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i70.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i70.i, label %if.end.i71.i, label %if.then31.i.if.end11_crit_edge

if.then31.i.if.end11_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end.i71.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i.i = getelementptr i8, ptr %76, i32 -128
  %79 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call2.i.i = call i32 %80(ptr noundef %74) #13
  br label %if.end11

if.else35.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %request.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %31, i32 0, i32 14
  %81 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %request.i.i, align 4
  br label %if.end11

if.end37.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %offset83.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset83.i, align 8
  %add39.i = add i32 %83, %call19.i
  store i32 %add39.i, ptr %offset83.i, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.else35.i, %if.end.i71.i, %if.then31.i.if.end11_crit_edge, %if.then29.i.if.end11_crit_edge
  %84 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %queue1.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %85, i32 0, i32 18
  %86 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl.i.i, align 4
  %async_req.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %87, i32 0, i32 9
  %cmp.i.i = icmp eq ptr %async_req.i.i, %27
  br i1 %cmp.i.i, label %if.end11.cleanup_crit_edge, label %if.end.i79, !prof !324

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i79:                                       ; preds = %if.end11
  %cmd_flags.i = getelementptr i8, ptr %27, i32 -180
  %88 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i78 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool.i.not.i = icmp eq i32 %and.i.i78, 0
  br i1 %tobool.i.not.i, label %if.end.i79.cleanup_crit_edge, label %land.lhs.true.i

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i79
  %data_len.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 3
  %90 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool4.not.i = icmp eq i32 %91, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %nvme_tcp_has_inline_data.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

nvme_tcp_has_inline_data.exit:                    ; preds = %land.lhs.true.i
  %cmnd_capsule_len.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %85, i32 0, i32 17
  %92 = ptrtoint ptr %cmnd_capsule_len.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cmnd_capsule_len.i.i, align 4
  %sub.i.i = add i32 %93, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %sub.i.i)
  %cmp7.i.not = icmp ugt i32 %91, %sub.i.i
  br i1 %cmp7.i.not, label %nvme_tcp_has_inline_data.exit.cleanup_crit_edge, label %if.end15thread-pre-split

nvme_tcp_has_inline_data.exit.cleanup_crit_edge:  ; preds = %nvme_tcp_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15thread-pre-split:                         ; preds = %nvme_tcp_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load i32, ptr %state, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.end5.if.end15_crit_edge
  %95 = phi i32 [ %.pr, %if.end15thread-pre-split ], [ %29, %if.end5.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp17 = icmp eq i32 %95, 1
  br i1 %cmp17, label %if.then18, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %queue1.i82 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 2
  %96 = ptrtoint ptr %queue1.i82 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %queue1.i82, align 4
  %pdu2.i83 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 1
  %98 = ptrtoint ptr %pdu2.i83 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdu2.i83, align 8
  %hdr_digest.i.i84 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %97, i32 0, i32 21
  %100 = ptrtoint ptr %hdr_digest.i.i84 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hdr_digest.i.i84, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i.i85 = icmp eq i8 %101, 0
  %conv.i.i = select i1 %tobool.not.i.i85, i32 0, i32 4
  %offset.i86 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 15
  %102 = ptrtoint ptr %offset.i86 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %offset.i86, align 8
  %sub.i87 = sub i32 24, %103
  %add.i88 = add i32 %sub.i87, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i89 = icmp ne i8 %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool5.not.i = icmp eq i32 %103, 0
  %or.cond.i90 = select i1 %tobool.not.i89, i1 %tobool5.not.i, i1 false
  br i1 %or.cond.i90, label %if.then.i97, label %if.then18.if.end.i101_crit_edge

if.then18.if.end.i101_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i101

if.then.i97:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %snd_hash.i91 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %97, i32 0, i32 24
  %104 = ptrtoint ptr %snd_hash.i91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %snd_hash.i91, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i81) #13
  %106 = call ptr @memset(ptr %sg.i.i81, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i81, ptr noundef %99, i32 noundef 24) #13
  %add.ptr.i.i92 = getelementptr i8, ptr %99, i32 24
  %src1.i.i.i93 = getelementptr inbounds %struct.ahash_request, ptr %105, i32 0, i32 2
  %107 = ptrtoint ptr %src1.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %sg.i.i81, ptr %src1.i.i.i93, align 4
  %nbytes2.i.i.i94 = getelementptr inbounds %struct.ahash_request, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %nbytes2.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 24, ptr %nbytes2.i.i.i94, align 8
  %result3.i.i.i95 = getelementptr inbounds %struct.ahash_request, ptr %105, i32 0, i32 3
  %109 = ptrtoint ptr %result3.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr.i.i92, ptr %result3.i.i.i95, align 32
  %call.i.i96 = call i32 @crypto_ahash_digest(ptr noundef %105) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i81) #13
  br label %if.end.i101

if.end.i101:                                      ; preds = %if.then.i97, %if.then18.if.end.i101_crit_edge
  %h2cdata_left.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 6
  %110 = ptrtoint ptr %h2cdata_left.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %h2cdata_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool6.not.i = icmp eq i32 %111, 0
  %112 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %97, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %99 to i32
  %sub8.i = add i32 %115, 1073741824
  %shr.i98 = lshr i32 %sub8.i, 12
  %add.ptr.i99 = getelementptr %struct.page, ptr %114, i32 %shr.i98
  %and.i100 = and i32 %115, 4095
  %116 = ptrtoint ptr %offset.i86 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset.i86, align 8
  %add12.i = add i32 %117, %and.i100
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = call i32 @kernel_sendpage(ptr noundef %113, ptr noundef %add.ptr.i99, i32 noundef %add12.i, i32 noundef %add.i88, i32 noundef 163904) #13
  br label %if.end24.i103

if.else.i:                                        ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = call i32 @sock_no_sendpage(ptr noundef %113, ptr noundef %add.ptr.i99, i32 noundef %add12.i, i32 noundef %add.i88, i32 noundef 32832) #13
  br label %if.end24.i103

if.end24.i103:                                    ; preds = %if.else.i, %if.then7.i
  %ret.0.i = phi i32 [ %call23.i, %if.else.i ], [ %call13.i, %if.then7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp.i102 = icmp slt i32 %ret.0.i, 1
  br i1 %cmp.i102, label %if.end24.i103.done_crit_edge, label %if.end29.i, !prof !324

if.end24.i103.done_crit_edge:                     ; preds = %if.end24.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end29.i:                                       ; preds = %if.end24.i103
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i88, i32 %ret.0.i)
  %tobool31.not.i = icmp eq i32 %add.i88, %ret.0.i
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end38.i

if.then32.i:                                      ; preds = %if.end29.i
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %state, align 8
  %data_digest.i105 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %97, i32 0, i32 22
  %119 = ptrtoint ptr %data_digest.i105 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %data_digest.i105, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool33.not.i = icmp eq i8 %120, 0
  br i1 %tobool33.not.i, label %if.then32.i.if.then26_crit_edge, label %if.then34.i

if.then32.i.if.then26_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then34.i:                                      ; preds = %if.then32.i
  %snd_hash35.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %97, i32 0, i32 24
  %121 = ptrtoint ptr %snd_hash35.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %snd_hash35.i, align 4
  %tfm.i.i.i106 = getelementptr inbounds %struct.crypto_async_request, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %tfm.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tfm.i.i.i106, align 16
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 128
  %and.i.i107 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107)
  %tobool.not.i69.i = icmp eq i32 %and.i.i107, 0
  br i1 %tobool.not.i69.i, label %if.end.i.i110, label %if.then34.i.if.end23_crit_edge

if.then34.i.if.end23_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end.i.i110:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i.i108 = getelementptr i8, ptr %124, i32 -128
  %127 = ptrtoint ptr %add.ptr.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i.i.i.i108, align 128
  %call2.i.i109 = call i32 %128(ptr noundef %122) #13
  br label %if.end23

if.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %offset.i86 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offset.i86, align 8
  %add40.i = add i32 %130, %ret.0.i
  store i32 %add40.i, ptr %offset.i86, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end.i.i110, %if.then34.i.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %131 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr183 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr183)
  %cmp25 = icmp eq i32 %.pr183, 2
  br i1 %cmp25, label %if.end23.if.then26_crit_edge, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %if.then32.i.if.then26_crit_edge
  %queue1.i113 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 2
  %132 = ptrtoint ptr %queue1.i113 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %queue1.i113, align 4
  %data_len.i114 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 3
  %134 = ptrtoint ptr %data_len.i114 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %data_len.i114, align 8
  %h2cdata_left2.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 6
  %136 = ptrtoint ptr %h2cdata_left2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %h2cdata_left2.i, align 4
  %138 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 14, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 14, i32 3
  %iter.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 14
  %pdu_len.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 4
  %pdu_sent.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 5
  %cmd_flags.i.i.i = getelementptr i8, ptr %27, i32 -180
  %data_sent.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 16
  %data_digest.i115 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 22
  %send_list.i.i116 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 6
  %req_list.i.i117 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 5
  %more_requests.i.i118 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 7
  %snd_hash.i119 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 24
  %139 = getelementptr inbounds i8, ptr %sg.i.i112, i32 12
  %140 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i112, i32 0, i32 2
  %141 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i112, i32 0, i32 1
  %count.i.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 14, i32 4
  %curr_bio.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 13
  %rq_flags.i.i.i = getelementptr i8, ptr %27, i32 -176
  %142 = getelementptr i8, ptr %27, i32 -56
  %bv_len.i.i.i.i = getelementptr i8, ptr %27, i32 -52
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end26.i.while.cond.i_crit_edge, %if.then26
  %143 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %138, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %144, i32 0, i32 2
  %147 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bv_offset.i.i, align 4
  %149 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %iov_offset.i.i, align 4
  %add.i.i = add i32 %150, %148
  %call.i.i120 = call i32 @iov_iter_single_seg_count(ptr noundef %iter.i.i) #13
  %151 = ptrtoint ptr %pdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pdu_len.i.i, align 4
  %153 = ptrtoint ptr %pdu_sent.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pdu_sent.i.i, align 8
  %sub.i.i121 = sub i32 %152, %154
  %155 = call i32 @llvm.umin.i32(i32 %call.i.i120, i32 %sub.i.i121) #13
  %156 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cmd_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %nvme_tcp_pdu_last_send.exit.thread.i, label %nvme_tcp_pdu_last_send.exit.i

nvme_tcp_pdu_last_send.exit.thread.i:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %data_sent.i, align 4
  br label %land.lhs.true.i122

nvme_tcp_pdu_last_send.exit.i:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i121, i32 %call.i.i120)
  %cmp.i.not.i = icmp ugt i32 %sub.i.i121, %call.i.i120
  %160 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %data_sent.i, align 4
  br i1 %cmp.i.not.i, label %nvme_tcp_pdu_last_send.exit.i.if.else.i128_crit_edge, label %nvme_tcp_pdu_last_send.exit.i.land.lhs.true.i122_crit_edge

nvme_tcp_pdu_last_send.exit.i.land.lhs.true.i122_crit_edge: ; preds = %nvme_tcp_pdu_last_send.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i122

nvme_tcp_pdu_last_send.exit.i.if.else.i128_crit_edge: ; preds = %nvme_tcp_pdu_last_send.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i128

land.lhs.true.i122:                               ; preds = %nvme_tcp_pdu_last_send.exit.i.land.lhs.true.i122_crit_edge, %nvme_tcp_pdu_last_send.exit.thread.i
  %162 = phi i32 [ %159, %nvme_tcp_pdu_last_send.exit.thread.i ], [ %161, %nvme_tcp_pdu_last_send.exit.i.land.lhs.true.i122_crit_edge ]
  %163 = ptrtoint ptr %data_digest.i115 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %data_digest.i115, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool7.not.i = icmp eq i8 %164, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %land.lhs.true.i122.if.else.i128_crit_edge

land.lhs.true.i122.if.else.i128_crit_edge:        ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i128

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i122
  %165 = ptrtoint ptr %send_list.i.i116 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %send_list.i.i116, align 4
  %cmp.i.not.i.i123 = icmp eq ptr %166, %send_list.i.i116
  br i1 %cmp.i.not.i.i123, label %lor.lhs.false.i.i125, label %land.lhs.true8.i.if.else.i128_crit_edge

land.lhs.true8.i.if.else.i128_crit_edge:          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i128

lor.lhs.false.i.i125:                             ; preds = %land.lhs.true8.i
  %167 = ptrtoint ptr %req_list.i.i117 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %req_list.i.i117, align 4
  %cmp.i5.i.i124 = icmp eq ptr %168, null
  br i1 %cmp.i5.i.i124, label %nvme_tcp_queue_more.exit.i127, label %lor.lhs.false.i.i125.if.else.i128_crit_edge

lor.lhs.false.i.i125.if.else.i128_crit_edge:      ; preds = %lor.lhs.false.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i128

nvme_tcp_queue_more.exit.i127:                    ; preds = %lor.lhs.false.i.i125
  %169 = ptrtoint ptr %more_requests.i.i118 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %more_requests.i.i118, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool2.i.not.i126 = icmp eq i8 %170, 0
  br i1 %tobool2.i.not.i126, label %nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge, label %nvme_tcp_queue_more.exit.i127.if.else.i128_crit_edge

nvme_tcp_queue_more.exit.i127.if.else.i128_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i128

nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i130

if.else.i128:                                     ; preds = %nvme_tcp_queue_more.exit.i127.if.else.i128_crit_edge, %lor.lhs.false.i.i125.if.else.i128_crit_edge, %land.lhs.true8.i.if.else.i128_crit_edge, %land.lhs.true.i122.if.else.i128_crit_edge, %nvme_tcp_pdu_last_send.exit.i.if.else.i128_crit_edge
  %171 = phi i32 [ %162, %nvme_tcp_queue_more.exit.i127.if.else.i128_crit_edge ], [ %162, %land.lhs.true.i122.if.else.i128_crit_edge ], [ %161, %nvme_tcp_pdu_last_send.exit.i.if.else.i128_crit_edge ], [ %162, %lor.lhs.false.i.i125.if.else.i128_crit_edge ], [ %162, %land.lhs.true8.i.if.else.i128_crit_edge ]
  %tobool.not109.i = phi i1 [ false, %nvme_tcp_queue_more.exit.i127.if.else.i128_crit_edge ], [ false, %land.lhs.true.i122.if.else.i128_crit_edge ], [ true, %nvme_tcp_pdu_last_send.exit.i.if.else.i128_crit_edge ], [ false, %lor.lhs.false.i.i125.if.else.i128_crit_edge ], [ false, %land.lhs.true8.i.if.else.i128_crit_edge ]
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.else.i128, %nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge
  %172 = phi i32 [ %171, %if.else.i128 ], [ %162, %nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge ]
  %tobool.not108.i = phi i1 [ %tobool.not109.i, %if.else.i128 ], [ false, %nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge ]
  %flags.0.i129 = phi i32 [ 163904, %if.else.i128 ], [ 192, %nvme_tcp_queue_more.exit.i127.if.end.i130_crit_edge ]
  %173 = getelementptr inbounds %struct.page, ptr %146, i32 0, i32 1
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %173, align 4
  %and.i.i.i89.i = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i89.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i131, label %if.then.i.i.i.i, !prof !325

if.then.i.i.i.i:                                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = add i32 %175, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i131:                                ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %146 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i131, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %176, %if.end.i.i.i.i131 ]
  %177 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %179)
  %cmp.i.not.i.i.i = icmp eq i32 %179, -1
  %180 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %173, align 4
  %and.i16.i.i.i = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %do.end10.i.i.i, !prof !324

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !325

if.then.i19.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i18.i.i.i = add i32 %181, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %182 = ptrtoint ptr %146 to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %182, %if.end.i20.i.i.i ]
  %183 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  call void @dump_page(ptr noundef %183, ptr noundef nonnull @.str.36) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !325

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i25.i.i.i = add i32 %181, -1
  br label %PageSlab.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %184 = ptrtoint ptr %146 to i32
  br label %PageSlab.exit.i.i

PageSlab.exit.i.i:                                ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %184, %if.end.i27.i.i.i ]
  %185 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %185, align 4
  %188 = and i32 %187, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i132 = icmp eq i32 %188, 0
  br i1 %tobool.not.i.i132, label %land.rhs.i.i, label %PageSlab.exit.i.i.if.else14.i_crit_edge

PageSlab.exit.i.i.if.else14.i_crit_edge:          ; preds = %PageSlab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14.i

land.rhs.i.i:                                     ; preds = %PageSlab.exit.i.i
  %189 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %173, align 4
  %and.i.i3.i.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i.i)
  %tobool.not.i.i4.i.i = icmp eq i32 %and.i.i3.i.i, 0
  br i1 %tobool.not.i.i4.i.i, label %if.end.i.i7.i.i, label %if.then.i.i6.i.i, !prof !325

if.then.i.i6.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i5.i.i = add i32 %190, -1
  br label %sendpage_ok.exit.i

if.end.i.i7.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %191 = ptrtoint ptr %146 to i32
  br label %sendpage_ok.exit.i

sendpage_ok.exit.i:                               ; preds = %if.end.i.i7.i.i, %if.then.i.i6.i.i
  %retval.0.i.i8.i.i = phi i32 [ %sub.i.i5.i.i, %if.then.i.i6.i.i ], [ %191, %if.end.i.i7.i.i ]
  %192 = inttoptr i32 %retval.0.i.i8.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %192, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %193 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i90.i = icmp sgt i32 %194, 0
  br i1 %cmp.i90.i, label %if.then12.i134, label %sendpage_ok.exit.i.if.else14.i_crit_edge

sendpage_ok.exit.i.if.else14.i_crit_edge:         ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14.i

if.then12.i134:                                   ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %195 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %133, align 4
  %call13.i133 = call i32 @kernel_sendpage(ptr noundef %196, ptr noundef %146, i32 noundef %add.i.i, i32 noundef %155, i32 noundef %flags.0.i129) #13
  br label %if.end17.i

if.else14.i:                                      ; preds = %sendpage_ok.exit.i.if.else14.i_crit_edge, %PageSlab.exit.i.i.if.else14.i_crit_edge
  %197 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %133, align 4
  %call16.i = call i32 @sock_no_sendpage(ptr noundef %198, ptr noundef %146, i32 noundef %add.i.i, i32 noundef %155, i32 noundef %flags.0.i129) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else14.i, %if.then12.i134
  %ret.0.i135 = phi i32 [ %call13.i133, %if.then12.i134 ], [ %call16.i, %if.else14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i135)
  %cmp.i136 = icmp slt i32 %ret.0.i135, 1
  br i1 %cmp.i136, label %if.end17.i.done_crit_edge, label %if.end19.i

if.end17.i.done_crit_edge:                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end19.i:                                       ; preds = %if.end17.i
  %199 = ptrtoint ptr %data_digest.i115 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %data_digest.i115, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool21.not.i = icmp eq i8 %200, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then22.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  %201 = ptrtoint ptr %snd_hash.i119 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %snd_hash.i119, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i112) #13
  %203 = ptrtoint ptr %139 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 8)
  store i64 -1, ptr %139, align 4
  %204 = ptrtoint ptr %146 to i32
  %and2.i.i.i.i = and i32 %204, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i91.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i91.i, label %nvme_tcp_ddgst_update.exit.i, label %do.body5.i.i.i.i, !prof !325

do.body5.i.i.i.i:                                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !330
  unreachable

nvme_tcp_ddgst_update.exit.i:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i4.i.i = or i32 %204, 2
  %205 = ptrtoint ptr %sg.i.i112 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %or.i.i4.i.i, ptr %sg.i.i112, align 4
  %206 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add.i.i, ptr %141, align 4
  %207 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %ret.0.i135, ptr %140, align 4
  %src1.i.i.i137 = getelementptr inbounds %struct.ahash_request, ptr %202, i32 0, i32 2
  %208 = ptrtoint ptr %src1.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %sg.i.i112, ptr %src1.i.i.i137, align 4
  %nbytes2.i.i.i138 = getelementptr inbounds %struct.ahash_request, ptr %202, i32 0, i32 1
  %209 = ptrtoint ptr %nbytes2.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %ret.0.i135, ptr %nbytes2.i.i.i138, align 8
  %result3.i.i.i139 = getelementptr inbounds %struct.ahash_request, ptr %202, i32 0, i32 3
  %210 = ptrtoint ptr %result3.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %result3.i.i.i139, align 32
  %tfm.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %202, i32 0, i32 3
  %211 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %212, i32 12
  %213 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %__crt_alg.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %214) #13
  %215 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tfm.i.i.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %216, i32 -124
  %217 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %update.i.i.i, align 4
  %call3.i.i.i = call i32 %218(ptr noundef %202) #13
  call void @crypto_stats_ahash_update(i32 noundef %ret.0.i135, i32 noundef %call3.i.i.i, ptr noundef %214) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i112) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %nvme_tcp_ddgst_update.exit.i, %if.end19.i.if.end23.i_crit_edge
  %add.i140 = add i32 %ret.0.i135, %172
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i140, i32 %135)
  %cmp24.i = icmp slt i32 %add.i140, %135
  br i1 %cmp24.i, label %if.then25.i, label %if.end23.i.if.end26.i_crit_edge

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end23.i
  %219 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %data_sent.i, align 4
  %add.i92.i = add i32 %220, %ret.0.i135
  store i32 %add.i92.i, ptr %data_sent.i, align 4
  %221 = ptrtoint ptr %pdu_sent.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pdu_sent.i.i, align 8
  %add1.i.i = add i32 %222, %ret.0.i135
  store i32 %add1.i.i, ptr %pdu_sent.i.i, align 8
  call void @iov_iter_advance(ptr noundef %iter.i.i, i32 noundef %ret.0.i135) #13
  %223 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i95.i = icmp eq i32 %224, 0
  br i1 %tobool.not.i95.i, label %land.lhs.true.i.i141, label %if.then25.i.if.end26.i_crit_edge

if.then25.i.if.end26.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

land.lhs.true.i.i141:                             ; preds = %if.then25.i
  %225 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %data_sent.i, align 4
  %227 = ptrtoint ptr %data_len.i114 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %data_len.i114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %228)
  %cmp.i96.i = icmp ult i32 %226, %228
  br i1 %cmp.i96.i, label %if.then.i.i, label %land.lhs.true.i.i141.if.end26.i_crit_edge

land.lhs.true.i.i141.if.end26.i_crit_edge:        ; preds = %land.lhs.true.i.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i141
  %229 = ptrtoint ptr %curr_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %curr_bio.i.i, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 8
  store ptr %232, ptr %curr_bio.i.i, align 8
  %233 = ptrtoint ptr %rq_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %rq_flags.i.i.i, align 8
  %and.i.i.i142 = and i32 %234, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i142)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i142, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge

if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_init_iter.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 20
  %235 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 8, i32 2
  %237 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %bi_idx.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.bio_vec, ptr %236, i32 %238
  %bi.sroa.6.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 8, i32 1
  %239 = ptrtoint ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %bi.sroa.6.0.copyload.i.i.i = load i32, ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bi.sroa.6.0.copyload.i.i.i)
  %tobool3.not44.i.i.i = icmp eq i32 %bi.sroa.6.0.copyload.i.i.i, 0
  br i1 %tobool3.not44.i.i.i, label %if.else.i.i.i.for.end.i.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

if.else.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.else.i.i.i
  %bi.sroa.14.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 8, i32 3
  %240 = ptrtoint ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %bi.sroa.14.0.copyload.i.i.i = load i32, ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i.i, align 8
  %bi_opf.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 2
  %241 = ptrtoint ptr %bi_opf.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %bi_opf.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %242, 255
  %243 = add nsw i32 %and.i.i.i.i.i, -3
  %switch.and.i.i.i.i.i = and i32 %243, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i.i)
  %switch.selectcmp.i.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i.i, 0
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %nr_bvec.048.i.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i.i ], [ %inc.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %bi.sroa.6.047.i.i.i = phi i32 [ %bi.sroa.6.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %sub.i.i.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %bi.sroa.10.046.i.i.i = phi i32 [ %238, %land.rhs.lr.ph.i.i.i ], [ %bi.sroa.10.2.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %bi.sroa.14.045.i.i.i = phi i32 [ %bi.sroa.14.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %bi.sroa.14.1.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %bv_len12.i.i.i = getelementptr %struct.bio_vec, ptr %236, i32 %bi.sroa.10.046.i.i.i, i32 1
  %244 = ptrtoint ptr %bv_len12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %bv_len12.i.i.i, align 4
  %sub.i.i98.i = sub i32 %245, %bi.sroa.14.045.i.i.i
  %246 = call i32 @llvm.umin.i32(i32 %bi.sroa.6.047.i.i.i, i32 %sub.i.i98.i) #13
  %inc.i.i.i = add i32 %nr_bvec.048.i.i.i, 1
  br i1 %switch.selectcmp.i.i.i.i.i, label %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_advance_iter_single.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i.i.i.i = add i32 %246, %bi.sroa.14.045.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %245)
  %cmp.i.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, %245
  %spec.select.i.i.i = select i1 %cmp.i.i.i.i.i, i32 0, i32 %add.i.i.i.i.i
  %inc.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %spec.select43.i.i.i = add i32 %bi.sroa.10.046.i.i.i, %inc.i.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i.i

bio_advance_iter_single.exit.i.i.i:               ; preds = %if.else.i.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge
  %bi.sroa.14.1.i.i.i = phi i32 [ %bi.sroa.14.045.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.else.i.i.i.i ]
  %bi.sroa.10.2.i.i.i = phi i32 [ %bi.sroa.10.046.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select43.i.i.i, %if.else.i.i.i.i ]
  %sub.i.i.i.i.i = sub i32 %bi.sroa.6.047.i.i.i, %246
  %tobool3.not.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %bio_advance_iter_single.exit.i.i.i.for.end.i.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge

bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i.i

bio_advance_iter_single.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %bio_advance_iter_single.exit.i.i.i.for.end.i.i.i_crit_edge, %if.else.i.i.i.for.end.i.i.i_crit_edge
  %nr_bvec.0.lcssa.i.i.i = phi i32 [ 0, %if.else.i.i.i.for.end.i.i.i_crit_edge ], [ %inc.i.i.i, %bio_advance_iter_single.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %bi_bvec_done22.i.i.i = getelementptr inbounds %struct.bio, ptr %232, i32 0, i32 8, i32 3
  %247 = ptrtoint ptr %bi_bvec_done22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %bi_bvec_done22.i.i.i, align 8
  br label %nvme_tcp_init_iter.exit.i.i

nvme_tcp_init_iter.exit.i.i:                      ; preds = %for.end.i.i.i, %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge
  %offset.0.i.i.i = phi i32 [ %248, %for.end.i.i.i ], [ 0, %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge ]
  %nr_bvec.1.i.i.i = phi i32 [ %nr_bvec.0.lcssa.i.i.i, %for.end.i.i.i ], [ 1, %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge ]
  %size.0.in.i.i.i = phi ptr [ %bi.sroa.6.0.bi_iter.sroa_idx.i.i.i, %for.end.i.i.i ], [ %bv_len.i.i.i.i, %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge ]
  %vec.0.i.i.i = phi ptr [ %arrayidx.i.i.i, %for.end.i.i.i ], [ %142, %if.then.i.i.nvme_tcp_init_iter.exit.i.i_crit_edge ]
  %249 = ptrtoint ptr %size.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %size.0.i.i.i = load i32, ptr %size.0.in.i.i.i, align 4
  call void @iov_iter_bvec(ptr noundef %iter.i.i, i32 noundef 1, ptr noundef %vec.0.i.i.i, i32 noundef %nr_bvec.1.i.i.i, i32 noundef %size.0.i.i.i) #13
  %250 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %offset.0.i.i.i, ptr %iov_offset.i.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %nvme_tcp_init_iter.exit.i.i, %land.lhs.true.i.i141.if.end26.i_crit_edge, %if.then25.i.if.end26.i_crit_edge, %if.end23.i.if.end26.i_crit_edge
  %tobool.not.not.i = xor i1 %tobool.not108.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i135, i32 %155)
  %cmp29.i = icmp eq i32 %ret.0.i135, %155
  %or.cond.i143 = select i1 %tobool.not.not.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i143, label %if.then30.i, label %if.end26.i.while.cond.i_crit_edge

if.end26.i.while.cond.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.then30.i:                                      ; preds = %if.end26.i
  %251 = ptrtoint ptr %data_digest.i115 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %data_digest.i115, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool32.not.i = icmp eq i8 %252, 0
  br i1 %tobool32.not.i, label %if.else36.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #15
  %253 = ptrtoint ptr %snd_hash.i119 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %snd_hash.i119, align 4
  %ddgst.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 12
  %src1.i.i99.i = getelementptr inbounds %struct.ahash_request, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %src1.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %src1.i.i99.i, align 4
  %nbytes2.i.i100.i = getelementptr inbounds %struct.ahash_request, ptr %254, i32 0, i32 1
  %256 = ptrtoint ptr %nbytes2.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %nbytes2.i.i100.i, align 8
  %result3.i.i101.i = getelementptr inbounds %struct.ahash_request, ptr %254, i32 0, i32 3
  %257 = ptrtoint ptr %result3.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %ddgst.i, ptr %result3.i.i101.i, align 32
  %call.i102.i = call i32 @crypto_ahash_final(ptr noundef %254) #13
  %258 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 3, ptr %state, align 8
  %offset35.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 15
  %259 = ptrtoint ptr %offset35.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %offset35.i, align 8
  br label %nvme_tcp_try_send_data.exit.thread

if.else36.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool37.not.i = icmp eq i32 %137, 0
  br i1 %tobool37.not.i, label %if.else39.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @nvme_tcp_setup_h2c_data_pdu(ptr noundef %27) #13
  br label %nvme_tcp_try_send_data.exit.thread

if.else39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #15
  %request.i.i145 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %133, i32 0, i32 14
  %260 = ptrtoint ptr %request.i.i145 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %request.i.i145, align 4
  br label %nvme_tcp_try_send_data.exit.thread

nvme_tcp_try_send_data.exit.thread:               ; preds = %if.else39.i, %if.then38.i, %if.then33.i
  %261 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %261)
  %.pr174 = load i32, ptr %state, align 8
  br label %if.end31

if.end31:                                         ; preds = %nvme_tcp_try_send_data.exit.thread, %if.end23.if.end31_crit_edge
  %262 = phi i32 [ %.pr174, %nvme_tcp_try_send_data.exit.thread ], [ %.pr183, %if.end23.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %262)
  %cmp33 = icmp eq i32 %262, 3
  br i1 %cmp33, label %if.then34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %queue1.i146 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 2
  %263 = ptrtoint ptr %queue1.i146 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %queue1.i146, align 4
  %offset2.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 15
  %265 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %offset2.i, align 8
  %h2cdata_left3.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 6
  %267 = ptrtoint ptr %h2cdata_left3.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %h2cdata_left3.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #13
  %269 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %270 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #13
  %271 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %ddgst.i147 = getelementptr inbounds %struct.nvme_tcp_request, ptr %27, i32 0, i32 12
  %add.ptr.i148 = getelementptr i8, ptr %ddgst.i147, i32 %266
  %272 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %add.ptr.i148, ptr %iov.i, align 4
  %sub.i149 = sub i32 4, %266
  %273 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %sub.i149, ptr %271, align 4
  %send_list.i.i150 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %264, i32 0, i32 6
  %274 = ptrtoint ptr %send_list.i.i150 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile ptr, ptr %send_list.i.i150, align 4
  %cmp.i.not.i.i151 = icmp eq ptr %275, %send_list.i.i150
  br i1 %cmp.i.not.i.i151, label %lor.lhs.false.i.i154, label %if.then34.if.end.i159_crit_edge

if.then34.if.end.i159_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i159

lor.lhs.false.i.i154:                             ; preds = %if.then34
  %req_list.i.i152 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %264, i32 0, i32 5
  %276 = ptrtoint ptr %req_list.i.i152 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load volatile ptr, ptr %req_list.i.i152, align 4
  %cmp.i5.i.i153 = icmp eq ptr %277, null
  br i1 %cmp.i5.i.i153, label %nvme_tcp_queue_more.exit.i157, label %lor.lhs.false.i.i154.if.end.i159_crit_edge

lor.lhs.false.i.i154.if.end.i159_crit_edge:       ; preds = %lor.lhs.false.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i159

nvme_tcp_queue_more.exit.i157:                    ; preds = %lor.lhs.false.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  %more_requests.i.i155 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %264, i32 0, i32 7
  %278 = ptrtoint ptr %more_requests.i.i155 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %more_requests.i.i155, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool2.i.not.i156 = icmp eq i8 %279, 0
  %phi.bo = select i1 %tobool2.i.not.i156, i32 192, i32 32832
  br label %if.end.i159

if.end.i159:                                      ; preds = %nvme_tcp_queue_more.exit.i157, %lor.lhs.false.i.i154.if.end.i159_crit_edge, %if.then34.if.end.i159_crit_edge
  %.sink39.i = phi i32 [ 32832, %if.then34.if.end.i159_crit_edge ], [ 32832, %lor.lhs.false.i.i154.if.end.i159_crit_edge ], [ %phi.bo, %nvme_tcp_queue_more.exit.i157 ]
  %280 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %.sink39.i, ptr %270, align 4
  %281 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %264, align 4
  %call9.i = call i32 @kernel_sendmsg(ptr noundef %282, ptr noundef nonnull %msg.i, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub.i149) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp.i158 = icmp slt i32 %call9.i, 1
  br i1 %cmp.i158, label %if.end.i159.nvme_tcp_try_send_ddgst.exit_crit_edge, label %if.end12.i, !prof !324

if.end.i159.nvme_tcp_try_send_ddgst.exit_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_try_send_ddgst.exit

if.end12.i:                                       ; preds = %if.end.i159
  %add.i160 = add i32 %call9.i, %266
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i160)
  %cmp13.i = icmp eq i32 %add.i160, 4
  br i1 %cmp13.i, label %if.then14.i, label %if.end19.i162

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool15.not.i = icmp eq i32 %268, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @nvme_tcp_setup_h2c_data_pdu(ptr noundef %27) #13
  br label %nvme_tcp_try_send_ddgst.exit

if.else17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  %request.i.i161 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %264, i32 0, i32 14
  %283 = ptrtoint ptr %request.i.i161 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %request.i.i161, align 4
  br label %nvme_tcp_try_send_ddgst.exit

if.end19.i162:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %284 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %offset2.i, align 8
  %add21.i = add i32 %285, %call9.i
  store i32 %add21.i, ptr %offset2.i, align 8
  br label %nvme_tcp_try_send_ddgst.exit

nvme_tcp_try_send_ddgst.exit:                     ; preds = %if.end19.i162, %if.else17.i, %if.then16.i, %if.end.i159.nvme_tcp_try_send_ddgst.exit_crit_edge
  %retval.0.i163 = phi i32 [ -11, %if.end19.i162 ], [ %call9.i, %if.end.i159.nvme_tcp_try_send_ddgst.exit_crit_edge ], [ 1, %if.else17.i ], [ 1, %if.then16.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #13
  br label %done

done:                                             ; preds = %nvme_tcp_try_send_ddgst.exit, %if.end17.i.done_crit_edge, %if.end24.i103.done_crit_edge, %if.end13.i.done_crit_edge
  %ret.3 = phi i32 [ %retval.0.i163, %nvme_tcp_try_send_ddgst.exit ], [ %call19.i, %if.end13.i.done_crit_edge ], [ %ret.0.i, %if.end24.i103.done_crit_edge ], [ %ret.0.i135, %if.end17.i.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.3)
  %cmp37 = icmp eq i32 %ret.3, -11
  br i1 %cmp37, label %done.cleanup_crit_edge, label %if.else

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp39 = icmp slt i32 %ret.3, 0
  br i1 %cmp39, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.else
  %ctrl = getelementptr inbounds %struct.nvme_tcp_queue, ptr %queue, i32 0, i32 18
  %286 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ctrl, align 4
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %287, i32 0, i32 6, i32 17
  %288 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.33, i32 noundef %ret.3) #17
  %290 = zext i32 %ret.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %290, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %ret.3, label %if.then44 [
    i32 -32, label %do.end.if.end46_crit_edge
    i32 -104, label %do.end.if.end46_crit_edge258
  ]

do.end.if.end46_crit_edge258:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %request, align 4
  call fastcc void @nvme_tcp_fail_request(ptr noundef %292)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end.if.end46_crit_edge, %do.end.if.end46_crit_edge258
  %293 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.else.cleanup_crit_edge, %done.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end38.i, %nvme_tcp_has_inline_data.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i79.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end37.i, %nvme_tcp_fetch_request.exit.thread
  %retval.0 = phi i32 [ 1, %nvme_tcp_has_inline_data.exit.cleanup_crit_edge ], [ %ret.3, %if.end46 ], [ %ret.3, %if.else.cleanup_crit_edge ], [ 0, %done.cleanup_crit_edge ], [ 0, %nvme_tcp_fetch_request.exit.thread ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end.i79.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 0, %if.end37.i ], [ 0, %if.end38.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_fail_request(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  %res = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue.i, align 4
  %ctrl.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i, align 4
  %async_req.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 9
  %cmp.i = icmp eq ptr %async_req.i, %req
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #13
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 281474976710655, ptr %res, align 8
  %ctrl1 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 6
  call void @nvme_complete_async_event(ptr noundef %ctrl1, i16 noundef zeroext 28675, ptr noundef nonnull %res) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 -192
  %ctrl1.i.i = getelementptr i8, ptr %req, i32 24
  %5 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl1.i.i, align 8
  %quirks.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %6, i32 0, i32 61
  %7 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks.i.i, align 8
  %and.i.i = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.if.end.i.i_crit_edge

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %genctr.i.i = getelementptr i8, ptr %req, i32 16
  %9 = ptrtoint ptr %genctr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %genctr.i.i, align 8
  %inc.i.i = add i8 %10, 1
  store i8 %inc.i.i, ptr %genctr.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.else.if.end.i.i_crit_edge
  %status3.i.i = getelementptr i8, ptr %req, i32 20
  %11 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 880, ptr %status3.i.i, align 4
  %result4.i.i = getelementptr i8, ptr %req, i32 8
  %12 = ptrtoint ptr %result4.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 281474976710655, ptr %result4.i.i, align 8
  tail call void @nvme_should_fail(ptr noundef %add.ptr.i) #13
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.nvme_try_complete_req.exit.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

if.end.i.i.nvme_try_complete_req.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %if.end.i.i
  %call1.i.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %14) #13
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.if.end_crit_edge, label %blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge, !prof !324

blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i

blk_should_fake_timeout.exit.i.i.if.end_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

nvme_try_complete_req.exit.i:                     ; preds = %blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge, %if.end.i.i.nvme_try_complete_req.exit.i_crit_edge
  %call10.i.i = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %add.ptr.i) #13
  br i1 %call10.i.i, label %nvme_try_complete_req.exit.i.if.end_crit_edge, label %if.then.i

nvme_try_complete_req.exit.i.if.end_crit_edge:    ; preds = %nvme_try_complete_req.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %nvme_try_complete_req.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvme_complete_rq(ptr noundef %add.ptr.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %nvme_try_complete_req.exit.i.if.end_crit_edge, %blk_should_fake_timeout.exit.i.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @nvme_tcp_setup_h2c_data_pdu(ptr nocapture noundef %req) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 8
  %queue1 = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue1, align 4
  %pdu_len = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pdu_len, align 4
  %hdr_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr_digest.i, align 1, !range !323
  %data_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data_digest.i, align 2, !range !323
  %state = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 17
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 8
  %offset = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 15
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %offset, align 8
  %h2cdata_left = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 6
  %12 = ptrtoint ptr %h2cdata_left to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h2cdata_left, align 4
  %maxh2cdata = getelementptr inbounds %struct.nvme_tcp_queue, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %maxh2cdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxh2cdata, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = ptrtoint ptr %pdu_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pdu_len, align 4
  %pdu_sent = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 5
  %18 = ptrtoint ptr %pdu_sent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pdu_sent, align 8
  %sub = sub i32 %13, %16
  %19 = ptrtoint ptr %h2cdata_left to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %h2cdata_left, align 4
  %h2cdata_offset = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 7
  %20 = ptrtoint ptr %h2cdata_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h2cdata_offset, align 8
  %add = add i32 %21, %5
  store i32 %add, ptr %h2cdata_offset, align 8
  %22 = call ptr @memset(ptr %1, i32 0, i32 24)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 6, ptr %1, align 4
  %24 = load i32, ptr %h2cdata_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool9.not = icmp eq i8 %27, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags12 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags12, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %flags12, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %31 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not = icmp eq i8 %32, 0
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %flags18 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %flags18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags18, align 1
  %35 = or i8 %34, 2
  store i8 %35, ptr %flags18, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end14.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i82 = icmp eq i8 %9, 0
  %conv.i83 = select i1 %tobool.not.i82, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %hlen = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %hlen to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 24, ptr %hlen, align 2
  %add28 = select i1 %tobool.not.i, i8 24, i8 28
  %pdo = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %pdo to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %add28, ptr %pdo, align 1
  %add35 = zext i8 %add28 to i32
  %38 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pdu_len, align 4
  %add37 = add nuw nsw i32 %conv.i83, %add35
  %add39 = add i32 %add37, %39
  %40 = tail call i32 @llvm.bswap.i32(i32 %add39)
  %plen = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %plen, align 4
  %ttag = getelementptr inbounds %struct.nvme_tcp_request, ptr %req, i32 0, i32 8
  %42 = ptrtoint ptr %ttag to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ttag, align 4
  %ttag41 = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ttag41 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %ttag41, align 2
  %genctr.i = getelementptr i8, ptr %req, i32 16
  %45 = ptrtoint ptr %genctr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %genctr.i, align 8
  %and.i = zext i8 %46 to i32
  %shl.i = shl nuw nsw i32 %and.i, 12
  %tag.i = getelementptr i8, ptr %req, i32 -172
  %47 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tag.i, align 4
  %or.i = or i32 %shl.i, %48
  %conv1.i = trunc i32 %or.i to i16
  %command_id = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %command_id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i, ptr %command_id, align 4
  %50 = ptrtoint ptr %h2cdata_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %h2cdata_offset, align 8
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %data_offset = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %data_offset to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %data_offset, align 4
  %54 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pdu_len, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %data_length = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %data_length, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_single_seg_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_async_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_rq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_should_fail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_tcp_start_queue(ptr noundef %nctrl, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %idx to i16
  %call1 = tail call i32 @nvmf_connect_io_queue(ptr noundef %nctrl, i16 noundef zeroext %conv) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @nvmf_connect_admin_queue(ptr noundef %nctrl) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %flags = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx, i32 19
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end15

if.else5:                                         ; preds = %if.end
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %if.else5.do.end_crit_edge, label %if.then11

if.else5.do.end_crit_edge:                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then11:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx13, align 4
  %call.i = tail call i32 @kernel_sock_shutdown(ptr noundef %5, i32 noundef 2) #13
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx13, align 4
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #13
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 16
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 72
  %12 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sk_user_data.i.i, align 4
  %data_ready.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx, i32 29
  %13 = ptrtoint ptr %data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_ready.i.i, align 4
  %15 = load ptr, ptr %sk.i.i, align 16
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 77
  %16 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %sk_data_ready.i.i, align 8
  %state_change.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx, i32 28
  %17 = ptrtoint ptr %state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state_change.i.i, align 4
  %19 = load ptr, ptr %sk.i.i, align 16
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 76
  %20 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %sk_state_change.i.i, align 4
  %write_space.i.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx, i32 30
  %21 = ptrtoint ptr %write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_space.i.i, align 4
  %23 = load ptr, ptr %sk.i.i, align 16
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 78
  %24 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %sk_write_space.i.i, align 4
  %25 = load ptr, ptr %sk.i.i, align 16
  %sk_callback_lock7.i.i = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock7.i.i) #13
  %io_work.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %idx, i32 1
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_work.i) #13
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.else5.do.end_crit_edge
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.149, i32 noundef %idx, i32 noundef %ret.0) #17
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_enable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_tcp_alloc_queue(ptr noundef %nctrl, i32 noundef %qid, i32 noundef %queue_size) unnamed_addr #3 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -640
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid
  %queue_lock = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 3
  tail call void @__mutex_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @nvme_tcp_alloc_queue.__key) #13
  %ctrl1 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 18
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %ctrl1, align 4
  %req_list = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 5
  %3 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %req_list, align 4
  %send_list = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 6
  %4 = ptrtoint ptr %send_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %send_list, ptr %send_list, align 4
  %prev.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %send_list, ptr %prev.i, align 4
  %send_mutex = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 4
  tail call void @__mutex_init(ptr noundef %send_mutex, ptr noundef nonnull @.str.52, ptr noundef nonnull @nvme_tcp_alloc_queue.__key.51) #13
  %io_work = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1
  tail call void @__init_work(ptr noundef %io_work, i32 noundef 0) #13
  %6 = ptrtoint ptr %io_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %io_work, align 4
  %lockdep_map = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.54, ptr noundef nonnull @nvme_tcp_alloc_queue.__key.53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry9 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1, i32 1
  %7 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i279 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i279 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry9, ptr %prev.i279, align 4
  %func = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 1, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvme_tcp_io_work, ptr %func, align 4
  %queue_size13 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 15
  %10 = ptrtoint ptr %queue_size13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %queue_size, ptr %queue_size13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid)
  %cmp = icmp sgt i32 %qid, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ioccsz = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 87
  %11 = ptrtoint ptr %ioccsz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioccsz, align 4
  %mul = shl i32 %12, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %mul, %if.then ], [ 8256, %entry.if.end_crit_edge ]
  %13 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %13, align 4
  %addr = getelementptr i8, ptr %nctrl, i32 -260
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 4
  %conv = zext i16 %16 to i32
  %call15 = tail call i32 @sock_create(i32 noundef %conv, i32 noundef 1, i32 noundef 6, ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.55, i32 noundef %call15) #17
  br label %err_destroy_mutex

if.end20:                                         ; preds = %if.end
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk, align 16
  %call22 = tail call i32 @tcp_sock_set_syncnt(ptr noundef %22, i32 noundef 1) #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %sk24 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %sk24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk24, align 16
  tail call void @tcp_sock_set_nodelay(ptr noundef %26) #13
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %sk26 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %sk26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk26, align 16
  tail call void @sock_no_linger(ptr noundef %30) #13
  %31 = load i32, ptr @so_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp27 = icmp sgt i32 %31, 0
  br i1 %cmp27, label %if.then29, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %sk31 = getelementptr inbounds %struct.socket, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %sk31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk31, align 16
  tail call void @sock_set_priority(ptr noundef %35, i32 noundef %31) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end20.if.end32_crit_edge
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 93
  %36 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opts, align 8
  %tos = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp33 = icmp sgt i32 %39, -1
  br i1 %cmp33, label %if.then35, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %sk37 = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %sk37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk37, align 16
  tail call void @ip_sock_set_tos(ptr noundef %43, i32 noundef %39) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end32.if.end40_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %sk42 = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %sk42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk42, align 16
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 62
  %48 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1000, ptr %sk_rcvtimeo, align 4
  %49 = load ptr, ptr %arrayidx, align 4
  %sk44 = getelementptr inbounds %struct.socket, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %sk44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk44, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %51, i32 0, i32 41
  %52 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2592, ptr %sk_allocation, align 8
  %53 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl1, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 348
  %57 = icmp eq ptr %56, %arrayidx
  br i1 %57, label %if.end40.nvme_tcp_set_queue_io_cpu.exit_crit_edge, label %nvme_tcp_default_queue.exit.i

if.end40.nvme_tcp_set_queue_io_cpu.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_set_queue_io_cpu.exit

nvme_tcp_default_queue.exit.i:                    ; preds = %if.end40
  %io_queues.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %54, i32 0, i32 10
  %58 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_queues.i.i, align 8
  %add.i.i = add i32 %59, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %add.i.i)
  %cmp.i.i280 = icmp ult i32 %sub.ptr.div.i.i, %add.i.i
  br i1 %cmp.i.i280, label %if.then.i281, label %nvme_tcp_read_queue.exit.i

if.then.i281:                                     ; preds = %nvme_tcp_default_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add nsw i32 %sub.ptr.div.i.i, -1
  br label %nvme_tcp_set_queue_io_cpu.exit

nvme_tcp_read_queue.exit.i:                       ; preds = %nvme_tcp_default_queue.exit.i
  %arrayidx5.i.i = getelementptr %struct.nvme_tcp_ctrl, ptr %54, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %61, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %add6.i.i)
  %cmp.i36.i = icmp ult i32 %sub.ptr.div.i.i, %add6.i.i
  br i1 %cmp.i36.i, label %if.then4.i, label %nvme_tcp_read_queue.exit.i.i

if.then4.i:                                       ; preds = %nvme_tcp_read_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = xor i32 %59, -1
  %sub6.i = add i32 %sub.ptr.div.i.i, %62
  br label %nvme_tcp_set_queue_io_cpu.exit

nvme_tcp_read_queue.exit.i.i:                     ; preds = %nvme_tcp_read_queue.exit.i
  %63 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i.i = add i32 %64, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %add6.i.i.i)
  %cmp.i24.i.i = icmp ult i32 %sub.ptr.div.i.i, %add6.i.i.i
  br i1 %cmp.i24.i.i, label %nvme_tcp_read_queue.exit.i.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge, label %nvme_tcp_poll_queue.exit.i

nvme_tcp_read_queue.exit.i.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge: ; preds = %nvme_tcp_read_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_set_queue_io_cpu.exit

nvme_tcp_poll_queue.exit.i:                       ; preds = %nvme_tcp_read_queue.exit.i.i
  %arrayidx10.i.i = getelementptr %struct.nvme_tcp_ctrl, ptr %54, i32 0, i32 10, i32 2
  %65 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx10.i.i, align 8
  %add11.i.i = add i32 %66, %add6.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %add11.i.i)
  %cmp.i48.i = icmp ult i32 %sub.ptr.div.i.i, %add11.i.i
  br i1 %cmp.i48.i, label %if.then9.i, label %nvme_tcp_poll_queue.exit.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge

nvme_tcp_poll_queue.exit.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge: ; preds = %nvme_tcp_poll_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_set_queue_io_cpu.exit

if.then9.i:                                       ; preds = %nvme_tcp_poll_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %67 = add i32 %64, %59
  %68 = xor i32 %67, -1
  %sub16.i = add i32 %sub.ptr.div.i.i, %68
  br label %nvme_tcp_set_queue_io_cpu.exit

nvme_tcp_set_queue_io_cpu.exit:                   ; preds = %if.then9.i, %nvme_tcp_poll_queue.exit.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge, %nvme_tcp_read_queue.exit.i.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge, %if.then4.i, %if.then.i281, %if.end40.nvme_tcp_set_queue_io_cpu.exit_crit_edge
  %n.0.i = phi i32 [ %sub.i, %if.then.i281 ], [ %sub6.i, %if.then4.i ], [ %sub16.i, %if.then9.i ], [ 0, %nvme_tcp_poll_queue.exit.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge ], [ 0, %nvme_tcp_read_queue.exit.i.i.nvme_tcp_set_queue_io_cpu.exit_crit_edge ], [ 0, %if.end40.nvme_tcp_set_queue_io_cpu.exit_crit_edge ]
  %sub19.i = add i32 %n.0.i, -1
  %call20.i = tail call i32 @cpumask_next_wrap(i32 noundef %sub19.i, ptr noundef nonnull @__cpu_online_mask, i32 noundef -1, i1 noundef zeroext false) #13
  %io_cpu.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 2
  %69 = ptrtoint ptr %io_cpu.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call20.i, ptr %io_cpu.i, align 4
  %request = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 14
  %70 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %request, align 4
  %data_remaining = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 11
  %ddgst_remaining = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 12
  %pdu_remaining = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 9
  %pdu_offset = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 10
  %71 = call ptr @memset(ptr %pdu_remaining, i32 0, i32 16)
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  %sk46 = getelementptr inbounds %struct.socket, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %sk46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk46, align 16
  tail call void @sk_set_memalloc(ptr noundef %75) #13
  %76 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %opts, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %and = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %nvme_tcp_set_queue_io_cpu.exit.if.end59_crit_edge, label %if.then49

nvme_tcp_set_queue_io_cpu.exit.if.end59_crit_edge: ; preds = %nvme_tcp_set_queue_io_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then49:                                        ; preds = %nvme_tcp_set_queue_io_cpu.exit
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx, align 4
  %src_addr = getelementptr i8, ptr %nctrl, i32 -132
  %call51 = tail call i32 @kernel_bind(ptr noundef %81, ptr noundef %src_addr, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then49.if.end59_crit_edge, label %do.end56

if.then49.if.end59_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

do.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %device57 = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %82 = ptrtoint ptr %device57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device57, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.58, i32 noundef %qid, i32 noundef %call51) #17
  br label %err_sock

if.end59:                                         ; preds = %if.then49.if.end59_crit_edge, %nvme_tcp_set_queue_io_cpu.exit.if.end59_crit_edge
  %84 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %opts, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %and62 = and i32 %87, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.if.end77_crit_edge, label %if.then64

if.end59.if.end77_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then64:                                        ; preds = %if.end59
  %host_iface = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %85, i32 0, i32 6
  %88 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host_iface, align 4
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx, align 4
  %call67 = tail call i32 @strlen(ptr noundef %89) #19
  %92 = ptrtoint ptr %89 to i32
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %92, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 -1, 1
  %call68 = tail call i32 @sock_setsockopt(ptr noundef %91, i32 noundef 1, i32 noundef 25, [2 x i32] %.fca.1.insert, i32 noundef %call67) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then64.if.end77_crit_edge, label %cleanup

if.then64.if.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

cleanup:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %device74 = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %93 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.61, ptr noundef %89, i32 noundef %qid, i32 noundef %call68) #17
  br label %err_sock

if.end77:                                         ; preds = %if.then64.if.end77_crit_edge, %if.end59.if.end77_crit_edge
  %95 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %opts, align 8
  %hdr_digest = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %hdr_digest to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %hdr_digest, align 1, !range !323
  %hdr_digest80 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 21
  %99 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %hdr_digest80, align 1
  %100 = load ptr, ptr %opts, align 8
  %data_digest = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %100, i32 0, i32 17
  %101 = ptrtoint ptr %data_digest to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %data_digest, align 2, !range !323
  %data_digest83 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 22
  %103 = ptrtoint ptr %data_digest83 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %data_digest83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool86.not = icmp eq i8 %98, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool82.not = icmp eq i8 %102, 0
  %or.cond = select i1 %tobool86.not, i1 %tobool82.not, i1 false
  br i1 %or.cond, label %if.end77.if.end8.i_crit_edge, label %if.then91

if.end77.if.end8.i_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then91:                                        ; preds = %if.end77
  %call.i = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.118, i32 noundef 0, i32 noundef 128) #13
  %cmp.i.i282 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i282, label %nvme_tcp_alloc_crypto.exit, label %if.end.i285

if.end.i285:                                      ; preds = %if.then91
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %104 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reqsize.i.i.i, align 32
  %add.i.i284 = add i32 %105, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i284, i32 noundef 3264) #18
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %ahash_request_alloc.exit.thread.i, label %if.end6.i, !prof !324

ahash_request_alloc.exit.thread.i:                ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #15
  %snd_hash67.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 24
  %106 = ptrtoint ptr %snd_hash67.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %snd_hash67.i, align 4
  br label %nvme_tcp_alloc_crypto.exit.thread305

if.end6.i:                                        ; preds = %if.end.i285
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %snd_hash.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 24
  %108 = ptrtoint ptr %snd_hash.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call9.i.i.i, ptr %snd_hash.i, align 4
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %flags4.i.i, align 4
  %112 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reqsize.i.i.i, align 32
  %add.i26.i = add i32 %113, 128
  %call9.i.i52.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i26.i, i32 noundef 3264) #18
  %tobool.not.i55.i = icmp eq ptr %call9.i.i52.i, null
  br i1 %tobool.not.i55.i, label %free_snd_hash.i, label %nvme_tcp_alloc_crypto.exit.thread, !prof !324

nvme_tcp_alloc_crypto.exit.thread:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %tfm1.i.i59.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i, i32 0, i32 3
  %114 = ptrtoint ptr %tfm1.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i59.i, align 16
  %rcv_hash.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 23
  %115 = ptrtoint ptr %rcv_hash.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call9.i.i52.i, ptr %rcv_hash.i, align 4
  %complete.i63.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i, i32 0, i32 1
  %116 = ptrtoint ptr %complete.i63.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %complete.i63.i, align 8
  %data2.i64.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i, i32 0, i32 2
  %117 = ptrtoint ptr %data2.i64.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %data2.i64.i, align 4
  %flags4.i65.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i52.i, i32 0, i32 4
  %118 = ptrtoint ptr %flags4.i65.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %flags4.i65.i, align 4
  br label %if.end8.i

free_snd_hash.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %rcv_hash70.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 23
  %119 = ptrtoint ptr %rcv_hash70.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rcv_hash70.i, align 4
  %120 = ptrtoint ptr %snd_hash.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %snd_hash.i, align 4
  tail call void @kfree_sensitive(ptr noundef %121) #13
  br label %nvme_tcp_alloc_crypto.exit.thread305

nvme_tcp_alloc_crypto.exit.thread305:             ; preds = %free_snd_hash.i, %ahash_request_alloc.exit.thread.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i.i) #13
  br label %do.end97

nvme_tcp_alloc_crypto.exit:                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %call.i to i32
  br label %do.end97

do.end97:                                         ; preds = %nvme_tcp_alloc_crypto.exit, %nvme_tcp_alloc_crypto.exit.thread305
  %retval.0.i287308 = phi i32 [ -12, %nvme_tcp_alloc_crypto.exit.thread305 ], [ %122, %nvme_tcp_alloc_crypto.exit ]
  %device98 = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %123 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device98, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.64, i32 noundef %qid) #17
  br label %err_sock

if.end8.i:                                        ; preds = %nvme_tcp_alloc_crypto.exit.thread, %if.end77.if.end8.i_crit_edge
  %125 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %hdr_digest80, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i = icmp eq i8 %126, 0
  %add = select i1 %tobool.not.i, i32 24, i32 28
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %pdu = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 8
  %127 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call9.i, ptr %pdu, align 4
  %tobool105.not = icmp eq ptr %call9.i, null
  br i1 %tobool105.not, label %if.end8.i.err_crypto_crit_edge, label %do.body108

if.end8.i.err_crypto_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto

do.body108:                                       ; preds = %if.end8.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_tcp_alloc_queue.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_tcp_alloc_queue, %if.then114)) #13
          to label %do.end119 [label %if.then114], !srcloc !331

if.then114:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  %device115 = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %128 = ptrtoint ptr %device115 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device115, align 8
  %130 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctrl1, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %133 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 348
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvme_tcp_alloc_queue.__UNIQUE_ID_ddebug689, ptr noundef %129, ptr noundef nonnull @.str.67, i32 noundef %sub.ptr.div.i) #13
  br label %do.end119

do.end119:                                        ; preds = %if.then114, %do.body108
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx, align 4
  %call122 = tail call i32 @kernel_connect(ptr noundef %135, ptr noundef %addr, i32 noundef 128, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end129, label %do.end127

do.end127:                                        ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #15
  %device128 = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 17
  %136 = ptrtoint ptr %device128 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device128, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.69, i32 noundef %call122) #17
  br label %err_rcv_pdu

if.end129:                                        ; preds = %do.end119
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #13
  %138 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #13
  %139 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i288 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3520, i32 noundef 128) #16
  %tobool.not.i289 = icmp eq ptr %call7.i.i.i288, null
  br i1 %tobool.not.i289, label %nvme_tcp_init_connection.exit.thread, label %if.end.i290

nvme_tcp_init_connection.exit.thread:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #13
  br label %err_init_connect

if.end.i290:                                      ; preds = %if.end129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i223.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3520, i32 noundef 128) #16
  %tobool2.not.i = icmp eq ptr %call7.i.i223.i, null
  br i1 %tobool2.not.i, label %nvme_tcp_init_connection.exit.thread313, label %if.end4.i292

nvme_tcp_init_connection.exit.thread313:          ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i288) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #13
  br label %err_init_connect

if.end4.i292:                                     ; preds = %if.end.i290
  %142 = ptrtoint ptr %call7.i.i.i288 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %call7.i.i.i288, align 8
  %hlen.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %call7.i.i.i288, i32 0, i32 2
  %143 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -128, ptr %hlen.i, align 2
  %pdo.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %call7.i.i.i288, i32 0, i32 3
  %144 = ptrtoint ptr %pdo.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %pdo.i, align 1
  %plen.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %call7.i.i.i288, i32 0, i32 4
  %145 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -2147483648, ptr %plen.i, align 4
  %pfv.i = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, ptr %call7.i.i.i288, i32 0, i32 1
  %146 = ptrtoint ptr %pfv.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %pfv.i, align 8
  %maxr2t.i = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, ptr %call7.i.i.i288, i32 0, i32 4
  %147 = ptrtoint ptr %maxr2t.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %maxr2t.i, align 4
  %hpda.i = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, ptr %call7.i.i.i288, i32 0, i32 2
  %148 = ptrtoint ptr %hpda.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %hpda.i, align 2
  %149 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %hdr_digest80, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool10.not.i = icmp eq i8 %150, 0
  br i1 %tobool10.not.i, label %if.end4.i292.if.end14.i_crit_edge, label %if.then11.i

if.end4.i292.if.end14.i_crit_edge:                ; preds = %if.end4.i292
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end4.i292
  call void @__sanitizer_cov_trace_pc() #15
  %digest.i = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, ptr %call7.i.i.i288, i32 0, i32 3
  %151 = ptrtoint ptr %digest.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %digest.i, align 1
  %153 = or i8 %152, 1
  store i8 %153, ptr %digest.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end4.i292.if.end14.i_crit_edge
  %154 = ptrtoint ptr %data_digest83 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %data_digest83, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool15.not.i = icmp eq i8 %155, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end21.i_crit_edge, label %if.then16.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %digest17.i = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, ptr %call7.i.i.i288, i32 0, i32 3
  %156 = ptrtoint ptr %digest17.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %digest17.i, align 1
  %158 = or i8 %157, 2
  store i8 %158, ptr %digest17.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end21.i_crit_edge
  %159 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i.i288, ptr %iov.i, align 4
  %160 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 128, ptr %139, align 4
  %161 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx, align 4
  %call23.i = call i32 @kernel_sendmsg(ptr noundef %162, ptr noundef nonnull %msg.i, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp.i293 = icmp slt i32 %call23.i, 0
  br i1 %cmp.i293, label %if.end21.i.nvme_tcp_init_connection.exit_crit_edge, label %if.end26.i

if.end21.i.nvme_tcp_init_connection.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_init_connection.exit

if.end26.i:                                       ; preds = %if.end21.i
  %163 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %164 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call7.i.i223.i, ptr %iov.i, align 4
  %165 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 128, ptr %139, align 4
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx, align 4
  %call31.i = call i32 @kernel_recvmsg(ptr noundef %167, ptr noundef nonnull %msg.i, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 128, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end26.i.nvme_tcp_init_connection.exit_crit_edge, label %if.end35.i

if.end26.i.nvme_tcp_init_connection.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_init_connection.exit

if.end35.i:                                       ; preds = %if.end26.i
  %168 = ptrtoint ptr %call7.i.i223.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %call7.i.i223.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %169)
  %cmp39.not.i = icmp eq i8 %169, 1
  br i1 %cmp39.not.i, label %if.end47.i, label %do.end.i

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctrl1, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  %sub.ptr.rhs.cast.i.i295 = ptrtoint ptr %173 to i32
  %sub.ptr.sub.i.i296 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i295
  %sub.ptr.div.i.i297 = sdiv exact i32 %sub.ptr.sub.i.i296, 348
  %conv45.i = zext i8 %169 to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %sub.ptr.div.i.i297, i32 noundef %conv45.i) #17
  br label %nvme_tcp_init_connection.exit

if.end47.i:                                       ; preds = %if.end35.i
  %plen49.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %call7.i.i223.i, i32 0, i32 4
  %174 = ptrtoint ptr %plen49.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %plen49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %175)
  %cmp50.not.i = icmp eq i32 %175, -2147483648
  br i1 %cmp50.not.i, label %if.end61.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ctrl1, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %sub.ptr.rhs.cast.i226.i = ptrtoint ptr %179 to i32
  %sub.ptr.sub.i227.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i226.i
  %sub.ptr.div.i228.i = sdiv exact i32 %sub.ptr.sub.i227.i, 348
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %sub.ptr.div.i228.i, i32 noundef %175) #17
  br label %nvme_tcp_init_connection.exit

if.end61.i:                                       ; preds = %if.end47.i
  %pfv62.i = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, ptr %call7.i.i223.i, i32 0, i32 1
  %180 = ptrtoint ptr %pfv62.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %pfv62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp64.not.i = icmp eq i16 %181, 0
  br i1 %cmp64.not.i, label %if.end75.i, label %do.end69.i

do.end69.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  %182 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctrl1, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 8
  %sub.ptr.rhs.cast.i231.i = ptrtoint ptr %185 to i32
  %sub.ptr.sub.i232.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i231.i
  %sub.ptr.div.i233.i = sdiv exact i32 %sub.ptr.sub.i232.i, 348
  %conv73.i = zext i16 %181 to i32
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %sub.ptr.div.i233.i, i32 noundef %conv73.i) #17
  br label %nvme_tcp_init_connection.exit

if.end75.i:                                       ; preds = %if.end61.i
  %digest76.i = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, ptr %call7.i.i223.i, i32 0, i32 3
  %186 = ptrtoint ptr %digest76.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %digest76.i, align 1
  %188 = and i8 %187, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool78.not.i = icmp eq i8 %188, 0
  %189 = ptrtoint ptr %data_digest83 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %data_digest83, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool81.not.i = icmp eq i8 %190, 0
  %tobool78.not.not.i = xor i1 %tobool78.not.i, true
  %brmerge.i = select i1 %tobool81.not.i, i1 true, i1 %tobool78.not.not.i
  %tobool85.not.not.i = xor i1 %tobool81.not.i, true
  %brmerge220.i = select i1 %tobool85.not.not.i, i1 true, i1 %tobool78.not.i
  %or.cond254.i = select i1 %brmerge.i, i1 %brmerge220.i, i1 false
  br i1 %or.cond254.i, label %if.end102.i, label %do.end92.i

do.end92.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  %191 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ctrl1, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 8
  %sub.ptr.rhs.cast.i236.i = ptrtoint ptr %194 to i32
  %sub.ptr.sub.i237.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i236.i
  %sub.ptr.div.i238.i = sdiv exact i32 %sub.ptr.sub.i237.i, 348
  %cond.i = select i1 %tobool81.not.i, ptr @.str.131, ptr @.str.130
  %cond100.i = select i1 %tobool78.not.i, ptr @.str.131, ptr @.str.130
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %sub.ptr.div.i238.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond100.i) #17
  br label %nvme_tcp_init_connection.exit

if.end102.i:                                      ; preds = %if.end75.i
  %195 = and i8 %187, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool106.not.i = icmp eq i8 %195, 0
  %196 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %hdr_digest80, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool111.not.i = icmp eq i8 %197, 0
  %tobool106.not.not.i = xor i1 %tobool106.not.i, true
  %brmerge221.i = select i1 %tobool111.not.i, i1 true, i1 %tobool106.not.not.i
  %tobool117.not.not.i = xor i1 %tobool111.not.i, true
  %brmerge222.i = select i1 %tobool117.not.not.i, i1 true, i1 %tobool106.not.i
  %or.cond255.i = select i1 %brmerge221.i, i1 %brmerge222.i, i1 false
  br i1 %or.cond255.i, label %if.end135.i, label %do.end124.i

do.end124.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  %198 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ctrl1, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 8
  %sub.ptr.rhs.cast.i241.i = ptrtoint ptr %201 to i32
  %sub.ptr.sub.i242.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i241.i
  %sub.ptr.div.i243.i = sdiv exact i32 %sub.ptr.sub.i242.i, 348
  %cond130.i = select i1 %tobool111.not.i, ptr @.str.131, ptr @.str.130
  %cond133.i = select i1 %tobool106.not.i, ptr @.str.131, ptr @.str.130
  %call134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %sub.ptr.div.i243.i, ptr noundef nonnull %cond130.i, ptr noundef nonnull %cond133.i) #17
  br label %nvme_tcp_init_connection.exit

if.end135.i:                                      ; preds = %if.end102.i
  %cpda.i = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, ptr %call7.i.i223.i, i32 0, i32 2
  %202 = ptrtoint ptr %cpda.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %cpda.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp137.not.i = icmp eq i8 %203, 0
  br i1 %cmp137.not.i, label %if.end148.i, label %do.end142.i

do.end142.i:                                      ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %204 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ctrl1, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 8
  %sub.ptr.rhs.cast.i246.i = ptrtoint ptr %207 to i32
  %sub.ptr.sub.i247.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i246.i
  %sub.ptr.div.i248.i = sdiv exact i32 %sub.ptr.sub.i247.i, 348
  %conv146.i = zext i8 %203 to i32
  %call147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %sub.ptr.div.i248.i, i32 noundef %conv146.i) #17
  br label %nvme_tcp_init_connection.exit

if.end148.i:                                      ; preds = %if.end135.i
  %maxdata.i = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, ptr %call7.i.i223.i, i32 0, i32 4
  %208 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %maxdata.i, align 4
  %210 = call i32 @llvm.bswap.i32(i32 %209) #13
  %rem.i = and i32 %210, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool149.not.i = icmp ne i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %210)
  %cmp151.i = icmp ult i32 %210, 4096
  %or.cond.i = or i1 %cmp151.i, %tobool149.not.i
  br i1 %or.cond.i, label %do.end156.i, label %if.end160.i

do.end156.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #15
  %211 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ctrl1, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 8
  %sub.ptr.rhs.cast.i251.i = ptrtoint ptr %214 to i32
  %sub.ptr.sub.i252.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i251.i
  %sub.ptr.div.i253.i = sdiv exact i32 %sub.ptr.sub.i252.i, 348
  %call159.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %sub.ptr.div.i253.i, i32 noundef %210) #17
  br label %nvme_tcp_init_connection.exit

if.end160.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #15
  %maxh2cdata161.i = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 16
  %215 = ptrtoint ptr %maxh2cdata161.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %210, ptr %maxh2cdata161.i, align 4
  br label %nvme_tcp_init_connection.exit

nvme_tcp_init_connection.exit:                    ; preds = %if.end160.i, %do.end156.i, %do.end142.i, %do.end124.i, %do.end92.i, %do.end69.i, %do.end55.i, %do.end.i, %if.end26.i.nvme_tcp_init_connection.exit_crit_edge, %if.end21.i.nvme_tcp_init_connection.exit_crit_edge
  %ret.0.i = phi i32 [ %call23.i, %if.end21.i.nvme_tcp_init_connection.exit_crit_edge ], [ %call31.i, %if.end26.i.nvme_tcp_init_connection.exit_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end55.i ], [ -22, %do.end69.i ], [ -22, %do.end142.i ], [ -22, %do.end156.i ], [ 0, %if.end160.i ], [ -22, %do.end124.i ], [ -22, %do.end92.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i223.i) #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i288) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool131.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool131.not, label %if.end133, label %nvme_tcp_init_connection.exit.err_init_connect_crit_edge

nvme_tcp_init_connection.exit.err_init_connect_crit_edge: ; preds = %nvme_tcp_init_connection.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_init_connect

if.end133:                                        ; preds = %nvme_tcp_init_connection.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rd_enabled = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 20
  %216 = ptrtoint ptr %rd_enabled to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %rd_enabled, align 4
  %flags = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 19
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  %217 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %hdr_digest80, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i.i299 = icmp eq i8 %218, 0
  %add.i = select i1 %tobool.not.i.i299, i32 24, i32 28
  %219 = ptrtoint ptr %pdu_remaining to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %add.i, ptr %pdu_remaining, align 4
  %220 = ptrtoint ptr %pdu_offset to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %pdu_offset, align 4
  %221 = ptrtoint ptr %data_remaining to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %data_remaining, align 4
  %222 = ptrtoint ptr %ddgst_remaining to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %ddgst_remaining, align 4
  %223 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx, align 4
  %sk135 = getelementptr inbounds %struct.socket, ptr %224, i32 0, i32 4
  %225 = ptrtoint ptr %sk135 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sk135, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %226, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #13
  %227 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx, align 4
  %sk137 = getelementptr inbounds %struct.socket, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %sk137 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %sk137, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %230, i32 0, i32 72
  %231 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %arrayidx, ptr %sk_user_data, align 4
  %232 = load ptr, ptr %arrayidx, align 4
  %sk139 = getelementptr inbounds %struct.socket, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %sk139 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %sk139, align 16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %234, i32 0, i32 76
  %235 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sk_state_change, align 4
  %state_change = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 28
  %237 = ptrtoint ptr %state_change to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %236, ptr %state_change, align 4
  %238 = load ptr, ptr %sk139, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %238, i32 0, i32 77
  %239 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %sk_data_ready, align 8
  %data_ready = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 29
  %241 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %240, ptr %data_ready, align 4
  %242 = load ptr, ptr %sk139, align 16
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %242, i32 0, i32 78
  %243 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %sk_write_space, align 4
  %write_space = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 30
  %245 = ptrtoint ptr %write_space to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %244, ptr %write_space, align 4
  %246 = load ptr, ptr %sk139, align 16
  %sk_data_ready146 = getelementptr inbounds %struct.sock, ptr %246, i32 0, i32 77
  %247 = ptrtoint ptr %sk_data_ready146 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @nvme_tcp_data_ready, ptr %sk_data_ready146, align 8
  %248 = load ptr, ptr %arrayidx, align 4
  %sk148 = getelementptr inbounds %struct.socket, ptr %248, i32 0, i32 4
  %249 = ptrtoint ptr %sk148 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %sk148, align 16
  %sk_state_change149 = getelementptr inbounds %struct.sock, ptr %250, i32 0, i32 76
  %251 = ptrtoint ptr %sk_state_change149 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @nvme_tcp_state_change, ptr %sk_state_change149, align 4
  %252 = load ptr, ptr %arrayidx, align 4
  %sk151 = getelementptr inbounds %struct.socket, ptr %252, i32 0, i32 4
  %253 = ptrtoint ptr %sk151 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sk151, align 16
  %sk_write_space152 = getelementptr inbounds %struct.sock, ptr %254, i32 0, i32 78
  %255 = ptrtoint ptr %sk_write_space152 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @nvme_tcp_write_space, ptr %sk_write_space152, align 4
  %256 = load ptr, ptr %arrayidx, align 4
  %sk154 = getelementptr inbounds %struct.socket, ptr %256, i32 0, i32 4
  %257 = ptrtoint ptr %sk154 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %sk154, align 16
  %sk_ll_usec = getelementptr inbounds %struct.sock, ptr %258, i32 0, i32 13
  %259 = ptrtoint ptr %sk_ll_usec to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 1, ptr %sk_ll_usec, align 8
  %260 = load ptr, ptr %arrayidx, align 4
  %sk156 = getelementptr inbounds %struct.socket, ptr %260, i32 0, i32 4
  %261 = ptrtoint ptr %sk156 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %sk156, align 16
  %sk_callback_lock157 = getelementptr inbounds %struct.sock, ptr %262, i32 0, i32 50
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock157) #13
  br label %cleanup174

err_init_connect:                                 ; preds = %nvme_tcp_init_connection.exit.err_init_connect_crit_edge, %nvme_tcp_init_connection.exit.thread313, %nvme_tcp_init_connection.exit.thread
  %retval.0.i298312 = phi i32 [ -12, %nvme_tcp_init_connection.exit.thread ], [ %ret.0.i, %nvme_tcp_init_connection.exit.err_init_connect_crit_edge ], [ -12, %nvme_tcp_init_connection.exit.thread313 ]
  %263 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx, align 4
  %call159 = call i32 @kernel_sock_shutdown(ptr noundef %264, i32 noundef 2) #13
  br label %err_rcv_pdu

err_rcv_pdu:                                      ; preds = %err_init_connect, %do.end127
  %ret.0 = phi i32 [ %call122, %do.end127 ], [ %retval.0.i298312, %err_init_connect ]
  %265 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pdu, align 4
  call void @kfree(ptr noundef %266) #13
  br label %err_crypto

err_crypto:                                       ; preds = %err_rcv_pdu, %if.end8.i.err_crypto_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_rcv_pdu ], [ -12, %if.end8.i.err_crypto_crit_edge ]
  %267 = ptrtoint ptr %hdr_digest80 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %hdr_digest80, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool162.not = icmp eq i8 %268, 0
  br i1 %tobool162.not, label %lor.lhs.false164, label %err_crypto.if.then168_crit_edge

err_crypto.if.then168_crit_edge:                  ; preds = %err_crypto
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then168

lor.lhs.false164:                                 ; preds = %err_crypto
  %269 = ptrtoint ptr %data_digest83 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %data_digest83, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool166.not = icmp eq i8 %270, 0
  br i1 %tobool166.not, label %lor.lhs.false164.err_sock_crit_edge, label %lor.lhs.false164.if.then168_crit_edge

lor.lhs.false164.if.then168_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then168

lor.lhs.false164.err_sock_crit_edge:              ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_sock

if.then168:                                       ; preds = %lor.lhs.false164.if.then168_crit_edge, %err_crypto.if.then168_crit_edge
  %rcv_hash.i300 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 23
  %271 = ptrtoint ptr %rcv_hash.i300 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rcv_hash.i300, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %274, i32 -128
  call void @kfree_sensitive(ptr noundef %272) #13
  %snd_hash.i301 = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %qid, i32 24
  %275 = ptrtoint ptr %snd_hash.i301 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %snd_hash.i301, align 4
  call void @kfree_sensitive(ptr noundef %276) #13
  call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i, ptr noundef %274) #13
  br label %err_sock

err_sock:                                         ; preds = %if.then168, %lor.lhs.false164.err_sock_crit_edge, %do.end97, %cleanup, %do.end56
  %ret.2 = phi i32 [ %call51, %do.end56 ], [ %call68, %cleanup ], [ %retval.0.i287308, %do.end97 ], [ %ret.1, %if.then168 ], [ %ret.1, %lor.lhs.false164.err_sock_crit_edge ]
  %277 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx, align 4
  call void @sock_release(ptr noundef %278) #13
  %279 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr null, ptr %arrayidx, align 4
  br label %err_destroy_mutex

err_destroy_mutex:                                ; preds = %err_sock, %do.end19
  %ret.3 = phi i32 [ %call15, %do.end19 ], [ %ret.2, %err_sock ]
  call void @mutex_destroy(ptr noundef %send_mutex) #13
  call void @mutex_destroy(ptr noundef %queue_lock) #13
  br label %cleanup174

cleanup174:                                       ; preds = %err_destroy_mutex, %if.end133
  %retval.0 = phi i32 [ %ret.3, %err_destroy_mutex ], [ 0, %if.end133 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_io_work(ptr noundef %w) #3 align 64 {
entry:
  %rd_desc.i = alloca %struct.read_descriptor_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %send_mutex = getelementptr i8, ptr %w, i32 140
  %1 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc.i, i32 0, i32 2
  %nr_cqe.i = getelementptr i8, ptr %w, i32 268
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call1 = call i32 @mutex_trylock(ptr noundef %send_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %if.then

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %do.body
  %call2 = call fastcc i32 @nvme_tcp_try_send(ptr noundef %add.ptr)
  call void @mutex_unlock(ptr noundef %send_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then.if.end10_crit_edge, label %if.else

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5 = icmp slt i32 %call2, 0
  br i1 %cmp5, label %if.else.do.end_crit_edge, label %if.else.if.end10_crit_edge, !prof !324

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge, %do.body.if.end10_crit_edge
  %pending.0.off0 = phi i1 [ true, %if.else.if.end10_crit_edge ], [ true, %do.body.if.end10_crit_edge ], [ false, %if.then.if.end10_crit_edge ]
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %sk2.i = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk2.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rd_desc.i) #13
  %7 = call ptr @memset(ptr %rd_desc.i, i32 255, i32 16)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %2, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %1, align 4
  call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %10 = ptrtoint ptr %nr_cqe.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nr_cqe.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_sock.i = getelementptr inbounds %struct.proto_ops, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %read_sock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_sock.i, align 4
  %call.i = call i32 %14(ptr noundef %6, ptr noundef nonnull %rd_desc.i, ptr noundef nonnull @nvme_tcp_recv_skb) #13
  call void @release_sock(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rd_desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp ne i32 %call.i, 0
  %brmerge = or i1 %pending.0.off0, %cmp15
  %or.cond = and i1 %cmp12, %brmerge
  br i1 %or.cond, label %if.end10.cleanup33_crit_edge, label %do.cond, !prof !332

if.end10.cleanup33_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup33

do.cond:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  %cmp29 = icmp sgt i32 %sub, -1
  br i1 %cmp29, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.else.do.end_crit_edge
  %io_cpu = getelementptr i8, ptr %w, i32 44
  %16 = ptrtoint ptr %io_cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_cpu, align 4
  %18 = load ptr, ptr @nvme_tcp_wq, align 4
  %call32 = call zeroext i1 @queue_work_on(i32 noundef %17, ptr noundef %18, ptr noundef %w) #13
  br label %cleanup33

cleanup33:                                        ; preds = %do.end, %if.end10.cleanup33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_syncnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_tos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_set_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_data_ready(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #13
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !prof !324

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %rd_enabled = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %rd_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rd_enabled, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %land.lhs.true, !prof !324

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs
  %flags = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %io_cpu = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %io_cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_cpu, align 4
  %9 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 1
  %call5 = tail call zeroext i1 @queue_work_on(i32 noundef %8, ptr noundef %9, ptr noundef %io_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_state_change(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #13
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %3, label %do.end [
    i8 7, label %if.end.sw.bb_crit_edge
    i8 8, label %if.end.sw.bb_crit_edge17
    i8 9, label %if.end.sw.bb_crit_edge18
    i8 4, label %if.end.sw.bb_crit_edge19
    i8 5, label %if.end.sw.bb_crit_edge20
  ]

if.end.sw.bb_crit_edge20:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge19:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge18:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge17:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge17, %if.end.sw.bb_crit_edge18, %if.end.sw.bb_crit_edge19, %if.end.sw.bb_crit_edge20
  %ctrl = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %ctrl1 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %6, i32 0, i32 6
  %call.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 2) #13
  br i1 %call.i, label %do.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %device.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %6, i32 0, i32 6, i32 17
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.116) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %9 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr %struct.nvme_tcp_ctrl, ptr %6, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %err_work.i) #13
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ctrl2 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl2, align 4
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %11, i32 0, i32 6, i32 17
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 348
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  %conv6 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.141, i32 noundef %sub.ptr.div.i, i32 noundef %conv6) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %state_change = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state_change, align 4
  tail call void %19(ptr noundef %sk) #13
  br label %done

done:                                             ; preds = %sw.epilog, %entry.done_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_write_space(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #13
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !prof !324

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %sk_sndbuf.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  %sk_wmem_queued.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %4 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %sub.i.i.i = sub i32 %3, %5
  %6 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %shr.i.i.i = ashr i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %shr.i.i.i)
  %cmp.not.i.i = icmp slt i32 %sub.i.i.i, %shr.i.i.i
  br i1 %cmp.not.i.i, label %land.rhs.if.end_crit_edge, label %land.rhs.i.i, !prof !333

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs.i.i:                                     ; preds = %land.rhs
  %7 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %9 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i.i.i = icmp slt i32 %8, %10
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %land.rhs.i.i.if.end_crit_edge, !prof !334

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i.i, align 8
  %stream_memory_free.i.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %stream_memory_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream_memory_free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then_crit_edge, label %sk_stream_is_writeable.exit

if.end.i.i.i.if.then_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sk_stream_is_writeable.exit:                      ; preds = %if.end.i.i.i
  %call.i.i.i = tail call zeroext i1 %14(ptr noundef %sk, i32 noundef 0) #13
  br i1 %call.i.i.i, label %sk_stream_is_writeable.exit.if.then_crit_edge, label %sk_stream_is_writeable.exit.if.end_crit_edge, !prof !325

sk_stream_is_writeable.exit.if.end_crit_edge:     ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sk_stream_is_writeable.exit.if.then_crit_edge:    ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %sk_stream_is_writeable.exit.if.then_crit_edge, %if.end.i.i.i.if.then_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %15 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  %io_cpu = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %io_cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_cpu, align 4
  %19 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 1
  %call3 = tail call zeroext i1 @queue_work_on(i32 noundef %18, ptr noundef %19, ptr noundef %io_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %sk_stream_is_writeable.exit.if.end_crit_edge, %land.rhs.i.i.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_recv_skb(ptr nocapture noundef readonly %desc, ptr noundef %skb, i32 noundef %offset, i32 noundef %len) #3 align 64 {
entry:
  %sg.i.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arg = getelementptr inbounds %struct.read_descriptor_t, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not273 = icmp eq i32 %len, 0
  br i1 %tobool.not273, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %pdu_remaining.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 9
  %pdu1.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 8
  %pdu_offset.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 10
  %hdr_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 21
  %rcv_hash.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 23
  %data_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 22
  %data_remaining.i143.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 11
  %ddgst_remaining.i144.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 12
  %ctrl.i.i.i145.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 18
  %sub.ptr.lhs.cast.i.i.i148.i = ptrtoint ptr %1 to i32
  %nr_cqe.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 13
  %recv_ddgst.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 26
  %exp_ddgst.i72 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0275 = phi i32 [ %len, %while.body.lr.ph ], [ %len.addr.6, %sw.epilog.while.body_crit_edge ]
  %offset.addr.0274 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.6, %sw.epilog.while.body_crit_edge ]
  %2 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdu_remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cond.false.i, label %sw.bb

cond.false.i:                                     ; preds = %while.body
  %4 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddgst_remaining.i144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdu1.i, align 4
  br i1 %tobool1.not.i, label %sw.bb2, label %sw.bb4

sw.bb:                                            ; preds = %while.body
  %8 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdu1.i, align 4
  %10 = call i32 @llvm.umin.i32(i32 %len.addr.0275, i32 %3) #13
  %11 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdu_offset.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 %12
  %call.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset.addr.0274, ptr noundef %arrayidx.i, i32 noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i23 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i23, label %if.end.i, label %sw.bb.do.end_crit_edge, !prof !325

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %sw.bb
  %13 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdu_remaining.i, align 4
  %sub.i = sub i32 %14, %10
  store i32 %sub.i, ptr %pdu_remaining.i, align 4
  %15 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdu_offset.i, align 4
  %add.i = add i32 %16, %10
  store i32 %add.i, ptr %pdu_offset.i, align 4
  %add6.i = add i32 %10, %offset.addr.0274
  %sub7.i = sub i32 %len.addr.0275, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %tobool9.not.i = icmp eq i32 %14, %10
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdu1.i, align 4
  %19 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not.i = icmp eq i8 %20, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end26.i_crit_edge, label %if.then14.i

if.end11.i.if.end26.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then14.i:                                      ; preds = %if.end11.i
  %flags.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i, !prof !324

do.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %25, i32 0, i32 6, i32 17
  %26 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i.i, align 8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.75, i32 noundef %sub.ptr.div.i.i.i) #17
  br label %do.end

if.end.i.i:                                       ; preds = %if.then14.i
  %hlen.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %18, i32 0, i32 2
  %30 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hlen.i, align 2
  %conv.i = zext i8 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 4
  %34 = ptrtoint ptr %rcv_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rcv_hash.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i) #13
  %36 = call ptr @memset(ptr %sg.i.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i, ptr noundef %18, i32 noundef %conv.i) #13
  %src1.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %35, i32 0, i32 2
  %37 = ptrtoint ptr %src1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sg.i.i.i, ptr %src1.i.i.i.i, align 4
  %nbytes2.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %nbytes2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i, ptr %nbytes2.i.i.i.i, align 8
  %result3.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %35, i32 0, i32 3
  %39 = ptrtoint ptr %result3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i, ptr %result3.i.i.i.i, align 32
  %call.i.i.i = call i32 @crypto_ahash_digest(ptr noundef %35) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #13
  %40 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hlen.i, align 2
  %conv7.i.i = zext i8 %41 to i32
  %add.ptr8.i.i = getelementptr i8, ptr %18, i32 %conv7.i.i
  %42 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %43)
  %cmp.not.i.i = icmp eq i32 %33, %43
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end26.i_crit_edge, label %do.end13.i.i

if.end.i.i.if.end26.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device16.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %45, i32 0, i32 6, i32 17
  %46 = ptrtoint ptr %device16.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device16.i.i, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %33) #13
  %49 = call i32 @llvm.bswap.i32(i32 %43) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.78, i32 noundef %48, i32 noundef %49) #17
  br label %do.end

if.end26.i:                                       ; preds = %if.end.i.i.if.end26.i_crit_edge, %if.end11.i.if.end26.i_crit_edge
  %50 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool27.not.i = icmp eq i8 %51, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end40.i_crit_edge, label %if.then28.i

if.end26.i.if.end40.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then28.i:                                      ; preds = %if.end26.i
  %52 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdu1.i, align 4
  %54 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i.i = icmp eq i8 %55, 0
  %plen.i.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %plen.i.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #13
  %hlen.i93.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %53, i32 0, i32 2
  %59 = ptrtoint ptr %hlen.i93.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hlen.i93.i, align 2
  %conv.i.i = zext i8 %60 to i32
  %flags.i94.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i94.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags.i94.i, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i95.i = icmp eq i8 %63, 0
  %64 = select i1 %tobool.not.i95.i, i1 true, i1 %tobool.not.i.i.i
  %spec.select.i.i = select i1 %64, i32 0, i32 4
  %65 = add nuw nsw i32 %spec.select.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %65)
  %tobool4.not.i.i = icmp ne i32 %58, %65
  %66 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool8.not.i.i = icmp eq i8 %66, 0
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 %tobool8.not.i.i, i1 false
  br i1 %or.cond.i.i, label %nvme_tcp_check_ddgst.exit.i, label %if.end.i104.i, !prof !335

if.end.i104.i:                                    ; preds = %if.then28.i
  %67 = ptrtoint ptr %rcv_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rcv_hash.i.i, align 4
  %tfm.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tfm.i.i.i.i, align 16
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 128
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i23.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i23.i.i, label %if.end.i.i.i, label %if.end.i104.i.if.end40.i_crit_edge

if.end.i104.i.if.end40.i_crit_edge:               ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.end.i.i.i:                                     ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %70, i32 -128
  %73 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i.i.i.i.i, align 128
  %call2.i.i.i = call i32 %74(ptr noundef %68) #13
  br label %if.end40.i

nvme_tcp_check_ddgst.exit.i:                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i97.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %76, i32 0, i32 6, i32 17
  %77 = ptrtoint ptr %device.i97.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device.i97.i, align 8
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 8
  %sub.ptr.rhs.cast.i.i99.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i100.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i99.i
  %sub.ptr.div.i.i101.i = sdiv exact i32 %sub.ptr.sub.i.i100.i, 348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.80, i32 noundef %sub.ptr.div.i.i101.i) #17
  br label %do.end

if.end40.i:                                       ; preds = %if.end.i.i.i, %if.end.i104.i.if.end40.i_crit_edge, %if.end26.i.if.end40.i_crit_edge
  %81 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %18, align 4
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %82, label %do.end.i [
    i8 7, label %sw.bb.i
    i8 5, label %sw.bb44.i
    i8 9, label %sw.bb47.i
  ]

sw.bb.i:                                          ; preds = %if.end40.i
  %84 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdu1.i, align 4
  %86 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %if.then.i.i.i, label %if.end.i.i106.i

if.then.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %87, i32 0, i32 3, i32 11
  %91 = ptrtoint ptr %tags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tags.i.i.i, align 4
  br label %nvme_tcp_tagset.exit.i.i

if.end.i.i106.i:                                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 348
  %tags2.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %87, i32 0, i32 1, i32 11
  %93 = ptrtoint ptr %tags2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tags2.i.i.i, align 4
  %sub.i.i.i = add nsw i32 %sub.ptr.div.i.i.i.i, -1
  %arrayidx3.i.i.i = getelementptr ptr, ptr %94, i32 %sub.i.i.i
  br label %nvme_tcp_tagset.exit.i.i

nvme_tcp_tagset.exit.i.i:                         ; preds = %if.end.i.i106.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %92, %if.then.i.i.i ], [ %arrayidx3.i.i.i, %if.end.i.i106.i ]
  %95 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %command_id.i.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %85, i32 0, i32 1
  %96 = ptrtoint ptr %command_id.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %command_id.i.i, align 4
  %98 = and i16 %97, 4095
  %conv5.i.i.i = zext i16 %98 to i32
  %99 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %retval.0.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %conv5.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %100, %conv5.i.i.i
  br i1 %cmp.i.i.i.i, label %blk_mq_tag_to_rq.exit.i.i.i, label %nvme_tcp_tagset.exit.i.i.do.end.i.i.i_crit_edge

nvme_tcp_tagset.exit.i.i.do.end.i.i.i_crit_edge:  ; preds = %nvme_tcp_tagset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

blk_mq_tag_to_rq.exit.i.i.i:                      ; preds = %nvme_tcp_tagset.exit.i.i
  %rqs.i.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i.i, i32 0, i32 5
  %101 = ptrtoint ptr %rqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rqs.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %102, i32 %conv5.i.i.i
  %103 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %104) #13, !srcloc !336
  %105 = ptrtoint ptr %rqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rqs.i.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr ptr, ptr %106, i32 %conv5.i.i.i
  %107 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx2.i.i.i.i, align 4
  %tobool.not.i.i107.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i107.i, label %blk_mq_tag_to_rq.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i53.i.i, !prof !324

blk_mq_tag_to_rq.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %blk_mq_tag_to_rq.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %blk_mq_tag_to_rq.exit.i.i.i.do.end.i.i.i_crit_edge, %nvme_tcp_tagset.exit.i.i.do.end.i.i.i_crit_edge
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv5.i.i.i) #17
  br label %do.end.i114.i

if.end.i53.i.i:                                   ; preds = %blk_mq_tag_to_rq.exit.i.i.i
  %109 = lshr i16 %97, 12
  %genctr12.i.i.i = getelementptr %struct.request, ptr %108, i32 1, i32 4
  %110 = ptrtoint ptr %genctr12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %genctr12.i.i.i, align 8
  %112 = and i8 %111, 15
  %113 = zext i8 %112 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %113)
  %cmp.not.i.i.i = icmp eq i16 %109, %113
  br i1 %cmp.not.i.i.i, label %if.end.i116.i, label %do.end26.i.i.i, !prof !325

do.end26.i.i.i:                                   ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i.i.i = zext i16 %109 to i32
  %ctrl.i.i.i = getelementptr %struct.request, ptr %108, i32 1, i32 6
  %114 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctrl.i.i.i, align 8
  %device.i.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device.i.i.i, align 8
  %and33.i.i.i = zext i8 %112 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.94, i32 noundef %conv5.i.i.i, i32 noundef %conv1.i.i.i, i32 noundef %and33.i.i.i) #17
  br label %do.end.i114.i

do.end.i114.i:                                    ; preds = %do.end26.i.i.i, %do.end.i.i.i
  %command_id.i.i409 = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %85, i32 0, i32 1
  %118 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i108.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %119, i32 0, i32 6, i32 17
  %120 = ptrtoint ptr %device.i108.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device.i108.i, align 8
  %122 = ptrtoint ptr %command_id.i.i409 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %command_id.i.i409, align 4
  %conv.i109.i = zext i16 %123 to i32
  %124 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %119, align 8
  %sub.ptr.rhs.cast.i.i111.i = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i.i112.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i111.i
  %sub.ptr.div.i.i113.i = sdiv exact i32 %sub.ptr.sub.i.i112.i, 348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.82, i32 noundef %conv.i109.i, i32 noundef %sub.ptr.div.i.i113.i) #17
  br label %do.end

if.end.i116.i:                                    ; preds = %if.end.i53.i.i
  %rq_flags.i.i.i = getelementptr inbounds %struct.request, ptr %108, i32 0, i32 4
  %126 = ptrtoint ptr %rq_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rq_flags.i.i.i, align 8
  %and.i.i115.i = and i32 %127, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115.i)
  %tobool.not.i56.i.i = icmp eq i32 %and.i.i115.i, 0
  %bv_len.i.i.i = getelementptr inbounds %struct.request, ptr %108, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i.i.i = getelementptr inbounds %struct.request, ptr %108, i32 0, i32 8
  %retval.0.in.i57.i.i = select i1 %tobool.not.i56.i.i, ptr %__data_len.i.i.i.i, ptr %bv_len.i.i.i
  %128 = ptrtoint ptr %retval.0.in.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %retval.0.i58.i.i = load i32, ptr %retval.0.in.i57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i58.i.i)
  %tobool6.not.i.i = icmp eq i32 %retval.0.i58.i.i, 0
  br i1 %tobool6.not.i.i, label %do.end10.i.i, label %if.end15.i.i

do.end10.i.i:                                     ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device13.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %130, i32 0, i32 6, i32 17
  %131 = ptrtoint ptr %device13.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device13.i.i, align 8
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %130, align 8
  %sub.ptr.rhs.cast.i61.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i62.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i61.i.i
  %sub.ptr.div.i63.i.i = sdiv exact i32 %sub.ptr.sub.i62.i.i, 348
  %tag.i.i = getelementptr inbounds %struct.request, ptr %108, i32 0, i32 5
  %135 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tag.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.85, i32 noundef %sub.ptr.div.i63.i.i, i32 noundef %136) #17
  br label %do.end

if.end15.i.i:                                     ; preds = %if.end.i116.i
  %data_length.i.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %85, i32 0, i32 4
  %137 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %data_length.i.i, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138) #13
  %140 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %data_remaining.i143.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %85, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags.i117.i, align 1
  %143 = and i8 %142, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %143)
  %144 = icmp eq i8 %143, 8
  br i1 %144, label %do.end29.i.i, label %if.end15.i.i.sw.epilog_crit_edge, !prof !335

if.end15.i.i.sw.epilog_crit_edge:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end29.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device32.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %146, i32 0, i32 6, i32 17
  %147 = ptrtoint ptr %device32.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device32.i.i, align 8
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %146, align 8
  %sub.ptr.rhs.cast.i66.i.i = ptrtoint ptr %150 to i32
  %sub.ptr.sub.i67.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i66.i.i
  %sub.ptr.div.i68.i.i = sdiv exact i32 %sub.ptr.sub.i67.i.i, 348
  %tag34.i.i = getelementptr inbounds %struct.request, ptr %108, i32 0, i32 5
  %151 = ptrtoint ptr %tag34.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tag34.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.88, i32 noundef %sub.ptr.div.i68.i.i, i32 noundef %152) #17
  %153 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %ctrl36.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %154, i32 0, i32 6
  call fastcc void @nvme_tcp_error_recovery(ptr noundef %ctrl36.i.i) #13
  br label %do.end

sw.bb44.i:                                        ; preds = %if.end40.i
  %155 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i.i120.i = icmp eq i8 %156, 0
  %add.i.i = select i1 %tobool.not.i.i120.i, i32 24, i32 28
  %157 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add.i.i, ptr %pdu_remaining.i, align 4
  %158 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %pdu_offset.i, align 4
  %159 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %data_remaining.i143.i, align 4
  %160 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %ddgst_remaining.i144.i, align 4
  %161 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdu1.i, align 4
  %cqe1.i.i = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %sub.ptr.rhs.cast.i.i124.i = ptrtoint ptr %166 to i32
  %sub.ptr.sub.i.i125.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i124.i
  %sub.ptr.div.i.i126.i = sdiv exact i32 %sub.ptr.sub.i.i125.i, 348
  %conv.i127.i = trunc i32 %sub.ptr.div.i.i126.i to i16
  %command_id.i128.i = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %162, i32 0, i32 1, i32 3
  %167 = ptrtoint ptr %command_id.i128.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %command_id.i128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i127.i)
  %tobool.not.i.i129.i = icmp eq i16 %conv.i127.i, 0
  %169 = and i16 %168, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %169)
  %cmp.i.i.i = icmp ugt i16 %169, 30
  %170 = and i1 %cmp.i.i.i, %tobool.not.i.i129.i
  br i1 %170, label %if.then.i.i, label %if.else.i.i, !prof !324

if.then.i.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #15
  %ctrl4.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %164, i32 0, i32 6
  %status.i.i = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %162, i32 0, i32 1, i32 4
  %171 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %status.i.i, align 2
  call void @nvme_complete_async_event(ptr noundef %ctrl4.i.i, i16 noundef zeroext %172, ptr noundef %cqe1.i.i) #13
  br label %sw.epilog

if.else.i.i:                                      ; preds = %sw.bb44.i
  %173 = icmp eq ptr %166, %1
  br i1 %173, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %164, i32 0, i32 3, i32 11
  %174 = ptrtoint ptr %tags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tags.i.i.i.i, align 4
  br label %nvme_tcp_tagset.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tags2.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %164, i32 0, i32 1, i32 11
  %176 = ptrtoint ptr %tags2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tags2.i.i.i.i, align 4
  %sub.i.i.i.i = add nsw i32 %sub.ptr.div.i.i126.i, -1
  %arrayidx3.i.i.i.i = getelementptr ptr, ptr %177, i32 %sub.i.i.i.i
  br label %nvme_tcp_tagset.exit.i.i.i

nvme_tcp_tagset.exit.i.i.i:                       ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.in.i.i.i.i = phi ptr [ %175, %if.then.i.i.i.i ], [ %arrayidx3.i.i.i.i, %if.end.i.i.i.i ]
  %178 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %retval.0.i.i.i.i = load ptr, ptr %retval.0.in.i.i.i.i, align 4
  %conv5.i.i.i.i = zext i16 %169 to i32
  %179 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %retval.0.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %conv5.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %180, %conv5.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %blk_mq_tag_to_rq.exit.i.i.i.i, label %nvme_tcp_tagset.exit.i.i.i.do.end.i.i.i.i_crit_edge

nvme_tcp_tagset.exit.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %nvme_tcp_tagset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i.i

blk_mq_tag_to_rq.exit.i.i.i.i:                    ; preds = %nvme_tcp_tagset.exit.i.i.i
  %rqs.i.i.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i.i.i, i32 0, i32 5
  %181 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %182, i32 %conv5.i.i.i.i
  %183 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %184) #13, !srcloc !336
  %185 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx2.i.i.i.i.i = getelementptr ptr, ptr %186, i32 %conv5.i.i.i.i
  %187 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx2.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i.i.i, label %blk_mq_tag_to_rq.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.end.i31.i.i.i, !prof !324

blk_mq_tag_to_rq.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %blk_mq_tag_to_rq.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %blk_mq_tag_to_rq.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, %nvme_tcp_tagset.exit.i.i.i.do.end.i.i.i.i_crit_edge
  %call10.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv5.i.i.i.i) #17
  br label %do.end.i.i135.i

if.end.i31.i.i.i:                                 ; preds = %blk_mq_tag_to_rq.exit.i.i.i.i
  %189 = lshr i16 %168, 12
  %genctr12.i.i.i.i = getelementptr %struct.request, ptr %188, i32 1, i32 4
  %190 = ptrtoint ptr %genctr12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %genctr12.i.i.i.i, align 8
  %192 = and i8 %191, 15
  %193 = zext i8 %192 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %189, i16 %193)
  %cmp.not.i.i.i.i = icmp eq i16 %189, %193
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i136.i, label %do.end26.i.i.i.i, !prof !325

do.end26.i.i.i.i:                                 ; preds = %if.end.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i.i.i.i = zext i16 %189 to i32
  %ctrl.i.i.i130.i = getelementptr %struct.request, ptr %188, i32 1, i32 6
  %194 = ptrtoint ptr %ctrl.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ctrl.i.i.i130.i, align 8
  %device.i.i.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %195, i32 0, i32 17
  %196 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %device.i.i.i.i, align 8
  %and33.i.i.i.i = zext i8 %192 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.94, i32 noundef %conv5.i.i.i.i, i32 noundef %conv1.i.i.i.i, i32 noundef %and33.i.i.i.i) #17
  br label %do.end.i.i135.i

do.end.i.i135.i:                                  ; preds = %do.end26.i.i.i.i, %do.end.i.i.i.i
  %command_id.i128.i386 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %162, i32 0, i32 1, i32 3
  %198 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i.i131.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %199, i32 0, i32 6, i32 17
  %200 = ptrtoint ptr %device.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %device.i.i131.i, align 8
  %202 = ptrtoint ptr %command_id.i128.i386 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %command_id.i128.i386, align 4
  %conv.i.i.i = zext i16 %203 to i32
  %204 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %199, align 8
  %sub.ptr.rhs.cast.i.i.i132.i = ptrtoint ptr %205 to i32
  %sub.ptr.sub.i.i.i133.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i132.i
  %sub.ptr.div.i.i.i134.i = sdiv exact i32 %sub.ptr.sub.i.i.i133.i, 348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.96, i32 noundef %conv.i.i.i, i32 noundef %sub.ptr.div.i.i.i134.i) #17
  %206 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %ctrl6.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %207, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl6.i.i.i, i32 noundef 2) #13
  br i1 %call.i.i.i.i, label %do.end.i35.i.i.i, label %do.end.i.i135.i.do.end_crit_edge

do.end.i.i135.i.do.end_crit_edge:                 ; preds = %do.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.i35.i.i.i:                                 ; preds = %do.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #15
  %device.i34.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %207, i32 0, i32 6, i32 17
  %208 = ptrtoint ptr %device.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %device.i34.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %209, ptr noundef nonnull @.str.116) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %210 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i.i.i.i = getelementptr %struct.nvme_tcp_ctrl, ptr %207, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %210, ptr noundef %err_work.i.i.i.i) #13
  br label %do.end

if.end.i.i136.i:                                  ; preds = %if.end.i31.i.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.request, ptr %188, i32 1
  %status.i.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %211 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %status.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %cmp.i11.i.i = icmp eq i16 %212, 0
  br i1 %cmp.i11.i.i, label %if.then10.i.i.i, label %if.end.i.i136.i.if.end13.i.i.i_crit_edge

if.end.i.i136.i.if.end13.i.i.i_crit_edge:         ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_pc() #15
  %status11.i.i.i = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, ptr %162, i32 0, i32 1, i32 4
  %213 = ptrtoint ptr %status11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %status11.i.i.i, align 2
  %215 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %status.i.i.i, align 2
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i136.i.if.end13.i.i.i_crit_edge
  %216 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %status.i.i.i, align 2
  %218 = ptrtoint ptr %cqe1.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %.unpack.i.i.i = load i64, ptr %cqe1.i.i, align 8
  %ctrl1.i.i.i.i = getelementptr %struct.request, ptr %188, i32 1, i32 6
  %219 = ptrtoint ptr %ctrl1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ctrl1.i.i.i.i, align 8
  %quirks.i.i.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %220, i32 0, i32 61
  %221 = ptrtoint ptr %quirks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %quirks.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %222, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i36.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i36.i.i.i, label %if.then.i37.i.i.i, label %if.end13.i.i.i.if.end.i38.i.i.i_crit_edge

if.end13.i.i.i.if.end.i38.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i38.i.i.i

if.then.i37.i.i.i:                                ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %223 = ptrtoint ptr %genctr12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %genctr12.i.i.i.i, align 8
  %inc.i.i.i.i = add i8 %224, 1
  store i8 %inc.i.i.i.i, ptr %genctr12.i.i.i.i, align 8
  br label %if.end.i38.i.i.i

if.end.i38.i.i.i:                                 ; preds = %if.then.i37.i.i.i, %if.end13.i.i.i.if.end.i38.i.i.i_crit_edge
  %225 = call i16 @llvm.bswap.i16(i16 %217) #13
  %226 = lshr i16 %225, 1
  %status3.i.i.i.i = getelementptr %struct.request, ptr %188, i32 1, i32 5
  %227 = ptrtoint ptr %status3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %status3.i.i.i.i, align 4
  %result4.i.i.i.i = getelementptr %struct.request, ptr %188, i32 1, i32 2
  %228 = ptrtoint ptr %result4.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %.unpack.i.i.i, ptr %result4.i.i.i.i, align 8
  call void @nvme_should_fail(ptr noundef nonnull %188) #13
  %229 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %188, align 8
  %queue_flags.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %230, i32 0, i32 11
  %231 = ptrtoint ptr %queue_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %queue_flags.i.i.i.i.i, align 4
  %233 = and i32 %232, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i.i.i.i.i = icmp eq i32 %233, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i38.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i.i

if.end.i38.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge: ; preds = %if.end.i38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i.i

blk_should_fake_timeout.exit.i.i.i.i:             ; preds = %if.end.i38.i.i.i
  %call1.i.i.i.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %230) #13
  br i1 %call1.i.i.i.i.i, label %blk_should_fake_timeout.exit.i.i.i.i.if.end17.i.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge, !prof !324

blk_should_fake_timeout.exit.i.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i.i

blk_should_fake_timeout.exit.i.i.i.i.if.end17.i.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i.i

nvme_try_complete_req.exit.i.i.i:                 ; preds = %blk_should_fake_timeout.exit.i.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge, %if.end.i38.i.i.i.nvme_try_complete_req.exit.i.i.i_crit_edge
  %call10.i39.i.i.i = call zeroext i1 @blk_mq_complete_request_remote(ptr noundef nonnull %188) #13
  br i1 %call10.i39.i.i.i, label %nvme_try_complete_req.exit.i.i.i.if.end17.i.i.i_crit_edge, label %if.then16.i.i.i

nvme_try_complete_req.exit.i.i.i.if.end17.i.i.i_crit_edge: ; preds = %nvme_try_complete_req.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i.i

if.then16.i.i.i:                                  ; preds = %nvme_try_complete_req.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nvme_complete_rq(ptr noundef nonnull %188) #13
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.then16.i.i.i, %nvme_try_complete_req.exit.i.i.i.if.end17.i.i.i_crit_edge, %blk_should_fake_timeout.exit.i.i.i.i.if.end17.i.i.i_crit_edge
  %234 = ptrtoint ptr %nr_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %nr_cqe.i.i.i, align 4
  %inc.i.i.i = add i32 %235, 1
  store i32 %inc.i.i.i, ptr %nr_cqe.i.i.i, align 4
  br label %sw.epilog

sw.bb47.i:                                        ; preds = %if.end40.i
  %236 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i.i139.i = icmp eq i8 %237, 0
  %add.i140.i = select i1 %tobool.not.i.i139.i, i32 24, i32 28
  %238 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %add.i140.i, ptr %pdu_remaining.i, align 4
  %239 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %pdu_offset.i, align 4
  %240 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -1, ptr %data_remaining.i143.i, align 4
  %241 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %ddgst_remaining.i144.i, align 4
  %242 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdu1.i, align 4
  %r2t_length1.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %r2t_length1.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %r2t_length1.i.i, align 4
  %246 = call i32 @llvm.bswap.i32(i32 %245) #13
  %r2t_offset2.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %243, i32 0, i32 3
  %247 = ptrtoint ptr %r2t_offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %r2t_offset2.i.i, align 4
  %249 = call i32 @llvm.bswap.i32(i32 %248) #13
  %250 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 8
  %254 = icmp eq ptr %253, %1
  br i1 %254, label %if.then.i.i147.i, label %if.end.i.i155.i

if.then.i.i147.i:                                 ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i.i146.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %251, i32 0, i32 3, i32 11
  %255 = ptrtoint ptr %tags.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %tags.i.i146.i, align 4
  br label %nvme_tcp_tagset.exit.i161.i

if.end.i.i155.i:                                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i.i.i149.i = ptrtoint ptr %253 to i32
  %sub.ptr.sub.i.i.i150.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i149.i
  %sub.ptr.div.i.i.i151.i = sdiv exact i32 %sub.ptr.sub.i.i.i150.i, 348
  %tags2.i.i152.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %251, i32 0, i32 1, i32 11
  %257 = ptrtoint ptr %tags2.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %tags2.i.i152.i, align 4
  %sub.i.i153.i = add nsw i32 %sub.ptr.div.i.i.i151.i, -1
  %arrayidx3.i.i154.i = getelementptr ptr, ptr %258, i32 %sub.i.i153.i
  br label %nvme_tcp_tagset.exit.i161.i

nvme_tcp_tagset.exit.i161.i:                      ; preds = %if.end.i.i155.i, %if.then.i.i147.i
  %retval.0.in.i.i156.i = phi ptr [ %256, %if.then.i.i147.i ], [ %arrayidx3.i.i154.i, %if.end.i.i155.i ]
  %259 = ptrtoint ptr %retval.0.in.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %retval.0.i.i157.i = load ptr, ptr %retval.0.in.i.i156.i, align 4
  %command_id.i158.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %243, i32 0, i32 1
  %260 = ptrtoint ptr %command_id.i158.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %command_id.i158.i, align 4
  %262 = and i16 %261, 4095
  %conv5.i.i159.i = zext i16 %262 to i32
  %263 = ptrtoint ptr %retval.0.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %retval.0.i.i157.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %conv5.i.i159.i)
  %cmp.i.i.i160.i = icmp ugt i32 %264, %conv5.i.i159.i
  br i1 %cmp.i.i.i160.i, label %blk_mq_tag_to_rq.exit.i.i166.i, label %nvme_tcp_tagset.exit.i161.i.do.end.i.i168.i_crit_edge

nvme_tcp_tagset.exit.i161.i.do.end.i.i168.i_crit_edge: ; preds = %nvme_tcp_tagset.exit.i161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i168.i

blk_mq_tag_to_rq.exit.i.i166.i:                   ; preds = %nvme_tcp_tagset.exit.i161.i
  %rqs.i.i.i162.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i157.i, i32 0, i32 5
  %265 = ptrtoint ptr %rqs.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rqs.i.i.i162.i, align 4
  %arrayidx.i.i.i163.i = getelementptr ptr, ptr %266, i32 %conv5.i.i159.i
  %267 = ptrtoint ptr %arrayidx.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx.i.i.i163.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %268) #13, !srcloc !336
  %269 = ptrtoint ptr %rqs.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rqs.i.i.i162.i, align 4
  %arrayidx2.i.i.i164.i = getelementptr ptr, ptr %270, i32 %conv5.i.i159.i
  %271 = ptrtoint ptr %arrayidx2.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx2.i.i.i164.i, align 4
  %tobool.not.i.i165.i = icmp eq ptr %272, null
  br i1 %tobool.not.i.i165.i, label %blk_mq_tag_to_rq.exit.i.i166.i.do.end.i.i168.i_crit_edge, label %if.end.i93.i.i, !prof !324

blk_mq_tag_to_rq.exit.i.i166.i.do.end.i.i168.i_crit_edge: ; preds = %blk_mq_tag_to_rq.exit.i.i166.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i168.i

do.end.i.i168.i:                                  ; preds = %blk_mq_tag_to_rq.exit.i.i166.i.do.end.i.i168.i_crit_edge, %nvme_tcp_tagset.exit.i161.i.do.end.i.i168.i_crit_edge
  %call10.i.i167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv5.i.i159.i) #17
  br label %do.end.i182.i

if.end.i93.i.i:                                   ; preds = %blk_mq_tag_to_rq.exit.i.i166.i
  %273 = lshr i16 %261, 12
  %genctr12.i.i169.i = getelementptr %struct.request, ptr %272, i32 1, i32 4
  %274 = ptrtoint ptr %genctr12.i.i169.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %genctr12.i.i169.i, align 8
  %276 = and i8 %275, 15
  %277 = zext i8 %276 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %273, i16 %277)
  %cmp.not.i.i170.i = icmp eq i16 %273, %277
  br i1 %cmp.not.i.i170.i, label %if.end.i185.i, label %do.end26.i.i175.i, !prof !325

do.end26.i.i175.i:                                ; preds = %if.end.i93.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i.i171.i = zext i16 %273 to i32
  %ctrl.i.i172.i = getelementptr %struct.request, ptr %272, i32 1, i32 6
  %278 = ptrtoint ptr %ctrl.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctrl.i.i172.i, align 8
  %device.i.i173.i = getelementptr inbounds %struct.nvme_ctrl, ptr %279, i32 0, i32 17
  %280 = ptrtoint ptr %device.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %device.i.i173.i, align 8
  %and33.i.i174.i = zext i8 %276 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.94, i32 noundef %conv5.i.i159.i, i32 noundef %conv1.i.i171.i, i32 noundef %and33.i.i174.i) #17
  br label %do.end.i182.i

do.end.i182.i:                                    ; preds = %do.end26.i.i175.i, %do.end.i.i168.i
  %command_id.i158.i368 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %243, i32 0, i32 1
  %282 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i176.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %283, i32 0, i32 6, i32 17
  %284 = ptrtoint ptr %device.i176.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %device.i176.i, align 8
  %286 = ptrtoint ptr %command_id.i158.i368 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %command_id.i158.i368, align 4
  %conv.i177.i = zext i16 %287 to i32
  %288 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %283, align 8
  %sub.ptr.rhs.cast.i.i179.i = ptrtoint ptr %289 to i32
  %sub.ptr.sub.i.i180.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i179.i
  %sub.ptr.div.i.i181.i = sdiv exact i32 %sub.ptr.sub.i.i180.i, 348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.98, i32 noundef %conv.i177.i, i32 noundef %sub.ptr.div.i.i181.i) #17
  br label %do.end

if.end.i185.i:                                    ; preds = %if.end.i93.i.i
  %add.ptr.i.i183.i = getelementptr %struct.request, ptr %272, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool8.not.i184.i = icmp eq i32 %245, 0
  br i1 %tobool8.not.i184.i, label %do.end15.i.i, label %if.end19.i.i, !prof !324

do.end15.i.i:                                     ; preds = %if.end.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  %290 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device18.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %291, i32 0, i32 6, i32 17
  %292 = ptrtoint ptr %device18.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %device18.i.i, align 8
  %tag.i186.i = getelementptr inbounds %struct.request, ptr %272, i32 0, i32 5
  %294 = ptrtoint ptr %tag.i186.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %tag.i186.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.101, i32 noundef %295, i32 noundef %246) #17
  br label %do.end

if.end19.i.i:                                     ; preds = %if.end.i185.i
  %data_sent.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 25
  %296 = ptrtoint ptr %data_sent.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %data_sent.i.i, align 4
  %add.i187.i = add i32 %297, %246
  %data_len.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 9
  %298 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i187.i, i32 %299)
  %cmp.i.i = icmp ugt i32 %add.i187.i, %299
  br i1 %cmp.i.i, label %do.end30.i.i, label %if.end37.i.i, !prof !324

do.end30.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device33.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %301, i32 0, i32 6, i32 17
  %302 = ptrtoint ptr %device33.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %device33.i.i, align 8
  %tag34.i188.i = getelementptr inbounds %struct.request, ptr %272, i32 0, i32 5
  %304 = ptrtoint ptr %tag34.i188.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %tag34.i188.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.104, i32 noundef %305, i32 noundef %246, i32 noundef %299, i32 noundef %297) #17
  br label %do.end

if.end37.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %297)
  %cmp39.i.i = icmp ult i32 %249, %297
  br i1 %cmp39.i.i, label %do.end50.i.i, label %if.end56.i.i, !prof !324

do.end50.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %306 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device53.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %307, i32 0, i32 6, i32 17
  %308 = ptrtoint ptr %device53.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %device53.i.i, align 8
  %tag54.i.i = getelementptr inbounds %struct.request, ptr %272, i32 0, i32 5
  %310 = ptrtoint ptr %tag54.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %tag54.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.107, i32 noundef %311, i32 noundef %249, i32 noundef %297) #17
  br label %do.end

if.end56.i.i:                                     ; preds = %if.end37.i.i
  %pdu_len.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i183.i, i32 0, i32 4
  %312 = ptrtoint ptr %pdu_len.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %pdu_len.i.i, align 4
  %h2cdata_left.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 11
  %313 = ptrtoint ptr %h2cdata_left.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %246, ptr %h2cdata_left.i.i, align 4
  %h2cdata_offset.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 12
  %314 = ptrtoint ptr %h2cdata_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %249, ptr %h2cdata_offset.i.i, align 8
  %ttag.i.i = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, ptr %243, i32 0, i32 2
  %315 = ptrtoint ptr %ttag.i.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %ttag.i.i, align 2
  %ttag57.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 12, i32 0, i32 1
  %317 = ptrtoint ptr %ttag57.i.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %316, ptr %ttag57.i.i, align 4
  call fastcc void @nvme_tcp_setup_h2c_data_pdu(ptr noundef %add.ptr.i.i183.i) #13
  %queue2.i.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i183.i, i32 0, i32 2
  %318 = ptrtoint ptr %queue2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %queue2.i.i.i, align 4
  %lentry.i.i.i = getelementptr %struct.request, ptr %272, i32 1, i32 14
  %req_list.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 5
  %call.i.i.i189.i = call zeroext i1 @llist_add_batch(ptr noundef %lentry.i.i.i, ptr noundef %lentry.i.i.i, ptr noundef %req_list.i.i.i) #13
  br i1 %call.i.i.i189.i, label %land.lhs.true.i.i.i, label %if.end56.i.i.land.end.i.i.i_crit_edge

if.end56.i.i.land.end.i.i.i_crit_edge:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %send_list.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 6
  %320 = ptrtoint ptr %send_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load volatile ptr, ptr %send_list.i.i.i, align 4
  br label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %land.lhs.true.i.i.i, %if.end56.i.i.land.end.i.i.i_crit_edge
  %io_cpu.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 2
  %322 = ptrtoint ptr %io_cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %io_cpu.i.i.i, align 4
  %send_list.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 6
  %324 = ptrtoint ptr %send_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile ptr, ptr %send_list.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %325, %send_list.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %land.end.i.i.i.if.then22.i.i.i_crit_edge

land.end.i.i.i.if.then22.i.i.i_crit_edge:         ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %land.end.i.i.i
  %326 = ptrtoint ptr %req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load volatile ptr, ptr %req_list.i.i.i, align 4
  %cmp.i5.i.i.i.i = icmp eq ptr %327, null
  br i1 %cmp.i5.i.i.i.i, label %nvme_tcp_queue_more.exit.i.i.i, label %lor.lhs.false.i.i.i.i.if.then22.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then22.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i.i.i

nvme_tcp_queue_more.exit.i.i.i:                   ; preds = %lor.lhs.false.i.i.i.i
  %more_requests.i.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 7
  %328 = ptrtoint ptr %more_requests.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %more_requests.i.i.i.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool2.i.not.i.i.i = icmp eq i8 %329, 0
  br i1 %tobool2.i.not.i.i.i, label %nvme_tcp_queue_more.exit.i.i.i.sw.epilog_crit_edge, label %nvme_tcp_queue_more.exit.i.i.i.if.then22.i.i.i_crit_edge

nvme_tcp_queue_more.exit.i.i.i.if.then22.i.i.i_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i.i.i

nvme_tcp_queue_more.exit.i.i.i.sw.epilog_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then22.i.i.i:                                  ; preds = %nvme_tcp_queue_more.exit.i.i.i.if.then22.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then22.i.i.i_crit_edge, %land.end.i.i.i.if.then22.i.i.i_crit_edge
  %330 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %319, i32 0, i32 1
  %call24.i.i.i = call zeroext i1 @queue_work_on(i32 noundef %323, ptr noundef %330, ptr noundef %io_work.i.i.i) #13
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv41.i = zext i8 %82 to i32
  %331 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %332, i32 0, i32 6, i32 17
  %333 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %device.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.73, i32 noundef %conv41.i) #17
  br label %do.end

sw.bb2:                                           ; preds = %cond.false.i
  %335 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 8
  %339 = icmp eq ptr %338, %1
  br i1 %339, label %if.then.i.i26, label %if.end.i.i31

if.then.i.i26:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %336, i32 0, i32 3, i32 11
  %340 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %tags.i.i, align 4
  br label %nvme_tcp_tagset.exit.i

if.end.i.i31:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i.i.i28 = ptrtoint ptr %338 to i32
  %sub.ptr.sub.i.i.i29 = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i28
  %sub.ptr.div.i.i.i30 = sdiv exact i32 %sub.ptr.sub.i.i.i29, 348
  %tags2.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %336, i32 0, i32 1, i32 11
  %342 = ptrtoint ptr %tags2.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %tags2.i.i, align 4
  %sub.i.i = add nsw i32 %sub.ptr.div.i.i.i30, -1
  %arrayidx3.i.i = getelementptr ptr, ptr %343, i32 %sub.i.i
  br label %nvme_tcp_tagset.exit.i

nvme_tcp_tagset.exit.i:                           ; preds = %if.end.i.i31, %if.then.i.i26
  %retval.0.in.i.i = phi ptr [ %341, %if.then.i.i26 ], [ %arrayidx3.i.i, %if.end.i.i31 ]
  %344 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %command_id.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %7, i32 0, i32 1
  %345 = ptrtoint ptr %command_id.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %command_id.i, align 4
  %347 = and i16 %346, 4095
  %and.i.i = zext i16 %347 to i32
  %348 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %and.i.i)
  %cmp.i.i.i32 = icmp ugt i32 %349, %and.i.i
  br i1 %cmp.i.i.i32, label %if.then.i.i.i33, label %nvme_tcp_tagset.exit.i.nvme_cid_to_rq.exit.i_crit_edge

nvme_tcp_tagset.exit.i.nvme_cid_to_rq.exit.i_crit_edge: ; preds = %nvme_tcp_tagset.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_cid_to_rq.exit.i

if.then.i.i.i33:                                  ; preds = %nvme_tcp_tagset.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i, i32 0, i32 5
  %350 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %351, i32 %and.i.i
  %352 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %353) #13, !srcloc !336
  %354 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %355, i32 %and.i.i
  %356 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx2.i.i.i, align 4
  br label %nvme_cid_to_rq.exit.i

nvme_cid_to_rq.exit.i:                            ; preds = %if.then.i.i.i33, %nvme_tcp_tagset.exit.i.nvme_cid_to_rq.exit.i_crit_edge
  %retval.0.i.i.i34 = phi ptr [ %357, %if.then.i.i.i33 ], [ null, %nvme_tcp_tagset.exit.i.nvme_cid_to_rq.exit.i_crit_edge ]
  %add.ptr.i.i35 = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1
  %358 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %data_remaining.i143.i, align 4
  %360 = call i32 @llvm.umin.i32(i32 %len.addr.0275, i32 %359) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool.not133.i = icmp eq i32 %360, 0
  br i1 %tobool.not133.i, label %nvme_cid_to_rq.exit.i.while.end.i_crit_edge, label %if.end.lr.ph.i

nvme_cid_to_rq.exit.i.while.end.i_crit_edge:      ; preds = %nvme_cid_to_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end.lr.ph.i:                                   ; preds = %nvme_cid_to_rq.exit.i
  %iter.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 16
  %count.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 17
  %curr_bio.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 15
  %rq_flags.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 0, i32 4
  %361 = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 0, i32 29
  %bv_len.i.i.i36 = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 0, i32 29, i32 0, i32 1
  %iov_offset.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i35, i32 0, i32 14, i32 3
  br label %if.end.i38

if.end.i38:                                       ; preds = %cleanup.i.if.end.i38_crit_edge, %if.end.lr.ph.i
  %offset.addr.2 = phi i32 [ %offset.addr.0274, %if.end.lr.ph.i ], [ %add.i53, %cleanup.i.if.end.i38_crit_edge ]
  %len.addr.2 = phi i32 [ %len.addr.0275, %if.end.lr.ph.i ], [ %sub.i52, %cleanup.i.if.end.i38_crit_edge ]
  %362 = phi i32 [ %360, %if.end.lr.ph.i ], [ %418, %cleanup.i.if.end.i38_crit_edge ]
  %363 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool5.not.i = icmp eq i32 %364, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i38.if.end14.i_crit_edge

if.end.i38.if.end14.i_crit_edge:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end.i38
  %365 = ptrtoint ptr %curr_bio.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %curr_bio.i, align 8
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 8
  store ptr %368, ptr %curr_bio.i, align 8
  %tobool9.not.i39 = icmp eq ptr %368, null
  br i1 %tobool9.not.i39, label %do.end.i44, label %if.end13.i

do.end.i44:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %369 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i40 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %370, i32 0, i32 6, i32 17
  %371 = ptrtoint ptr %device.i40 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %device.i40, align 8
  %373 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %370, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %374 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 348
  %tag.i = getelementptr inbounds %struct.request, ptr %retval.0.i.i.i34, i32 0, i32 5
  %375 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %tag.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.109, i32 noundef %sub.ptr.div.i.i, i32 noundef %376) #17
  %377 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool.not.i.i.i41 = icmp eq i8 %378, 0
  %add.i.i42 = select i1 %tobool.not.i.i.i41, i32 24, i32 28
  %379 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %add.i.i42, ptr %pdu_remaining.i, align 4
  %380 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %pdu_offset.i, align 4
  %381 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 -1, ptr %data_remaining.i143.i, align 4
  %382 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 0, ptr %ddgst_remaining.i144.i, align 4
  br label %do.end

if.end13.i:                                       ; preds = %if.then6.i
  %383 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %rq_flags.i.i, align 8
  %and.i105.i = and i32 %384, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool.not.i.i45 = icmp eq i32 %and.i105.i, 0
  br i1 %tobool.not.i.i45, label %if.else.i.i46, label %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge

if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_init_iter.exit.i

if.else.i.i46:                                    ; preds = %if.end13.i
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 20
  %385 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 8, i32 2
  %387 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %bi_idx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %386, i32 %388
  %bi.sroa.6.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 8, i32 1
  %389 = ptrtoint ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %bi.sroa.6.0.copyload.i.i = load i32, ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bi.sroa.6.0.copyload.i.i)
  %tobool3.not44.i.i = icmp eq i32 %bi.sroa.6.0.copyload.i.i, 0
  br i1 %tobool3.not44.i.i, label %if.else.i.i46.for.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i

if.else.i.i46.for.end.i.i_crit_edge:              ; preds = %if.else.i.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %if.else.i.i46
  %bi.sroa.14.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 8, i32 3
  %390 = ptrtoint ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %bi.sroa.14.0.copyload.i.i = load i32, ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i, align 8
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 2
  %391 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i47 = and i32 %392, 255
  %393 = add nsw i32 %and.i.i.i.i47, -3
  %switch.and.i.i.i.i = and i32 %393, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %nr_bvec.048.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.6.047.i.i = phi i32 [ %bi.sroa.6.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i51, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.10.046.i.i = phi i32 [ %388, %land.rhs.lr.ph.i.i ], [ %bi.sroa.10.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.14.045.i.i = phi i32 [ %bi.sroa.14.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %bi.sroa.14.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bv_len12.i.i = getelementptr %struct.bio_vec, ptr %386, i32 %bi.sroa.10.046.i.i, i32 1
  %394 = ptrtoint ptr %bv_len12.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %bv_len12.i.i, align 4
  %sub.i107.i = sub i32 %395, %bi.sroa.14.045.i.i
  %396 = call i32 @llvm.umin.i32(i32 %bi.sroa.6.047.i.i, i32 %sub.i107.i) #13
  %inc.i.i = add i32 %nr_bvec.048.i.i, 1
  br i1 %switch.selectcmp.i.i.i.i, label %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i.i.i = add i32 %396, %bi.sroa.14.045.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %395)
  %cmp.i.i.i.i48 = icmp eq i32 %add.i.i.i.i, %395
  %spec.select.i.i49 = select i1 %cmp.i.i.i.i48, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i50 = zext i1 %cmp.i.i.i.i48 to i32
  %spec.select43.i.i = add i32 %bi.sroa.10.046.i.i, %inc.i.i.i.i50
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %bi.sroa.14.1.i.i = phi i32 [ %bi.sroa.14.045.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i49, %if.else.i.i.i ]
  %bi.sroa.10.2.i.i = phi i32 [ %bi.sroa.10.046.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select43.i.i, %if.else.i.i.i ]
  %sub.i.i.i.i51 = sub i32 %bi.sroa.6.047.i.i, %396
  %tobool3.not.i.i = icmp eq i32 %sub.i.i.i.i51, 0
  br i1 %tobool3.not.i.i, label %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, %if.else.i.i46.for.end.i.i_crit_edge
  %nr_bvec.0.lcssa.i.i = phi i32 [ 0, %if.else.i.i46.for.end.i.i_crit_edge ], [ %inc.i.i, %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge ]
  %bi_bvec_done22.i.i = getelementptr inbounds %struct.bio, ptr %368, i32 0, i32 8, i32 3
  %397 = ptrtoint ptr %bi_bvec_done22.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %bi_bvec_done22.i.i, align 8
  br label %nvme_tcp_init_iter.exit.i

nvme_tcp_init_iter.exit.i:                        ; preds = %for.end.i.i, %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge
  %offset.0.i.i = phi i32 [ %398, %for.end.i.i ], [ 0, %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge ]
  %nr_bvec.1.i.i = phi i32 [ %nr_bvec.0.lcssa.i.i, %for.end.i.i ], [ 1, %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge ]
  %size.0.in.i.i = phi ptr [ %bi.sroa.6.0.bi_iter.sroa_idx.i.i, %for.end.i.i ], [ %bv_len.i.i.i36, %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge ]
  %vec.0.i.i = phi ptr [ %arrayidx.i.i, %for.end.i.i ], [ %361, %if.end13.i.nvme_tcp_init_iter.exit.i_crit_edge ]
  %399 = ptrtoint ptr %size.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %size.0.i.i = load i32, ptr %size.0.in.i.i, align 4
  call void @iov_iter_bvec(ptr noundef %iter.i, i32 noundef 0, ptr noundef %vec.0.i.i, i32 noundef %nr_bvec.1.i.i, i32 noundef %size.0.i.i) #13
  %400 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %offset.0.i.i, ptr %iov_offset.i.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %nvme_tcp_init_iter.exit.i, %if.end.i38.if.end14.i_crit_edge
  %401 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %count.i.i, align 8
  %403 = call i32 @llvm.umin.i32(i32 %362, i32 %402) #13
  %404 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool23.not.i = icmp eq i8 %405, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %406 = ptrtoint ptr %rcv_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %rcv_hash.i.i, align 4
  %call26.i = call i32 @skb_copy_and_hash_datagram_iter(ptr noundef %skb, i32 noundef %offset.addr.2, ptr noundef %iter.i, i32 noundef %403, ptr noundef %407) #13
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28.i = call i32 @skb_copy_datagram_iter(ptr noundef %skb, i32 noundef %offset.addr.2, ptr noundef %iter.i, i32 noundef %403) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then24.i
  %ret.0.i = phi i32 [ %call26.i, %if.then24.i ], [ %call28.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool30.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool30.not.i, label %cleanup.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %408 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device37.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %409, i32 0, i32 6, i32 17
  %410 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %device37.i, align 8
  %412 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %409, align 8
  %sub.ptr.rhs.cast.i112.i = ptrtoint ptr %413 to i32
  %sub.ptr.sub.i113.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i112.i
  %sub.ptr.div.i114.i = sdiv exact i32 %sub.ptr.sub.i113.i, 348
  %tag39.i = getelementptr inbounds %struct.request, ptr %retval.0.i.i.i34, i32 0, i32 5
  %414 = ptrtoint ptr %tag39.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %tag39.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %411, ptr noundef nonnull @.str.112, i32 noundef %sub.ptr.div.i114.i, i32 noundef %415) #17
  br label %do.end

cleanup.i:                                        ; preds = %if.end29.i
  %sub.i52 = sub i32 %len.addr.2, %403
  %add.i53 = add i32 %403, %offset.addr.2
  %416 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %data_remaining.i143.i, align 4
  %sub42.i = sub i32 %417, %403
  store i32 %sub42.i, ptr %data_remaining.i143.i, align 4
  %418 = call i32 @llvm.umin.i32(i32 %sub.i52, i32 %sub42.i) #13
  %tobool.not.i54 = icmp eq i32 %418, 0
  br i1 %tobool.not.i54, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.if.end.i38_crit_edge

cleanup.i.if.end.i38_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i38

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %nvme_cid_to_rq.exit.i.while.end.i_crit_edge
  %offset.addr.3 = phi i32 [ %offset.addr.0274, %nvme_cid_to_rq.exit.i.while.end.i_crit_edge ], [ %add.i53, %cleanup.i.while.end.i_crit_edge ]
  %len.addr.3 = phi i32 [ %len.addr.0275, %nvme_cid_to_rq.exit.i.while.end.i_crit_edge ], [ %sub.i52, %cleanup.i.while.end.i_crit_edge ]
  %419 = phi i32 [ %359, %nvme_cid_to_rq.exit.i.while.end.i_crit_edge ], [ %sub42.i, %cleanup.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool45.not.i = icmp eq i32 %419, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %while.end.i.sw.epilog_crit_edge

while.end.i.sw.epilog_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then46.i:                                      ; preds = %while.end.i
  %420 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %tobool48.not.i = icmp eq i8 %421, 0
  br i1 %tobool48.not.i, label %if.else51.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #15
  %422 = ptrtoint ptr %rcv_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %rcv_hash.i.i, align 4
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %423, i32 0, i32 2
  %424 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr null, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %423, i32 0, i32 1
  %425 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 0, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %423, i32 0, i32 3
  %426 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %exp_ddgst.i72, ptr %result3.i.i.i, align 32
  %call.i.i = call i32 @crypto_ahash_final(ptr noundef %423) #13
  %427 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 4, ptr %ddgst_remaining.i144.i, align 4
  br label %sw.epilog

if.else51.i:                                      ; preds = %if.then46.i
  %flags.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %7, i32 0, i32 1
  %428 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %flags.i, align 1
  %430 = and i8 %429, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool52.not.i = icmp eq i8 %430, 0
  br i1 %tobool52.not.i, label %if.else51.i.if.end54.i_crit_edge, label %if.then53.i

if.else51.i.if.end54.i_crit_edge:                 ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.else51.i
  %status.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i35, i32 0, i32 9
  %431 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %status.i, align 2
  %433 = and i16 %432, -129
  %434 = call i16 @llvm.bswap.i16(i16 %433) #13
  %ctrl1.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 6
  %435 = ptrtoint ptr %ctrl1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ctrl1.i.i.i, align 8
  %quirks.i.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %436, i32 0, i32 61
  %437 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %quirks.i.i.i, align 8
  %and.i.i.i56 = and i32 %438, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i56)
  %tobool.not.i.i115.i = icmp eq i32 %and.i.i.i56, 0
  br i1 %tobool.not.i.i115.i, label %if.then.i.i116.i, label %if.then53.i.if.end.i.i.i59_crit_edge

if.then53.i.if.end.i.i.i59_crit_edge:             ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i59

if.then.i.i116.i:                                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  %genctr.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 4
  %439 = ptrtoint ptr %genctr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %genctr.i.i.i, align 8
  %inc.i.i.i57 = add i8 %440, 1
  store i8 %inc.i.i.i57, ptr %genctr.i.i.i, align 8
  br label %if.end.i.i.i59

if.end.i.i.i59:                                   ; preds = %if.then.i.i116.i, %if.then53.i.if.end.i.i.i59_crit_edge
  %status3.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 5
  %441 = ptrtoint ptr %status3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %434, ptr %status3.i.i.i, align 4
  %result4.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i34, i32 1, i32 2
  %442 = ptrtoint ptr %result4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 281474976710655, ptr %result4.i.i.i, align 8
  call void @nvme_should_fail(ptr noundef %retval.0.i.i.i34) #13
  %443 = ptrtoint ptr %retval.0.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %retval.0.i.i.i34, align 8
  %queue_flags.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %444, i32 0, i32 11
  %445 = ptrtoint ptr %queue_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load volatile i32, ptr %queue_flags.i.i.i.i, align 4
  %447 = and i32 %446, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %447)
  %tobool.not.i.i.i.i58 = icmp eq i32 %447, 0
  br i1 %tobool.not.i.i.i.i58, label %if.end.i.i.i59.nvme_try_complete_req.exit.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i

if.end.i.i.i59.nvme_try_complete_req.exit.i.i_crit_edge: ; preds = %if.end.i.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i

blk_should_fake_timeout.exit.i.i.i:               ; preds = %if.end.i.i.i59
  %call1.i.i.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %444) #13
  br i1 %call1.i.i.i.i, label %blk_should_fake_timeout.exit.i.i.i.nvme_tcp_end_request.exit.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i.nvme_try_complete_req.exit.i.i_crit_edge, !prof !324

blk_should_fake_timeout.exit.i.i.i.nvme_try_complete_req.exit.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i

blk_should_fake_timeout.exit.i.i.i.nvme_tcp_end_request.exit.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_end_request.exit.i

nvme_try_complete_req.exit.i.i:                   ; preds = %blk_should_fake_timeout.exit.i.i.i.nvme_try_complete_req.exit.i.i_crit_edge, %if.end.i.i.i59.nvme_try_complete_req.exit.i.i_crit_edge
  %call10.i.i.i60 = call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %retval.0.i.i.i34) #13
  br i1 %call10.i.i.i60, label %nvme_try_complete_req.exit.i.i.nvme_tcp_end_request.exit.i_crit_edge, label %if.then.i117.i

nvme_try_complete_req.exit.i.i.nvme_tcp_end_request.exit.i_crit_edge: ; preds = %nvme_try_complete_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_end_request.exit.i

if.then.i117.i:                                   ; preds = %nvme_try_complete_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nvme_complete_rq(ptr noundef %retval.0.i.i.i34) #13
  br label %nvme_tcp_end_request.exit.i

nvme_tcp_end_request.exit.i:                      ; preds = %if.then.i117.i, %nvme_try_complete_req.exit.i.i.nvme_tcp_end_request.exit.i_crit_edge, %blk_should_fake_timeout.exit.i.i.i.nvme_tcp_end_request.exit.i_crit_edge
  %448 = ptrtoint ptr %nr_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %nr_cqe.i.i.i, align 4
  %inc.i = add i32 %449, 1
  store i32 %inc.i, ptr %nr_cqe.i.i.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %nvme_tcp_end_request.exit.i, %if.else51.i.if.end54.i_crit_edge
  %450 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i.i120.i61 = icmp eq i8 %451, 0
  %add.i121.i = select i1 %tobool.not.i.i120.i61, i32 24, i32 28
  %452 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %add.i121.i, ptr %pdu_remaining.i, align 4
  %453 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 0, ptr %pdu_offset.i, align 4
  %454 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 -1, ptr %data_remaining.i143.i, align 4
  %455 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 0, ptr %ddgst_remaining.i144.i, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %cond.false.i
  %456 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %ddgst_remaining.i144.i, align 4
  %458 = call i32 @llvm.umin.i32(i32 %len.addr.0275, i32 %457) #13
  %sub.i64 = sub i32 4, %457
  %arrayidx.i65 = getelementptr i8, ptr %recv_ddgst.i, i32 %sub.i64
  %call.i66 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset.addr.0274, ptr noundef %arrayidx.i65, i32 noundef %458) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i71, label %sw.bb4.do.end_crit_edge, !prof !325

sw.bb4.do.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i71:                                       ; preds = %sw.bb4
  %459 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %ddgst_remaining.i144.i, align 4
  %sub6.i = sub i32 %460, %458
  store i32 %sub6.i, ptr %ddgst_remaining.i144.i, align 4
  %add.i68 = add i32 %458, %offset.addr.0274
  %sub7.i69 = sub i32 %len.addr.0275, %458
  call void @__sanitizer_cov_trace_cmp4(i32 %460, i32 %458)
  %tobool9.not.i70 = icmp eq i32 %460, %458
  br i1 %tobool9.not.i70, label %if.end11.i73, label %if.end.i71.sw.epilog_crit_edge

if.end.i71.sw.epilog_crit_edge:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end11.i73:                                     ; preds = %if.end.i71
  %461 = ptrtoint ptr %recv_ddgst.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %recv_ddgst.i, align 4
  %463 = ptrtoint ptr %exp_ddgst.i72 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %exp_ddgst.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %462, i32 %464)
  %cmp13.not.i = icmp eq i32 %462, %464
  br i1 %cmp13.not.i, label %if.end11.i73.if.end21.i_crit_edge, label %if.then14.i75

if.end11.i73.if.end21.i_crit_edge:                ; preds = %if.end11.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then14.i75:                                    ; preds = %if.end11.i73
  %465 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %466, align 8
  %469 = icmp eq ptr %468, %1
  br i1 %469, label %if.then.i.i77, label %if.end.i.i85

if.then.i.i77:                                    ; preds = %if.then14.i75
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i.i76 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %466, i32 0, i32 3, i32 11
  %470 = ptrtoint ptr %tags.i.i76 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %tags.i.i76, align 4
  br label %nvme_tcp_tagset.exit.i91

if.end.i.i85:                                     ; preds = %if.then14.i75
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i.i.i79 = ptrtoint ptr %468 to i32
  %sub.ptr.sub.i.i.i80 = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i.i79
  %sub.ptr.div.i.i.i81 = sdiv exact i32 %sub.ptr.sub.i.i.i80, 348
  %tags2.i.i82 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %466, i32 0, i32 1, i32 11
  %472 = ptrtoint ptr %tags2.i.i82 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %tags2.i.i82, align 4
  %sub.i.i83 = add nsw i32 %sub.ptr.div.i.i.i81, -1
  %arrayidx3.i.i84 = getelementptr ptr, ptr %473, i32 %sub.i.i83
  br label %nvme_tcp_tagset.exit.i91

nvme_tcp_tagset.exit.i91:                         ; preds = %if.end.i.i85, %if.then.i.i77
  %retval.0.in.i.i86 = phi ptr [ %471, %if.then.i.i77 ], [ %arrayidx3.i.i84, %if.end.i.i85 ]
  %474 = ptrtoint ptr %retval.0.in.i.i86 to i32
  call void @__asan_load4_noabort(i32 %474)
  %retval.0.i.i87 = load ptr, ptr %retval.0.in.i.i86, align 4
  %command_id.i88 = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %7, i32 0, i32 1
  %475 = ptrtoint ptr %command_id.i88 to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %command_id.i88, align 4
  %477 = and i16 %476, 4095
  %and.i.i89 = zext i16 %477 to i32
  %478 = ptrtoint ptr %retval.0.i.i87 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %retval.0.i.i87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %479, i32 %and.i.i89)
  %cmp.i.i.i90 = icmp ugt i32 %479, %and.i.i89
  br i1 %cmp.i.i.i90, label %if.then.i.i.i95, label %nvme_tcp_tagset.exit.i91.nvme_cid_to_rq.exit.i100_crit_edge

nvme_tcp_tagset.exit.i91.nvme_cid_to_rq.exit.i100_crit_edge: ; preds = %nvme_tcp_tagset.exit.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_cid_to_rq.exit.i100

if.then.i.i.i95:                                  ; preds = %nvme_tcp_tagset.exit.i91
  call void @__sanitizer_cov_trace_pc() #15
  %rqs.i.i.i92 = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i87, i32 0, i32 5
  %480 = ptrtoint ptr %rqs.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %rqs.i.i.i92, align 4
  %arrayidx.i.i.i93 = getelementptr ptr, ptr %481, i32 %and.i.i89
  %482 = ptrtoint ptr %arrayidx.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %arrayidx.i.i.i93, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %483) #13, !srcloc !336
  %484 = ptrtoint ptr %rqs.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %rqs.i.i.i92, align 4
  %arrayidx2.i.i.i94 = getelementptr ptr, ptr %485, i32 %and.i.i89
  %486 = ptrtoint ptr %arrayidx2.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx2.i.i.i94, align 4
  br label %nvme_cid_to_rq.exit.i100

nvme_cid_to_rq.exit.i100:                         ; preds = %if.then.i.i.i95, %nvme_tcp_tagset.exit.i91.nvme_cid_to_rq.exit.i100_crit_edge
  %retval.0.i.i.i96 = phi ptr [ %487, %if.then.i.i.i95 ], [ null, %nvme_tcp_tagset.exit.i91.nvme_cid_to_rq.exit.i100_crit_edge ]
  %add.ptr.i.i97 = getelementptr %struct.request, ptr %retval.0.i.i.i96, i32 1
  %status.i98 = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i.i97, i32 0, i32 9
  %488 = ptrtoint ptr %status.i98 to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 1024, ptr %status.i98, align 2
  %489 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device.i99 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %490, i32 0, i32 6, i32 17
  %491 = ptrtoint ptr %device.i99 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %device.i99, align 8
  %493 = ptrtoint ptr %recv_ddgst.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %recv_ddgst.i, align 4
  %495 = call i32 @llvm.bswap.i32(i32 %494) #13
  %496 = ptrtoint ptr %exp_ddgst.i72 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %exp_ddgst.i72, align 4
  %498 = call i32 @llvm.bswap.i32(i32 %497) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %492, ptr noundef nonnull @.str.114, i32 noundef %495, i32 noundef %498) #17
  br label %if.end21.i

if.end21.i:                                       ; preds = %nvme_cid_to_rq.exit.i100, %if.end11.i73.if.end21.i_crit_edge
  %flags.i101 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %7, i32 0, i32 1
  %499 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %flags.i101, align 1
  %501 = and i8 %500, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool22.not.i = icmp eq i8 %501, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end31.i_crit_edge, label %if.then23.i

if.end21.i.if.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end21.i
  %502 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 8
  %506 = icmp eq ptr %505, %1
  br i1 %506, label %if.then.i64.i, label %if.end.i72.i

if.then.i64.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  %tags.i63.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %503, i32 0, i32 3, i32 11
  %507 = ptrtoint ptr %tags.i63.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %tags.i63.i, align 4
  br label %nvme_tcp_tagset.exit75.i

if.end.i72.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i.i66.i = ptrtoint ptr %505 to i32
  %sub.ptr.sub.i.i67.i = sub i32 %sub.ptr.lhs.cast.i.i.i148.i, %sub.ptr.rhs.cast.i.i66.i
  %sub.ptr.div.i.i68.i = sdiv exact i32 %sub.ptr.sub.i.i67.i, 348
  %tags2.i69.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %503, i32 0, i32 1, i32 11
  %509 = ptrtoint ptr %tags2.i69.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %tags2.i69.i, align 4
  %sub.i70.i = add nsw i32 %sub.ptr.div.i.i68.i, -1
  %arrayidx3.i71.i = getelementptr ptr, ptr %510, i32 %sub.i70.i
  br label %nvme_tcp_tagset.exit75.i

nvme_tcp_tagset.exit75.i:                         ; preds = %if.end.i72.i, %if.then.i64.i
  %retval.0.in.i73.i = phi ptr [ %508, %if.then.i64.i ], [ %arrayidx3.i71.i, %if.end.i72.i ]
  %511 = ptrtoint ptr %retval.0.in.i73.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %retval.0.i74.i = load ptr, ptr %retval.0.in.i73.i, align 4
  %command_id26.i = getelementptr inbounds %struct.nvme_tcp_data_pdu, ptr %7, i32 0, i32 1
  %512 = ptrtoint ptr %command_id26.i to i32
  call void @__asan_load2_noabort(i32 %512)
  %513 = load i16, ptr %command_id26.i, align 4
  %514 = and i16 %513, 4095
  %and.i76.i = zext i16 %514 to i32
  %515 = ptrtoint ptr %retval.0.i74.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %retval.0.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %516, i32 %and.i76.i)
  %cmp.i.i77.i = icmp ugt i32 %516, %and.i76.i
  br i1 %cmp.i.i77.i, label %if.then.i.i81.i, label %nvme_tcp_tagset.exit75.i.nvme_cid_to_rq.exit83.i_crit_edge

nvme_tcp_tagset.exit75.i.nvme_cid_to_rq.exit83.i_crit_edge: ; preds = %nvme_tcp_tagset.exit75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_cid_to_rq.exit83.i

if.then.i.i81.i:                                  ; preds = %nvme_tcp_tagset.exit75.i
  call void @__sanitizer_cov_trace_pc() #15
  %rqs.i.i78.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i74.i, i32 0, i32 5
  %517 = ptrtoint ptr %rqs.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %rqs.i.i78.i, align 4
  %arrayidx.i.i79.i = getelementptr ptr, ptr %518, i32 %and.i76.i
  %519 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %arrayidx.i.i79.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %520) #13, !srcloc !336
  %521 = ptrtoint ptr %rqs.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %rqs.i.i78.i, align 4
  %arrayidx2.i.i80.i = getelementptr ptr, ptr %522, i32 %and.i76.i
  %523 = ptrtoint ptr %arrayidx2.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %arrayidx2.i.i80.i, align 4
  br label %nvme_cid_to_rq.exit83.i

nvme_cid_to_rq.exit83.i:                          ; preds = %if.then.i.i81.i, %nvme_tcp_tagset.exit75.i.nvme_cid_to_rq.exit83.i_crit_edge
  %retval.0.i.i82.i = phi ptr [ %524, %if.then.i.i81.i ], [ null, %nvme_tcp_tagset.exit75.i.nvme_cid_to_rq.exit83.i_crit_edge ]
  %add.ptr.i84.i = getelementptr %struct.request, ptr %retval.0.i.i82.i, i32 1
  %status30.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i84.i, i32 0, i32 9
  %525 = ptrtoint ptr %status30.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %status30.i, align 2
  %527 = and i16 %526, -129
  %528 = call i16 @llvm.bswap.i16(i16 %527) #13
  %ctrl1.i.i.i102 = getelementptr %struct.request, ptr %retval.0.i.i82.i, i32 1, i32 6
  %529 = ptrtoint ptr %ctrl1.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %ctrl1.i.i.i102, align 8
  %quirks.i.i.i103 = getelementptr inbounds %struct.nvme_ctrl, ptr %530, i32 0, i32 61
  %531 = ptrtoint ptr %quirks.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %quirks.i.i.i103, align 8
  %and.i.i.i104 = and i32 %532, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i104)
  %tobool.not.i.i.i105 = icmp eq i32 %and.i.i.i104, 0
  br i1 %tobool.not.i.i.i105, label %if.then.i.i85.i, label %nvme_cid_to_rq.exit83.i.if.end.i.i.i112_crit_edge

nvme_cid_to_rq.exit83.i.if.end.i.i.i112_crit_edge: ; preds = %nvme_cid_to_rq.exit83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i112

if.then.i.i85.i:                                  ; preds = %nvme_cid_to_rq.exit83.i
  call void @__sanitizer_cov_trace_pc() #15
  %genctr.i.i.i106 = getelementptr %struct.request, ptr %retval.0.i.i82.i, i32 1, i32 4
  %533 = ptrtoint ptr %genctr.i.i.i106 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %genctr.i.i.i106, align 8
  %inc.i.i.i107 = add i8 %534, 1
  store i8 %inc.i.i.i107, ptr %genctr.i.i.i106, align 8
  br label %if.end.i.i.i112

if.end.i.i.i112:                                  ; preds = %if.then.i.i85.i, %nvme_cid_to_rq.exit83.i.if.end.i.i.i112_crit_edge
  %status3.i.i.i108 = getelementptr %struct.request, ptr %retval.0.i.i82.i, i32 1, i32 5
  %535 = ptrtoint ptr %status3.i.i.i108 to i32
  call void @__asan_store2_noabort(i32 %535)
  store i16 %528, ptr %status3.i.i.i108, align 4
  %result4.i.i.i109 = getelementptr %struct.request, ptr %retval.0.i.i82.i, i32 1, i32 2
  %536 = ptrtoint ptr %result4.i.i.i109 to i32
  call void @__asan_store8_noabort(i32 %536)
  store i64 281474976710655, ptr %result4.i.i.i109, align 8
  call void @nvme_should_fail(ptr noundef %retval.0.i.i82.i) #13
  %537 = ptrtoint ptr %retval.0.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %retval.0.i.i82.i, align 8
  %queue_flags.i.i.i.i110 = getelementptr inbounds %struct.request_queue, ptr %538, i32 0, i32 11
  %539 = ptrtoint ptr %queue_flags.i.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load volatile i32, ptr %queue_flags.i.i.i.i110, align 4
  %541 = and i32 %540, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %tobool.not.i.i.i.i111 = icmp eq i32 %541, 0
  br i1 %tobool.not.i.i.i.i111, label %if.end.i.i.i112.nvme_try_complete_req.exit.i.i116_crit_edge, label %blk_should_fake_timeout.exit.i.i.i114

if.end.i.i.i112.nvme_try_complete_req.exit.i.i116_crit_edge: ; preds = %if.end.i.i.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i116

blk_should_fake_timeout.exit.i.i.i114:            ; preds = %if.end.i.i.i112
  %call1.i.i.i.i113 = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %538) #13
  br i1 %call1.i.i.i.i113, label %blk_should_fake_timeout.exit.i.i.i114.nvme_tcp_end_request.exit.i119_crit_edge, label %blk_should_fake_timeout.exit.i.i.i114.nvme_try_complete_req.exit.i.i116_crit_edge, !prof !324

blk_should_fake_timeout.exit.i.i.i114.nvme_try_complete_req.exit.i.i116_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i114
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_try_complete_req.exit.i.i116

blk_should_fake_timeout.exit.i.i.i114.nvme_tcp_end_request.exit.i119_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i114
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_end_request.exit.i119

nvme_try_complete_req.exit.i.i116:                ; preds = %blk_should_fake_timeout.exit.i.i.i114.nvme_try_complete_req.exit.i.i116_crit_edge, %if.end.i.i.i112.nvme_try_complete_req.exit.i.i116_crit_edge
  %call10.i.i.i115 = call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %retval.0.i.i82.i) #13
  br i1 %call10.i.i.i115, label %nvme_try_complete_req.exit.i.i116.nvme_tcp_end_request.exit.i119_crit_edge, label %if.then.i86.i

nvme_try_complete_req.exit.i.i116.nvme_tcp_end_request.exit.i119_crit_edge: ; preds = %nvme_try_complete_req.exit.i.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvme_tcp_end_request.exit.i119

if.then.i86.i:                                    ; preds = %nvme_try_complete_req.exit.i.i116
  call void @__sanitizer_cov_trace_pc() #15
  call void @nvme_complete_rq(ptr noundef %retval.0.i.i82.i) #13
  br label %nvme_tcp_end_request.exit.i119

nvme_tcp_end_request.exit.i119:                   ; preds = %if.then.i86.i, %nvme_try_complete_req.exit.i.i116.nvme_tcp_end_request.exit.i119_crit_edge, %blk_should_fake_timeout.exit.i.i.i114.nvme_tcp_end_request.exit.i119_crit_edge
  %542 = ptrtoint ptr %nr_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %nr_cqe.i.i.i, align 4
  %inc.i118 = add i32 %543, 1
  store i32 %inc.i118, ptr %nr_cqe.i.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %nvme_tcp_end_request.exit.i119, %if.end21.i.if.end31.i_crit_edge
  %544 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %545)
  %tobool.not.i.i88.i = icmp eq i8 %545, 0
  %add.i.i121 = select i1 %tobool.not.i.i88.i, i32 24, i32 28
  %546 = ptrtoint ptr %pdu_remaining.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %add.i.i121, ptr %pdu_remaining.i, align 4
  %547 = ptrtoint ptr %pdu_offset.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 0, ptr %pdu_offset.i, align 4
  %548 = ptrtoint ptr %data_remaining.i143.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 -1, ptr %data_remaining.i143.i, align 4
  %549 = ptrtoint ptr %ddgst_remaining.i144.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 0, ptr %ddgst_remaining.i144.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end31.i, %if.end.i71.sw.epilog_crit_edge, %if.end54.i, %if.then49.i, %while.end.i.sw.epilog_crit_edge, %if.then22.i.i.i, %nvme_tcp_queue_more.exit.i.i.i.sw.epilog_crit_edge, %if.end17.i.i.i, %if.then.i.i, %if.end15.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge
  %offset.addr.6 = phi i32 [ %add6.i, %nvme_tcp_queue_more.exit.i.i.i.sw.epilog_crit_edge ], [ %add6.i, %if.then22.i.i.i ], [ %add6.i, %if.then.i.i ], [ %add6.i, %if.end17.i.i.i ], [ %add6.i, %if.end15.i.i.sw.epilog_crit_edge ], [ %add6.i, %if.end.i.sw.epilog_crit_edge ], [ %offset.addr.3, %if.end54.i ], [ %offset.addr.3, %if.then49.i ], [ %offset.addr.3, %while.end.i.sw.epilog_crit_edge ], [ %add.i68, %if.end31.i ], [ %add.i68, %if.end.i71.sw.epilog_crit_edge ]
  %len.addr.6 = phi i32 [ %sub7.i, %nvme_tcp_queue_more.exit.i.i.i.sw.epilog_crit_edge ], [ %sub7.i, %if.then22.i.i.i ], [ %sub7.i, %if.then.i.i ], [ %sub7.i, %if.end17.i.i.i ], [ %sub7.i, %if.end15.i.i.sw.epilog_crit_edge ], [ %sub7.i, %if.end.i.sw.epilog_crit_edge ], [ %len.addr.3, %if.end54.i ], [ %len.addr.3, %if.then49.i ], [ %len.addr.3, %while.end.i.sw.epilog_crit_edge ], [ %sub7.i69, %if.end31.i ], [ %sub7.i69, %if.end.i71.sw.epilog_crit_edge ]
  %tobool.not = icmp eq i32 %len.addr.6, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %sw.bb4.do.end_crit_edge, %do.end34.i, %do.end.i44, %do.end.i, %do.end50.i.i, %do.end30.i.i, %do.end15.i.i, %do.end.i182.i, %do.end.i35.i.i.i, %do.end.i.i135.i.do.end_crit_edge, %do.end29.i.i, %do.end10.i.i, %do.end.i114.i, %nvme_tcp_check_ddgst.exit.i, %do.end13.i.i, %do.end.i.i, %sw.bb.do.end_crit_edge
  %result.0.ph = phi i32 [ %ret.0.i, %do.end34.i ], [ -5, %do.end.i44 ], [ -71, %do.end.i.i ], [ -5, %do.end13.i.i ], [ -2, %do.end.i182.i ], [ -71, %do.end50.i.i ], [ -71, %do.end30.i.i ], [ -71, %do.end15.i.i ], [ -22, %do.end.i35.i.i.i ], [ -22, %do.end.i.i135.i.do.end_crit_edge ], [ -2, %do.end.i114.i ], [ -5, %do.end10.i.i ], [ -71, %do.end29.i.i ], [ -71, %nvme_tcp_check_ddgst.exit.i ], [ -22, %do.end.i ], [ %call.i, %sw.bb.do.end_crit_edge ], [ %call.i66, %sw.bb4.do.end_crit_edge ]
  %550 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %551, i32 0, i32 6, i32 17
  %552 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %553, ptr noundef nonnull @.str.71, i32 noundef %result.0.ph) #17
  %rd_enabled = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 20
  %554 = ptrtoint ptr %rd_enabled to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 0, ptr %rd_enabled, align 4
  %555 = ptrtoint ptr %ctrl.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %ctrl.i.i.i145.i, align 4
  %ctrl9 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %556, i32 0, i32 6
  %call.i126 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl9, i32 noundef 2) #13
  br i1 %call.i126, label %do.end.i129, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i129:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %device.i127 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %556, i32 0, i32 6, i32 17
  %557 = ptrtoint ptr %device.i127 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %device.i127, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %558, ptr noundef nonnull @.str.116) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %559 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr %struct.nvme_tcp_ctrl, ptr %556, i32 0, i32 7
  %call.i.i128 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %559, ptr noundef %err_work.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i129, %do.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.ph, %do.end.cleanup_crit_edge ], [ %result.0.ph, %do.end.i129 ], [ 0, %entry.cleanup_crit_edge ], [ %len, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_tcp_error_recovery(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 2) #13
  br i1 %call, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.116) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %2 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work = getelementptr i8, ptr %ctrl, i32 3560
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %err_work) #13
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_hash_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_frag_alloc_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nvme_tcp_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 128
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %7, i32 1
  %flags = getelementptr inbounds %struct.nvme_tcp_queue, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  %ctrl = getelementptr inbounds %struct.nvme_tcp_queue, ptr %5, i32 0, i32 18
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl, align 4
  %ctrl4 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %12, i32 0, i32 6
  %state.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %12, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !325

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %12, i32 0, i32 6, i32 5
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp4.i = icmp eq i32 %14, 4
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %nvme_check_ready.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl4, ptr noundef %7, i1 noundef zeroext %tobool) #13
  br i1 %call.i, label %if.end7.i.if.end_crit_edge, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

nvme_check_ready.exit:                            ; preds = %if.end.i
  br i1 %tobool, label %nvme_check_ready.exit.if.end_crit_edge, label %nvme_check_ready.exit.if.then_crit_edge

nvme_check_ready.exit.if.then_crit_edge:          ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

nvme_check_ready.exit.if.end_crit_edge:           ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %nvme_check_ready.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %ctrl8 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %20, i32 0, i32 6
  %call9 = tail call zeroext i8 @nvme_fail_nonready_command(ptr noundef %ctrl8, ptr noundef %7) #13
  br label %cleanup

if.end:                                           ; preds = %nvme_check_ready.exit.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  %pdu1.i = getelementptr %struct.request, ptr %7, i32 1, i32 8
  %21 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdu1.i, align 8
  %queue2.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue2.i, align 4
  %hdr_digest.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %hdr_digest.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hdr_digest.i.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  %call4.i = tail call zeroext i8 @nvme_setup_cmd(ptr noundef %3, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i32, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i32:                                       ; preds = %if.end
  %state.i31 = getelementptr %struct.request, ptr %7, i32 1, i32 26
  %27 = ptrtoint ptr %state.i31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state.i31, align 8
  %status.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 9
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %status.i, align 2
  %offset.i = getelementptr %struct.request, ptr %7, i32 1, i32 23
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %offset.i, align 8
  %data_sent.i = getelementptr %struct.request, ptr %7, i32 1, i32 25
  %30 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %data_sent.i, align 4
  %pdu_len.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 4
  %31 = ptrtoint ptr %pdu_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pdu_len.i, align 4
  %pdu_sent.i = getelementptr %struct.request, ptr %7, i32 1, i32 10
  %32 = ptrtoint ptr %pdu_sent.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %pdu_sent.i, align 8
  %h2cdata_left.i = getelementptr %struct.request, ptr %7, i32 1, i32 11
  %33 = ptrtoint ptr %h2cdata_left.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %h2cdata_left.i, align 4
  %rq_flags.i.i = getelementptr %struct.request, ptr %7, i32 0, i32 4
  %34 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i135.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i135.i, label %blk_rq_nr_phys_segments.exit.i, label %if.end.i32.cond.end.i_crit_edge

if.end.i32.cond.end.i_crit_edge:                  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

blk_rq_nr_phys_segments.exit.i:                   ; preds = %if.end.i32
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 19
  %36 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool6.not.i = icmp eq i16 %37, 0
  br i1 %tobool6.not.i, label %cond.end.thread.i, label %blk_rq_nr_phys_segments.exit.i.cond.end.i_crit_edge

blk_rq_nr_phys_segments.exit.i.cond.end.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.end.i:                                       ; preds = %blk_rq_nr_phys_segments.exit.i.cond.end.i_crit_edge, %if.end.i32.cond.end.i_crit_edge
  %bv_len.i.i = getelementptr %struct.request, ptr %7, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 8
  %retval.0.in.i.i = select i1 %tobool.not.i135.i, ptr %__data_len.i.i.i, ptr %bv_len.i.i
  %38 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %retval.0.i139.i = load i32, ptr %retval.0.in.i.i, align 4
  %data_len.i = getelementptr %struct.request, ptr %7, i32 1, i32 9
  %39 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i139.i, ptr %data_len.i, align 8
  %bio.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 10
  %40 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bio.i, align 8
  %curr_bio.i = getelementptr %struct.request, ptr %7, i32 1, i32 15
  %42 = ptrtoint ptr %curr_bio.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %curr_bio.i, align 8
  %tobool9.not.i = icmp eq ptr %41, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i139.i)
  %tobool11.not.i = icmp eq i32 %retval.0.i139.i, 0
  %or.cond.i33 = select i1 %tobool9.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i33, label %cond.end.i.if.end16.i_crit_edge, label %if.then12.i

cond.end.i.if.end16.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

cond.end.thread.i:                                ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %data_len156.i = getelementptr %struct.request, ptr %7, i32 1, i32 9
  %43 = ptrtoint ptr %data_len156.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data_len156.i, align 8
  %bio157.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 10
  %44 = ptrtoint ptr %bio157.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bio157.i, align 8
  %curr_bio158.i = getelementptr %struct.request, ptr %7, i32 1, i32 15
  %46 = ptrtoint ptr %curr_bio158.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %curr_bio158.i, align 8
  br label %if.end16.i

if.then12.i:                                      ; preds = %cond.end.i
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3
  %47 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd_flags.i, align 4
  %and.i140.i = and i32 %48, 1
  br i1 %tobool.not.i135.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = getelementptr %struct.request, ptr %7, i32 0, i32 29
  br label %nvme_tcp_init_iter.exit.i

if.else.i.i:                                      ; preds = %if.then12.i
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 20
  %50 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_idx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %51, i32 %53
  %bi.sroa.6.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bi.sroa.6.0.copyload.i.i = load i32, ptr %bi.sroa.6.0.bi_iter.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bi.sroa.6.0.copyload.i.i)
  %tobool3.not44.i.i = icmp eq i32 %bi.sroa.6.0.copyload.i.i, 0
  br i1 %tobool3.not44.i.i, label %if.else.i.i.for.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %if.else.i.i
  %bi.sroa.14.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 8, i32 3
  %55 = ptrtoint ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bi.sroa.14.0.copyload.i.i = load i32, ptr %bi.sroa.14.0.bi_iter.sroa_idx.i.i, align 8
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 2
  %56 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %57, 255
  %58 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %58, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %nr_bvec.048.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.6.047.i.i = phi i32 [ %bi.sroa.6.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.10.046.i.i = phi i32 [ %53, %land.rhs.lr.ph.i.i ], [ %bi.sroa.10.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.14.045.i.i = phi i32 [ %bi.sroa.14.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %bi.sroa.14.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bv_len12.i.i = getelementptr %struct.bio_vec, ptr %51, i32 %bi.sroa.10.046.i.i, i32 1
  %59 = ptrtoint ptr %bv_len12.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_len12.i.i, align 4
  %sub.i.i = sub i32 %60, %bi.sroa.14.045.i.i
  %61 = tail call i32 @llvm.umin.i32(i32 %bi.sroa.6.047.i.i, i32 %sub.i.i) #13
  %inc.i.i = add i32 %nr_bvec.048.i.i, 1
  br i1 %switch.selectcmp.i.i.i.i, label %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i.i.i = add i32 %61, %bi.sroa.14.045.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %60
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select43.i.i = add i32 %bi.sroa.10.046.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %bi.sroa.14.1.i.i = phi i32 [ %bi.sroa.14.045.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i ]
  %bi.sroa.10.2.i.i = phi i32 [ %bi.sroa.10.046.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select43.i.i, %if.else.i.i.i ]
  %sub.i.i.i.i = sub i32 %bi.sroa.6.047.i.i, %61
  %tobool3.not.i.i = icmp eq i32 %sub.i.i.i.i, 0
  br i1 %tobool3.not.i.i, label %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, %if.else.i.i.for.end.i.i_crit_edge
  %nr_bvec.0.lcssa.i.i = phi i32 [ 0, %if.else.i.i.for.end.i.i_crit_edge ], [ %inc.i.i, %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge ]
  %bi_bvec_done22.i.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %bi_bvec_done22.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bi_bvec_done22.i.i, align 8
  br label %nvme_tcp_init_iter.exit.i

nvme_tcp_init_iter.exit.i:                        ; preds = %for.end.i.i, %if.then.i.i
  %offset.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %63, %for.end.i.i ]
  %nr_bvec.1.i.i = phi i32 [ 1, %if.then.i.i ], [ %nr_bvec.0.lcssa.i.i, %for.end.i.i ]
  %size.0.in.i.i = phi ptr [ %bv_len.i.i, %if.then.i.i ], [ %bi.sroa.6.0.bi_iter.sroa_idx.i.i, %for.end.i.i ]
  %vec.0.i.i = phi ptr [ %49, %if.then.i.i ], [ %arrayidx.i.i, %for.end.i.i ]
  %64 = ptrtoint ptr %size.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %size.0.i.i = load i32, ptr %size.0.in.i.i, align 4
  %iter.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 16
  tail call void @iov_iter_bvec(ptr noundef %iter.i.i, i32 noundef %and.i140.i, ptr noundef %vec.0.i.i, i32 noundef %nr_bvec.1.i.i, i32 noundef %size.0.i.i) #13
  %iov_offset.i.i = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 14, i32 3
  %65 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %offset.0.i.i, ptr %iov_offset.i.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %nvme_tcp_init_iter.exit.i, %cond.end.thread.i, %cond.end.i.if.end16.i_crit_edge
  %data_len162.i = phi ptr [ %data_len.i, %nvme_tcp_init_iter.exit.i ], [ %data_len.i, %cond.end.i.if.end16.i_crit_edge ], [ %data_len156.i, %cond.end.thread.i ]
  %cmd_flags17.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3
  %66 = ptrtoint ptr %cmd_flags17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cmd_flags17.i, align 4
  %and.i145.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145.i)
  %tobool.i146.not.i = icmp eq i32 %and.i145.i, 0
  br i1 %tobool.i146.not.i, label %if.end16.i.if.end31.i_crit_edge, label %land.lhs.true23.i

if.end16.i.if.end31.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

land.lhs.true23.i:                                ; preds = %if.end16.i
  %68 = ptrtoint ptr %data_len162.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len162.i, align 8
  %cmnd_capsule_len.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %24, i32 0, i32 17
  %70 = ptrtoint ptr %cmnd_capsule_len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmnd_capsule_len.i.i, align 4
  %sub.i147.i = add i32 %71, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %sub.i147.i)
  %cmp26.not.i = icmp ugt i32 %69, %sub.i147.i
  br i1 %cmp26.not.i, label %land.lhs.true23.i.if.end31.i_crit_edge, label %if.then28.i

land.lhs.true23.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then28.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %pdu_len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %pdu_len.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true23.i.if.end31.i_crit_edge, %if.end16.i.if.end31.i_crit_edge
  %73 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %22, align 8
  %flags.i34 = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %22, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %flags.i34, align 1
  %75 = ptrtoint ptr %hdr_digest.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hdr_digest.i.i, align 1, !range !323
  store i8 %76, ptr %flags.i34, align 1
  %data_digest.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %24, i32 0, i32 22
  %77 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool40.not.i = icmp eq i8 %78, 0
  br i1 %tobool40.not.i, label %if.end31.i.if.end52.i_crit_edge, label %land.lhs.true42.i

if.end31.i.if.end52.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

land.lhs.true42.i:                                ; preds = %if.end31.i
  %79 = ptrtoint ptr %pdu_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pdu_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool44.not.i = icmp eq i32 %80, 0
  br i1 %tobool44.not.i, label %land.lhs.true42.i.if.end52.i_crit_edge, label %if.then45.i

land.lhs.true42.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then45.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = or i8 %76, 2
  %82 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %flags.i34, align 1
  %83 = ptrtoint ptr %data_digest.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %data_digest.i, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i148.i = icmp eq i8 %84, 0
  %conv.i149.i = select i1 %tobool.not.i148.i, i32 0, i32 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then45.i, %land.lhs.true42.i.if.end52.i_crit_edge, %if.end31.i.if.end52.i_crit_edge
  %ddgst.0.i = phi i32 [ %conv.i149.i, %if.then45.i ], [ 0, %land.lhs.true42.i.if.end52.i_crit_edge ], [ 0, %if.end31.i.if.end52.i_crit_edge ]
  %hlen.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %22, i32 0, i32 2
  %85 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 72, ptr %hlen.i, align 2
  %86 = ptrtoint ptr %pdu_len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pdu_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool55.not.i = icmp eq i32 %87, 0
  %add.i = select i1 %tobool.not.i.i, i8 72, i8 76
  %spec.select.i = select i1 %tobool55.not.i, i8 0, i8 %add.i
  %pdo.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %22, i32 0, i32 3
  %88 = ptrtoint ptr %pdo.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %spec.select.i, ptr %pdo.i, align 1
  %add70.i = zext i8 %add.i to i32
  %89 = ptrtoint ptr %pdu_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pdu_len.i, align 4
  %add72.i = add nuw nsw i32 %ddgst.0.i, %add70.i
  %add74.i = add i32 %add72.i, %90
  %91 = tail call i32 @llvm.bswap.i32(i32 %add74.i) #13
  %plen.i = getelementptr inbounds %struct.nvme_tcp_hdr, ptr %22, i32 0, i32 4
  %92 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %plen.i, align 4
  %93 = ptrtoint ptr %pdu1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdu1.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flags.i.i, align 1
  %97 = or i8 %96, 64
  store i8 %97, ptr %flags.i.i, align 1
  %98 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i.i = and i32 %99, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %blk_rq_nr_phys_segments.exit.i.i, label %if.end52.i.if.else.i152.i_crit_edge

if.end52.i.if.else.i152.i_crit_edge:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i152.i

blk_rq_nr_phys_segments.exit.i.i:                 ; preds = %if.end52.i
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 19
  %100 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.not.i150.i = icmp eq i16 %101, 0
  br i1 %tobool.not.i150.i, label %if.then.i151.i, label %blk_rq_nr_phys_segments.exit.i.i.if.else.i152.i_crit_edge

blk_rq_nr_phys_segments.exit.i.i.if.else.i152.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i152.i

if.then.i151.i:                                   ; preds = %blk_rq_nr_phys_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dptr.i.i.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 6
  %102 = ptrtoint ptr %dptr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %dptr.i.i.i, align 8
  br label %if.end15

if.else.i152.i:                                   ; preds = %blk_rq_nr_phys_segments.exit.i.i.if.else.i152.i_crit_edge, %if.end52.i.if.else.i152.i_crit_edge
  %103 = ptrtoint ptr %cmd_flags17.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cmd_flags17.i, align 4
  %and.i1.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i152.i.if.else12.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i152.i.if.else12.i.i_crit_edge:           ; preds = %if.else.i152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else12.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i152.i
  %data_len.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 9
  %105 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i.i, align 8
  %cmnd_capsule_len.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %24, i32 0, i32 17
  %107 = ptrtoint ptr %cmnd_capsule_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cmnd_capsule_len.i.i.i, align 4
  %sub.i.i.i = add i32 %108, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %sub.i.i.i)
  %cmp8.not.i.i = icmp ugt i32 %106, %sub.i.i.i
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.if.else12.i.i_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.if.else12.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else12.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dptr.i2.i.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 6
  %ctrl.i.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %24, i32 0, i32 18
  %109 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctrl.i.i.i, align 4
  %icdoff.i.i.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %110, i32 0, i32 6, i32 89
  %111 = ptrtoint ptr %icdoff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %icdoff.i.i.i, align 4
  %conv.i.i.i = zext i16 %112 to i64
  %113 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #13
  %114 = ptrtoint ptr %dptr.i2.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %dptr.i2.i.i, align 8
  %115 = tail call i32 @llvm.bswap.i32(i32 %106) #13
  br label %if.end15

if.else12.i.i:                                    ; preds = %land.lhs.true.i.i.if.else12.i.i_crit_edge, %if.else.i152.i.if.else12.i.i_crit_edge
  %data_len13.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 9
  %116 = ptrtoint ptr %data_len13.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_len13.i.i, align 8
  %dptr.i5.i.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 6
  %118 = ptrtoint ptr %dptr.i5.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %dptr.i5.i.i, align 8
  %119 = tail call i32 @llvm.bswap.i32(i32 %117) #13
  br label %if.end15

if.end15:                                         ; preds = %if.else12.i.i, %if.then10.i.i, %if.then.i151.i
  %.sink10.i.i = phi i32 [ %115, %if.then10.i.i ], [ %119, %if.else12.i.i ], [ 0, %if.then.i151.i ]
  %.sink.i.i = phi i8 [ 1, %if.then10.i.i ], [ 90, %if.else12.i.i ], [ 90, %if.then.i151.i ]
  %120 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 6
  %length.i3.i.i = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %94, i32 0, i32 1, i32 0, i32 0, i32 6, i32 0, i32 1
  %121 = ptrtoint ptr %length.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.sink10.i.i, ptr %length.i3.i.i, align 8
  %type.i4.i.i = getelementptr inbounds %struct.nvme_sgl_desc, ptr %120, i32 0, i32 3
  %122 = ptrtoint ptr %type.i4.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink.i.i, ptr %type.i4.i.i, align 1
  tail call void @blk_mq_start_request(ptr noundef %7) #13
  %last = getelementptr inbounds %struct.blk_mq_queue_data, ptr %bd, i32 0, i32 1
  %123 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %last, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool16.not = icmp eq i8 %124, 0
  %125 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %queue2.i, align 4
  %lentry.i = getelementptr %struct.request, ptr %7, i32 1, i32 14
  %req_list.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %lentry.i, ptr noundef %lentry.i, ptr noundef %req_list.i) #13
  br i1 %call.i.i, label %land.lhs.true.i, label %if.end15.land.end.i_crit_edge

if.end15.land.end.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end15
  %send_list.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %send_list.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %send_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %128, %send_list.i
  br i1 %cmp.i.not.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %request.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 14
  %129 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %request.i, align 4
  %tobool4.not.i = icmp ne ptr %130, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.end15.land.end.i_crit_edge
  %131 = phi i1 [ true, %land.lhs.true.i.land.end.i_crit_edge ], [ true, %if.end15.land.end.i_crit_edge ], [ %tobool4.not.i, %land.rhs.i ]
  %io_cpu.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 2
  %132 = ptrtoint ptr %io_cpu.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %io_cpu.i, align 4
  %134 = tail call i32 @llvm.read_register.i32(metadata !313) #13
  %and.i.i37 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i37 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %137)
  %cmp.i38 = icmp ne i32 %133, %137
  %brmerge39.i = select i1 %cmp.i38, i1 true, i1 %131
  br i1 %brmerge39.i, label %land.end.i.if.end.i39_crit_edge, label %land.lhs.true11.i

land.end.i.if.end.i39_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i39

land.lhs.true11.i:                                ; preds = %land.end.i
  %send_mutex.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 4
  %call12.i = tail call i32 @mutex_trylock(ptr noundef %send_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.end.i39_crit_edge, label %if.then.i

land.lhs.true11.i.if.end.i39_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i39

if.then.i:                                        ; preds = %land.lhs.true11.i
  %more_requests.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 7
  %138 = xor i8 %124, 1
  %139 = ptrtoint ptr %more_requests.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %more_requests.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i
  %call.i40.i = tail call fastcc i32 @nvme_tcp_try_send(ptr noundef %126) #13
  %cmp.i41.i = icmp sgt i32 %call.i40.i, 0
  br i1 %cmp.i41.i, label %do.body.i.i.do.body.i.i_crit_edge, label %nvme_tcp_send_all.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

nvme_tcp_send_all.exit.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %more_requests.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %more_requests.i, align 4
  tail call void @mutex_unlock(ptr noundef %send_mutex.i) #13
  br label %if.end.i39

if.end.i39:                                       ; preds = %nvme_tcp_send_all.exit.i, %land.lhs.true11.i.if.end.i39_crit_edge, %land.end.i.if.end.i39_crit_edge
  br i1 %tobool16.not, label %if.end.i39.cleanup_crit_edge, label %land.lhs.true20.i

if.end.i39.cleanup_crit_edge:                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true20.i:                                ; preds = %if.end.i39
  %send_list.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 6
  %141 = ptrtoint ptr %send_list.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %send_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %142, %send_list.i.i
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true20.i.if.then22.i_crit_edge

land.lhs.true20.i.if.then22.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true20.i
  %143 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i5.i.i = icmp eq ptr %144, null
  br i1 %cmp.i5.i.i, label %nvme_tcp_queue_more.exit.i, label %lor.lhs.false.i.i.if.then22.i_crit_edge

lor.lhs.false.i.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

nvme_tcp_queue_more.exit.i:                       ; preds = %lor.lhs.false.i.i
  %more_requests.i.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 7
  %145 = ptrtoint ptr %more_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %more_requests.i.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool2.i.not.i = icmp eq i8 %146, 0
  br i1 %tobool2.i.not.i, label %nvme_tcp_queue_more.exit.i.cleanup_crit_edge, label %nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge

nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge: ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

nvme_tcp_queue_more.exit.i.cleanup_crit_edge:     ; preds = %nvme_tcp_queue_more.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22.i:                                      ; preds = %nvme_tcp_queue_more.exit.i.if.then22.i_crit_edge, %lor.lhs.false.i.i.if.then22.i_crit_edge, %land.lhs.true20.i.if.then22.i_crit_edge
  %147 = ptrtoint ptr %io_cpu.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %io_cpu.i, align 4
  %149 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %126, i32 0, i32 1
  %call24.i = tail call zeroext i1 @queue_work_on(i32 noundef %148, ptr noundef %149, ptr noundef %io_work.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i, %nvme_tcp_queue_more.exit.i.cleanup_crit_edge, %if.end.i39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ %call9, %if.then ], [ %call4.i, %if.end.cleanup_crit_edge ], [ 0, %if.end.i39.cleanup_crit_edge ], [ 0, %nvme_tcp_queue_more.exit.i.cleanup_crit_edge ], [ 0, %if.then22.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_timeout(ptr noundef %rq, i1 noundef zeroext %reserved) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %queue = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %ctrl1 = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %pdu3 = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %4 = ptrtoint ptr %pdu3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdu3, align 8
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 6, i32 17
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 348
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 8
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.145, i32 noundef %sub.ptr.div.i, i32 noundef %11, i32 noundef %conv) #17
  %state = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not = icmp eq i32 %15, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %ctrl1.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl1.i, align 4
  %ctrl2.i = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 348
  tail call fastcc void @nvme_tcp_stop_queue(ptr noundef %ctrl2.i, i32 noundef %sub.ptr.div.i.i) #13
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 25
  %22 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, 0
  br i1 %cmp.i.not.i, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %24 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i15.not.i = icmp eq i32 %25, 2
  br i1 %cmp.i15.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %status.i = getelementptr %struct.request, ptr %rq, i32 1, i32 5
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 881, ptr %status.i, align 4
  tail call void @blk_mq_complete_request(ptr noundef %rq) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl2 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 6
  %call.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl2, i32 noundef 2) #13
  br i1 %call.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.116) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %29 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr %struct.nvme_tcp_ctrl, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %err_work.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_tcp_init_admin_hctx(ptr nocapture noundef writeonly %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_init_request(ptr noundef readonly %set, ptr nocapture noundef writeonly %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tag_set = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %tag_set, %set
  %add = add i32 %hctx_idx, 1
  %spec.select = select i1 %cmp, i32 %add, i32 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hdr_digest.i = getelementptr %struct.nvme_tcp_queue, ptr %3, i32 %spec.select, i32 21
  %4 = ptrtoint ptr %hdr_digest.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_digest.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %pf_cache = getelementptr %struct.nvme_tcp_queue, ptr %3, i32 %spec.select, i32 27
  %add2 = select i1 %tobool.not.i, i32 72, i32 76
  %call.i = tail call ptr @page_frag_alloc_align(ptr noundef %pf_cache, i32 noundef %add2, i32 noundef 3520, i32 noundef -1) #13
  %pdu4 = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %6 = ptrtoint ptr %pdu4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %pdu4, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %arrayidx = getelementptr %struct.nvme_tcp_queue, ptr %3, i32 %spec.select
  %queue7 = getelementptr inbounds %struct.nvme_tcp_request, ptr %add.ptr.i, i32 0, i32 2
  %7 = ptrtoint ptr %queue7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %queue7, align 4
  %ctrl8 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 6
  %ctrl10 = getelementptr %struct.request, ptr %rq, i32 1, i32 6
  %8 = ptrtoint ptr %ctrl10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl8, ptr %ctrl10, align 8
  %cmd = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd, ptr %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_exit_request(ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %rq, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 8
  tail call void @page_frag_free(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_fail_nonready_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nvme_check_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_setup_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_tcp_commit_rqs(ptr nocapture noundef readonly %hctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %req_list = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_list, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %io_cpu = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %io_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_cpu, align 4
  %6 = load ptr, ptr @nvme_tcp_wq, align 4
  %io_work = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @queue_work_on(i32 noundef %5, ptr noundef %6, ptr noundef %io_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_poll(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readnone %iob) #3 align 64 {
entry:
  %rd_desc.i = alloca %struct.read_descriptor_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %flags = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  %sk_ll_usec.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %land.rhs.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.rhs.i:                                       ; preds = %if.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !313) #13
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %sk_can_busy_loop.exit, label %land.rhs.i.if.end6_crit_edge, !prof !325

land.rhs.i.if.end6_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

sk_can_busy_loop.exit:                            ; preds = %land.rhs.i
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i, label %land.lhs.true, label %sk_can_busy_loop.exit.if.end6_crit_edge

sk_can_busy_loop.exit.if.end6_crit_edge:          ; preds = %sk_can_busy_loop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %sk_can_busy_loop.exit
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %23, %sk_receive_queue
  br i1 %cmp.i, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 14
  %24 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i17 = icmp ugt i32 %25, 4
  br i1 %cmp.i17, label %if.then.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %sk_prefer_busy_poll.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 56
  %26 = ptrtoint ptr %sk_prefer_busy_poll.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %sk_prefer_busy_poll.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.i = icmp ne i8 %27, 0
  %sk_busy_poll_budget.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 57
  %28 = ptrtoint ptr %sk_busy_poll_budget.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load volatile i16, ptr %sk_busy_poll_budget.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool10.not.i = icmp eq i16 %29, 0
  %narrow.i = select i1 %tobool10.not.i, i16 8, i16 %29
  tail call void @napi_busy_loop(i32 noundef %25, ptr noundef null, ptr noundef %5, i1 noundef zeroext %tobool5.i, i16 noundef zeroext %narrow.i) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %sk_can_busy_loop.exit.if.end6_crit_edge, %land.rhs.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %sk2.i = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk2.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rd_desc.i) #13
  %34 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc.i, i32 0, i32 2
  %36 = call ptr @memset(ptr %rd_desc.i, i32 255, i32 16)
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %1, ptr %35, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %34, align 4
  tail call void @lock_sock_nested(ptr noundef %33, i32 noundef 0) #13
  %nr_cqe.i = getelementptr inbounds %struct.nvme_tcp_queue, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %nr_cqe.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %nr_cqe.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 5
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %read_sock.i = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %read_sock.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_sock.i, align 4
  %call.i = call i32 %43(ptr noundef %33, ptr noundef nonnull %rd_desc.i, ptr noundef nonnull @nvme_tcp_recv_skb) #13
  call void @release_sock(ptr noundef %33) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rd_desc.i) #13
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  %44 = ptrtoint ptr %nr_cqe.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_cqe.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_tcp_init_hctx(ptr nocapture noundef writeonly %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add = add i32 %hctx_idx, 1
  %arrayidx = getelementptr %struct.nvme_tcp_queue, ptr %1, i32 %add
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_tcp_map_queues(ptr noundef %set) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %opts2 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 6, i32 93
  %2 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts2, align 8
  %nr_write_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_write_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %io_queues = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %io_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_queues, align 8
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 1
  %10 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_queues, align 4
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 2
  %11 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %queue_offset, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %nr_queues13 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %nr_queues13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr_queues13, align 4
  %15 = load i32, ptr %io_queues, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %io_queues19 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %io_queues19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_queues19, align 8
  %nr_queues23 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 1
  %18 = ptrtoint ptr %nr_queues23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nr_queues23, align 4
  %queue_offset26 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 2
  %19 = ptrtoint ptr %queue_offset26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %queue_offset26, align 4
  %20 = load i32, ptr %io_queues19, align 8
  %nr_queues31 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %nr_queues31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nr_queues31, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %15, %if.then ]
  %queue_offset34 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %queue_offset34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %queue_offset34, align 4
  %call = tail call i32 @blk_mq_map_queues(ptr noundef %set) #13
  %arrayidx38 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1
  %call39 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx38) #13
  %nr_poll_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %3, i32 0, i32 19
  %23 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_poll_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.end.do.end_crit_edge, label %land.lhs.true41

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true41:                                  ; preds = %if.end
  %arrayidx43 = getelementptr %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44.not = icmp eq i32 %26, 0
  br i1 %tobool44.not, label %land.lhs.true41.do.end_crit_edge, label %if.then45

land.lhs.true41.do.end_crit_edge:                 ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  %io_queues42 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10
  %arrayidx49 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2
  %nr_queues50 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %nr_queues50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nr_queues50, align 4
  %28 = ptrtoint ptr %io_queues42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_queues42, align 8
  %arrayidx54 = getelementptr %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx54, align 4
  %add = add i32 %31, %29
  %queue_offset57 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %queue_offset57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %queue_offset57, align 4
  %call60 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx49) #13
  br label %do.end

do.end:                                           ; preds = %if.then45, %land.lhs.true41.do.end_crit_edge, %if.end.do.end_crit_edge
  %device = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 6, i32 17
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 8
  %io_queues63 = getelementptr inbounds %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %io_queues63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_queues63, align 8
  %arrayidx66 = getelementptr %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.nvme_tcp_ctrl, ptr %1, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx68, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.147, i32 noundef %36, i32 noundef %38, i32 noundef %40) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_io_queue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_wait_freeze_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_unfreeze(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_queue_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311}
!llvm.named.register.sp = !{!313}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !{ptr @__param_so_priority, !1, !"__param_so_priority", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/tcp.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_so_prioritytype671, !1, !"__UNIQUE_ID_so_prioritytype671", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_so_priority672, !4, !"__UNIQUE_ID_so_priority672", i1 false, i1 false}
!4 = !{!"../drivers/nvme/host/tcp.c", i32 31, i32 1}
!5 = !{ptr @__initcall__kmod_nvme_tcp__702_2690_nvme_tcp_init_module6, !6, !"__initcall__kmod_nvme_tcp__702_2690_nvme_tcp_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/nvme/host/tcp.c", i32 2690, i32 1}
!7 = !{ptr @__exitcall_nvme_tcp_cleanup_module, !8, !"__exitcall_nvme_tcp_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/nvme/host/tcp.c", i32 2691, i32 1}
!9 = !{ptr @__UNIQUE_ID_file703, !10, !"__UNIQUE_ID_file703", i1 false, i1 false}
!10 = !{!"../drivers/nvme/host/tcp.c", i32 2693, i32 1}
!11 = !{ptr @__UNIQUE_ID_license704, !10, !"__UNIQUE_ID_license704", i1 false, i1 false}
!12 = !{ptr @so_priority, !13, !"so_priority", i1 false, i1 false}
!13 = !{!"../drivers/nvme/host/tcp.c", i32 29, i32 12}
!14 = !{ptr @nvme_tcp_wq, !15, !"nvme_tcp_wq", i1 false, i1 false}
!15 = !{!"../drivers/nvme/host/tcp.c", i32 140, i32 33}
!16 = !{ptr @__param_str_so_priority, !1, !"__param_str_so_priority", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/nvme/host/tcp.c", i32 2653, i32 11}
!19 = !{ptr @nvme_tcp_transport, !20, !"nvme_tcp_transport", i1 false, i1 false}
!20 = !{!"../drivers/nvme/host/tcp.c", i32 2652, i32 34}
!21 = !{ptr @nvme_tcp_create_ctrl.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/nvme/host/tcp.c", i32 2562, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvme_tcp_create_ctrl.__key.2, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvme_tcp_create_ctrl.__key.4, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/tcp.c", i32 2564, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvme_tcp_create_ctrl.__key.6, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/nvme/host/tcp.c", i32 2565, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nvme/host/tcp.c", i32 2569, i32 12}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nvme/host/tcp.c", i32 2580, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nvme_tcp_create_ctrl._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvme_tcp_create_ctrl._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nvme/host/tcp.c", i32 2589, i32 4}
!42 = !{ptr @nvme_tcp_create_ctrl._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nvme_tcp_create_ctrl._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nvme/host/tcp.c", i32 2597, i32 4}
!46 = !{ptr @nvme_tcp_create_ctrl._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nvme_tcp_create_ctrl._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/nvme/host/tcp.c", i32 2621, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvme/host/tcp.c", i32 2630, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nvme_tcp_create_ctrl._entry.18, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @nvme_tcp_create_ctrl._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/nvme/host/tcp.c", i32 2121, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nvme_tcp_reconnect_ctrl_work._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvme_tcp_reconnect_ctrl_work._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/nvme/host/tcp.c", i32 2129, i32 2}
!63 = !{ptr @nvme_tcp_reconnect_ctrl_work._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nvme_tcp_reconnect_ctrl_work._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/nvme/host/tcp.c", i32 2022, i32 3}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/nvme/host/tcp.c", i32 2028, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvme_tcp_reconnect_or_remove._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nvme_tcp_reconnect_or_remove._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nvme/host/tcp.c", i32 2033, i32 3}
!74 = !{ptr @nvme_tcp_reconnect_or_remove._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nvme_tcp_reconnect_or_remove._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/nvme/host/tcp.c", i32 2150, i32 3}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/nvme/host/tcp.c", i32 2187, i32 3}
!80 = !{ptr @nvme_tcp_ctrl_ops, !81, !"nvme_tcp_ctrl_ops", i1 false, i1 false}
!81 = !{!"../drivers/nvme/host/tcp.c", i32 2515, i32 35}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/nvme/host/tcp.c", i32 1143, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nvme_tcp_try_send._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @nvme_tcp_try_send._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/page-flags.h", i32 428, i32 1}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/nvme/host/tcp.c", i32 2049, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nvme_tcp_setup_ctrl._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @nvme_tcp_setup_ctrl._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nvme/host/tcp.c", i32 2055, i32 3}
!97 = !{ptr @nvme_tcp_setup_ctrl._entry.39, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @nvme_tcp_setup_ctrl._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/nvme/host/tcp.c", i32 2060, i32 3}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @nvme_tcp_setup_ctrl._entry.42, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @nvme_tcp_setup_ctrl._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/nvme/host/tcp.c", i32 2065, i32 3}
!106 = !{ptr @nvme_tcp_setup_ctrl._entry.46, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nvme_tcp_setup_ctrl._entry_ptr.48, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/nvme/host/tcp.c", i32 2083, i32 3}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/nvme/host/tcp.c", i32 2085, i32 3}
!112 = !{ptr @nvme_tcp_alloc_queue.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/nvme/host/tcp.c", i32 1450, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nvme_tcp_alloc_queue.__key.51, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/nvme/host/tcp.c", i32 1454, i32 2}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @nvme_tcp_alloc_queue.__key.53, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/nvme/host/tcp.c", i32 1455, i32 2}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/nvme/host/tcp.c", i32 1467, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @nvme_tcp_alloc_queue._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @nvme_tcp_alloc_queue._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/nvme/host/tcp.c", i32 1508, i32 4}
!128 = !{ptr @nvme_tcp_alloc_queue._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @nvme_tcp_alloc_queue._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/nvme/host/tcp.c", i32 1522, i32 4}
!132 = !{ptr @nvme_tcp_alloc_queue._entry.60, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @nvme_tcp_alloc_queue._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/nvme/host/tcp.c", i32 1534, i32 4}
!136 = !{ptr @nvme_tcp_alloc_queue._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nvme_tcp_alloc_queue._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/nvme/host/tcp.c", i32 1548, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nvme_tcp_alloc_queue.__UNIQUE_ID_ddebug689, !139, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/nvme/host/tcp.c", i32 1554, i32 3}
!144 = !{ptr @nvme_tcp_alloc_queue._entry.68, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @nvme_tcp_alloc_queue._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/nvme/host/tcp.c", i32 857, i32 4}
!148 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @nvme_tcp_recv_skb._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @nvme_tcp_recv_skb._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/nvme/host/tcp.c", i32 705, i32 3}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @nvme_tcp_recv_pdu._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @nvme_tcp_recv_pdu._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/nvme/host/tcp.c", i32 378, i32 3}
!158 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nvme_tcp_verify_hdgst._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @nvme_tcp_verify_hdgst._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/nvme/host/tcp.c", i32 388, i32 3}
!163 = !{ptr @nvme_tcp_verify_hdgst._entry.77, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @nvme_tcp_verify_hdgst._entry_ptr.79, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/nvme/host/tcp.c", i32 407, i32 3}
!167 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nvme_tcp_check_ddgst._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @nvme_tcp_check_ddgst._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/nvme/host/tcp.c", i32 529, i32 3}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @nvme_tcp_handle_c2h_data._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @nvme_tcp_handle_c2h_data._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/nvme/host/tcp.c", i32 536, i32 3}
!177 = !{ptr @nvme_tcp_handle_c2h_data._entry.84, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @nvme_tcp_handle_c2h_data._entry_ptr.86, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/nvme/host/tcp.c", i32 546, i32 3}
!181 = !{ptr @nvme_tcp_handle_c2h_data._entry.87, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @nvme_tcp_handle_c2h_data._entry_ptr.89, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/nvme/host/nvme.h", i32 523, i32 3}
!185 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @nvme_find_rq._entry, !184, !"_entry", i1 false, i1 false}
!188 = !{ptr @nvme_find_rq._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/nvme/host/nvme.h", i32 528, i32 3}
!191 = !{ptr @nvme_find_rq._entry.93, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @nvme_find_rq._entry_ptr.95, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/nvme/host/tcp.c", i32 504, i32 3}
!195 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @nvme_tcp_process_nvme_cqe._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @nvme_tcp_process_nvme_cqe._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/nvme/host/tcp.c", i32 622, i32 3}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @nvme_tcp_handle_r2t._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @nvme_tcp_handle_r2t._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/nvme/host/tcp.c", i32 630, i32 3}
!205 = !{ptr @nvme_tcp_handle_r2t._entry.100, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @nvme_tcp_handle_r2t._entry_ptr.102, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/nvme/host/tcp.c", i32 637, i32 3}
!209 = !{ptr @nvme_tcp_handle_r2t._entry.103, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @nvme_tcp_handle_r2t._entry_ptr.105, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/nvme/host/tcp.c", i32 644, i32 3}
!213 = !{ptr @nvme_tcp_handle_r2t._entry.106, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @nvme_tcp_handle_r2t._entry_ptr.108, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/nvme/host/tcp.c", i32 742, i32 5}
!217 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @nvme_tcp_recv_data._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @nvme_tcp_recv_data._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/nvme/host/tcp.c", i32 762, i32 4}
!222 = !{ptr @nvme_tcp_recv_data._entry.111, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @nvme_tcp_recv_data._entry_ptr.113, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/nvme/host/tcp.c", i32 816, i32 3}
!226 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @nvme_tcp_recv_ddgst._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @nvme_tcp_recv_ddgst._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/nvme/host/tcp.c", i32 492, i32 2}
!231 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @nvme_tcp_error_recovery._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @nvme_tcp_error_recovery._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/nvme/host/tcp.c", i32 1214, i32 27}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/nvme/host/tcp.c", i32 1330, i32 3}
!238 = !{ptr @.str.120, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @nvme_tcp_init_connection._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @nvme_tcp_init_connection._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/nvme/host/tcp.c", i32 1336, i32 3}
!243 = !{ptr @nvme_tcp_init_connection._entry.121, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @nvme_tcp_init_connection._entry_ptr.123, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/nvme/host/tcp.c", i32 1342, i32 3}
!247 = !{ptr @nvme_tcp_init_connection._entry.124, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @nvme_tcp_init_connection._entry_ptr.126, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/nvme/host/tcp.c", i32 1350, i32 3}
!251 = !{ptr @nvme_tcp_init_connection._entry.127, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @nvme_tcp_init_connection._entry_ptr.129, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.130, !250, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.131, !250, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.133, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/nvme/host/tcp.c", i32 1360, i32 3}
!257 = !{ptr @nvme_tcp_init_connection._entry.132, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @nvme_tcp_init_connection._entry_ptr.134, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/nvme/host/tcp.c", i32 1368, i32 3}
!261 = !{ptr @nvme_tcp_init_connection._entry.135, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @nvme_tcp_init_connection._entry_ptr.137, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/nvme/host/tcp.c", i32 1375, i32 3}
!265 = !{ptr @nvme_tcp_init_connection._entry.138, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @nvme_tcp_init_connection._entry_ptr.140, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/nvme/host/tcp.c", i32 911, i32 3}
!269 = !{ptr @.str.142, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @nvme_tcp_state_change._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @nvme_tcp_state_change._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @nvme_tcp_admin_mq_ops, !273, !"nvme_tcp_admin_mq_ops", i1 false, i1 false}
!273 = !{!"../drivers/nvme/host/tcp.c", i32 2506, i32 32}
!274 = !{ptr @.str.143, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/nvme/host/tcp.c", i32 2393, i32 3}
!276 = !{ptr @.str.144, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @nvme_tcp_setup_cmd_pdu._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @nvme_tcp_setup_cmd_pdu._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.145, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/nvme/host/tcp.c", i32 2297, i32 2}
!281 = !{ptr @.str.146, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @nvme_tcp_timeout._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @nvme_tcp_timeout._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @nvme_tcp_mq_ops, !285, !"nvme_tcp_mq_ops", i1 false, i1 false}
!285 = !{!"../drivers/nvme/host/tcp.c", i32 2494, i32 32}
!286 = !{ptr @.str.147, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/nvme/host/tcp.c", i32 2469, i32 2}
!288 = !{ptr @.str.148, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @nvme_tcp_map_queues._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @nvme_tcp_map_queues._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.149, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/nvme/host/tcp.c", i32 1643, i32 3}
!293 = !{ptr @.str.150, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @nvme_tcp_start_queue._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @nvme_tcp_start_queue._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/nvme/host/tcp.c", i32 1831, i32 3}
!298 = !{ptr @.str.152, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @nvme_tcp_alloc_io_queues._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @nvme_tcp_alloc_io_queues._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/nvme/host/tcp.c", i32 1837, i32 2}
!303 = !{ptr @nvme_tcp_alloc_io_queues._entry.153, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @nvme_tcp_alloc_io_queues._entry_ptr.155, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/nvme/host/tcp.c", i32 139, i32 8}
!307 = !{ptr @.str.157, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @nvme_tcp_ctrl_mutex, !306, !"nvme_tcp_ctrl_mutex", i1 false, i1 false}
!309 = !{ptr @nvme_tcp_ctrl_list, !310, !"nvme_tcp_ctrl_list", i1 false, i1 false}
!310 = !{!"../drivers/nvme/host/tcp.c", i32 138, i32 8}
!311 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/nvme/host/tcp.c", i32 2666, i32 32}
!313 = !{!"sp"}
!314 = !{i32 1, !"wchar_size", i32 2}
!315 = !{i32 1, !"min_enum_size", i32 4}
!316 = !{i32 8, !"branch-target-enforcement", i32 0}
!317 = !{i32 8, !"sign-return-address", i32 0}
!318 = !{i32 8, !"sign-return-address-all", i32 0}
!319 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"uwtable", i32 1}
!321 = !{i32 7, !"frame-pointer", i32 2}
!322 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!323 = !{i8 0, i8 2}
!324 = !{!"branch_weights", i32 1, i32 2000}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 2149266666}
!327 = !{i64 914034, i64 914051, i64 914075, i64 914101, i64 914119}
!328 = !{i64 2149267019}
!329 = !{i64 2150446230, i64 2150446721, i64 2150446267, i64 2150446323, i64 2150446357, i64 2150446381, i64 2150446422, i64 2150446443, i64 2150446471, i64 2150446505}
!330 = !{i64 2154944648, i64 2154945140, i64 2154944685, i64 2154944741, i64 2154944775, i64 2154944799, i64 2154944840, i64 2154944861, i64 2154944889, i64 2154944923}
!331 = !{i64 2149020643, i64 2149020648, i64 2149020661, i64 2149020705, i64 2149020739, i64 2149020760}
!332 = !{!"branch_weights", i32 2002, i32 6002}
!333 = !{!"branch_weights", i32 1073205, i32 2146410443}
!334 = !{!"branch_weights", i32 2146410443, i32 1073205}
!335 = !{!"branch_weights", i32 1, i32 4001}
!336 = !{i64 905554}
