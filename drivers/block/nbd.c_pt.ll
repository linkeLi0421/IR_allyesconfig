; ModuleID = '/llk/IR_all_yes/drivers/block/nbd.c_pt.bc'
source_filename = "../drivers/block/nbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.175, %struct.trace_event, ptr, ptr, %union.anon.176, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.175 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.178 = type { %struct.bpf_raw_event_map }
%union.anon.179 = type { %struct.bpf_raw_event_map }
%union.anon.180 = type { %struct.bpf_raw_event_map }
%union.anon.181 = type { %struct.bpf_raw_event_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.130 }
%union.anon.130 = type { ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.78 }
%union.anon.78 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nbd_request = type <{ i32, i32, [8 x i8], i64, i32 }>
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.92, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.92 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_nbd_transport_event = type { %struct.trace_entry, ptr, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_nbd_send_request = type { %struct.trace_entry, ptr, i64, ptr, [0 x i8] }
%struct.nbd_device = type { %struct.blk_mq_tag_set, i32, %struct.refcount_struct, %struct.refcount_struct, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32, i32, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.nbd_config = type { i32, i32, i64, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, i32, i64, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nlattr = type { i16, i16 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.sk_buff = type { %union.anon.52, %union.anon.55, %union.anon.56, [48 x i8], %union.anon.57, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.59, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr, %union.anon.54 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { ptr }
%union.anon.56 = type { i64 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32, ptr }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.61, i32, i32, i32, i16, i16, %union.anon.63, i32, %union.anon.64, %union.anon.65, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.61 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nbd_sock = type { ptr, %struct.mutex, ptr, i32, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.82, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.83, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.84, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.42, %union.anon.44, %union.anon.45, i16, i8, i8, i32, %union.anon.47, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.74, [0 x i32], %union.anon.75, i16, i16, %union.anon.76, %struct.refcount_struct, [0 x i32], %union.anon.77 }
%union.anon.42 = type { i64 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.47 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.hlist_node }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.82 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.recv_thread_args = type { %struct.work_struct, ptr, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.131, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.132, %union.anon.133, %union.anon.134, %union.anon.137, ptr, ptr }
%union.anon.131 = type { %struct.list_head }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { %struct.rb_node }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, %struct.list_head, ptr }
%union.anon.137 = type { i64, [8 x i8] }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.nbd_cmd = type { ptr, %struct.mutex, i32, i32, i32, i8, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.48, %union.anon.49 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.93, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.93 = type { ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.link_dead_args = type { %struct.work_struct, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.51, i8, i32, i32, ptr }
%union.anon.51 = type { ptr }
%struct.nbd_reply = type { i32, i32, [8 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.127 = type { %struct.callback_head }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.129 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@__tpstrtab_nbd_header_sent = internal constant [16 x i8] c"nbd_header_sent\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nbd_header_sent = dso_local global %struct.static_call_key { ptr @__traceiter_nbd_header_sent }, align 4
@__tracepoint_nbd_header_sent = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nbd_header_sent, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nbd_header_sent, ptr null, ptr @__traceiter_nbd_header_sent, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nbd_header_sent = internal constant ptr @__tracepoint_nbd_header_sent, section "__tracepoints_ptrs", align 4
@__tpstrtab_nbd_payload_sent = internal constant [17 x i8] c"nbd_payload_sent\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nbd_payload_sent = dso_local global %struct.static_call_key { ptr @__traceiter_nbd_payload_sent }, align 4
@__tracepoint_nbd_payload_sent = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nbd_payload_sent, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nbd_payload_sent, ptr null, ptr @__traceiter_nbd_payload_sent, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nbd_payload_sent = internal constant ptr @__tracepoint_nbd_payload_sent, section "__tracepoints_ptrs", align 4
@__tpstrtab_nbd_header_received = internal constant [20 x i8] c"nbd_header_received\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nbd_header_received = dso_local global %struct.static_call_key { ptr @__traceiter_nbd_header_received }, align 4
@__tracepoint_nbd_header_received = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nbd_header_received, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nbd_header_received, ptr null, ptr @__traceiter_nbd_header_received, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nbd_header_received = internal constant ptr @__tracepoint_nbd_header_received, section "__tracepoints_ptrs", align 4
@__tpstrtab_nbd_payload_received = internal constant [21 x i8] c"nbd_payload_received\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nbd_payload_received = dso_local global %struct.static_call_key { ptr @__traceiter_nbd_payload_received }, align 4
@__tracepoint_nbd_payload_received = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nbd_payload_received, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nbd_payload_received, ptr null, ptr @__traceiter_nbd_payload_received, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nbd_payload_received = internal constant ptr @__tracepoint_nbd_payload_received, section "__tracepoints_ptrs", align 4
@__tpstrtab_nbd_send_request = internal constant [17 x i8] c"nbd_send_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nbd_send_request = dso_local global %struct.static_call_key { ptr @__traceiter_nbd_send_request }, align 4
@__tracepoint_nbd_send_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nbd_send_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nbd_send_request, ptr null, ptr @__traceiter_nbd_send_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nbd_send_request = internal constant ptr @__tracepoint_nbd_send_request, section "__tracepoints_ptrs", align 4
@str__nbd__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nbd\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_nbd_transport_event = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.173 { %struct.anon.174 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.173 { %struct.anon.174 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_nbd_transport_event = internal global %struct.trace_event_class { ptr @str__nbd__trace_system_name, ptr @trace_event_raw_event_nbd_transport_event, ptr @perf_trace_nbd_transport_event, ptr @trace_event_reg, ptr @trace_event_fields_nbd_transport_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nbd_transport_event, i64 24), ptr getelementptr (i8, ptr @event_class_nbd_transport_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nbd_transport_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nbd_transport_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nbd_transport_event = internal global { [75 x i8], [53 x i8] } { [75 x i8] c"\22nbd transport event: request %p, handle 0x%016llx\22, REC->req, REC->handle\00", [53 x i8] zeroinitializer }, align 32
@event_nbd_header_sent = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nbd_transport_event, %union.anon.175 { ptr @__tracepoint_nbd_header_sent }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nbd_transport_event }, ptr @print_fmt_nbd_transport_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nbd_header_sent = internal global ptr @event_nbd_header_sent, section "_ftrace_events", align 4
@event_nbd_payload_sent = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nbd_transport_event, %union.anon.175 { ptr @__tracepoint_nbd_payload_sent }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nbd_transport_event }, ptr @print_fmt_nbd_transport_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nbd_payload_sent = internal global ptr @event_nbd_payload_sent, section "_ftrace_events", align 4
@event_nbd_header_received = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nbd_transport_event, %union.anon.175 { ptr @__tracepoint_nbd_header_received }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nbd_transport_event }, ptr @print_fmt_nbd_transport_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nbd_header_received = internal global ptr @event_nbd_header_received, section "_ftrace_events", align 4
@event_nbd_payload_received = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nbd_transport_event, %union.anon.175 { ptr @__tracepoint_nbd_payload_received }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nbd_transport_event }, ptr @print_fmt_nbd_transport_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nbd_payload_received = internal global ptr @event_nbd_payload_received, section "_ftrace_events", align 4
@trace_event_fields_nbd_send_request = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.173 { %struct.anon.174 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.173 { %struct.anon.174 { ptr @.str.11, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.173 { %struct.anon.174 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_nbd_send_request = internal global %struct.trace_event_class { ptr @str__nbd__trace_system_name, ptr @trace_event_raw_event_nbd_send_request, ptr @perf_trace_nbd_send_request, ptr @trace_event_reg, ptr @trace_event_fields_nbd_send_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nbd_send_request, i64 24), ptr getelementptr (i8, ptr @event_class_nbd_send_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nbd_send_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nbd_send_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nbd_send_request = internal global { [52 x i8], [44 x i8] } { [52 x i8] c"\22nbd%lld: request %p\22, REC->dev_index, REC->request\00", [44 x i8] zeroinitializer }, align 32
@event_nbd_send_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nbd_send_request, %union.anon.175 { ptr @__tracepoint_nbd_send_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nbd_send_request }, ptr @print_fmt_nbd_send_request, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nbd_send_request = internal global ptr @event_nbd_send_request, section "_ftrace_events", align 4
@__bpf_trace_tp_map_nbd_header_sent = internal global %union.anon.177 { %struct.bpf_raw_event_map { ptr @__tracepoint_nbd_header_sent, ptr @__bpf_trace_nbd_transport_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nbd_payload_sent = internal global %union.anon.178 { %struct.bpf_raw_event_map { ptr @__tracepoint_nbd_payload_sent, ptr @__bpf_trace_nbd_transport_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nbd_header_received = internal global %union.anon.179 { %struct.bpf_raw_event_map { ptr @__tracepoint_nbd_header_received, ptr @__bpf_trace_nbd_transport_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nbd_payload_received = internal global %union.anon.180 { %struct.bpf_raw_event_map { ptr @__tracepoint_nbd_payload_received, ptr @__bpf_trace_nbd_transport_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nbd_send_request = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_nbd_send_request, ptr @__bpf_trace_nbd_send_request, i32 3, i32 28, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@nbd_index_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nbd_index_mutex, i64 52), ptr getelementptr (i8, ptr @nbd_index_mutex, i64 52) }, ptr @nbd_index_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nbd_index_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nbd_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013nbd: possibly leaking a device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nbd_cleanup\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/block/nbd.c\00", [44 x i8] zeroinitializer }, align 32
@nbd_cleanup._entry_ptr = internal global ptr @nbd_cleanup._entry, section ".printk_index", align 4
@nbd_del_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nbd_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"nbd\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 10, i32 0, i8 0, i8 0, i8 4, i8 1, ptr @nbd_attr_policy, ptr null, ptr null, ptr null, ptr @nbd_connect_genl_ops, ptr @nbd_mcast_grps, ptr null }, section ".data..ro_after_init", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nbd\00", [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_nbd__540_2554_nbd_init6 = internal global ptr @nbd_init, section ".initcall6.init", align 4
@__exitcall_nbd_cleanup = internal global ptr @nbd_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description541 = internal constant [37 x i8] c"nbd.description=Network Block Device\00", section ".modinfo", align 1
@__UNIQUE_ID_file542 = internal constant [27 x i8] c"nbd.file=drivers/block/nbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license543 = internal constant [16 x i8] c"nbd.license=GPL\00", section ".modinfo", align 1
@__param_str_nbds_max = internal constant [13 x i8] c"nbd.nbds_max\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nbds_max = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_nbds_max = internal constant %struct.kernel_param { ptr @__param_str_nbds_max, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @nbds_max } }, section "__param", align 4
@__UNIQUE_ID_nbds_maxtype544 = internal constant [26 x i8] c"nbd.parmtype=nbds_max:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nbds_max545 = internal constant [78 x i8] c"nbd.parm=nbds_max:number of network block devices to initialize (default: 16)\00", section ".modinfo", align 1
@__param_str_max_part = internal constant [13 x i8] c"nbd.max_part\00", align 1
@max_part = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_max_part = internal constant %struct.kernel_param { ptr @__param_str_max_part, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @max_part } }, section "__param", align 4
@__UNIQUE_ID_max_parttype546 = internal constant [26 x i8] c"nbd.parmtype=max_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_part547 = internal constant [64 x i8] c"nbd.parm=max_part:number of partitions per device (default: 16)\00", section ".modinfo", align 1
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct request *\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"handle\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nbd transport event: request %p, handle 0x%016llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct nbd_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nbd_request\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_index\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"request\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbd%lld: request %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nbd_dbg_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nbd_index_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nbd_index_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nbd_index_idr.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@nbd_attr_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.78 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.78 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nbd_connect_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @nbd_genl_connect, ptr null, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @nbd_genl_disconnect, ptr null, i8 2, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @nbd_genl_reconfigure, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @nbd_genl_status, ptr null, i8 5, i8 0, i8 0, i8 3 }], [48 x i8] zeroinitializer }, align 32
@nbd_mcast_grps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"nbd_mc_group\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nbd: must specify at least one socket\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbd_genl_connect\00", [47 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr = internal global ptr @nbd_genl_connect._entry, section ".printk_index", align 4
@nbd_genl_connect._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nbd: must specify a size in bytes for the device\0A\00", [44 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.21 = internal global ptr @nbd_genl_connect._entry.19, section ".printk_index", align 4
@nbd_genl_connect._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nbd: device at index %d is going down\0A\00", [55 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.24 = internal global ptr @nbd_genl_connect._entry.22, section ".printk_index", align 4
@nbd_genl_connect._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013nbd: failed to add new device\0A\00", [63 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.27 = internal global ptr @nbd_genl_connect._entry.25, section ".printk_index", align 4
@nbd_genl_connect._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013nbd: nbd%d already in use\0A\00", [35 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.30 = internal global ptr @nbd_genl_connect._entry.28, section ".printk_index", align 4
@nbd_genl_connect._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013nbd: couldn't allocate config\0A\00", [63 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.33 = internal global ptr @nbd_genl_connect._entry.31, section ".printk_index", align 4
@nbd_genl_connect._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.2, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nbd: socks must be embedded in a SOCK_ITEM attr\0A\00", [45 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.36 = internal global ptr @nbd_genl_connect._entry.34, section ".printk_index", align 4
@nbd_sock_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.78 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.2, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013nbd: error processing sock list\0A\00", [61 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.39 = internal global ptr @nbd_genl_connect._entry.37, section ".printk_index", align 4
@backend_attr = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @backend_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.2, i32 2063, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"device_create_file failed for backend!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nbd_genl_connect._entry_ptr.44 = internal global ptr @nbd_genl_connect._entry.40, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nbd_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nbd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nbd_xmit_timeout, ptr null, ptr @nbd_complete_rq, ptr null, ptr null, ptr @nbd_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nbd_dev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&nbd->remove_work)\00", [59 x i8] zeroinitializer }, align 32
@nbd_dev_add.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbd%d-recv\00", [21 x i8] zeroinitializer }, align 32
@nbd_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1776, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not allocate knbd recv work queue.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nbd_dev_add\00", [20 x i8] zeroinitializer }, align 32
@nbd_dev_add._entry_ptr = internal global ptr @nbd_dev_add._entry, section ".printk_index", align 4
@nbd_dev_add.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&nbd->config_lock\00", [46 x i8] zeroinitializer }, align 32
@part_shift = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nbd_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @nbd_open, ptr @nbd_release, ptr null, ptr @nbd_ioctl, ptr @nbd_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nbd%d\00", [26 x i8] zeroinitializer }, align 32
@nbd_total_devices = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nbd_handle_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nbd_handle_cmd = private unnamed_addr constant [15 x i8] c"nbd_handle_cmd\00", align 1
@nbd_handle_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.nbd_handle_cmd, ptr @.str.2, i32 967, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Socks array is empty\0A\00", [42 x i8] zeroinitializer }, align 32
@nbd_handle_cmd._entry_ptr = internal global ptr @nbd_handle_cmd._entry, section ".printk_index", align 4
@nbd_handle_cmd._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nbd_handle_cmd._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.nbd_handle_cmd, ptr @.str.2, i32 974, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Attempted send on invalid socket\0A\00", [62 x i8] zeroinitializer }, align 32
@nbd_handle_cmd._entry_ptr.58 = internal global ptr @nbd_handle_cmd._entry.56, section ".printk_index", align 4
@nbd_handle_cmd._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nbd_handle_cmd._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.nbd_handle_cmd, ptr @.str.2, i32 1028, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Request send failed, requeueing\0A\00", [63 x i8] zeroinitializer }, align 32
@nbd_handle_cmd._entry_ptr.62 = internal global ptr @nbd_handle_cmd._entry.60, section ".printk_index", align 4
@find_fallback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.find_fallback = private unnamed_addr constant [14 x i8] c"find_fallback\00", align 1
@find_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.find_fallback, ptr @.str.2, i32 914, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Dead connection, failed to find a fallback\0A\00", [52 x i8] zeroinitializer }, align 32
@find_fallback._entry_ptr = internal global ptr @find_fallback._entry, section ".printk_index", align 4
@find_fallback._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_fallback._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.find_fallback, ptr @.str.2, i32 937, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@find_fallback._entry_ptr.66 = internal global ptr @find_fallback._entry.65, section ".printk_index", align 4
@sock_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 378, ptr @.str.69, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shutting down sockets\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sock_shutdown\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sock_shutdown._entry_ptr = internal global ptr @sock_shutdown._entry, section ".printk_index", align 4
@__const.nbd_send_cmd.request = private unnamed_addr constant %struct.nbd_request <{ i32 627086611, i32 0, [8 x i8] zeroinitializer, i64 0, i32 0 }>, align 1
@nbd_send_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nbd_send_cmd = private unnamed_addr constant [13 x i8] c"nbd_send_cmd\00", align 1
@nbd_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.nbd_send_cmd, ptr @.str.2, i32 575, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Write on read-only\0A\00", [44 x i8] zeroinitializer }, align 32
@nbd_send_cmd._entry_ptr = internal global ptr @nbd_send_cmd._entry, section ".printk_index", align 4
@nbd_send_cmd.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @__func__.nbd_send_cmd, ptr @.str.2, ptr @.str.71, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"request %p: sending control (%s@%llu,%uB)\0A\00", [53 x i8] zeroinitializer }, align 32
@nbd_send_cmd._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nbd_send_cmd._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.nbd_send_cmd, ptr @.str.2, i32 633, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Send control failed (result %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@nbd_send_cmd._entry_ptr.75 = internal global ptr @nbd_send_cmd._entry.73, section ".printk_index", align 4
@nbd_send_cmd.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @__func__.nbd_send_cmd, ptr @.str.2, ptr @.str.76, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"request %p: sending %d bytes data\0A\00", [61 x i8] zeroinitializer }, align 32
@nbd_send_cmd._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.nbd_send_cmd, ptr @.str.2, i32 675, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Send data failed (result %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@nbd_send_cmd._entry_ptr.79 = internal global ptr @nbd_send_cmd._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/nbd.h\00", [37 x i8] zeroinitializer }, align 32
@trace_nbd_send_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trim/discard\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@sock_xmit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sock_xmit = private unnamed_addr constant [10 x i8] c"sock_xmit\00", align 1
@sock_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @__func__.sock_xmit, ptr @.str.2, i32 506, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted %s on closed socket in sock_xmit\0A\00", [52 x i8] zeroinitializer }, align 32
@sock_xmit._entry_ptr = internal global ptr @sock_xmit._entry, section ".printk_index", align 4
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@trace_nbd_header_sent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_nbd_payload_sent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbd_mark_nsock_dead.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&args->work)\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nbd_mark_nsock_dead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 310, ptr @.str.95, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Disconnected due to user request.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nbd_mark_nsock_dead\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nbd_mark_nsock_dead._entry_ptr = internal global ptr @nbd_mark_nsock_dead._entry, section ".printk_index", align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@nbd_xmit_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nbd_xmit_timeout = private unnamed_addr constant [17 x i8] c"nbd_xmit_timeout\00", align 1
@nbd_xmit_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @__func__.nbd_xmit_timeout, ptr @.str.2, i32 424, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Connection timed out, retrying (%d/%d alive)\0A\00", [50 x i8] zeroinitializer }, align 32
@nbd_xmit_timeout._entry_ptr = internal global ptr @nbd_xmit_timeout._entry, section ".printk_index", align 4
@nbd_xmit_timeout._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.nbd_xmit_timeout, ptr @.str.2, i32 463, ptr @.str.95, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Possible stuck request %p: control (%s@%llu,%uB). Runtime %u seconds\0A\00", [58 x i8] zeroinitializer }, align 32
@nbd_xmit_timeout._entry_ptr.100 = internal global ptr @nbd_xmit_timeout._entry.98, section ".printk_index", align 4
@nbd_xmit_timeout._rs.101 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nbd_xmit_timeout._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.nbd_xmit_timeout, ptr @.str.2, i32 479, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Connection timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@nbd_xmit_timeout._entry_ptr.104 = internal global ptr @nbd_xmit_timeout._entry.102, section ".printk_index", align 4
@nbd_complete_rq.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nbd_complete_rq\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request %p: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@nbd_init_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cmd->lock\00", [21 x i8] zeroinitializer }, align 32
@nbd_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1274, ptr @.str.95, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NBD_DISCONNECT\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbd_disconnect\00", [17 x i8] zeroinitializer }, align 32
@nbd_disconnect._entry_ptr = internal global ptr @nbd_disconnect._entry, section ".printk_index", align 4
@__const.send_disconnects.request = private unnamed_addr constant %struct.nbd_request <{ i32 627086611, i32 2, [8 x i8] zeroinitializer, i64 0, i32 0 }>, align 1
@send_disconnects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1265, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Send disconnect failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_disconnects\00", [47 x i8] zeroinitializer }, align 32
@send_disconnects._entry_ptr = internal global ptr @send_disconnects._entry, section ".printk_index", align 4
@nbd_clear_que.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nbd_clear_que\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"queue cleared\0A\00", [17 x i8] zeroinitializer }, align 32
@nbd_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1513, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Cannot use ioctl interface on a netlink controlled device.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nbd_ioctl\00", [22 x i8] zeroinitializer }, align 32
@nbd_ioctl._entry_ptr = internal global ptr @nbd_ioctl._entry, section ".printk_index", align 4
@nbd_alloc_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&config->recv_wq\00", [47 x i8] zeroinitializer }, align 32
@nbd_alloc_config.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&config->conn_wait\00", [45 x i8] zeroinitializer }, align 32
@nbd_add_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1119, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device being setup by another task\00", [61 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbd_add_socket\00", [17 x i8] zeroinitializer }, align 32
@nbd_add_socket._entry_ptr = internal global ptr @nbd_add_socket._entry, section ".printk_index", align 4
@nbd_add_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&nsock->tx_lock\00", [16 x i8] zeroinitializer }, align 32
@nbd_get_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1083, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unsupported socket: shutdown callout must be supported.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbd_get_socket\00", [17 x i8] zeroinitializer }, align 32
@nbd_get_socket._entry_ptr = internal global ptr @nbd_get_socket._entry, section ".printk_index", align 4
@nbd_start_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1343, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"server does not support multiple connections per device.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbd_start_device\00", [47 x i8] zeroinitializer }, align 32
@nbd_start_device._entry_ptr = internal global ptr @nbd_start_device._entry, section ".printk_index", align 4
@pid_attr = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nbd_start_device._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 1354, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device_create_file failed for pid!\0A\00", [60 x i8] zeroinitializer }, align 32
@nbd_start_device._entry_ptr.130 = internal global ptr @nbd_start_device._entry.128, section ".printk_index", align 4
@nbd_start_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nbd_dev_dbg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1648, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create debugfs dir for '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbd_dev_dbg_init\00", [47 x i8] zeroinitializer }, align 32
@nbd_dev_dbg_init._entry_ptr = internal global ptr @nbd_dev_dbg_init._entry, section ".printk_index", align 4
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tasks\00", [26 x i8] zeroinitializer }, align 32
@nbd_dbg_tasks_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nbd_dbg_tasks_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"size_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blocksize_bits\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@nbd_dbg_flags_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nbd_dbg_flags_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hex: 0x%08x\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Known flags:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NBD_FLAG_HAS_FLAGS\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NBD_FLAG_READ_ONLY\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NBD_FLAG_SEND_FLUSH\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NBD_FLAG_SEND_FUA\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NBD_FLAG_SEND_TRIM\0A\00", [44 x i8] zeroinitializer }, align 32
@recv_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 847, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: no io inflight\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv_work\00", [22 x i8] zeroinitializer }, align 32
@recv_work._entry_ptr = internal global ptr @recv_work._entry, section ".printk_index", align 4
@nbd_read_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 709, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Receive control failed (result %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbd_read_reply\00", [17 x i8] zeroinitializer }, align 32
@nbd_read_reply._entry_ptr = internal global ptr @nbd_read_reply._entry, section ".printk_index", align 4
@nbd_read_reply._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 715, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong magic (0x%lx)\0A\00", [43 x i8] zeroinitializer }, align 32
@nbd_read_reply._entry_ptr.154 = internal global ptr @nbd_read_reply._entry.152, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.157 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 742, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected reply (%d) %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbd_handle_reply\00", [47 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr = internal global ptr @nbd_handle_reply._entry, section ".printk_index", align 4
@nbd_handle_reply._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.2, i32 751, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Suspicious reply %d (status %u flags %lu)\00", [54 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.162 = internal global ptr @nbd_handle_reply._entry.160, section ".printk_index", align 4
@nbd_handle_reply._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.159, ptr @.str.2, i32 757, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unexpected reply %d from different sock %d (expected %d)\00", [39 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.165 = internal global ptr @nbd_handle_reply._entry.163, section ".printk_index", align 4
@nbd_handle_reply._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.159, ptr @.str.2, i32 763, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Double reply on req %p, cmd_cookie %u, handle cookie %u\0A\00", [39 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.168 = internal global ptr @nbd_handle_reply._entry.166, section ".printk_index", align 4
@nbd_handle_reply._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.159, ptr @.str.2, i32 769, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Command already handled %p\0A\00", [36 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.171 = internal global ptr @nbd_handle_reply._entry.169, section ".printk_index", align 4
@nbd_handle_reply._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.159, ptr @.str.2, i32 775, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Raced with timeout on req %p\0A\00", [34 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.174 = internal global ptr @nbd_handle_reply._entry.172, section ".printk_index", align 4
@nbd_handle_reply._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.159, ptr @.str.2, i32 781, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Other side returned error (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.177 = internal global ptr @nbd_handle_reply._entry.175, section ".printk_index", align 4
@nbd_handle_reply.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.159, ptr @.str.2, ptr @.str.178, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request %p: got reply\0A\00", [41 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.159, ptr @.str.2, i32 797, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive data failed (result %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@nbd_handle_reply._entry_ptr.181 = internal global ptr @nbd_handle_reply._entry.179, section ".printk_index", align 4
@nbd_handle_reply.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.159, ptr @.str.2, ptr @.str.182, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"request %p: got %d bytes data\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_nbd_header_received.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_nbd_payload_received.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"backend\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nbd_genl_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 2108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nbd: must specify an index to disconnect\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nbd_genl_disconnect\00", [44 x i8] zeroinitializer }, align 32
@nbd_genl_disconnect._entry_ptr = internal global ptr @nbd_genl_disconnect._entry, section ".printk_index", align 4
@nbd_genl_disconnect._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 2117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nbd: couldn't find device at index %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nbd_genl_disconnect._entry_ptr.190 = internal global ptr @nbd_genl_disconnect._entry.188, section ".printk_index", align 4
@nbd_genl_disconnect._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.187, ptr @.str.2, i32 2123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nbd_genl_disconnect._entry_ptr.192 = internal global ptr @nbd_genl_disconnect._entry.191, section ".printk_index", align 4
@nbd_genl_reconfigure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 2148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013nbd: must specify a device to reconfigure\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbd_genl_reconfigure\00", [43 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr = internal global ptr @nbd_genl_reconfigure._entry, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.2, i32 2157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nbd: couldn't find a device at index %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.197 = internal global ptr @nbd_genl_reconfigure._entry.195, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.194, ptr @.str.2, i32 2167, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"backend image doesn't match with %s\0A\00", [59 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.200 = internal global ptr @nbd_genl_reconfigure._entry.198, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.194, ptr @.str.2, i32 2172, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"must specify backend\0A\00", [42 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.203 = internal global ptr @nbd_genl_reconfigure._entry.201, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.194, ptr @.str.2, i32 2179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.205 = internal global ptr @nbd_genl_reconfigure._entry.204, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.194, ptr @.str.2, i32 2186, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not configured, cannot reconfigure\0A\00", [60 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.208 = internal global ptr @nbd_genl_reconfigure._entry.206, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.194, ptr @.str.2, i32 2196, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.210 = internal global ptr @nbd_genl_reconfigure._entry.209, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.194, ptr @.str.2, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.212 = internal global ptr @nbd_genl_reconfigure._entry.211, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.194, ptr @.str.2, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.214 = internal global ptr @nbd_genl_reconfigure._entry.213, section ".printk_index", align 4
@nbd_genl_reconfigure._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.194, ptr @.str.2, i32 2265, ptr @.str.95, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reconnected socket\0A\00", [44 x i8] zeroinitializer }, align 32
@nbd_genl_reconfigure._entry_ptr.217 = internal global ptr @nbd_genl_reconfigure._entry.215, section ".printk_index", align 4
@nbd_reconnect_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nbd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.2, i32 2469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013nbd: max_part must be >= 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nbd_init\00", [23 x i8] zeroinitializer }, align 32
@nbd_init._entry_ptr = internal global ptr @nbd_init._entry, section ".printk_index", align 4
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nbd-del\00", [24 x i8] zeroinitializer }, align 32
@switch.table.nbd_xmit_timeout = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.87], [16 x i8] zeroinitializer }, align 32
@switch.table.nbd_send_cmd = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.221 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 43780, i64 43784]
@__sancov_gen_cov_switch_values.225 = internal global [13 x i64] [i64 11, i64 32, i64 43776, i64 43777, i64 43778, i64 43779, i64 43780, i64 43781, i64 43782, i64 43783, i64 43784, i64 43785, i64 43786]
@___asan_gen_.226 = private unnamed_addr constant [28 x i8] c"str__nbd__trace_system_name\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 36, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [39 x i8] c"trace_event_fields_nbd_transport_event\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_nbd_transport_event\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"print_fmt_nbd_transport_event\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [22 x i8] c"event_nbd_header_sent\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 33, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"event_nbd_payload_sent\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 40, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [26 x i8] c"event_nbd_header_received\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 47, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [27 x i8] c"event_nbd_payload_received\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 54, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [36 x i8] c"trace_event_fields_nbd_send_request\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_nbd_send_request\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"print_fmt_nbd_send_request\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [23 x i8] c"event_nbd_send_request\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"nbd_index_mutex\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [14 x i8] c"nbd_index_idr\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2542, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [11 x i8] c"nbd_del_wq\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 52, i32 33 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2551, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant [9 x i8] c"nbds_max\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 162, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"max_part\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 163, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 10, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 61, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [12 x i8] c"nbd_dbg_dir\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 153, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 51, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 50, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [16 x i8] c"nbd_attr_policy\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1864, i32 32 }
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"nbd_connect_genl_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2277, i32 36 }
@___asan_gen_.340 = private unnamed_addr constant [15 x i8] c"nbd_mcast_grps\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2300, i32 42 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1921, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1925, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1939, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1950, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1961, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1973, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2028, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"nbd_sock_policy\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1877, i32 32 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2037, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant [13 x i8] c"backend_attr\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 243, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2062, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [11 x i8] c"nbd_mq_ops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1717, i32 32 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1742, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1765, i32 9 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1772, i32 36 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1776, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1794, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [11 x i8] c"part_shift\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 164, i32 12 }
@___asan_gen_.445 = private unnamed_addr constant [9 x i8] c"nbd_fops\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1589, i32 45 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1817, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant [18 x i8] c"nbd_total_devices\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 53, i32 12 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 966, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 973, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1027, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 913, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 936, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 378, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 574, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 612, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 632, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 650, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 673, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant [30 x i8] c"../include/trace/events/nbd.h\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 94, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 108, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 211, i32 29 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 212, i32 29 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 213, i32 29 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 214, i32 29 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 215, i32 29 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 217, i32 9 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 504, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 297, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 309, i32 5 }
@___asan_gen_.602 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 308, i32 6 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 421, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 460, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 479, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 353, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1713, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1274, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1264, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 899, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1513, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1526, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1527, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1118, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1142, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1083, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1343, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant [9 x i8] c"pid_attr\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 229, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1354, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1384, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 230, i32 20 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 226, i32 22 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1647, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1653, i32 22 }
@___asan_gen_.754 = private unnamed_addr constant [19 x i8] c"nbd_dbg_tasks_fops\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1610, i32 1 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1654, i32 21 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1655, i32 21 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1656, i32 21 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1657, i32 22 }
@___asan_gen_.769 = private unnamed_addr constant [19 x i8] c"nbd_dbg_flags_fops\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1635, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1605, i32 17 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1617, i32 16 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1619, i32 14 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1622, i32 15 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1624, i32 15 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1626, i32 15 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1628, i32 15 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1630, i32 15 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 846, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 708, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 714, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 695, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 723, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 741, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 750, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 756, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 762, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 768, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 774, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 780, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 786, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 796, i32 5 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 811, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 244, i32 20 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 240, i32 22 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 240, i32 46 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2108, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2116, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2122, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2148, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2156, i32 3 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2165, i32 5 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2172, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2178, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2185, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2195, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2243, i32 5 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2252, i32 5 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2265, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 1197, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2469, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.977 = private constant [23 x i8] c"../drivers/block/nbd.c\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.977, i32 2497, i32 31 }
@___asan_gen_.979 = private unnamed_addr constant [30 x i8] c"switch.table.nbd_xmit_timeout\00", align 1
@___asan_gen_.980 = private unnamed_addr constant [26 x i8] c"switch.table.nbd_send_cmd\00", align 1
@llvm.compiler.used = appending global [345 x ptr] [ptr @__UNIQUE_ID_description541, ptr @__UNIQUE_ID_file542, ptr @__UNIQUE_ID_license543, ptr @__UNIQUE_ID_max_part547, ptr @__UNIQUE_ID_max_parttype546, ptr @__UNIQUE_ID_nbds_max545, ptr @__UNIQUE_ID_nbds_maxtype544, ptr @__bpf_trace_tp_map_nbd_header_received, ptr @__bpf_trace_tp_map_nbd_header_sent, ptr @__bpf_trace_tp_map_nbd_payload_received, ptr @__bpf_trace_tp_map_nbd_payload_sent, ptr @__bpf_trace_tp_map_nbd_send_request, ptr @__event_nbd_header_received, ptr @__event_nbd_header_sent, ptr @__event_nbd_payload_received, ptr @__event_nbd_payload_sent, ptr @__event_nbd_send_request, ptr @__exitcall_nbd_cleanup, ptr @__initcall__kmod_nbd__540_2554_nbd_init6, ptr @__param_max_part, ptr @__param_nbds_max, ptr @__tracepoint_nbd_header_received, ptr @__tracepoint_nbd_header_sent, ptr @__tracepoint_nbd_payload_received, ptr @__tracepoint_nbd_payload_sent, ptr @__tracepoint_nbd_send_request, ptr @__tracepoint_ptr_nbd_header_received, ptr @__tracepoint_ptr_nbd_header_sent, ptr @__tracepoint_ptr_nbd_payload_received, ptr @__tracepoint_ptr_nbd_payload_sent, ptr @__tracepoint_ptr_nbd_send_request, ptr @event_class_nbd_send_request, ptr @event_class_nbd_transport_event, ptr @event_nbd_header_received, ptr @event_nbd_header_sent, ptr @event_nbd_payload_received, ptr @event_nbd_payload_sent, ptr @event_nbd_send_request, ptr @find_fallback._entry, ptr @find_fallback._entry.65, ptr @find_fallback._entry_ptr, ptr @find_fallback._entry_ptr.66, ptr @nbd_add_socket._entry, ptr @nbd_add_socket._entry_ptr, ptr @nbd_cleanup, ptr @nbd_cleanup._entry, ptr @nbd_cleanup._entry_ptr, ptr @nbd_dev_add._entry, ptr @nbd_dev_add._entry_ptr, ptr @nbd_dev_dbg_init._entry, ptr @nbd_dev_dbg_init._entry_ptr, ptr @nbd_disconnect._entry, ptr @nbd_disconnect._entry_ptr, ptr @nbd_genl_connect._entry, ptr @nbd_genl_connect._entry.19, ptr @nbd_genl_connect._entry.22, ptr @nbd_genl_connect._entry.25, ptr @nbd_genl_connect._entry.28, ptr @nbd_genl_connect._entry.31, ptr @nbd_genl_connect._entry.34, ptr @nbd_genl_connect._entry.37, ptr @nbd_genl_connect._entry.40, ptr @nbd_genl_connect._entry_ptr, ptr @nbd_genl_connect._entry_ptr.21, ptr @nbd_genl_connect._entry_ptr.24, ptr @nbd_genl_connect._entry_ptr.27, ptr @nbd_genl_connect._entry_ptr.30, ptr @nbd_genl_connect._entry_ptr.33, ptr @nbd_genl_connect._entry_ptr.36, ptr @nbd_genl_connect._entry_ptr.39, ptr @nbd_genl_connect._entry_ptr.44, ptr @nbd_genl_disconnect._entry, ptr @nbd_genl_disconnect._entry.188, ptr @nbd_genl_disconnect._entry.191, ptr @nbd_genl_disconnect._entry_ptr, ptr @nbd_genl_disconnect._entry_ptr.190, ptr @nbd_genl_disconnect._entry_ptr.192, ptr @nbd_genl_reconfigure._entry, ptr @nbd_genl_reconfigure._entry.195, ptr @nbd_genl_reconfigure._entry.198, ptr @nbd_genl_reconfigure._entry.201, ptr @nbd_genl_reconfigure._entry.204, ptr @nbd_genl_reconfigure._entry.206, ptr @nbd_genl_reconfigure._entry.209, ptr @nbd_genl_reconfigure._entry.211, ptr @nbd_genl_reconfigure._entry.213, ptr @nbd_genl_reconfigure._entry.215, ptr @nbd_genl_reconfigure._entry_ptr, ptr @nbd_genl_reconfigure._entry_ptr.197, ptr @nbd_genl_reconfigure._entry_ptr.200, ptr @nbd_genl_reconfigure._entry_ptr.203, ptr @nbd_genl_reconfigure._entry_ptr.205, ptr @nbd_genl_reconfigure._entry_ptr.208, ptr @nbd_genl_reconfigure._entry_ptr.210, ptr @nbd_genl_reconfigure._entry_ptr.212, ptr @nbd_genl_reconfigure._entry_ptr.214, ptr @nbd_genl_reconfigure._entry_ptr.217, ptr @nbd_get_socket._entry, ptr @nbd_get_socket._entry_ptr, ptr @nbd_handle_cmd._entry, ptr @nbd_handle_cmd._entry.56, ptr @nbd_handle_cmd._entry.60, ptr @nbd_handle_cmd._entry_ptr, ptr @nbd_handle_cmd._entry_ptr.58, ptr @nbd_handle_cmd._entry_ptr.62, ptr @nbd_handle_reply._entry, ptr @nbd_handle_reply._entry.160, ptr @nbd_handle_reply._entry.163, ptr @nbd_handle_reply._entry.166, ptr @nbd_handle_reply._entry.169, ptr @nbd_handle_reply._entry.172, ptr @nbd_handle_reply._entry.175, ptr @nbd_handle_reply._entry.179, ptr @nbd_handle_reply._entry_ptr, ptr @nbd_handle_reply._entry_ptr.162, ptr @nbd_handle_reply._entry_ptr.165, ptr @nbd_handle_reply._entry_ptr.168, ptr @nbd_handle_reply._entry_ptr.171, ptr @nbd_handle_reply._entry_ptr.174, ptr @nbd_handle_reply._entry_ptr.177, ptr @nbd_handle_reply._entry_ptr.181, ptr @nbd_init._entry, ptr @nbd_init._entry_ptr, ptr @nbd_ioctl._entry, ptr @nbd_ioctl._entry_ptr, ptr @nbd_mark_nsock_dead._entry, ptr @nbd_mark_nsock_dead._entry_ptr, ptr @nbd_read_reply._entry, ptr @nbd_read_reply._entry.152, ptr @nbd_read_reply._entry_ptr, ptr @nbd_read_reply._entry_ptr.154, ptr @nbd_send_cmd._entry, ptr @nbd_send_cmd._entry.73, ptr @nbd_send_cmd._entry.77, ptr @nbd_send_cmd._entry_ptr, ptr @nbd_send_cmd._entry_ptr.75, ptr @nbd_send_cmd._entry_ptr.79, ptr @nbd_start_device._entry, ptr @nbd_start_device._entry.128, ptr @nbd_start_device._entry_ptr, ptr @nbd_start_device._entry_ptr.130, ptr @nbd_xmit_timeout._entry, ptr @nbd_xmit_timeout._entry.102, ptr @nbd_xmit_timeout._entry.98, ptr @nbd_xmit_timeout._entry_ptr, ptr @nbd_xmit_timeout._entry_ptr.100, ptr @nbd_xmit_timeout._entry_ptr.104, ptr @recv_work._entry, ptr @recv_work._entry_ptr, ptr @send_disconnects._entry, ptr @send_disconnects._entry_ptr, ptr @sock_shutdown._entry, ptr @sock_shutdown._entry_ptr, ptr @sock_xmit._entry, ptr @sock_xmit._entry_ptr, ptr @str__nbd__trace_system_name, ptr @trace_event_fields_nbd_transport_event, ptr @trace_event_type_funcs_nbd_transport_event, ptr @print_fmt_nbd_transport_event, ptr @trace_event_fields_nbd_send_request, ptr @trace_event_type_funcs_nbd_send_request, ptr @print_fmt_nbd_send_request, ptr @nbd_index_mutex, ptr @nbd_index_idr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nbd_del_wq, ptr @.str.3, ptr @nbds_max, ptr @max_part, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nbd_dbg_dir, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @nbd_attr_policy, ptr @nbd_connect_genl_ops, ptr @nbd_mcast_grps, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @nbd_sock_policy, ptr @.str.38, ptr @backend_attr, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @nbd_mq_ops, ptr @nbd_dev_add.__key, ptr @.str.45, ptr @nbd_dev_add.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @nbd_dev_add.__key.50, ptr @.str.51, ptr @part_shift, ptr @nbd_fops, ptr @.str.52, ptr @nbd_total_devices, ptr @nbd_handle_cmd._rs, ptr @.str.53, ptr @.str.54, ptr @nbd_handle_cmd._rs.55, ptr @.str.57, ptr @nbd_handle_cmd._rs.59, ptr @.str.61, ptr @find_fallback._rs, ptr @.str.63, ptr @find_fallback._rs.64, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @nbd_send_cmd._rs, ptr @.str.70, ptr @.str.71, ptr @nbd_send_cmd._rs.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @sock_xmit._rs, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @nbd_mark_nsock_dead.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @nbd_xmit_timeout._rs, ptr @.str.97, ptr @.str.99, ptr @nbd_xmit_timeout._rs.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @nbd_init_request.__key, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @nbd_alloc_config.__key, ptr @.str.118, ptr @nbd_alloc_config.__key.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @nbd_add_socket.__key, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @pid_attr, ptr @.str.129, ptr @nbd_start_device.__key, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @nbd_dbg_tasks_fops, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @nbd_dbg_flags_fops, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.207, ptr @.str.216, ptr @nbd_reconnect_socket.__key, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @switch.table.nbd_xmit_timeout, ptr @switch.table.nbd_send_cmd], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__nbd__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nbd_transport_event to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nbd_transport_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nbd_transport_event to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nbd_header_sent to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nbd_payload_sent to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nbd_header_received to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nbd_payload_received to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nbd_send_request to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nbd_send_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nbd_send_request to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nbd_send_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_index_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_index_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_del_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbds_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_part to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dbg_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_attr_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_connect_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_mcast_grps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_sock_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backend_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_connect._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dev_add.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dev_add.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_shift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_total_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_cmd._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_fallback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_fallback._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_fallback._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_send_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_send_cmd._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_send_cmd._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_send_cmd._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_xmit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_mark_nsock_dead.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_mark_nsock_dead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_xmit_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_xmit_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_xmit_timeout._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_xmit_timeout._rs.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_xmit_timeout._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_init_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_disconnects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_alloc_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_alloc_config.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_add_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_add_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_get_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_start_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_start_device._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_start_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dev_dbg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dbg_tasks_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_dbg_flags_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_read_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_read_reply._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_handle_reply._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_disconnect._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_disconnect._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_genl_reconfigure._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_reconnect_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nbd_xmit_timeout to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nbd_send_cmd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nbd_header_sent(ptr nocapture readnone %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_sent, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nbd_payload_sent(ptr nocapture readnone %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_sent, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nbd_header_received(ptr nocapture readnone %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_received, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nbd_payload_received(ptr nocapture readnone %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_received, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nbd_send_request(ptr nocapture readnone %__data, ptr noundef %nbd_request, i32 noundef %index, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_send_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %nbd_request, i32 noundef %index, ptr noundef %rq) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nbd_transport_event(ptr noundef %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !531

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !532

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %req6 = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req, ptr %req6, align 8
  %handle7 = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %handle7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %handle, ptr %handle7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nbd_transport_event(ptr noundef %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !533
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !533
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !521) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %req17 = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %req17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req, ptr %req17, align 8
  %handle18 = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %handle18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %handle, ptr %handle18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nbd_send_request(ptr noundef %__data, ptr nocapture noundef readnone %nbd_request, i32 noundef %index, ptr noundef %rq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !531

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !532

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nbd_request6 = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nbd_request6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %nbd_request6, align 8
  %conv = sext i32 %index to i64
  %dev_index = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %dev_index to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %dev_index, align 8
  %request = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rq, ptr %request, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nbd_send_request(ptr noundef %__data, ptr nocapture noundef readnone %nbd_request, i32 noundef %index, ptr noundef %rq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !533
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !533
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !521) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nbd_request17 = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nbd_request17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %nbd_request17, align 8
  %conv = sext i32 %index to i64
  %dev_index = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %dev_index to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %dev_index, align 8
  %request = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rq, ptr %request, align 8
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nbd_transport_event(ptr noundef %__data, ptr noundef %req, i64 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %handle) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nbd_send_request(ptr noundef %__data, ptr noundef %nbd_request, i32 noundef %index, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %nbd_request to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %index to i64
  %1 = ptrtoint ptr %rq to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nbd_cleanup() #3 section ".exit.text" align 64 {
entry:
  %del_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %del_list, i32 0, i32 1
  %1 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %del_list, ptr %del_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %del_list, ptr %0, align 4
  %3 = load ptr, ptr @nbd_dbg_dir, align 4
  call void @debugfs_remove(ptr noundef %3) #14
  call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %call = call i32 @idr_for_each(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull @nbd_exit_cb, ptr noundef nonnull %del_list) #14
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %4 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %del_list, align 4
  %cmp.i.not9 = icmp eq ptr %5, %del_list
  br i1 %cmp.i.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %18, %if.end.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -344
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  %refs = getelementptr i8, ptr %6, i32 -152
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %15 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not = icmp eq i32 %16, 1
  br i1 %cmp.not, label %list_del_init.exit.if.end_crit_edge, label %do.end

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_init.exit.if.end_crit_edge
  call fastcc void @nbd_put(ptr noundef %add.ptr)
  %17 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %del_list, align 4
  %cmp.i.not = icmp eq ptr %18, %del_list
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %19 = load ptr, ptr @nbd_del_wq, align 4
  call void @destroy_workqueue(ptr noundef %19) #14
  call void @idr_destroy(ptr noundef nonnull @nbd_index_idr) #14
  %call6 = call i32 @genl_unregister_family(ptr noundef nonnull @nbd_genl_family) #14
  call void @unregister_blkdev(i32 noundef 43, ptr noundef nonnull @.str.3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_exit_cb(i32 noundef %id, ptr noundef %ptr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.nbd_device, ptr %ptr, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %list1 = getelementptr inbounds %struct.nbd_device, ptr %ptr, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list1, ptr noundef %3, ptr noundef %data) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list1, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %list1, align 4
  %prev3.i.i = getelementptr inbounds %struct.nbd_device, ptr %ptr, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list1, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_put(ptr noundef %nbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !534
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !535
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i, !prof !531

if.end5.i.i.i.if.end4_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #14
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !536
  %flags = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load ptr, ptr @nbd_del_wq, align 4
  %remove_work = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %remove_work) #14
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %disk1.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %4 = ptrtoint ptr %disk1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk1.i, align 4
  tail call void @del_gendisk(ptr noundef %5) #14
  tail call void @blk_cleanup_disk(ptr noundef %5) #14
  tail call void @blk_mq_free_tag_set(ptr noundef %nbd) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %index.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %call.i8 = tail call ptr @idr_remove(ptr noundef nonnull @nbd_index_idr, i32 noundef %7) #14
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %recv_workq.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 7
  %8 = ptrtoint ptr %recv_workq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_workq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #14
  tail call void @kfree(ptr noundef %nbd) #14
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then10.i.i.i, %if.end5.i.i.i.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr @part_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.not = icmp eq i32 %0, 0
  br i1 %cmp4.not, label %if.end.if.end11_crit_edge, label %if.end7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end7:                                          ; preds = %if.end
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #14, !range !537
  %sub.i = sub nuw nsw i32 32, %1
  store i32 %sub.i, ptr @part_shift, align 4
  %notmask = shl nsw i32 -1, %sub.i
  %sub = xor i32 %notmask, -1
  store i32 %sub, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp9 = icmp ugt i32 %0, 255
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %2 = phi i32 [ %sub.i, %if.end7.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ]
  %3 = load i32, ptr @nbds_max, align 4
  %sub12 = sub nuw nsw i32 20, %2
  %shl13 = shl nuw nsw i32 1, %sub12
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl13)
  %cmp14 = icmp ugt i32 %3, %shl13
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @__register_blkdev(i32 noundef 43, ptr noundef nonnull @.str.3, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %call20 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.220, i32 noundef 2, i32 noundef 0) #14
  store ptr %call20, ptr @nbd_del_wq, align 4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_blkdev(i32 noundef 43, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @genl_register_family(ptr noundef nonnull @nbd_genl_family) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %4 = load ptr, ptr @nbd_del_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #14
  tail call void @unregister_blkdev(i32 noundef 43, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end27.nbd_dbg_init.exit_crit_edge, label %if.end.i

if.end27.nbd_dbg_init.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_dbg_init.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call.i, ptr @nbd_dbg_dir, align 4
  br label %nbd_dbg_init.exit

nbd_dbg_init.exit:                                ; preds = %if.end.i, %if.end27.nbd_dbg_init.exit_crit_edge
  %5 = load i32, ptr @nbds_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2934.not = icmp eq i32 %5, 0
  br i1 %cmp2934.not, label %nbd_dbg_init.exit.cleanup_crit_edge, label %nbd_dbg_init.exit.for.body_crit_edge

nbd_dbg_init.exit.for.body_crit_edge:             ; preds = %nbd_dbg_init.exit
  br label %for.body

nbd_dbg_init.exit.cleanup_crit_edge:              ; preds = %nbd_dbg_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %nbd_dbg_init.exit.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %nbd_dbg_init.exit.for.body_crit_edge ]
  %call30 = tail call fastcc ptr @nbd_dev_add(i32 noundef %i.035, i32 noundef 1)
  %inc = add nuw i32 %i.035, 1
  %6 = load i32, ptr @nbds_max, align 4
  %cmp29 = icmp ult i32 %inc, %6
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %nbd_dbg_init.exit.cleanup_crit_edge, %if.then26, %if.then22, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ -22, %do.end3 ], [ -22, %if.then26 ], [ -12, %if.then22 ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -5, %if.end16.cleanup_crit_edge ], [ 0, %nbd_dbg_init.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nbd_transport_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %req = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %handle = getelementptr inbounds %struct.trace_event_raw_nbd_transport_event, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, ptr noundef %3, i64 noundef %5) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nbd_send_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev_index = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev_index to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dev_index, align 8
  %request = getelementptr inbounds %struct.trace_event_raw_nbd_send_request, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i64 noundef %3, ptr noundef %5) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_genl_connect(ptr noundef %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp.i357 = alloca i64, align 8
  %tmp.i355 = alloca i64, align 8
  %tmp.i353 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %old.i.i.i = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  %id.i = alloca i32, align 4
  %socks = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 21) #14
  br i1 %call, label %if.end, label %entry.cleanup257_crit_edge

entry.cleanup257_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %index.0 = phi i32 [ %5, %if.then1 ], [ -1, %if.end.if.end5_crit_edge ]
  %arrayidx7 = getelementptr ptr, ptr %1, i32 7
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  br label %cleanup257

if.end11:                                         ; preds = %if.end5
  %arrayidx13 = getelementptr ptr, ptr %1, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.end18, label %again.preheader

again.preheader:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.0)
  %cmp = icmp eq i32 %index.0, -1
  call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  br i1 %cmp, label %again.preheader.if.then22_crit_edge, label %if.else

again.preheader.if.then22_crit_edge:              ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  br label %cleanup257

if.then22.critedge:                               ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  br label %if.then22

if.then22:                                        ; preds = %if.then22.critedge, %again.preheader.if.then22_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then22.if.end.i_crit_edge, label %land.rhs.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then22
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @nbd_index_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !532

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1850, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %id.i, align 4
  %call2440.i = call ptr @idr_get_next(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull %id.i) #14
  %cmp25.not41.i = icmp eq ptr %call2440.i, null
  br i1 %cmp25.not41.i, label %if.end.i.nbd_find_get_unused.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.nbd_find_get_unused.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_find_get_unused.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %call2442.i = phi ptr [ %call24.i, %for.inc.i.for.body.i_crit_edge ], [ %call2440.i, %if.end.i.for.body.i_crit_edge ]
  %config_refs.i = getelementptr inbounds %struct.nbd_device, ptr %call2442.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %config_refs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %config_refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not.i = icmp eq i32 %13, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.nbd_device, ptr %call2442.i, i32 0, i32 11
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool29.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %refs.i = getelementptr inbounds %struct.nbd_device, ptr %call2442.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #14
  %16 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refs.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end31.i
  %18 = phi i32 [ %17, %if.end31.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 %21, i32 %add.i.i.i.i, ptr elementtype(i32) %refs.i) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !531

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 0) #14
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, label %refcount_inc_not_zero.exit.i.nbd_find_get_unused.exit_crit_edge

refcount_inc_not_zero.exit.i.nbd_find_get_unused.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_find_get_unused.exit

refcount_inc_not_zero.exit.i.for.inc.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %add.i = add i32 %29, 1
  store i32 %add.i, ptr %id.i, align 4
  %call24.i = call ptr @idr_get_next(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull %id.i) #14
  %cmp25.not.i = icmp eq ptr %call24.i, null
  br i1 %cmp25.not.i, label %for.inc.i.nbd_find_get_unused.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.nbd_find_get_unused.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_find_get_unused.exit

nbd_find_get_unused.exit:                         ; preds = %for.inc.i.nbd_find_get_unused.exit_crit_edge, %refcount_inc_not_zero.exit.i.nbd_find_get_unused.exit_crit_edge, %if.end.i.nbd_find_get_unused.exit_crit_edge
  %call24.lcssa.i = phi ptr [ null, %if.end.i.nbd_find_get_unused.exit_crit_edge ], [ %call2442.i, %refcount_inc_not_zero.exit.i.nbd_find_get_unused.exit_crit_edge ], [ null, %for.inc.i.nbd_find_get_unused.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #14
  br label %if.end41

if.else:                                          ; preds = %again.preheader
  %call24 = call ptr @idr_find(ptr noundef nonnull @nbd_index_idr, i32 noundef %index.0) #14
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end41.thread, label %if.then26

if.end41.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  br label %if.then43

if.then26:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.nbd_device, ptr %call24, i32 0, i32 11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool28.not = icmp eq i32 %and1.i, 0
  br i1 %tobool28.not, label %if.then26.lor.lhs.false_crit_edge, label %land.lhs.true

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then26
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool31.not = icmp eq i32 %34, 0
  br i1 %tobool31.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then33_crit_edge

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then26.lor.lhs.false_crit_edge
  %refs = getelementptr inbounds %struct.nbd_device, ptr %call24, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i350 = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %35 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false
  %37 = phi i32 [ %36, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %38 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %37, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %39 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %41 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %40, i32 %add.i.i.i, ptr elementtype(i32) %refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %40
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %42 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %43, 1
  %44 = or i32 %add5.i.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !531

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #14
  %45 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %46 = phi i32 [ %43, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool12.i.i.i.not = icmp eq i32 %46, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.then33_crit_edge, label %refcount_inc_not_zero.exit.if.end41_crit_edge

refcount_inc_not_zero.exit.if.end41_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

refcount_inc_not_zero.exit.if.then33_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

if.then33:                                        ; preds = %refcount_inc_not_zero.exit.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %index.0) #17
  br label %cleanup257

if.end41:                                         ; preds = %refcount_inc_not_zero.exit.if.end41_crit_edge, %nbd_find_get_unused.exit
  %nbd.0 = phi ptr [ %call24.lcssa.i, %nbd_find_get_unused.exit ], [ %call24, %refcount_inc_not_zero.exit.if.end41_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %tobool42.not = icmp eq ptr %nbd.0, null
  br i1 %tobool42.not, label %if.end41.if.then43_crit_edge, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43:                                        ; preds = %if.end41.if.then43_crit_edge, %if.end41.thread
  %call44 = call fastcc ptr @nbd_dev_add(i32 noundef %index.0, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end49, label %if.then43.if.end54_crit_edge

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  %47 = ptrtoint ptr %call44 to i32
  br label %cleanup257

if.end54:                                         ; preds = %if.then43.if.end54_crit_edge, %if.end41.if.end54_crit_edge
  %nbd.1 = phi ptr [ %nbd.0, %if.end41.if.end54_crit_edge ], [ %call44, %if.then43.if.end54_crit_edge ]
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %48 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %config_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool56.not = icmp eq i32 %49, 0
  br i1 %tobool56.not, label %if.end67, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call fastcc void @nbd_put(ptr noundef %nbd.1)
  br i1 %cmp, label %if.then22.critedge, label %do.end64

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %index.0) #17
  br label %cleanup257

if.end67:                                         ; preds = %if.end54
  %config68 = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 4
  %50 = ptrtoint ptr %config68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config68, align 4
  %tobool69.not = icmp eq ptr %51, null
  br i1 %tobool69.not, label %if.end98, label %do.end81, !prof !531

do.end81:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1964, i32 noundef 9, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call fastcc void @nbd_put(ptr noundef %nbd.1)
  br label %cleanup257

if.end98:                                         ; preds = %if.end67
  %call99 = call fastcc ptr @nbd_alloc_config()
  %52 = ptrtoint ptr %config68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call99, ptr %config68, align 4
  %tobool102.not = icmp eq ptr %call99, null
  br i1 %tobool102.not, label %if.then103, label %if.end110

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call fastcc void @nbd_put(ptr noundef %nbd.1)
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  br label %cleanup257

if.end110:                                        ; preds = %if.end98
  %call.i.i.i351 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %53 = ptrtoint ptr %config_refs to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %config_refs, align 4
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %call99, i32 0, i32 1
  call void @_set_bit(i32 noundef 5, ptr noundef %runtime_flags) #14
  %call112 = call fastcc i32 @nbd_genl_size_set(ptr noundef %info, ptr noundef %nbd.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.out.thread_crit_edge

if.end110.out.thread_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end115:                                        ; preds = %if.end110
  %54 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %attrs, align 4
  %arrayidx117 = getelementptr ptr, ptr %55, i32 4
  %56 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %57, null
  br i1 %tobool118.not, label %if.end115.if.end123_crit_edge, label %if.then119

if.end115.if.end123_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %58 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %tmp.i, align 8, !annotation !533
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %57, i32 noundef 8) #14
  %59 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  %61 = trunc i64 %60 to i32
  %conv.i = mul i32 %61, 100
  %timeout1.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd.1, i32 0, i32 8
  %62 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv.i, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool.not.i352 = icmp eq i64 %60, 0
  %disk4.i = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 6
  %63 = ptrtoint ptr %disk4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disk4.i, align 4
  %queue5.i = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %queue5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue5.i, align 4
  %.conv.i = select i1 %tobool.not.i352, i32 3000, i32 %conv.i
  call void @blk_queue_rq_timeout(ptr noundef %66, i32 noundef %.conv.i) #14
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.end115.if.end123_crit_edge
  %67 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attrs, align 4
  %arrayidx125 = getelementptr ptr, ptr %68, i32 8
  %69 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %70, null
  br i1 %tobool126.not, label %if.end123.if.end132_crit_edge, label %if.then127

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i353) #14
  %71 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -1, ptr %tmp.i353, align 8, !annotation !533
  %call.i354 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i353, ptr noundef nonnull %70, i32 noundef 8) #14
  %72 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tmp.i353, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i353) #14
  %dead_conn_timeout = getelementptr inbounds %struct.nbd_config, ptr %call99, i32 0, i32 2
  %mul = mul i64 %73, 100
  %74 = ptrtoint ptr %dead_conn_timeout to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %mul, ptr %dead_conn_timeout, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.end123.if.end132_crit_edge
  %75 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %attrs, align 4
  %arrayidx134 = getelementptr ptr, ptr %76, i32 5
  %77 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx134, align 4
  %tobool135.not = icmp eq ptr %78, null
  br i1 %tobool135.not, label %if.end132.if.end141_crit_edge, label %if.then136

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i355) #14
  %79 = ptrtoint ptr %tmp.i355 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 -1, ptr %tmp.i355, align 8, !annotation !533
  %call.i356 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i355, ptr noundef nonnull %78, i32 noundef 8) #14
  %80 = ptrtoint ptr %tmp.i355 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %tmp.i355, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i355) #14
  %conv = trunc i64 %81 to i32
  %82 = ptrtoint ptr %call99 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv, ptr %call99, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.end132.if.end141_crit_edge
  %83 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %attrs, align 4
  %arrayidx143 = getelementptr ptr, ptr %84, i32 6
  %85 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %86, null
  br i1 %tobool144.not, label %if.end141.if.end170_crit_edge, label %if.then145

if.end141.if.end170_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then145:                                       ; preds = %if.end141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i357) #14
  %87 = ptrtoint ptr %tmp.i357 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %tmp.i357, align 8, !annotation !533
  %call.i358 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i357, ptr noundef nonnull %86, i32 noundef 8) #14
  %88 = ptrtoint ptr %tmp.i357 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %tmp.i357, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i357) #14
  %and = and i64 %89, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool150.not = icmp eq i64 %and, 0
  %flags158 = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 11
  br i1 %tobool150.not, label %if.else157, label %if.then151

if.then151:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  %call153 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags158) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br label %if.end164

if.else157:                                       ; preds = %if.then145
  %call159 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags158) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.else157.if.end164_crit_edge, label %if.then161

if.else157.if.end164_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.then161:                                       ; preds = %if.else157
  %refs162 = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 3
  %call.i.i.i.i.i359 = call zeroext i1 @__kasan_check_write(ptr noundef %refs162, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs162, i32 1, i32 3, i32 1) #14
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs162, ptr %refs162, i32 1, ptr elementtype(i32) %refs162) #14, !srcloc !539
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then161.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !532

if.then161.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then161
  %add.i.i.i360 = add i32 %asmresult.i.i.i.i.i, 1
  %91 = or i32 %add.i.i.i360, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %.not.i.i.i361 = icmp sgt i32 %91, -1
  br i1 %.not.i.i.i361, label %if.else.i.i.i.if.end164_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !531

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end164_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then161.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then161.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs162, i32 noundef %.sink.i.i.i) #14
  br label %if.end164

if.end164:                                        ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end164_crit_edge, %if.else157.if.end164_crit_edge, %if.then151
  %put_dev.0 = phi i1 [ false, %if.else157.if.end164_crit_edge ], [ %tobool154.not, %if.then151 ], [ false, %if.else.i.i.i.if.end164_crit_edge ], [ false, %if.end15.sink.split.i.i.i ]
  %and165 = and i64 %89, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and165)
  %tobool166.not = icmp eq i64 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end170_crit_edge, label %if.then167

if.end164.if.end170_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #14
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.end164.if.end170_crit_edge, %if.end141.if.end170_crit_edge
  %put_dev.1.off0 = phi i1 [ false, %if.end141.if.end170_crit_edge ], [ %put_dev.0, %if.then167 ], [ %put_dev.0, %if.end164.if.end170_crit_edge ]
  %92 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %attrs, align 4
  %arrayidx172 = getelementptr ptr, ptr %93, i32 7
  %94 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx172, align 4
  %tobool173.not = icmp eq ptr %95, null
  br i1 %tobool173.not, label %if.end170.if.end219_crit_edge, label %if.then174

if.end170.if.end219_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

if.then174:                                       ; preds = %if.end170
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %95, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %97)
  %cmp.i363406 = icmp ugt i16 %97, 7
  br i1 %cmp.i363406, label %land.lhs.true.i.lr.ph, label %if.then174.if.end219_crit_edge

if.then174.if.end219_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

land.lhs.true.i.lr.ph:                            ; preds = %if.then174
  %conv.i362 = zext i16 %97 to i32
  %sub.i = add nsw i32 %conv.i362, -4
  %add.ptr.i = getelementptr i8, ptr %95, i32 4
  %98 = getelementptr inbounds [2 x ptr], ptr %socks, i32 0, i32 1
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.0408 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i371, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0407 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %99 = ptrtoint ptr %attr.0408 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %attr.0408, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %100)
  %cmp1.i = icmp ult i16 %100, 4
  %conv.i364 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0407, i32 %conv.i364)
  %cmp5.i.not = icmp ult i32 %rem.0407, %conv.i364
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end219_crit_edge, label %for.body

land.lhs.true.i.if.end219_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

for.body:                                         ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %socks) #14
  %101 = ptrtoint ptr %socks to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 -1 to ptr), ptr %socks, align 4, !annotation !533
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -1 to ptr), ptr %98, align 4, !annotation !533
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0408, i32 0, i32 1
  %103 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %nla_type.i, align 2
  %105 = and i16 %104, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %105)
  %cmp184.not = icmp eq i16 %105, 1
  br i1 %cmp184.not, label %if.end192, label %for.body.cleanup214.sink.split_crit_edge

for.body.cleanup214.sink.split_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup214.sink.split

if.end192:                                        ; preds = %for.body
  %106 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %extack, align 4
  %add.ptr.i.i366 = getelementptr i8, ptr %attr.0408, i32 4
  %108 = ptrtoint ptr %attr.0408 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %attr.0408, align 2
  %conv.i.i = zext i16 %109 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %socks, i32 noundef 1, ptr noundef %add.ptr.i.i366, i32 noundef %sub.i.i, ptr noundef nonnull @nbd_sock_policy, i32 noundef 0, ptr noundef %107) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp194.not = icmp eq i32 %call2.i, 0
  br i1 %cmp194.not, label %if.end202, label %if.end192.cleanup214.sink.split_crit_edge

if.end192.cleanup214.sink.split_crit_edge:        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup214.sink.split

if.end202:                                        ; preds = %if.end192
  %110 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %98, align 4
  %tobool204.not = icmp eq ptr %111, null
  br i1 %tobool204.not, label %if.end202.for.inc_crit_edge, label %if.end206

if.end202.for.inc_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end206:                                        ; preds = %if.end202
  %add.ptr.i.i367 = getelementptr i8, ptr %111, i32 4
  %112 = ptrtoint ptr %add.ptr.i.i367 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i367, align 4
  %call209 = call fastcc i32 @nbd_add_socket(ptr noundef %nbd.1, i32 noundef %113, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end206.for.inc_crit_edge, label %if.end206.cleanup214_crit_edge

if.end206.cleanup214_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup214

if.end206.for.inc_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end206.for.inc_crit_edge, %if.end202.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %socks) #14
  %114 = ptrtoint ptr %attr.0408 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %attr.0408, align 2
  %conv.i368 = zext i16 %115 to i32
  %sub.i369 = add nuw nsw i32 %conv.i368, 3
  %and.i370 = and i32 %sub.i369, 131068
  %sub1.i = sub nsw i32 %rem.0407, %and.i370
  %add.ptr.i371 = getelementptr i8, ptr %attr.0408, i32 %and.i370
  %cmp.i363 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i363, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.if.end219_crit_edge

for.inc.if.end219_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

cleanup214.sink.split:                            ; preds = %if.end192.cleanup214.sink.split_crit_edge, %for.body.cleanup214.sink.split_crit_edge
  %.str.35.sink = phi ptr [ @.str.35, %for.body.cleanup214.sink.split_crit_edge ], [ @.str.38, %if.end192.cleanup214.sink.split_crit_edge ]
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink) #17
  br label %cleanup214

cleanup214:                                       ; preds = %cleanup214.sink.split, %if.end206.cleanup214_crit_edge
  %ret.1.ph = phi i32 [ -22, %cleanup214.sink.split ], [ %call209, %if.end206.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %socks) #14
  br label %out.thread

if.end219:                                        ; preds = %for.inc.if.end219_crit_edge, %land.lhs.true.i.if.end219_crit_edge, %if.then174.if.end219_crit_edge, %if.end170.if.end219_crit_edge
  %call220 = call fastcc i32 @nbd_start_device(ptr noundef %nbd.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end223, label %if.end219.out.thread_crit_edge

if.end219.out.thread_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end223:                                        ; preds = %if.end219
  %116 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %attrs, align 4
  %arrayidx225 = getelementptr ptr, ptr %117, i32 10
  %118 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx225, align 4
  %tobool226.not = icmp eq ptr %119, null
  br i1 %tobool226.not, label %if.end223.if.end235_crit_edge, label %if.then227

if.end223.if.end235_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end235

if.then227:                                       ; preds = %if.end223
  %call230 = call ptr @nla_strdup(ptr noundef nonnull %119, i32 noundef 3264) #14
  %backend = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 13
  %120 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call230, ptr %backend, align 4
  %tobool232.not = icmp eq ptr %call230, null
  br i1 %tobool232.not, label %if.then227.out.thread_crit_edge, label %if.then227.if.end235_crit_edge

if.then227.if.end235_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end235

if.then227.out.thread_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end235:                                        ; preds = %if.then227.if.end235_crit_edge, %if.end223.if.end235_crit_edge
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 6
  %121 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %124, i32 0, i32 10
  %call236 = call i32 @device_create_file(ptr noundef %bd_device, ptr noundef nonnull @backend_attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.then249, label %do.end241

do.end241:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %disk, align 4
  %part0243 = getelementptr inbounds %struct.gendisk, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %part0243 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %part0243, align 4
  %bd_device244 = getelementptr inbounds %struct.block_device, ptr %128, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device244, ptr noundef nonnull @.str.41) #17
  br label %out.thread

out.thread:                                       ; preds = %do.end241, %if.then227.out.thread_crit_edge, %if.end219.out.thread_crit_edge, %cleanup214, %if.end110.out.thread_crit_edge
  %put_dev.2.off0.ph = phi i1 [ %put_dev.1.off0, %if.then227.out.thread_crit_edge ], [ %put_dev.1.off0, %do.end241 ], [ %put_dev.1.off0, %if.end219.out.thread_crit_edge ], [ %put_dev.1.off0, %cleanup214 ], [ false, %if.end110.out.thread_crit_edge ]
  %ret.3.ph = phi i32 [ -12, %if.then227.out.thread_crit_edge ], [ %call236, %do.end241 ], [ %call220, %if.end219.out.thread_crit_edge ], [ %ret.1.ph, %cleanup214 ], [ %call112, %if.end110.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call fastcc void @nbd_config_put(ptr noundef %nbd.1)
  br i1 %put_dev.2.off0.ph, label %out.thread.if.then255_crit_edge, label %out.thread.cleanup257_crit_edge

out.thread.cleanup257_crit_edge:                  ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

out.thread.if.then255_crit_edge:                  ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then255

if.then249:                                       ; preds = %if.end235
  call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags) #14
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #14
  %call.i.i.i.i.i372 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 1, ptr elementtype(i32) %config_refs) #14, !srcloc !539
  %asmresult.i.i.i.i.i373 = extractvalue { i32, i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i373)
  %tobool1.not.i.i.i374 = icmp eq i32 %asmresult.i.i.i.i.i373, 0
  br i1 %tobool1.not.i.i.i374, label %if.then249.if.end15.sink.split.i.i.i379_crit_edge, label %if.else.i.i.i377, !prof !532

if.then249.if.end15.sink.split.i.i.i379_crit_edge: ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i379

if.else.i.i.i377:                                 ; preds = %if.then249
  %add.i.i.i375 = add i32 %asmresult.i.i.i.i.i373, 1
  %130 = or i32 %add.i.i.i375, %asmresult.i.i.i.i.i373
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %.not.i.i.i376 = icmp sgt i32 %130, -1
  br i1 %.not.i.i.i376, label %if.else.i.i.i377.refcount_inc.exit380_crit_edge, label %if.else.i.i.i377.if.end15.sink.split.i.i.i379_crit_edge, !prof !531

if.else.i.i.i377.if.end15.sink.split.i.i.i379_crit_edge: ; preds = %if.else.i.i.i377
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i379

if.else.i.i.i377.refcount_inc.exit380_crit_edge:  ; preds = %if.else.i.i.i377
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit380

if.end15.sink.split.i.i.i379:                     ; preds = %if.else.i.i.i377.if.end15.sink.split.i.i.i379_crit_edge, %if.then249.if.end15.sink.split.i.i.i379_crit_edge
  %.sink.i.i.i378 = phi i32 [ 2, %if.then249.if.end15.sink.split.i.i.i379_crit_edge ], [ 1, %if.else.i.i.i377.if.end15.sink.split.i.i.i379_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef %.sink.i.i.i378) #14
  br label %refcount_inc.exit380

refcount_inc.exit380:                             ; preds = %if.end15.sink.split.i.i.i379, %if.else.i.i.i377.refcount_inc.exit380_crit_edge
  %index252 = getelementptr inbounds %struct.nbd_device, ptr %nbd.1, i32 0, i32 1
  %131 = ptrtoint ptr %index252 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %index252, align 4
  %call.i.i.i.i381 = call ptr @__alloc_skb(i32 noundef 28, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i382 = icmp eq ptr %call.i.i.i.i381, null
  br i1 %tobool.not.i382, label %if.end253, label %if.end.i384

if.end.i384:                                      ; preds = %refcount_inc.exit380
  %snd_portid.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %133 = ptrtoint ptr %snd_portid.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %snd_portid.i.i, align 4
  %135 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %info, align 4
  %call.i.i383 = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i381, i32 noundef %134, i32 noundef %136, ptr noundef nonnull @nbd_genl_family, i32 noundef 0, i8 noundef zeroext 1) #14
  %tobool3.not.i = icmp eq ptr %call.i.i383, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i384
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i381, i32 noundef 0) #14
  call fastcc void @nbd_config_put(ptr noundef %nbd.1)
  br i1 %put_dev.1.off0, label %if.then4.i.if.then255_crit_edge, label %if.then4.i.cleanup257_crit_edge

if.then4.i.cleanup257_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

if.then4.i.if.then255_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then255

if.end5.i:                                        ; preds = %if.end.i384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %137 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %132, ptr %tmp.i.i, align 4
  %call.i21.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i.i381, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool7.not.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i381, i32 noundef 0) #14
  call fastcc void @nbd_config_put(ptr noundef %nbd.1)
  br i1 %put_dev.1.off0, label %if.then8.i.if.then255_crit_edge, label %if.then8.i.cleanup257_crit_edge

if.then8.i.cleanup257_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

if.then8.i.if.then255_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then255

if.end9.i:                                        ; preds = %if.end5.i
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i383, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i381, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %139 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %140 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %_net.i.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %141 = ptrtoint ptr %_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %_net.i.i.i, align 4
  %143 = ptrtoint ptr %snd_portid.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %snd_portid.i.i, align 4
  %genl_sock.i.i.i = getelementptr inbounds %struct.net, ptr %142, i32 0, i32 21
  %145 = ptrtoint ptr %genl_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %genl_sock.i.i.i, align 4
  %call.i.i.i23.i = call i32 @netlink_unicast(ptr noundef %146, ptr noundef nonnull %call.i.i.i.i381, i32 noundef %144, i32 noundef 64) #14
  call fastcc void @nbd_config_put(ptr noundef %nbd.1)
  br i1 %put_dev.1.off0, label %if.end9.i.if.then255_crit_edge, label %if.end9.i.cleanup257_crit_edge

if.end9.i.cleanup257_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

if.end9.i.if.then255_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then255

if.end253:                                        ; preds = %refcount_inc.exit380
  call fastcc void @nbd_config_put(ptr noundef %nbd.1)
  br i1 %put_dev.1.off0, label %if.end253.if.then255_crit_edge, label %if.end253.cleanup257_crit_edge

if.end253.cleanup257_crit_edge:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup257

if.end253.if.then255_crit_edge:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then255

if.then255:                                       ; preds = %if.end253.if.then255_crit_edge, %if.end9.i.if.then255_crit_edge, %if.then8.i.if.then255_crit_edge, %if.then4.i.if.then255_crit_edge, %out.thread.if.then255_crit_edge
  %ret.3397398 = phi i32 [ %ret.3.ph, %out.thread.if.then255_crit_edge ], [ 0, %if.end253.if.then255_crit_edge ], [ 0, %if.then4.i.if.then255_crit_edge ], [ 0, %if.then8.i.if.then255_crit_edge ], [ 0, %if.end9.i.if.then255_crit_edge ]
  call fastcc void @nbd_put(ptr noundef %nbd.1)
  br label %cleanup257

cleanup257:                                       ; preds = %if.then255, %if.end253.cleanup257_crit_edge, %if.end9.i.cleanup257_crit_edge, %if.then8.i.cleanup257_crit_edge, %if.then4.i.cleanup257_crit_edge, %out.thread.cleanup257_crit_edge, %if.then103, %do.end81, %do.end64, %do.end49, %if.then33, %do.end18, %do.end, %entry.cleanup257_crit_edge
  %retval.0 = phi i32 [ -16, %do.end64 ], [ -22, %do.end81 ], [ -12, %if.then103 ], [ %47, %do.end49 ], [ -22, %if.then33 ], [ -22, %do.end18 ], [ -22, %do.end ], [ -1, %entry.cleanup257_crit_edge ], [ %ret.3397398, %if.then255 ], [ 0, %if.end253.cleanup257_crit_edge ], [ %ret.3.ph, %out.thread.cleanup257_crit_edge ], [ 0, %if.then4.i.cleanup257_crit_edge ], [ 0, %if.then8.i.cleanup257_crit_edge ], [ 0, %if.end9.i.cleanup257_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_genl_disconnect(ptr noundef %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %old.i.i.i36 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 21) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %call7 = tail call ptr @idr_find(ptr noundef nonnull @nbd_index_idr, i32 noundef %5) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %5) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %refs = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %6 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end15
  %8 = phi i32 [ %7, %if.end15 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !531

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #14
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  br i1 %tobool12.i.i.i.not, label %if.then17, label %if.end23

if.then17:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %5) #17
  br label %cleanup

if.end23:                                         ; preds = %refcount_inc_not_zero.exit
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i36) #14
  %call.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %18 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %config_refs, align 4
  br label %do.body.i.i.i39

do.body.i.i.i39:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge, %if.end23
  %20 = phi i32 [ %19, %if.end23 ], [ %asmresult3.i.i.i.i.i.i47, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge ]
  %21 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i38 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i38, label %do.body.i.i.i39.if.end4.i.i.i52_crit_edge, label %do.cond.i.i.i43

do.body.i.i.i39.if.end4.i.i.i52_crit_edge:        ; preds = %do.body.i.i.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i52

do.cond.i.i.i43:                                  ; preds = %do.body.i.i.i39
  %add.i.i.i40 = add i32 %20, 1
  %call.i.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %call.i3.i.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i36, i32 noundef 4) #14
  %22 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i36, align 4
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i46

do.body.i.i.i.i.i.i46:                            ; preds = %do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge, %do.cond.i.i.i43
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 %23, i32 %add.i.i.i40, ptr elementtype(i32) %config_refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i44 = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i45 = icmp eq i32 %asmresult.i.i.i.i.i.i44, 0
  br i1 %tobool.not.i.i.i.i.i.i45, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49, label %do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge

do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge: ; preds = %do.body.i.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i46

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49:     ; preds = %do.body.i.i.i.i.i.i46
  %asmresult3.i.i.i.i.i.i47 = extractvalue { i32, i32 } %24, 1
  %cmp.not.i.i.i.i.i48 = icmp eq i32 %asmresult3.i.i.i.i.i.i47, %23
  br i1 %cmp.not.i.i.i.i.i48, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i39

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i52

if.end4.i.i.i52:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge, %do.body.i.i.i39.if.end4.i.i.i52_crit_edge
  %25 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i36, align 4
  %add5.i.i.i50 = add i32 %26, 1
  %27 = or i32 %add5.i.i.i50, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i51 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i51, label %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge, label %if.then10.i.i.i53, !prof !531

if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge: ; preds = %if.end4.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit55

if.then10.i.i.i53:                                ; preds = %if.end4.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef 0) #14
  %28 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr56 = load i32, ptr %old.i.i.i36, align 4
  br label %refcount_inc_not_zero.exit55

refcount_inc_not_zero.exit55:                     ; preds = %if.then10.i.i.i53, %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge
  %29 = phi i32 [ %26, %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge ], [ %.pr56, %if.then10.i.i.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.i.i.i54.not = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i36) #14
  br i1 %tobool12.i.i.i54.not, label %refcount_inc_not_zero.exit55.put_nbd_crit_edge, label %if.end26

refcount_inc_not_zero.exit55.put_nbd_crit_edge:   ; preds = %refcount_inc_not_zero.exit55
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_nbd

if.end26:                                         ; preds = %refcount_inc_not_zero.exit55
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nbd_disconnect_and_put(ptr noundef nonnull %call7)
  call fastcc void @nbd_config_put(ptr noundef nonnull %call7)
  br label %put_nbd

put_nbd:                                          ; preds = %if.end26, %refcount_inc_not_zero.exit55.put_nbd_crit_edge
  call fastcc void @nbd_put(ptr noundef nonnull %call7)
  br label %cleanup

cleanup:                                          ; preds = %put_nbd, %if.then17, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %put_nbd ], [ -22, %if.then17 ], [ -22, %if.then9 ], [ -22, %do.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_genl_reconfigure(ptr noundef %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %tmp.i269 = alloca i64, align 8
  %tmp.i267 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %old.i.i.i241 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  %socks = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 21) #14
  br i1 %call, label %if.end, label %entry.cleanup173_crit_edge

entry.cleanup173_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup173

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #17
  br label %cleanup173

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %call7 = tail call ptr @idr_find(ptr noundef nonnull @nbd_index_idr, i32 noundef %5) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %5) #17
  br label %cleanup173

if.end15:                                         ; preds = %if.end3
  %backend = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 13
  %6 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %if.end15.if.end39_crit_edge, label %if.then17

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then17:                                        ; preds = %if.end15
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx19 = getelementptr ptr, ptr %9, i32 10
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then17
  %call25 = tail call i32 @nla_strcmp(ptr noundef nonnull %11, ptr noundef nonnull %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then21.if.end39_crit_edge, label %if.then27

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  %12 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backend, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.199, ptr noundef %17) #17
  br label %cleanup173

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %disk.i238 = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  %18 = ptrtoint ptr %disk.i238 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk.i238, align 4
  %part0.i239 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i239 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i239, align 4
  %bd_device.i240 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i240, ptr noundef nonnull @.str.202) #17
  br label %cleanup173

if.end39:                                         ; preds = %if.then21.if.end39_crit_edge, %if.end15.if.end39_crit_edge
  %refs = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %22 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end39
  %24 = phi i32 [ %23, %if.end39 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %24, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %26 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %27, i32 %add.i.i.i, ptr elementtype(i32) %refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !531

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #14
  %32 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %33 = phi i32 [ %30, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.i.i.i.not = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  br i1 %tobool12.i.i.i.not, label %if.then41, label %if.end47

if.then41:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %5) #17
  br label %cleanup173

if.end47:                                         ; preds = %refcount_inc_not_zero.exit
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i241) #14
  %call.i.i.i.i.i.i242 = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %34 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %config_refs, align 4
  br label %do.body.i.i.i244

do.body.i.i.i244:                                 ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.do.body.i.i.i244_crit_edge, %if.end47
  %36 = phi i32 [ %35, %if.end47 ], [ %asmresult3.i.i.i.i.i.i252, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.do.body.i.i.i244_crit_edge ]
  %37 = ptrtoint ptr %old.i.i.i241 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %old.i.i.i241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i243 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i243, label %do.body.i.i.i244.if.end4.i.i.i257_crit_edge, label %do.cond.i.i.i248

do.body.i.i.i244.if.end4.i.i.i257_crit_edge:      ; preds = %do.body.i.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i257

do.cond.i.i.i248:                                 ; preds = %do.body.i.i.i244
  %add.i.i.i245 = add i32 %36, 1
  %call.i.i.i.i.i246 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %call.i3.i.i.i.i247 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i241, i32 noundef 4) #14
  %38 = ptrtoint ptr %old.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %old.i.i.i241, align 4
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i251

do.body.i.i.i.i.i.i251:                           ; preds = %do.body.i.i.i.i.i.i251.do.body.i.i.i.i.i.i251_crit_edge, %do.cond.i.i.i248
  %40 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 %39, i32 %add.i.i.i245, ptr elementtype(i32) %config_refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i249 = extractvalue { i32, i32 } %40, 0
  %tobool.not.i.i.i.i.i.i250 = icmp eq i32 %asmresult.i.i.i.i.i.i249, 0
  br i1 %tobool.not.i.i.i.i.i.i250, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254, label %do.body.i.i.i.i.i.i251.do.body.i.i.i.i.i.i251_crit_edge

do.body.i.i.i.i.i.i251.do.body.i.i.i.i.i.i251_crit_edge: ; preds = %do.body.i.i.i.i.i.i251
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i251

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254:    ; preds = %do.body.i.i.i.i.i.i251
  %asmresult3.i.i.i.i.i.i252 = extractvalue { i32, i32 } %40, 1
  %cmp.not.i.i.i.i.i253 = icmp eq i32 %asmresult3.i.i.i.i.i.i252, %39
  br i1 %cmp.not.i.i.i.i.i253, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.if.end4.i.i.i257_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.do.body.i.i.i244_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.do.body.i.i.i244_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i244

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.if.end4.i.i.i257_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i257

if.end4.i.i.i257:                                 ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i254.if.end4.i.i.i257_crit_edge, %do.body.i.i.i244.if.end4.i.i.i257_crit_edge
  %41 = ptrtoint ptr %old.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i.i.i241, align 4
  %add5.i.i.i255 = add i32 %42, 1
  %43 = or i32 %add5.i.i.i255, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i256 = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i256, label %if.end4.i.i.i257.refcount_inc_not_zero.exit260_crit_edge, label %if.then10.i.i.i258, !prof !531

if.end4.i.i.i257.refcount_inc_not_zero.exit260_crit_edge: ; preds = %if.end4.i.i.i257
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit260

if.then10.i.i.i258:                               ; preds = %if.end4.i.i.i257
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef 0) #14
  %44 = ptrtoint ptr %old.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr289 = load i32, ptr %old.i.i.i241, align 4
  br label %refcount_inc_not_zero.exit260

refcount_inc_not_zero.exit260:                    ; preds = %if.then10.i.i.i258, %if.end4.i.i.i257.refcount_inc_not_zero.exit260_crit_edge
  %45 = phi i32 [ %42, %if.end4.i.i.i257.refcount_inc_not_zero.exit260_crit_edge ], [ %.pr289, %if.then10.i.i.i258 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool12.i.i.i259.not = icmp eq i32 %45, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i241) #14
  br i1 %tobool12.i.i.i259.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %refcount_inc_not_zero.exit260
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i261 = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  %46 = ptrtoint ptr %disk.i261 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disk.i261, align 4
  %part0.i262 = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %part0.i262 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %part0.i262, align 4
  %bd_device.i263 = getelementptr inbounds %struct.block_device, ptr %49, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i263, ptr noundef nonnull @.str.207) #17
  call fastcc void @nbd_put(ptr noundef %call7)
  br label %cleanup173

if.end54:                                         ; preds = %refcount_inc_not_zero.exit260
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  %config55 = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 4
  %50 = ptrtoint ptr %config55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config55, align 4
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %runtime_flags, align 4
  %54 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool57.not = icmp eq i32 %54, 0
  br i1 %tobool57.not, label %if.end54.do.end62_crit_edge, label %lor.lhs.false

if.end54.do.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

lor.lhs.false:                                    ; preds = %if.end54
  %pid = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 12
  %55 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool58.not = icmp eq i32 %56, 0
  br i1 %tobool58.not, label %lor.lhs.false.do.end62_crit_edge, label %if.end64

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false.do.end62_crit_edge, %if.end54.do.end62_crit_edge
  %disk.i264 = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  %57 = ptrtoint ptr %disk.i264 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk.i264, align 4
  %part0.i265 = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %part0.i265 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %part0.i265, align 4
  %bd_device.i266 = getelementptr inbounds %struct.block_device, ptr %60, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i266, ptr noundef nonnull @.str.207) #17
  br label %out

if.end64:                                         ; preds = %lor.lhs.false
  %call65 = call fastcc i32 @nbd_genl_size_set(ptr noundef %info, ptr noundef %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end68:                                         ; preds = %if.end64
  %61 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %attrs, align 4
  %arrayidx70 = getelementptr ptr, ptr %62, i32 4
  %63 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %64, null
  br i1 %tobool71.not, label %if.end68.if.end76_crit_edge, label %if.then72

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %65 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %tmp.i, align 8, !annotation !533
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %64, i32 noundef 8) #14
  %66 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  %68 = trunc i64 %67 to i32
  %conv.i = mul i32 %68, 100
  %timeout1.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7, i32 0, i32 8
  %69 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.i, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool.not.i = icmp eq i64 %67, 0
  %disk4.i = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  %70 = ptrtoint ptr %disk4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %disk4.i, align 4
  %queue5.i = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %queue5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue5.i, align 4
  %.conv.i = select i1 %tobool.not.i, i32 3000, i32 %conv.i
  call void @blk_queue_rq_timeout(ptr noundef %73, i32 noundef %.conv.i) #14
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end68.if.end76_crit_edge
  %74 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %attrs, align 4
  %arrayidx78 = getelementptr ptr, ptr %75, i32 8
  %76 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx78, align 4
  %tobool79.not = icmp eq ptr %77, null
  br i1 %tobool79.not, label %if.end76.if.end85_crit_edge, label %if.then80

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i267) #14
  %78 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 -1, ptr %tmp.i267, align 8, !annotation !533
  %call.i268 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i267, ptr noundef nonnull %77, i32 noundef 8) #14
  %79 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %tmp.i267, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i267) #14
  %dead_conn_timeout = getelementptr inbounds %struct.nbd_config, ptr %51, i32 0, i32 2
  %mul = mul i64 %80, 100
  %81 = ptrtoint ptr %dead_conn_timeout to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %mul, ptr %dead_conn_timeout, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end76.if.end85_crit_edge
  %82 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %attrs, align 4
  %arrayidx87 = getelementptr ptr, ptr %83, i32 6
  %84 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %85, null
  br i1 %tobool88.not, label %if.end85.if.end115_crit_edge, label %if.then89

if.end85.if.end115_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then89:                                        ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i269) #14
  %86 = ptrtoint ptr %tmp.i269 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 -1, ptr %tmp.i269, align 8, !annotation !533
  %call.i270 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i269, ptr noundef nonnull %85, i32 noundef 8) #14
  %87 = ptrtoint ptr %tmp.i269 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tmp.i269, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i269) #14
  %and = and i64 %88, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool93.not = icmp eq i64 %and, 0
  %flags101 = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 11
  br i1 %tobool93.not, label %if.else100, label %if.then94

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  %call96 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  %spec.select = zext i1 %tobool97.not to i8
  br label %if.end107

if.else100:                                       ; preds = %if.then89
  %call102 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else100.if.end107_crit_edge, label %if.then104

if.else100.if.end107_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then104:                                       ; preds = %if.else100
  %call.i.i.i.i.i271 = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !539
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then104.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !532

if.then104.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then104
  %add.i.i.i272 = add i32 %asmresult.i.i.i.i.i, 1
  %90 = or i32 %add.i.i.i272, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %.not.i.i.i273 = icmp sgt i32 %90, -1
  br i1 %.not.i.i.i273, label %if.else.i.i.i.if.end107_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !531

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end107_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then104.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then104.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #14
  br label %if.end107

if.end107:                                        ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end107_crit_edge, %if.else100.if.end107_crit_edge, %if.then94
  %put_dev.0 = phi i8 [ 0, %if.else100.if.end107_crit_edge ], [ %spec.select, %if.then94 ], [ 0, %if.else.i.i.i.if.end107_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  %and108 = and i64 %88, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and108)
  %tobool109.not = icmp eq i64 %and108, 0
  br i1 %tobool109.not, label %if.else112, label %if.then110

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #14
  br label %if.end115

if.else112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 6, ptr noundef %runtime_flags) #14
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.then110, %if.end85.if.end115_crit_edge
  %put_dev.1 = phi i8 [ 0, %if.end85.if.end115_crit_edge ], [ %put_dev.0, %if.else112 ], [ %put_dev.0, %if.then110 ]
  %91 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %attrs, align 4
  %arrayidx117 = getelementptr ptr, ptr %92, i32 7
  %93 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %94, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %put_dev.1)
  %extract.t237 = icmp ne i8 %put_dev.1, 0
  br i1 %tobool118.not, label %if.end115.out_crit_edge, label %if.then119

if.end115.out_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then119:                                       ; preds = %if.end115
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %96)
  %cmp.i313 = icmp ugt i16 %96, 7
  br i1 %cmp.i313, label %land.lhs.true.i.lr.ph, label %if.then119.out_crit_edge

if.then119.out_crit_edge:                         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.i.lr.ph:                            ; preds = %if.then119
  %conv.i274 = zext i16 %96 to i32
  %sub.i = add nsw i32 %conv.i274, -4
  %add.ptr.i = getelementptr i8, ptr %94, i32 4
  %97 = getelementptr inbounds [2 x ptr], ptr %socks, i32 0, i32 1
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %timeout.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7, i32 0, i32 8
  %recv_workq.i = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 7
  %disk.i.i = getelementptr inbounds %struct.nbd_device, ptr %call7, i32 0, i32 6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.0315 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i287, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0314 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %98 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %attr.0315, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %99)
  %cmp1.i = icmp ult i16 %99, 4
  %conv.i275 = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0314, i32 %conv.i275)
  %cmp5.i.not = icmp ult i32 %rem.0314, %conv.i275
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.out_crit_edge, label %for.body

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body:                                         ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %socks) #14
  %100 = ptrtoint ptr %socks to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 -1 to ptr), ptr %socks, align 4, !annotation !533
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 -1 to ptr), ptr %97, align 4, !annotation !533
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0315, i32 0, i32 1
  %102 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %nla_type.i, align 2
  %104 = and i16 %103, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %104)
  %cmp.not = icmp eq i16 %104, 1
  br i1 %cmp.not, label %if.end135, label %do.end132

do.end132:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #17
  br label %cleanup.thread

if.end135:                                        ; preds = %for.body
  %105 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %extack, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %attr.0315, i32 4
  %107 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %attr.0315, align 2
  %conv.i.i = zext i16 %108 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %socks, i32 noundef 1, ptr noundef %add.ptr.i.i276, i32 noundef %sub.i.i, ptr noundef nonnull @nbd_sock_policy, i32 noundef 0, ptr noundef %106) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp137.not = icmp eq i32 %call2.i, 0
  br i1 %cmp137.not, label %if.end144, label %do.end141

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #17
  br label %cleanup.thread

if.end144:                                        ; preds = %if.end135
  %109 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %97, align 4
  %tobool146.not = icmp eq ptr %110, null
  br i1 %tobool146.not, label %if.end144.for.inc_crit_edge, label %if.end148

if.end144.for.inc_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end148:                                        ; preds = %if.end144
  %add.ptr.i.i277 = getelementptr i8, ptr %110, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i277 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i.i277, align 4
  %113 = ptrtoint ptr %config55 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #14
  %115 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %err.i, align 4
  %call.i.i = call ptr @sockfd_lookup(i32 noundef %112, ptr noundef nonnull %err.i) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end148.nbd_reconnect_socket.exit_crit_edge, label %if.end.i.i

if.end148.nbd_reconnect_socket.exit_crit_edge:    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_reconnect_socket.exit

if.end.i.i:                                       ; preds = %if.end148
  %ops.i.i = getelementptr inbounds %struct.socket, ptr %call.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops.i.i, align 4
  %shutdown.i.i = getelementptr inbounds %struct.proto_ops, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %shutdown.i.i, align 4
  %cmp.i.i = icmp eq ptr %119, @sock_no_shutdown
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %disk.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %123, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.124) #17
  %124 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -22, ptr %err.i, align 4
  %file.i.i = getelementptr inbounds %struct.socket, ptr %call.i.i, i32 0, i32 3
  %125 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %file.i.i, align 4
  call void @fput(ptr noundef %126) #14
  br label %nbd_reconnect_socket.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 52) #18
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_connections.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 4
  %128 = ptrtoint ptr %num_connections.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_connections.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp83.i = icmp sgt i32 %129, 0
  br i1 %cmp83.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %socks.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 3
  br label %for.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %file.i = getelementptr inbounds %struct.socket, ptr %call.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %file.i, align 4
  call void @fput(ptr noundef %131) #14
  br label %nbd_reconnect_socket.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc33.i, %for.inc.i.for.body.i_crit_edge ]
  %132 = ptrtoint ptr %socks.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %socks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %133, i32 %i.084.i
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i, align 4
  %dead.i = getelementptr inbounds %struct.nbd_sock, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %dead.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool6.not.i = icmp eq i8 %137, 0
  br i1 %tobool6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %tx_lock.i = getelementptr inbounds %struct.nbd_sock, ptr %135, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #14
  %138 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %dead.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool10.not.i = icmp eq i8 %139, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %tx_lock.i) #14
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end8.i
  %sk.i = getelementptr inbounds %struct.socket, ptr %call.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sk.i, align 16
  call void @sk_set_memalloc(ptr noundef %141) #14
  %142 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool14.not.i = icmp eq i32 %143, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then15.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sk.i, align 16
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %145, i32 0, i32 31
  %146 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %143, ptr %sk_sndtimeo.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end19.i_crit_edge
  %recv_threads.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %recv_threads.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %recv_threads.i, i32 1, i32 3, i32 1) #14
  %147 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %recv_threads.i, ptr %recv_threads.i, i32 1, ptr elementtype(i32) %recv_threads.i) #14, !srcloc !541
  %call.i.i.i.i.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  %148 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 1, ptr elementtype(i32) %config_refs) #14, !srcloc !539
  %asmresult.i.i.i.i.i.i279 = extractvalue { i32, i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i279)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i279, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end19.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !532

if.end19.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end19.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i279, 1
  %149 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i279
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %149)
  %.not.i.i.i.i = icmp sgt i32 %149, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nbd_reconnect_socket.exit.thread294_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !531

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nbd_reconnect_socket.exit.thread294_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_reconnect_socket.exit.thread294

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end19.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end19.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef %.sink.i.i.i.i) #14
  br label %nbd_reconnect_socket.exit.thread294

nbd_reconnect_socket.exit.thread294:              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nbd_reconnect_socket.exit.thread294_crit_edge
  %150 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %135, align 4
  %fallback_index.i = getelementptr inbounds %struct.nbd_sock, ptr %135, i32 0, i32 5
  %152 = ptrtoint ptr %fallback_index.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %fallback_index.i, align 4
  store ptr %call.i.i, ptr %135, align 4
  %153 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %dead.i, align 4
  call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #14
  %154 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @nbd_reconnect_socket.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry26.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %entry26.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %entry26.i, ptr %entry26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %entry26.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %157 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @recv_work, ptr %func.i, align 4
  %index.i = getelementptr inbounds %struct.recv_thread_args, ptr %call7.i.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %i.084.i, ptr %index.i, align 8
  %nbd28.i = getelementptr inbounds %struct.recv_thread_args, ptr %call7.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %nbd28.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7, ptr %nbd28.i, align 4
  %cookie.i = getelementptr inbounds %struct.nbd_sock, ptr %135, i32 0, i32 6
  %160 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cookie.i, align 4
  %inc.i = add i32 %161, 1
  store i32 %inc.i, ptr %cookie.i, align 4
  call void @mutex_unlock(ptr noundef %tx_lock.i) #14
  %file30.i = getelementptr inbounds %struct.socket, ptr %151, i32 0, i32 3
  %162 = ptrtoint ptr %file30.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %file30.i, align 4
  call void @fput(ptr noundef %163) #14
  %runtime_flags.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 1
  call void @_clear_bit(i32 noundef 2, ptr noundef %runtime_flags.i) #14
  %164 = ptrtoint ptr %recv_workq.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %recv_workq.i, align 4
  %call.i79.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %165, ptr noundef nonnull %call7.i.i.i) #14
  %live_connections.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 5
  %call.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %live_connections.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %live_connections.i, i32 1, i32 3, i32 1) #14
  %166 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %live_connections.i, ptr %live_connections.i, i32 1, ptr elementtype(i32) %live_connections.i) #14, !srcloc !541
  %conn_wait.i = getelementptr inbounds %struct.nbd_config, ptr %114, i32 0, i32 6
  call void @__wake_up(ptr noundef %conn_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #14
  br label %do.end160

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i.for.inc.i_crit_edge
  %inc33.i = add nuw nsw i32 %i.084.i, 1
  %167 = ptrtoint ptr %num_connections.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_connections.i, align 4
  %cmp.i280 = icmp slt i32 %inc33.i, %168
  br i1 %cmp.i280, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %file34.i = getelementptr inbounds %struct.socket, ptr %call.i.i, i32 0, i32 3
  %169 = ptrtoint ptr %file34.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %file34.i, align 4
  call void @fput(ptr noundef %170) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %nbd_reconnect_socket.exit.thread

nbd_reconnect_socket.exit.thread:                 ; preds = %for.end.i, %if.then4.i
  %retval.2.i.ph = phi i32 [ -12, %if.then4.i ], [ -28, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #14
  br label %if.then153

nbd_reconnect_socket.exit:                        ; preds = %do.end.i.i, %if.end148.nbd_reconnect_socket.exit_crit_edge
  %171 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool152.not = icmp eq i32 %172, 0
  br i1 %tobool152.not, label %nbd_reconnect_socket.exit.do.end160_crit_edge, label %nbd_reconnect_socket.exit.if.then153_crit_edge

nbd_reconnect_socket.exit.if.then153_crit_edge:   ; preds = %nbd_reconnect_socket.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153

nbd_reconnect_socket.exit.do.end160_crit_edge:    ; preds = %nbd_reconnect_socket.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end160

if.then153:                                       ; preds = %nbd_reconnect_socket.exit.if.then153_crit_edge, %nbd_reconnect_socket.exit.thread
  %retval.2.i293 = phi i32 [ %retval.2.i.ph, %nbd_reconnect_socket.exit.thread ], [ %172, %nbd_reconnect_socket.exit.if.then153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.2.i293)
  %cmp154 = icmp eq i32 %retval.2.i293, -28
  %spec.store.select = select i1 %cmp154, i32 0, i32 %retval.2.i293
  br label %cleanup.thread

do.end160:                                        ; preds = %nbd_reconnect_socket.exit.do.end160_crit_edge, %nbd_reconnect_socket.exit.thread294
  %173 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %disk.i.i, align 4
  %part0.i282 = getelementptr inbounds %struct.gendisk, ptr %174, i32 0, i32 7
  %175 = ptrtoint ptr %part0.i282 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %part0.i282, align 4
  %bd_device.i283 = getelementptr inbounds %struct.block_device, ptr %176, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device.i283, ptr noundef nonnull @.str.216) #17
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then153, %do.end141, %do.end132
  %ret.1.ph = phi i32 [ %spec.store.select, %if.then153 ], [ -22, %do.end141 ], [ -22, %do.end132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %socks) #14
  br label %out

for.inc:                                          ; preds = %do.end160, %if.end144.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %socks) #14
  %177 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %attr.0315, align 2
  %conv.i284 = zext i16 %178 to i32
  %sub.i285 = add nuw nsw i32 %conv.i284, 3
  %and.i286 = and i32 %sub.i285, 131068
  %sub1.i = sub i32 %rem.0314, %and.i286
  %add.ptr.i287 = getelementptr i8, ptr %attr.0315, i32 %and.i286
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

out:                                              ; preds = %for.inc.out_crit_edge, %cleanup.thread, %land.lhs.true.i.out_crit_edge, %if.then119.out_crit_edge, %if.end115.out_crit_edge, %if.end64.out_crit_edge, %do.end62
  %put_dev.2.off0 = phi i1 [ false, %if.end64.out_crit_edge ], [ %extract.t237, %if.end115.out_crit_edge ], [ false, %do.end62 ], [ %extract.t237, %cleanup.thread ], [ %extract.t237, %if.then119.out_crit_edge ], [ %extract.t237, %for.inc.out_crit_edge ], [ %extract.t237, %land.lhs.true.i.out_crit_edge ]
  %ret.3 = phi i32 [ %call65, %if.end64.out_crit_edge ], [ 0, %if.end115.out_crit_edge ], [ -22, %do.end62 ], [ %ret.1.ph, %cleanup.thread ], [ 0, %if.then119.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ 0, %land.lhs.true.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %config_lock) #14
  call fastcc void @nbd_config_put(ptr noundef %call7)
  call fastcc void @nbd_put(ptr noundef %call7)
  br i1 %put_dev.2.off0, label %if.then171, label %out.cleanup173_crit_edge

out.cleanup173_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup173

if.then171:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nbd_put(ptr noundef %call7)
  br label %cleanup173

cleanup173:                                       ; preds = %if.then171, %out.cleanup173_crit_edge, %do.end52, %if.then41, %if.else, %if.then27, %if.then9, %do.end, %entry.cleanup173_crit_edge
  %retval.0 = phi i32 [ -22, %if.then27 ], [ -22, %do.end52 ], [ -22, %if.then41 ], [ -22, %if.else ], [ -22, %if.then9 ], [ -22, %do.end ], [ -1, %entry.cleanup173_crit_edge ], [ %ret.3, %if.then171 ], [ %ret.3, %out.cleanup173_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_genl_status(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  br label %cond.true

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.end.cond.true_crit_edge, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.cond.true_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

cond.true:                                        ; preds = %if.end.cond.true_crit_edge, %if.end.thread
  %6 = load i32, ptr @nbd_total_devices, align 4
  %phi.bo = mul i32 %6, 20
  %phi.bo71 = add i32 %phi.bo, 7
  %phi.bo72 = and i32 %phi.bo71, -4
  %phi.bo73 = add i32 %phi.bo72, 19
  %phi.bo74 = and i32 %phi.bo73, -4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cmp66 = phi i1 [ true, %cond.true ], [ false, %if.end.cond.end_crit_edge ]
  %index.064 = phi i32 [ -1, %cond.true ], [ %5, %if.end.cond.end_crit_edge ]
  %cond = phi i32 [ %phi.bo74, %cond.true ], [ 40, %if.end.cond.end_crit_edge ]
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %cond, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool7.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not, label %cond.end.out_crit_edge, label %if.end9

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %cond.end
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_portid.i, align 4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @nbd_genl_family, i32 noundef 0, i8 noundef zeroext 5) #14
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %out

if.end13:                                         ; preds = %if.end9
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 9, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %.call.i = select i1 %cmp.i, ptr null, ptr %12
  br i1 %cmp66, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @idr_for_each(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull @status_cb, ptr noundef nonnull %call.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end29_crit_edge, label %if.then19

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %out

if.else:                                          ; preds = %if.end13
  %call21 = tail call ptr @idr_find(ptr noundef nonnull @nbd_index_idr, i32 noundef %index.064) #14
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.else.if.end29_crit_edge, label %if.then23

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then23:                                        ; preds = %if.else
  %call24 = tail call fastcc i32 @populate_nbd_status(ptr noundef nonnull %call21, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end29_crit_edge, label %cleanup

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

cleanup:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %out

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then16.if.end29_crit_edge
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %.call.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %15 = ptrtoint ptr %.call.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %.call.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %18 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_net.i.i, align 4
  %20 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i61 = tail call i32 @netlink_unicast(ptr noundef %23, ptr noundef nonnull %call.i.i.i, i32 noundef %21, i32 noundef 64) #14
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i61, i32 0) #14
  br label %out

out:                                              ; preds = %if.end29, %cleanup, %if.then19, %if.then12, %cond.end.out_crit_edge
  %ret.2 = phi i32 [ %call17, %if.then19 ], [ %24, %if.end29 ], [ %call24, %cleanup ], [ -12, %if.then12 ], [ -12, %cond.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbd_dev_add(i32 noundef %index, i32 noundef %refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nbd_mq_ops, ptr %ops, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr_hw_queues, align 4
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %queue_depth, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %numa_node, align 4
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 120, ptr %cmd_size, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33, ptr %flags, align 4
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data, align 8
  %remove_work = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %remove_work, i32 noundef 0) #14
  %8 = ptrtoint ptr %remove_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %remove_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.45, ptr noundef nonnull @nbd_dev_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry10 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nbd_dev_remove_work, ptr %func, align 8
  %backend = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %backend, align 4
  %call13 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.out_free_nbd_crit_edge

if.end.out_free_nbd_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_nbd

if.end16:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp = icmp sgt i32 %index, -1
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end16
  %add = add nuw i32 %index, 1
  %call18 = tail call i32 @idr_alloc(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef %index, i32 noundef %add, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call18)
  %cmp19 = icmp eq i32 %call18, -28
  br i1 %cmp19, label %if.end26.thread, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call i32 @idr_alloc(ptr noundef nonnull @nbd_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23156 = icmp slt i32 %call22, 0
  %spec.select = select i1 %cmp23156, i32 %index, i32 %call22
  br label %if.end26

if.end26.thread:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %index27154 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %index27154 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %index, ptr %index27154, align 8
  br label %out_free_tags.sink.split

if.end26:                                         ; preds = %if.else, %if.then17.if.end26_crit_edge
  %err.0 = phi i32 [ %call18, %if.then17.if.end26_crit_edge ], [ %call22, %if.else ]
  %index.addr.0 = phi i32 [ %index, %if.then17.if.end26_crit_edge ], [ %spec.select, %if.else ]
  %index27 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %index27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %index.addr.0, ptr %index27, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp28 = icmp slt i32 %err.0, 0
  br i1 %cmp28, label %if.end26.out_free_tags_crit_edge, label %if.end30

if.end26.out_free_tags_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_tags

if.end30:                                         ; preds = %if.end26
  %call32 = tail call ptr @__blk_mq_alloc_disk(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef nonnull @nbd_dev_add.__key.46) #14
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call32 to i32
  br label %out_free_idr

if.end36:                                         ; preds = %if.end30
  %disk37 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %disk37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %disk37, align 4
  %17 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index27, align 8
  %call39 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.47, i32 noundef 26, i32 noundef 0, i32 noundef %18) #14
  %recv_workq = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %recv_workq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call39, ptr %recv_workq, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %disk37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk37, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.48) #17
  br label %out_err_disk

if.end47:                                         ; preds = %if.end36
  %queue = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 9
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %25) #14
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %27) #14
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 18
  %30 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %discard_granularity, align 4
  %31 = load ptr, ptr %queue, align 4
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 37, i32 19
  %32 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %discard_alignment, align 4
  %33 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %33, i32 noundef 0) #14
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_segment_size(ptr noundef %35, i32 noundef -1) #14
  %36 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_segments(ptr noundef %37, i16 noundef zeroext -1) #14
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %39, i32 noundef 65536) #14
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 4
  %max_sectors = getelementptr inbounds %struct.request_queue, ptr %41, i32 0, i32 37, i32 6
  %42 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %max_sectors, align 4
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %config_lock, ptr noundef nonnull @.str.51, ptr noundef nonnull @nbd_dev_add.__key.50) #14
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %43 = ptrtoint ptr %config_refs to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %config_refs, align 4
  %refs61 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs61, i32 noundef 4) #14
  %44 = ptrtoint ptr %refs61 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %refs61, align 8
  %list = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list, ptr %list, align 8
  %prev.i150 = getelementptr inbounds %struct.nbd_device, ptr %call7.i.i, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list, ptr %prev.i150, align 4
  %47 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 43, ptr %call32, align 8
  %48 = load i32, ptr @part_shift, align 4
  %shl = shl i32 %index.addr.0, %48
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 1
  %49 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl, ptr %first_minor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %index.addr.0)
  %cmp63 = icmp slt i32 %shl, %index.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %shl)
  %cmp65 = icmp ugt i32 %shl, 1048575
  %or.cond = or i1 %cmp63, %cmp65
  br i1 %or.cond, label %if.end47.out_free_work_crit_edge, label %if.end67

if.end47.out_free_work_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_work

if.end67:                                         ; preds = %if.end47
  %shl68 = shl nuw i32 1, %48
  %minors = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 2
  %50 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl68, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 8
  %51 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @nbd_fops, ptr %fops, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 10
  %52 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %private_data, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call32, i32 0, i32 3
  %call69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.52, i32 noundef %index.addr.0)
  %call.i = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %call32, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool71.not = icmp eq i32 %call.i, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.out_free_work_crit_edge

if.end67.out_free_work_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_work

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs61, i32 noundef 4) #14
  %53 = ptrtoint ptr %refs61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %refs, ptr %refs61, align 8
  %54 = load i32, ptr @nbd_total_devices, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr @nbd_total_devices, align 4
  br label %cleanup

out_free_work:                                    ; preds = %if.end67.out_free_work_crit_edge, %if.end47.out_free_work_crit_edge
  %err.1 = phi i32 [ %call.i, %if.end67.out_free_work_crit_edge ], [ -22, %if.end47.out_free_work_crit_edge ]
  %55 = ptrtoint ptr %recv_workq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %recv_workq, align 8
  tail call void @destroy_workqueue(ptr noundef %56) #14
  br label %out_err_disk

out_err_disk:                                     ; preds = %out_free_work, %do.end45
  %err.2 = phi i32 [ %err.1, %out_free_work ], [ -12, %do.end45 ]
  tail call void @blk_cleanup_disk(ptr noundef %call32) #14
  br label %out_free_idr

out_free_idr:                                     ; preds = %out_err_disk, %if.then34
  %err.3 = phi i32 [ %15, %if.then34 ], [ %err.2, %out_err_disk ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %call76 = tail call ptr @idr_remove(ptr noundef nonnull @nbd_index_idr, i32 noundef %index.addr.0) #14
  br label %out_free_tags.sink.split

out_free_tags.sink.split:                         ; preds = %out_free_idr, %if.end26.thread
  %err.4.ph = phi i32 [ -17, %if.end26.thread ], [ %err.3, %out_free_idr ]
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  br label %out_free_tags

out_free_tags:                                    ; preds = %out_free_tags.sink.split, %if.end26.out_free_tags_crit_edge
  %err.4 = phi i32 [ %err.0, %if.end26.out_free_tags_crit_edge ], [ %err.4.ph, %out_free_tags.sink.split ]
  tail call void @blk_mq_free_tag_set(ptr noundef nonnull %call7.i.i) #14
  br label %out_free_nbd

out_free_nbd:                                     ; preds = %out_free_tags, %if.end.out_free_nbd_crit_edge
  %err.5 = phi i32 [ %call13, %if.end.out_free_nbd_crit_edge ], [ %err.4, %out_free_tags ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out

out:                                              ; preds = %out_free_nbd, %entry.out_crit_edge
  %err.6 = phi i32 [ %err.5, %out_free_nbd ], [ -12, %entry.out_crit_edge ]
  %57 = inttoptr i32 %err.6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end73
  %retval.0 = phi ptr [ %57, %out ], [ %call7.i.i, %if.end73 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbd_alloc_config() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 160) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %recv_threads = getelementptr inbounds %struct.nbd_config, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %recv_threads, i32 noundef 4) #14
  %1 = ptrtoint ptr %recv_threads to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %recv_threads, align 8
  %recv_wq = getelementptr inbounds %struct.nbd_config, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %recv_wq, ptr noundef nonnull @.str.118, ptr noundef nonnull @nbd_alloc_config.__key) #14
  %conn_wait = getelementptr inbounds %struct.nbd_config, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %conn_wait, ptr noundef nonnull @.str.120, ptr noundef nonnull @nbd_alloc_config.__key.119) #14
  %blksize_bits = getelementptr inbounds %struct.nbd_config, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %blksize_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %blksize_bits, align 8
  %live_connections = getelementptr inbounds %struct.nbd_config, ptr %call7.i.i, i32 0, i32 5
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %live_connections, i32 noundef 4) #14
  %3 = ptrtoint ptr %live_connections to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %live_connections, align 8
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbd_genl_size_set(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %nbd) unnamed_addr #0 align 64 {
entry:
  %tmp.i34 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %blksize_bits.i = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %blksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksize_bits.i, align 8
  %shl.i = shl nuw i32 1, %3
  %conv = zext i32 %shl.i to i64
  %bytesize = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bytesize to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytesize, align 8
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %tmp.i, align 8, !annotation !533
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %9, i32 noundef 8) #14
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bytes.0 = phi i64 [ %12, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx6 = getelementptr ptr, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i34) #14
  %17 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %tmp.i34, align 8, !annotation !533
  %call.i35 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i34, ptr noundef nonnull %16, i32 noundef 8) #14
  %18 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp.i34, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i34) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %bsize.0 = phi i64 [ %19, %if.then8 ], [ %conv, %if.end.if.end12_crit_edge ]
  %20 = ptrtoint ptr %bytesize to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytesize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bytes.0, i64 %21)
  %cmp.not = icmp eq i64 %bytes.0, %21
  br i1 %cmp.not, label %lor.lhs.false, label %if.end12.if.then19_crit_edge

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end12
  %22 = ptrtoint ptr %blksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blksize_bits.i, align 8
  %shl.i37 = shl nuw i32 1, %23
  %conv16 = zext i32 %shl.i37 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bsize.0, i64 %conv16)
  %cmp17.not = icmp eq i64 %bsize.0, %conv16
  br i1 %cmp17.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  %call20 = call fastcc i32 @nbd_set_size(ptr noundef %nbd, i64 noundef %bytes.0, i64 noundef %bsize.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbd_add_socket(ptr nocapture noundef %nbd, i32 noundef %arg, i1 noundef zeroext %netlink) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %call.i = call ptr @sockfd_lookup(i32 noundef %arg, ptr noundef nonnull %err) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %shutdown.i = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shutdown.i, align 4
  %cmp.i = icmp eq ptr %6, @sock_no_shutdown
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %7 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk.i, align 4
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.124) #17
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %err, align 4
  %file.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file.i, align 4
  call void @fput(ptr noundef %13) #14
  br label %if.then

if.then:                                          ; preds = %do.end.i, %entry.if.then_crit_edge
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %queue = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 9
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  call void @blk_mq_freeze_queue(ptr noundef %17) #14
  br i1 %netlink, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %task_setup = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 10
  %18 = ptrtoint ptr %task_setup to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task_setup, align 4
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.land.lhs.true12_crit_edge

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %runtime_flags, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true4.land.lhs.true12_crit_edge

land.lhs.true4.land.lhs.true12_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true12

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  %23 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %task_setup to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %task_setup, align 4
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then7, %land.lhs.true4.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %28 = ptrtoint ptr %task_setup to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task_setup, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i77 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i77 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task15, align 8
  %cmp.not = icmp eq ptr %29, %33
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true12.do.end_crit_edge

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %runtime_flags16 = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %runtime_flags16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %runtime_flags16, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool18.not = icmp eq i32 %36, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true12.do.end_crit_edge
  %37 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disk.i, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.121) #17
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -16, ptr %err, align 4
  br label %put_socket

if.end21:                                         ; preds = %lor.lhs.false.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 116) #18
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -12, ptr %err, align 4
  br label %put_socket

if.end25:                                         ; preds = %if.end21
  %socks26 = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %socks26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socks26, align 8
  %num_connections = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_connections, align 4
  %add = shl i32 %47, 2
  %mul = add i32 %add, 4
  %call27 = call noalias ptr @krealloc(ptr noundef %45, i32 noundef %mul, i32 noundef 3264) #19
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %48 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -12, ptr %err, align 4
  br label %put_socket

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %socks26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call27, ptr %socks26, align 8
  %fallback_index = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %fallback_index to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %fallback_index, align 4
  %dead = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %dead, align 8
  %tx_lock = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.123, ptr noundef nonnull @nbd_add_socket.__key) #14
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %call7.i.i, align 8
  %pending = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %pending, align 8
  %sent = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %sent, align 4
  %cookie = getelementptr inbounds %struct.nbd_sock, ptr %call7.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cookie, align 8
  %56 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_connections, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %num_connections, align 4
  %arrayidx = getelementptr ptr, ptr %call27, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %live_connections = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %live_connections, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %live_connections, i32 1, i32 3, i32 1) #14
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %live_connections, ptr %live_connections, i32 1, ptr elementtype(i32) %live_connections) #14, !srcloc !541
  %60 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disk.i, align 4
  %queue38 = getelementptr inbounds %struct.gendisk, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %queue38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %queue38, align 4
  call void @blk_mq_unfreeze_queue(ptr noundef %63) #14
  br label %cleanup

put_socket:                                       ; preds = %if.then29, %if.then24, %do.end
  %64 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disk.i, align 4
  %queue40 = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue40, align 4
  call void @blk_mq_unfreeze_queue(ptr noundef %67) #14
  %file = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %69) #14
  %70 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_socket, %if.end30, %if.then
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %71, %put_socket ], [ %15, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbd_start_device(ptr noundef %nbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %num_connections2 = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_connections2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connections2, align 4
  %pid = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 12
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end:                                           ; preds = %entry
  %socks = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socks, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup59_crit_edge, label %if.end5

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.126) #17
  br label %cleanup59

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  tail call void @blk_mq_update_nr_hw_queues(ptr noundef %nbd, i32 noundef %3) #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i, align 8
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pid, align 4
  %21 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %and.i104 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i = icmp ne i32 %and.i104, 0
  %disk2.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %25 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disk2.i, align 4
  tail call void @set_disk_ro(ptr noundef %26, i1 noundef zeroext %tobool.not.i) #14
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 8
  %and4.i = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end8.if.end8.i_crit_edge, label %if.then6.i

if.end8.if.end8.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk2.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue.i, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %32) #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end8.if.end8.i_crit_edge
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %22, align 8
  %and10.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else23.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end8.i
  %and14.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %35 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %disk2.i, align 4
  %queue21.i = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %queue21.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue21.i, align 4
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_queue_write_cache(ptr noundef %38, i1 noundef zeroext true, i1 noundef zeroext true) #14
  br label %nbd_parse_flags.exit

if.else19.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_queue_write_cache(ptr noundef %38, i1 noundef zeroext true, i1 noundef zeroext false) #14
  br label %nbd_parse_flags.exit

if.else23.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disk2.i, align 4
  %queue25.i = getelementptr inbounds %struct.gendisk, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %queue25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue25.i, align 4
  tail call void @blk_queue_write_cache(ptr noundef %42, i1 noundef zeroext false, i1 noundef zeroext false) #14
  br label %nbd_parse_flags.exit

nbd_parse_flags.exit:                             ; preds = %if.else23.i, %if.else19.i, %if.then16.i
  %43 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disk2.i, align 4
  %part013 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %part013 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %part013, align 4
  %bd_device14 = getelementptr inbounds %struct.block_device, ptr %46, i32 0, i32 10
  %call15 = tail call i32 @device_create_file(ptr noundef %bd_device14, ptr noundef nonnull @pid_attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %nbd_parse_flags.exit
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disk2.i, align 4
  %part022 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part022 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part022, align 4
  %bd_device23 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device23, ptr noundef nonnull @.str.129) #17
  br label %cleanup59

if.end24:                                         ; preds = %nbd_parse_flags.exit
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags) #14
  %51 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config1, align 4
  %53 = load ptr, ptr @nbd_dbg_dir, align 4
  %tobool.not.i106 = icmp eq ptr %53, null
  br i1 %tobool.not.i106, label %if.end24.nbd_dev_dbg_init.exit_crit_edge, label %if.end.i

if.end24.nbd_dev_dbg_init.exit_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_dev_dbg_init.exit

if.end.i:                                         ; preds = %if.end24
  %54 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk2.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 3
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef %disk_name.i, ptr noundef nonnull %53) #14
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end8.i107

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disk2.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %59, i32 0, i32 10
  %disk_name6.i = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.133, ptr noundef %disk_name6.i) #17
  br label %nbd_dev_dbg_init.exit

if.end8.i107:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dbg_dir.i = getelementptr inbounds %struct.nbd_config, ptr %52, i32 0, i32 11
  %60 = ptrtoint ptr %dbg_dir.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %dbg_dir.i, align 8
  %call9.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.135, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %nbd, ptr noundef nonnull @nbd_dbg_tasks_fops) #14
  %bytesize.i = getelementptr inbounds %struct.nbd_config, ptr %52, i32 0, i32 10
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.136, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %bytesize.i) #14
  %timeout.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd, i32 0, i32 8
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.137, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %timeout.i) #14
  %blksize_bits.i = getelementptr inbounds %struct.nbd_config, ptr %52, i32 0, i32 9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.138, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %blksize_bits.i) #14
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.139, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %nbd, ptr noundef nonnull @nbd_dbg_flags_fops) #14
  br label %nbd_dev_dbg_init.exit

nbd_dev_dbg_init.exit:                            ; preds = %if.end8.i107, %do.end.i, %if.end24.nbd_dev_dbg_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26111 = icmp sgt i32 %3, 0
  br i1 %cmp26111, label %for.body.lr.ph, label %nbd_dev_dbg_init.exit.for.end_crit_edge

nbd_dev_dbg_init.exit.for.end_crit_edge:          ; preds = %nbd_dev_dbg_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %nbd_dev_dbg_init.exit
  %timeout = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd, i32 0, i32 8
  %recv_threads = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 7
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 2
  %recv_workq54 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %refcount_inc.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %refcount_inc.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 52) #18
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.then29, label %if.end33

if.then29:                                        ; preds = %for.body
  tail call fastcc void @sock_shutdown(ptr noundef %nbd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0112)
  %tobool30.not = icmp eq i32 %i.0112, 0
  br i1 %tobool30.not, label %if.then29.cleanup59_crit_edge, label %if.then31

if.then29.cleanup59_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %recv_workq54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %recv_workq54, align 4
  tail call void @flush_workqueue(ptr noundef %63) #14
  br label %cleanup59

if.end33:                                         ; preds = %for.body
  %64 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %socks, align 8
  %arrayidx = getelementptr ptr, ptr %65, i32 %i.0112
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sk, align 16
  tail call void @sk_set_memalloc(ptr noundef %71) #14
  %72 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool36.not = icmp eq i32 %73, 0
  br i1 %tobool36.not, label %if.end33.if.end44_crit_edge, label %if.then37

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %socks, align 8
  %arrayidx41 = getelementptr ptr, ptr %75, i32 %i.0112
  %76 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx41, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %sk43 = getelementptr inbounds %struct.socket, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %sk43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sk43, align 16
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 31
  %82 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %73, ptr %sk_sndtimeo, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end33.if.end44_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %recv_threads, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %recv_threads, i32 1, i32 3, i32 1) #14
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %recv_threads, ptr %recv_threads, i32 1, ptr elementtype(i32) %recv_threads) #14, !srcloc !541
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 1, ptr elementtype(i32) %config_refs) #14, !srcloc !539
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end44.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !532

if.end44.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end44
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !531

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end44.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end44.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #14
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.92, ptr noundef nonnull @nbd_start_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry49 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %entry49, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @recv_work, ptr %func, align 4
  %nbd53 = getelementptr inbounds %struct.recv_thread_args, ptr %call7.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %nbd53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %nbd, ptr %nbd53, align 4
  %index = getelementptr inbounds %struct.recv_thread_args, ptr %call7.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %i.0112, ptr %index, align 8
  %92 = ptrtoint ptr %recv_workq54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %recv_workq54, align 4
  %call.i108 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %93, ptr noundef nonnull %call7.i.i) #14
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %refcount_inc.exit.for.end_crit_edge, label %refcount_inc.exit.for.body_crit_edge

refcount_inc.exit.for.body_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

refcount_inc.exit.for.end_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %refcount_inc.exit.for.end_crit_edge, %nbd_dev_dbg_init.exit.for.end_crit_edge
  %bytesize = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 10
  %94 = ptrtoint ptr %bytesize to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bytesize, align 8
  %blksize_bits.i109 = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 9
  %96 = ptrtoint ptr %blksize_bits.i109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %blksize_bits.i109, align 8
  %shl.i = shl nuw i32 1, %97
  %conv = zext i32 %shl.i to i64
  %call58 = tail call fastcc i32 @nbd_set_size(ptr noundef %nbd, i64 noundef %95, i64 noundef %conv)
  br label %cleanup59

cleanup59:                                        ; preds = %for.end, %if.then31, %if.then29.cleanup59_crit_edge, %do.end20, %do.end, %if.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.2 = phi i32 [ %call15, %do.end20 ], [ %call58, %for.end ], [ -22, %do.end ], [ -16, %entry.cleanup59_crit_edge ], [ -22, %if.end.cleanup59_crit_edge ], [ -12, %if.then31 ], [ -12, %if.then29.cleanup59_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_strdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_config_put(ptr noundef %nbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 2
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 5
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %config_refs, ptr noundef %config_lock) #14
  br i1 %call, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then:                                          ; preds = %entry
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %dbg_dir.i = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dbg_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %3) #14
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  tail call void @invalidate_disk(ptr noundef %5) #14
  %6 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config1, align 4
  %bytesize = getelementptr inbounds %struct.nbd_config, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %bytesize to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  %call5 = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 2) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %runtime_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void @device_remove_file(ptr noundef %bd_device, ptr noundef nonnull @pid_attr) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %pid = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 12
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pid, align 4
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %runtime_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end19_crit_edge, label %if.then14

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 10
  tail call void @device_remove_file(ptr noundef %bd_device17, ptr noundef nonnull @backend_attr) #14
  %backend = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 13
  %23 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %backend, align 4
  tail call void @kfree(ptr noundef %24) #14
  %25 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %backend, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end10.if.end19_crit_edge
  tail call fastcc void @sock_shutdown(ptr noundef %nbd) #14
  %26 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk, align 4
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue.i.i, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %29) #14
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %nbd, ptr noundef nonnull @nbd_clear_req, ptr noundef null) #14
  %30 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk, align 4
  %queue2.i.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %queue2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue2.i.i, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %33) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_clear_que.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_config_put, %if.then.i.i)) #14
          to label %nbd_clear_sock.exit [label %if.then.i.i], !srcloc !542

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_clear_que.__UNIQUE_ID_ddebug538, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.115) #14
  br label %nbd_clear_sock.exit

nbd_clear_sock.exit:                              ; preds = %if.then.i.i, %if.end19
  %task_setup.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 10
  %38 = ptrtoint ptr %task_setup.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %task_setup.i, align 4
  %num_connections = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool20.not = icmp eq i32 %40, 0
  br i1 %tobool20.not, label %nbd_clear_sock.exit.if.end26_crit_edge, label %for.cond.preheader

nbd_clear_sock.exit.if.end26_crit_edge:           ; preds = %nbd_clear_sock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

for.cond.preheader:                               ; preds = %nbd_clear_sock.exit
  %41 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp69 = icmp sgt i32 %42, 0
  br i1 %cmp69, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %socks = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %43 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %socks, align 8
  %arrayidx = getelementptr ptr, ptr %44, i32 %i.070
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %file = getelementptr inbounds %struct.socket, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %50) #14
  %51 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %socks, align 8
  %arrayidx24 = getelementptr ptr, ptr %52, i32 %i.070
  %53 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx24, align 4
  tail call void @kfree(ptr noundef %54) #14
  %inc = add nuw nsw i32 %i.070, 1
  %55 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_connections, align 4
  %cmp = icmp slt i32 %inc, %56
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %socks25 = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %socks25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %socks25, align 8
  tail call void @kfree(ptr noundef %58) #14
  br label %if.end26

if.end26:                                         ; preds = %for.end, %nbd_clear_sock.exit.if.end26_crit_edge
  %59 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config1, align 4
  tail call void @kfree(ptr noundef %60) #14
  %61 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %config1, align 4
  %timeout = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd, i32 0, i32 8
  %62 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %timeout, align 4
  %63 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %66, i32 0, i32 37, i32 18
  %67 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %discard_granularity, align 4
  %68 = load ptr, ptr %disk, align 4
  %queue31 = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %queue31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue31, align 4
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %70, i32 0, i32 37, i32 19
  %71 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %discard_alignment, align 4
  %72 = load ptr, ptr %disk, align 4
  %queue34 = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %queue34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue34, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %74, i32 noundef -1) #14
  %75 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disk, align 4
  %queue36 = getelementptr inbounds %struct.gendisk, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %queue36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue36, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %78) #14
  tail call void @mutex_unlock(ptr noundef %config_lock) #14
  tail call fastcc void @nbd_put(ptr noundef %nbd)
  tail call void @module_put(ptr noundef null) #14
  br label %if.end38

if.end38:                                         ; preds = %if.end26, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbd_dev_remove_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -300
  %disk1.i = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %disk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1.i, align 4
  tail call void @del_gendisk(ptr noundef %1) #14
  tail call void @blk_cleanup_disk(ptr noundef %1) #14
  tail call void @blk_mq_free_tag_set(ptr noundef %add.ptr) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %index.i = getelementptr i8, ptr %work, i32 -116
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @nbd_index_idr, i32 noundef %3) #14
  tail call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  %recv_workq.i = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %recv_workq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_workq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nbd_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %lock = getelementptr %struct.request, ptr %1, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %flags = getelementptr %struct.request, ptr %1, i32 1, i32 23
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %2 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_num, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %config_refs.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %config_refs.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %config_refs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %config_refs.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %8 = phi i32 [ %7, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %config_refs.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs.i, ptr %config_refs.i, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %config_refs.i) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !531

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs.i, i32 noundef 0) #14
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.not.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @nbd_handle_cmd._rs, ptr noundef nonnull @__func__.nbd_handle_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i.nbd_handle_cmd.exit.thread_crit_edge, label %do.end.i

do.body.i.nbd_handle_cmd.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_handle_cmd.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.54) #17
  br label %nbd_handle_cmd.exit.thread

if.end8.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  %config9.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %config9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config9.i, align 4
  %num_connections.i = getelementptr inbounds %struct.nbd_config, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_connections.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_connections.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %3)
  %cmp.not.i = icmp sgt i32 %25, %3
  br i1 %cmp.not.i, label %if.end24.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.end8.i
  %call12.i = call i32 @___ratelimit(ptr noundef nonnull @nbd_handle_cmd._rs.55, ptr noundef nonnull @__func__.nbd_handle_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.do.end23.i_crit_edge, label %do.end17.i

do.body11.i.do.end23.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23.i

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  %disk18.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 6
  %26 = ptrtoint ptr %disk18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk18.i, align 4
  %part019.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %part019.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part019.i, align 4
  %bd_device20.i = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device20.i, ptr noundef nonnull @.str.57) #17
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end17.i, %do.body11.i.do.end23.i_crit_edge
  call fastcc void @nbd_config_put(ptr noundef %5) #14
  br label %nbd_handle_cmd.exit.thread

if.end24.i:                                       ; preds = %if.end8.i
  %status.i = getelementptr %struct.request, ptr %1, i32 1, i32 22
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %status.i, align 4
  %socks.i = getelementptr inbounds %struct.nbd_config, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %socks.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socks.i, align 8
  %arrayidx129.i = getelementptr ptr, ptr %32, i32 %3
  %33 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx129.i, align 4
  %tx_lock130.i = getelementptr inbounds %struct.nbd_sock, ptr %34, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock130.i, i32 noundef 0) #14
  %dead131.i = getelementptr inbounds %struct.nbd_sock, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dead131.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dead131.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool25.not132.i = icmp eq i8 %36, 0
  br i1 %tobool25.not132.i, label %if.end24.i.if.end36.i_crit_edge, label %if.then26.lr.ph.i

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then26.lr.ph.i:                                ; preds = %if.end24.i
  %disk53.i.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 6
  br label %if.then26.i

if.then26.i:                                      ; preds = %cleanup.i.if.then26.i_crit_edge, %if.then26.lr.ph.i
  %tx_lock134.i = phi ptr [ %tx_lock130.i, %if.then26.lr.ph.i ], [ %tx_lock.i, %cleanup.i.if.then26.i_crit_edge ]
  %index.addr.0133.i = phi i32 [ %3, %if.then26.lr.ph.i ], [ %index.addr.1.i, %cleanup.i.if.then26.i_crit_edge ]
  %37 = ptrtoint ptr %config9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config9.i, align 4
  %socks.i.i = getelementptr inbounds %struct.nbd_config, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %socks.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %socks.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %40, i32 %index.addr.0133.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %fallback_index.i.i = getelementptr inbounds %struct.nbd_sock, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %fallback_index.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fallback_index.i.i, align 4
  %runtime_flags.i.i = getelementptr inbounds %struct.nbd_config, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %runtime_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %runtime_flags.i.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then26.i.if.then30.i_crit_edge

if.then26.i.if.then30.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i

if.end.i.i:                                       ; preds = %if.then26.i
  %num_connections.i.i = getelementptr inbounds %struct.nbd_config, ptr %38, i32 0, i32 4
  %48 = ptrtoint ptr %num_connections.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_connections.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i.i = icmp slt i32 %49, 2
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end10.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @find_fallback._rs, ptr noundef nonnull @__func__.find_fallback) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.then30.i_crit_edge, label %do.body.i.i.find_fallback.exit.thread.sink.split.i_crit_edge

do.body.i.i.find_fallback.exit.thread.sink.split.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_fallback.exit.thread.sink.split.i

do.body.i.i.if.then30.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp11.i.i = icmp sgt i32 %44, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %49)
  %cmp13.i.i = icmp slt i32 %44, %49
  %or.cond.i.i = select i1 %cmp11.i.i, i1 %cmp13.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true14.i.i, label %if.end19.i.i

land.lhs.true14.i.i:                              ; preds = %if.end10.i.i
  %arrayidx16.i.i = getelementptr ptr, ptr %40, i32 %44
  %50 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx16.i.i, align 4
  %dead.i.i = getelementptr inbounds %struct.nbd_sock, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %dead.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dead.i.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool17.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true14.i.i.cleanup.i.sink.split_crit_edge, label %land.lhs.true14.i.i.lor.lhs.false25.i.i_crit_edge

land.lhs.true14.i.i.lor.lhs.false25.i.i_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false25.i.i

land.lhs.true14.i.i.cleanup.i.sink.split_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.sink.split

if.end19.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp21.i.i = icmp slt i32 %44, 0
  %cmp13.not.i.i = xor i1 %cmp13.i.i, true
  %brmerge.i.i = select i1 %cmp21.i.i, i1 true, i1 %cmp13.not.i.i
  br i1 %brmerge.i.i, label %if.end19.i.i.for.body.i.i.preheader_crit_edge, label %if.end19.i.i.lor.lhs.false25.i.i_crit_edge

if.end19.i.i.lor.lhs.false25.i.i_crit_edge:       ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false25.i.i

if.end19.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.preheader

lor.lhs.false25.i.i:                              ; preds = %if.end19.i.i.lor.lhs.false25.i.i_crit_edge, %land.lhs.true14.i.i.lor.lhs.false25.i.i_crit_edge
  %arrayidx28.i.i = getelementptr ptr, ptr %40, i32 %44
  %54 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx28.i.i, align 4
  %dead29.i.i = getelementptr inbounds %struct.nbd_sock, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %dead29.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dead29.i.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool30.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool30.not.i.i, label %lor.lhs.false25.i.i.cleanup.i.sink.split_crit_edge, label %lor.lhs.false25.i.i.for.body.i.i.preheader_crit_edge

lor.lhs.false25.i.i.for.body.i.i.preheader_crit_edge: ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.preheader

lor.lhs.false25.i.i.cleanup.i.sink.split_crit_edge: ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.sink.split

for.body.i.i.preheader:                           ; preds = %lor.lhs.false25.i.i.for.body.i.i.preheader_crit_edge, %if.end19.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.0103.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0103.i.i, i32 %index.addr.0133.i)
  %cmp34.i.i = icmp eq i32 %i.0103.i.i, %index.addr.0133.i
  br i1 %cmp34.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end36.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end36.i.i:                                     ; preds = %for.body.i.i
  %arrayidx38.i.i = getelementptr ptr, ptr %40, i32 %i.0103.i.i
  %58 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx38.i.i, align 4
  %dead39.i.i = getelementptr inbounds %struct.nbd_sock, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %dead39.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dead39.i.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool40.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool40.not.i.i, label %find_fallback.exit.thread118.i, label %if.end36.i.i.for.inc.i.i_crit_edge

if.end36.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end36.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0103.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %49
  br i1 %exitcond.not.i.i, label %do.body46.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

find_fallback.exit.thread118.i:                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %fallback_index.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.0103.i.i, ptr %fallback_index.i.i, align 4
  br label %cleanup.i.sink.split

do.body46.i.i:                                    ; preds = %for.inc.i.i
  %63 = ptrtoint ptr %fallback_index.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %fallback_index.i.i, align 4
  %call47.i.i = call i32 @___ratelimit(ptr noundef nonnull @find_fallback._rs.64, ptr noundef nonnull @__func__.find_fallback) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %do.body46.i.i.if.then30.i_crit_edge, label %do.body46.i.i.find_fallback.exit.thread.sink.split.i_crit_edge

do.body46.i.i.find_fallback.exit.thread.sink.split.i_crit_edge: ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_fallback.exit.thread.sink.split.i

do.body46.i.i.if.then30.i_crit_edge:              ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i

find_fallback.exit.thread.sink.split.i:           ; preds = %do.body46.i.i.find_fallback.exit.thread.sink.split.i_crit_edge, %do.body.i.i.find_fallback.exit.thread.sink.split.i_crit_edge
  %64 = ptrtoint ptr %disk53.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disk53.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %67, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.63) #17
  br label %if.then30.i

if.then30.i:                                      ; preds = %find_fallback.exit.thread.sink.split.i, %do.body46.i.i.if.then30.i_crit_edge, %do.body.i.i.if.then30.i_crit_edge, %if.then26.i.if.then30.i_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock134.i) #14
  %68 = ptrtoint ptr %config9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config9.i, align 4
  %dead_conn_timeout.i.i = getelementptr inbounds %struct.nbd_config, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dead_conn_timeout.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dead_conn_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool.not.i104.i = icmp eq i64 %71, 0
  br i1 %tobool.not.i104.i, label %if.then30.i.cleanup.thread.i_crit_edge, label %if.end.i106.i

if.then30.i.cleanup.thread.i_crit_edge:           ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end.i106.i:                                    ; preds = %if.then30.i
  %runtime_flags.i105.i = getelementptr inbounds %struct.nbd_config, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %runtime_flags.i105.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %runtime_flags.i105.i, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool2.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i106.i.cleanup.thread.i_crit_edge

if.end.i106.i.cleanup.thread.i_crit_edge:         ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end4.i.i:                                      ; preds = %if.end.i106.i
  %conv.i.i = trunc i64 %71 to i32
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 954) #14
  %live_connections.i.i = getelementptr inbounds %struct.nbd_config, ptr %69, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %live_connections.i.i, i32 noundef 4) #14
  %75 = ptrtoint ptr %live_connections.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %live_connections.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i107.i = icmp sgt i32 %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool13.not.i.i = icmp eq i32 %conv.i.i, 0
  %77 = select i1 %cmp.i107.i, i1 %tobool13.not.i.i, i1 false
  %__ret.0.i.i = select i1 %77, i32 1, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i.i)
  %tobool18.not.i.i = icmp eq i32 %__ret.0.i.i, 0
  %78 = select i1 %cmp.i107.i, i1 true, i1 %tobool18.not.i.i
  br i1 %78, label %if.end4.i.i.wait_for_reconnect.exit.i_crit_edge, label %if.then20.i.i

if.end4.i.i.wait_for_reconnect.exit.i_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait_for_reconnect.exit.i

if.then20.i.i:                                    ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  %79 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  %80 = ptrtoint ptr %dead_conn_timeout.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %dead_conn_timeout.i.i, align 8
  %conv23.i.i = trunc i64 %81 to i32
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #14
  %conn_wait.i.i = getelementptr inbounds %struct.nbd_config, ptr %69, i32 0, i32 6
  %call2476.i.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #14
  %call.i.i7177.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %live_connections.i.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %live_connections.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %live_connections.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp2878.i.i = icmp sgt i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i.i)
  %tobool34.not79.i.i = icmp eq i32 %conv23.i.i, 0
  %84 = select i1 %cmp2878.i.i, i1 %tobool34.not79.i.i, i1 false
  %__ret21.180.i.i = select i1 %84, i32 1, i32 %conv23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.180.i.i)
  %tobool41.not81.i.i = icmp eq i32 %__ret21.180.i.i, 0
  %85 = select i1 %cmp2878.i.i, i1 true, i1 %tobool41.not81.i.i
  br i1 %85, label %if.then20.i.i.for.end.i108.i_crit_edge, label %if.then20.i.i.cleanup.i.i_crit_edge

if.then20.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then20.i.i
  br label %cleanup.i.i

if.then20.i.i.for.end.i108.i_crit_edge:           ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i108.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then20.i.i.cleanup.i.i_crit_edge
  %__ret21.182.i.i = phi i32 [ %__ret21.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ %__ret21.180.i.i, %if.then20.i.i.cleanup.i.i_crit_edge ]
  %call48.i.i = call i32 @schedule_timeout(i32 noundef %__ret21.182.i.i) #14
  %call24.i.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #14
  %call.i.i71.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %live_connections.i.i, i32 noundef 4) #14
  %86 = ptrtoint ptr %live_connections.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %live_connections.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp28.i.i = icmp sgt i32 %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool34.not.i.i = icmp eq i32 %call48.i.i, 0
  %88 = select i1 %cmp28.i.i, i1 %tobool34.not.i.i, i1 false
  %__ret21.1.i.i = select i1 %88, i32 1, i32 %call48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1.i.i)
  %tobool41.not.i.i = icmp eq i32 %__ret21.1.i.i, 0
  %89 = select i1 %cmp28.i.i, i1 true, i1 %tobool41.not.i.i
  br i1 %89, label %cleanup.i.i.for.end.i108.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

cleanup.i.i.for.end.i108.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i108.i

for.end.i108.i:                                   ; preds = %cleanup.i.i.for.end.i108.i_crit_edge, %if.then20.i.i.for.end.i108.i_crit_edge
  %__ret21.1.lcssa.i.i = phi i32 [ %__ret21.180.i.i, %if.then20.i.i.for.end.i108.i_crit_edge ], [ %__ret21.1.i.i, %cleanup.i.i.for.end.i108.i_crit_edge ]
  call void @finish_wait(ptr noundef %conn_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  br label %wait_for_reconnect.exit.i

wait_for_reconnect.exit.i:                        ; preds = %for.end.i108.i, %if.end4.i.i.wait_for_reconnect.exit.i_crit_edge
  %__ret.1.i.i = phi i32 [ %__ret.0.i.i, %if.end4.i.i.wait_for_reconnect.exit.i_crit_edge ], [ %__ret21.1.lcssa.i.i, %for.end.i108.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1.i.i)
  %cmp53.i.i = icmp slt i32 %__ret.1.i.i, 1
  br i1 %cmp53.i.i, label %wait_for_reconnect.exit.i.cleanup.thread.i_crit_edge, label %wait_for_reconnect.exit.i.cleanup.i_crit_edge

wait_for_reconnect.exit.i.cleanup.i_crit_edge:    ; preds = %wait_for_reconnect.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

wait_for_reconnect.exit.i.cleanup.thread.i_crit_edge: ; preds = %wait_for_reconnect.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %wait_for_reconnect.exit.i.cleanup.thread.i_crit_edge, %if.end.i106.i.cleanup.thread.i_crit_edge, %if.then30.i.cleanup.thread.i_crit_edge
  call fastcc void @sock_shutdown(ptr noundef %5) #14
  call fastcc void @nbd_config_put(ptr noundef %5) #14
  br label %nbd_handle_cmd.exit.thread

cleanup.i.sink.split:                             ; preds = %find_fallback.exit.thread118.i, %lor.lhs.false25.i.i.cleanup.i.sink.split_crit_edge, %land.lhs.true14.i.i.cleanup.i.sink.split_crit_edge
  %index.addr.1.i.ph = phi i32 [ %44, %lor.lhs.false25.i.i.cleanup.i.sink.split_crit_edge ], [ %i.0103.i.i, %find_fallback.exit.thread118.i ], [ %44, %land.lhs.true14.i.i.cleanup.i.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %tx_lock134.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.sink.split, %wait_for_reconnect.exit.i.cleanup.i_crit_edge
  %index.addr.1.i = phi i32 [ %index.addr.0133.i, %wait_for_reconnect.exit.i.cleanup.i_crit_edge ], [ %index.addr.1.i.ph, %cleanup.i.sink.split ]
  %90 = ptrtoint ptr %socks.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %socks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %91, i32 %index.addr.1.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.nbd_sock, ptr %93, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #14
  %dead.i = getelementptr inbounds %struct.nbd_sock, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dead.i, align 4, !range !540
  %tobool25.not.i = icmp eq i8 %95, 0
  br i1 %tobool25.not.i, label %cleanup.i.if.end36.i_crit_edge, label %cleanup.i.if.then26.i_crit_edge

cleanup.i.if.then26.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26.i

cleanup.i.if.end36.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.end36.i:                                       ; preds = %cleanup.i.if.end36.i_crit_edge, %if.end24.i.if.end36.i_crit_edge
  %index.addr.0.lcssa.i = phi i32 [ %3, %if.end24.i.if.end36.i_crit_edge ], [ %index.addr.1.i, %cleanup.i.if.end36.i_crit_edge ]
  %.lcssa.i = phi ptr [ %34, %if.end24.i.if.end36.i_crit_edge ], [ %93, %cleanup.i.if.end36.i_crit_edge ]
  %tx_lock.lcssa.i = phi ptr [ %tx_lock130.i, %if.end24.i.if.end36.i_crit_edge ], [ %tx_lock.i, %cleanup.i.if.end36.i_crit_edge ]
  call void @blk_mq_start_request(ptr noundef %1) #14
  %pending.i = getelementptr inbounds %struct.nbd_sock, ptr %.lcssa.i, i32 0, i32 2
  %96 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pending.i, align 4
  %tobool37.not.i = icmp ne ptr %97, null
  %cmp39.i = icmp ne ptr %97, %1
  %spec.select.i = and i1 %tobool37.not.i, %cmp39.i
  br i1 %spec.select.i, label %if.then42.i, label %if.end43.i, !prof !532

if.then42.i:                                      ; preds = %if.end36.i
  %call1.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i11 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i11, label %if.then.i, label %if.then42.i.nbd_handle_cmd.exit_crit_edge

if.then42.i.nbd_handle_cmd.exit_crit_edge:        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_handle_cmd.exit

if.then.i:                                        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #14
  br label %nbd_handle_cmd.exit

if.end43.i:                                       ; preds = %if.end36.i
  %call44.i = call fastcc i32 @nbd_send_cmd(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %index.addr.0.lcssa.i) #14
  %98 = zext i32 %call44.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call44.i, label %if.end43.i.nbd_handle_cmd.exit_crit_edge [
    i32 0, label %if.then46.i
    i32 -11, label %do.body49.i
  ]

if.end43.i.nbd_handle_cmd.exit_crit_edge:         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_handle_cmd.exit

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %or.i.i = or i32 %100, 4
  store i32 %or.i.i, ptr %flags, align 4
  br label %nbd_handle_cmd.exit

do.body49.i:                                      ; preds = %if.end43.i
  %call50.i = call i32 @___ratelimit(ptr noundef nonnull @nbd_handle_cmd._rs.59, ptr noundef nonnull @__func__.nbd_handle_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %do.body49.i.do.end61.i_crit_edge, label %do.end55.i

do.body49.i.do.end61.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end61.i

do.end55.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #16
  %disk56.i = getelementptr inbounds %struct.nbd_device, ptr %5, i32 0, i32 6
  %101 = ptrtoint ptr %disk56.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %disk56.i, align 4
  %part057.i = getelementptr inbounds %struct.gendisk, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %part057.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %part057.i, align 4
  %bd_device58.i = getelementptr inbounds %struct.block_device, ptr %104, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device58.i, ptr noundef nonnull @.str.61) #17
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end55.i, %do.body49.i.do.end61.i_crit_edge
  call fastcc void @nbd_mark_nsock_dead(ptr noundef %5, ptr noundef %.lcssa.i, i32 noundef 1) #14
  %call1.i.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i109.i, label %if.then.i.i, label %do.end61.i.nbd_handle_cmd.exit_crit_edge

do.end61.i.nbd_handle_cmd.exit_crit_edge:         ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_handle_cmd.exit

if.then.i.i:                                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #14
  br label %nbd_handle_cmd.exit

nbd_handle_cmd.exit:                              ; preds = %if.then.i.i, %do.end61.i.nbd_handle_cmd.exit_crit_edge, %if.then46.i, %if.end43.i.nbd_handle_cmd.exit_crit_edge, %if.then.i, %if.then42.i.nbd_handle_cmd.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then46.i ], [ %call44.i, %if.end43.i.nbd_handle_cmd.exit_crit_edge ], [ 0, %do.end61.i.nbd_handle_cmd.exit_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.then42.i.nbd_handle_cmd.exit_crit_edge ], [ 0, %if.then.i ]
  call void @mutex_unlock(ptr noundef %tx_lock.lcssa.i) #14
  call fastcc void @nbd_config_put(ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  %phi.cast = trunc i32 %ret.0.i to i8
  br i1 %cmp, label %nbd_handle_cmd.exit.nbd_handle_cmd.exit.thread_crit_edge, label %nbd_handle_cmd.exit._crit_edge

nbd_handle_cmd.exit._crit_edge:                   ; preds = %nbd_handle_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %105

nbd_handle_cmd.exit.nbd_handle_cmd.exit.thread_crit_edge: ; preds = %nbd_handle_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_handle_cmd.exit.thread

nbd_handle_cmd.exit.thread:                       ; preds = %nbd_handle_cmd.exit.nbd_handle_cmd.exit.thread_crit_edge, %cleanup.thread.i, %do.end23.i, %do.end.i, %do.body.i.nbd_handle_cmd.exit.thread_crit_edge
  br label %105

105:                                              ; preds = %nbd_handle_cmd.exit.thread, %nbd_handle_cmd.exit._crit_edge
  %106 = phi i8 [ 10, %nbd_handle_cmd.exit.thread ], [ %phi.cast, %nbd_handle_cmd.exit._crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #14
  ret i8 %106
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_xmit_timeout(ptr noundef %req, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr %struct.request, ptr %req, i32 1, i32 1
  %call2 = tail call i32 @mutex_trylock(ptr noundef %lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup85

if.end:                                           ; preds = %entry
  %flags = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, -5
  store i32 %and.i, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup85

if.end7:                                          ; preds = %if.end
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %5 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %config_refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end7
  %7 = phi i32 [ %6, %if.end7 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 %10, i32 %add.i.i.i, ptr elementtype(i32) %config_refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !531

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef 0) #14
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %status, align 4
  call void @mutex_unlock(ptr noundef %lock) #14
  br label %done

if.end11:                                         ; preds = %refcount_inc_not_zero.exit
  %config12 = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %config12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config12, align 4
  %num_connections = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %if.end11.do.body_crit_edge, label %lor.lhs.false

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp14 = icmp eq i32 %21, 1
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %timeout = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end11.do.body_crit_edge
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @nbd_xmit_timeout._rs, ptr noundef nonnull @__func__.nbd_xmit_timeout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body.do.end26_crit_edge, label %do.end

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 10
  %live_connections = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %live_connections, i32 noundef 4) #14
  %28 = ptrtoint ptr %live_connections to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %live_connections, align 4
  %30 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_connections, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.97, i32 noundef %29, i32 noundef %31) #17
  br label %do.end26

do.end26:                                         ; preds = %do.end, %do.body.do.end26_crit_edge
  %socks = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socks, align 8
  %tobool27.not = icmp eq ptr %33, null
  br i1 %tobool27.not, label %do.end26.if.end42_crit_edge, label %if.then28

do.end26.if.end42_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then28:                                        ; preds = %do.end26
  %index = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %36 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp30 = icmp slt i32 %35, %37
  br i1 %cmp30, label %if.then31, label %if.then28.if.end39_crit_edge

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then31:                                        ; preds = %if.then28
  %arrayidx = getelementptr ptr, ptr %33, i32 %35
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tx_lock = getelementptr inbounds %struct.nbd_sock, ptr %39, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #14
  %cookie = getelementptr %struct.request, ptr %req, i32 1, i32 19
  %40 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cookie, align 4
  %cookie34 = getelementptr inbounds %struct.nbd_sock, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %cookie34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cookie34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp35 = icmp eq i32 %41, %43
  br i1 %cmp35, label %if.then36, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nbd_mark_nsock_dead(ptr noundef %1, ptr noundef %39, i32 noundef 1)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then31.if.end37_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock) #14
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.then28.if.end39_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #14
  %call1.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end39.nbd_requeue_cmd.exit_crit_edge

if.end39.nbd_requeue_cmd.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_requeue_cmd.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_mq_requeue_request(ptr noundef %req, i1 noundef zeroext true) #14
  br label %nbd_requeue_cmd.exit

nbd_requeue_cmd.exit:                             ; preds = %if.then.i, %if.end39.nbd_requeue_cmd.exit_crit_edge
  call fastcc void @nbd_config_put(ptr noundef %1)
  br label %cleanup85

if.end42:                                         ; preds = %do.end26.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %timeout44 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %timeout44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timeout44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool45.not = icmp eq i32 %45, 0
  br i1 %tobool45.not, label %if.then46, label %do.body72

if.then46:                                        ; preds = %if.end42
  %socks48 = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 3
  %46 = ptrtoint ptr %socks48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %socks48, align 8
  %index49 = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %48 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index49, align 4
  %arrayidx50 = getelementptr ptr, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx50, align 4
  %retries = getelementptr %struct.request, ptr %req, i32 1, i32 21
  %52 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retries, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %retries, align 4
  %disk.i141 = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %disk.i141 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk.i141, align 4
  %part0.i142 = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part0.i142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part0.i142, align 4
  %bd_device.i143 = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %58 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_flags.i, align 4
  %60 = and i32 %59, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %switch.lookup, label %if.then46.nbdcmd_to_ascii.exit_crit_edge

if.then46.nbdcmd_to_ascii.exit_crit_edge:         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbdcmd_to_ascii.exit

switch.lookup:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  %sext = shl i32 %59, 24
  %62 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.nbd_xmit_timeout, i32 0, i32 %62
  %63 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nbdcmd_to_ascii.exit

nbdcmd_to_ascii.exit:                             ; preds = %switch.lookup, %if.then46.nbdcmd_to_ascii.exit_crit_edge
  %retval.0.i147 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.88, %if.then46.nbdcmd_to_ascii.exit_crit_edge ]
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %64 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %__sector.i, align 8
  %shl = shl i64 %65, 9
  %__data_len.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %66 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %__data_len.i, align 8
  %timeout59 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 7
  %68 = ptrtoint ptr %timeout59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %timeout59, align 4
  %div = udiv i32 %69, 100
  %mul = mul i32 %div, %inc
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device.i143, ptr noundef nonnull @.str.99, ptr noundef %req, ptr noundef nonnull %retval.0.i147, i64 noundef %shl, i32 noundef %67, i32 noundef %mul) #17
  %tx_lock61 = getelementptr inbounds %struct.nbd_sock, ptr %51, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock61, i32 noundef 0) #14
  %cookie62 = getelementptr %struct.request, ptr %req, i32 1, i32 19
  %70 = ptrtoint ptr %cookie62 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cookie62, align 4
  %cookie63 = getelementptr inbounds %struct.nbd_sock, ptr %51, i32 0, i32 6
  %72 = ptrtoint ptr %cookie63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cookie63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp64.not = icmp eq i32 %71, %73
  br i1 %cmp64.not, label %if.end68, label %if.then65

if.then65:                                        ; preds = %nbdcmd_to_ascii.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nbd_requeue_cmd(ptr noundef %add.ptr.i)
  call void @mutex_unlock(ptr noundef %tx_lock61) #14
  call void @mutex_unlock(ptr noundef %lock) #14
  call fastcc void @nbd_config_put(ptr noundef %1)
  br label %cleanup85

if.end68:                                         ; preds = %nbdcmd_to_ascii.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %tx_lock61) #14
  call void @mutex_unlock(ptr noundef %lock) #14
  call fastcc void @nbd_config_put(ptr noundef %1)
  br label %cleanup85

do.body72:                                        ; preds = %if.end42
  %call73 = call i32 @___ratelimit(ptr noundef nonnull @nbd_xmit_timeout._rs.101, ptr noundef nonnull @__func__.nbd_xmit_timeout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body72.do.end82_crit_edge, label %do.end78

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

do.end78:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i148 = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %disk.i148 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %disk.i148, align 4
  %part0.i149 = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %part0.i149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %part0.i149, align 4
  %bd_device.i150 = getelementptr inbounds %struct.block_device, ptr %77, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i150, ptr noundef nonnull @.str.103) #17
  br label %do.end82

do.end82:                                         ; preds = %do.end78, %do.body72.do.end82_crit_edge
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 1
  call void @_set_bit(i32 noundef 0, ptr noundef %runtime_flags) #14
  %status83 = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %78 = ptrtoint ptr %status83 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 10, ptr %status83, align 4
  call void @mutex_unlock(ptr noundef %lock) #14
  call fastcc void @sock_shutdown(ptr noundef %1)
  call fastcc void @nbd_config_put(ptr noundef %1)
  br label %done

done:                                             ; preds = %do.end82, %if.then9
  call void @blk_mq_complete_request(ptr noundef %req) #14
  br label %cleanup85

cleanup85:                                        ; preds = %done, %if.end68, %if.then65, %nbd_requeue_cmd.exit, %if.then5, %entry.cleanup85_crit_edge
  %retval.1 = phi i32 [ 0, %nbd_requeue_cmd.exit ], [ 0, %done ], [ 0, %if.then5 ], [ 1, %entry.cleanup85_crit_edge ], [ 0, %if.then65 ], [ 1, %if.end68 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbd_complete_rq(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_complete_rq.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_complete_rq, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  %status = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool5.not, ptr @.str.108, ptr @.str.107
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_complete_rq.__UNIQUE_ID_ddebug525, ptr noundef %bd_device.i, ptr noundef nonnull @.str.106, ptr noundef %req, ptr noundef nonnull %cond) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status6 = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %8 = ptrtoint ptr %status6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status6, align 4
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_init_request(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %add.ptr.i, align 4
  %flags = getelementptr %struct.request, ptr %rq, i32 1, i32 23
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %lock = getelementptr %struct.request, ptr %rq, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.109, ptr noundef nonnull @nbd_init_request.__key) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_shutdown(ptr nocapture noundef readonly %nbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %num_connections = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %runtime_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp517 = icmp sgt i32 %5, 0
  br i1 %cmp517, label %for.body.lr.ph, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %socks = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socks, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.018
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tx_lock = getelementptr inbounds %struct.nbd_sock, ptr %9, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #14
  tail call fastcc void @nbd_mark_nsock_dead(ptr noundef %nbd, ptr noundef %9, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %tx_lock) #14
  %inc = add nuw nsw i32 %i.018, 1
  %10 = ptrtoint ptr %num_connections to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_connections, align 4
  %cmp5 = icmp slt i32 %inc, %11
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end:                                           ; preds = %for.body.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %12 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %bd_device, ptr noundef nonnull @.str.67) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_requeue_cmd(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 6
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %cmd, i32 -192
  tail call void @blk_mq_requeue_request(ptr noundef %add.ptr.i, i1 noundef zeroext true) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbd_send_cmd(ptr nocapture noundef readonly %nbd, ptr noundef %cmd, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.nbd_request, align 1
  %iov = alloca %struct.kvec, align 4
  %from = alloca %struct.iov_iter, align 8
  %sent = alloca i32, align 4
  %bvec = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cmd, i32 -192
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %socks = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socks, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %request) #14
  %6 = call ptr @memcpy(ptr %request, ptr @__const.nbd_send_cmd.request, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #14
  %7 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %8 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request, ptr %iov, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 28, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #14
  %10 = call ptr @memset(ptr %from, i32 255, i32 24)
  %__data_len.i = getelementptr i8, ptr %cmd, i32 -160
  %11 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__data_len.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #14
  %sent3 = getelementptr inbounds %struct.nbd_sock, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %sent3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sent3, align 4
  %15 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sent, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %from, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef 28) #14
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %16 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_flags.i, align 4
  %trunc.i = trunc i32 %17 to i8
  %18 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %trunc.i, label %entry.cleanup204_crit_edge [
    i8 3, label %entry.if.end_crit_edge
    i8 2, label %sw.bb1.i
    i8 1, label %sw.bb2.i
    i8 0, label %sw.bb3.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.cleanup204_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup204

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %cmp34.not = phi i1 [ false, %sw.bb3.i ], [ false, %sw.bb2.i ], [ true, %sw.bb1.i ], [ false, %entry.if.end_crit_edge ]
  %cmp58 = phi i32 [ 0, %sw.bb3.i ], [ 32768, %sw.bb2.i ], [ 0, %sw.bb1.i ], [ 0, %entry.if.end_crit_edge ]
  %cmp88.not = phi i1 [ false, %sw.bb3.i ], [ true, %sw.bb2.i ], [ false, %sw.bb1.i ], [ false, %entry.if.end_crit_edge ]
  %retval.0.i295.ph = phi i32 [ 0, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 4, %entry.if.end_crit_edge ]
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 8
  %and7 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end16_crit_edge, label %do.body

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.body:                                          ; preds = %land.lhs.true
  %call9 = call i32 @___ratelimit(ptr noundef nonnull @nbd_send_cmd._rs, ptr noundef nonnull @__func__.nbd_send_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.cleanup204_crit_edge, label %do.end

do.body.cleanup204_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup204

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %21 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.70) #17
  br label %cleanup204

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %25 = lshr i32 %17, 1
  %26 = and i32 %25, 65536
  %27 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %28)
  %cmp24 = icmp ugt i32 %28, 27
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %28, -28
  %call1.i = call i32 @blk_mq_unique_tag(ptr noundef %add.ptr.i) #14
  %cmd_cookie.i = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 7
  %29 = ptrtoint ptr %cmd_cookie.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_cookie.i, align 4
  %conv.i = zext i32 %30 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv2.i = zext i32 %call1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  br label %send_pages

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  call void @iov_iter_advance(ptr noundef nonnull %from, i32 noundef %28) #14
  br label %if.end29

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_cookie = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 7
  %31 = ptrtoint ptr %cmd_cookie to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmd_cookie, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %cmd_cookie, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end28
  %index30 = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 2
  %33 = ptrtoint ptr %index30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %index, ptr %index30, align 4
  %cookie = getelementptr inbounds %struct.nbd_sock, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cookie, align 4
  %cookie31 = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 3
  %36 = ptrtoint ptr %cookie31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cookie31, align 4
  %retries = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 4
  %37 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %retries, align 4
  %or32 = or i32 %retval.0.i295.ph, %26
  %type33 = getelementptr inbounds %struct.nbd_request, ptr %request, i32 0, i32 1
  %38 = ptrtoint ptr %type33 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %or32, ptr %type33, align 1
  br i1 %cmp34.not, label %if.end29.if.end39_crit_edge, label %if.then36

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %__sector.i = getelementptr i8, ptr %cmd, i32 -152
  %39 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %__sector.i, align 8
  %shl = shl i64 %40, 9
  %from38 = getelementptr inbounds %struct.nbd_request, ptr %request, i32 0, i32 3
  %41 = ptrtoint ptr %from38 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %shl, ptr %from38, align 1
  %len = getelementptr inbounds %struct.nbd_request, ptr %request, i32 0, i32 4
  %42 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %12, ptr %len, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end29.if.end39_crit_edge
  %call1.i297 = call i32 @blk_mq_unique_tag(ptr noundef %add.ptr.i) #14
  %cmd_cookie.i298 = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 7
  %43 = ptrtoint ptr %cmd_cookie.i298 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmd_cookie.i298, align 4
  %conv.i299 = zext i32 %44 to i64
  %shl.i300 = shl nuw i64 %conv.i299, 32
  %conv2.i301 = zext i32 %call1.i297 to i64
  %or.i302 = or i64 %shl.i300, %conv2.i301
  %handle41 = getelementptr inbounds %struct.nbd_request, ptr %request, i32 0, i32 2
  %45 = ptrtoint ptr %handle41 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %or.i302, ptr %handle41, align 1
  %index42 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 1
  %46 = ptrtoint ptr %index42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index42, align 4
  call fastcc void @trace_nbd_send_request(ptr noundef nonnull %request, i32 noundef %47, ptr noundef %add.ptr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_send_cmd.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_send_cmd, %if.then49)) #14
          to label %do.end57 [label %if.then49], !srcloc !542

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %48 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.nbd_send_cmd, i32 0, i32 %retval.0.i295.ph
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %__sector.i308 = getelementptr i8, ptr %cmd, i32 -152
  %53 = ptrtoint ptr %__sector.i308 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %__sector.i308, align 8
  %shl53 = shl i64 %54, 9
  %55 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %__data_len.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_send_cmd.__UNIQUE_ID_ddebug526, ptr noundef %bd_device.i, ptr noundef nonnull @.str.71, ptr noundef %add.ptr.i, ptr noundef nonnull %switch.load, i64 noundef %shl53, i32 noundef %56) #14
  br label %do.end57

do.end57:                                         ; preds = %if.then49, %if.end39
  %call61 = call fastcc i32 @sock_xmit(ptr noundef %nbd, i32 noundef %index, i32 noundef 1, ptr noundef nonnull %from, i32 noundef %cmp58, ptr noundef nonnull %sent)
  call fastcc void @trace_nbd_header_sent(ptr noundef %add.ptr.i, i64 noundef %or.i302)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %do.end57.send_pages_crit_edge

do.end57.send_pages_crit_edge:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_pages

if.then64:                                        ; preds = %do.end57
  %57 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %call61, label %do.body74 [
    i32 -4, label %if.then64.if.then67_crit_edge
    i32 -512, label %if.then64.if.then67_crit_edge359
  ]

if.then64.if.then67_crit_edge359:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.then64.if.then67_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.then67:                                        ; preds = %if.then64.if.then67_crit_edge, %if.then64.if.then67_crit_edge359
  %58 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool68.not = icmp eq i32 %59, 0
  br i1 %tobool68.not, label %if.then67.if.end71_crit_edge, label %if.then69

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  %pending = getelementptr inbounds %struct.nbd_sock, ptr %5, i32 0, i32 2
  %60 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i, ptr %pending, align 4
  %61 = ptrtoint ptr %sent3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %sent3, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67.if.end71_crit_edge
  %flags72 = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %flags72) #14
  br label %cleanup204

do.body74:                                        ; preds = %if.then64
  %call75 = call i32 @___ratelimit(ptr noundef nonnull @nbd_send_cmd._rs.72, ptr noundef nonnull @__func__.nbd_send_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.cleanup204_crit_edge, label %do.end80

do.body74.cleanup204_crit_edge:                   ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup204

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  %disk81 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %62 = ptrtoint ptr %disk81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disk81, align 4
  %part082 = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %part082 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %part082, align 4
  %bd_device83 = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device83, ptr noundef nonnull @.str.74, i32 noundef %call61) #17
  br label %cleanup204

send_pages:                                       ; preds = %do.end57.send_pages_crit_edge, %if.then26
  %skip.0 = phi i32 [ %sub, %if.then26 ], [ 0, %do.end57.send_pages_crit_edge ]
  %handle.0 = phi i64 [ %or.i, %if.then26 ], [ %or.i302, %do.end57.send_pages_crit_edge ]
  br i1 %cmp88.not, label %if.end91, label %send_pages.out_crit_edge

send_pages.out_crit_edge:                         ; preds = %send_pages
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end91:                                         ; preds = %send_pages
  %bio92 = getelementptr i8, ptr %cmd, i32 -144
  %66 = ptrtoint ptr %bio92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bio92, align 8
  %tobool93.not356 = icmp eq ptr %67, null
  br i1 %tobool93.not356, label %if.end91.out_crit_edge, label %while.body.lr.ph

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.lr.ph:                                 ; preds = %if.end91
  %68 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1
  %69 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2
  %disk.i310 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup197.while.body_crit_edge, %while.body.lr.ph
  %bio.0358 = phi ptr [ %67, %while.body.lr.ph ], [ %71, %cleanup197.while.body_crit_edge ]
  %skip.1357 = phi i32 [ %skip.0, %while.body.lr.ph ], [ %skip.6, %cleanup197.while.body_crit_edge ]
  %70 = ptrtoint ptr %bio.0358 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bio.0358, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec) #14
  %72 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec, align 4, !annotation !533
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %68, align 4, !annotation !533
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %69, align 4, !annotation !533
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.0358, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool94.not350 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool94.not350, label %while.body.cleanup197_crit_edge, label %land.rhs.lr.ph

while.body.cleanup197_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup197

land.rhs.lr.ph:                                   ; preds = %while.body
  %iter.sroa.17.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.0358, i32 0, i32 8, i32 3
  %76 = ptrtoint ptr %iter.sroa.17.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %76)
  %iter.sroa.17.0.copyload = load i32, ptr %iter.sroa.17.0.bi_iter.sroa_idx, align 8
  %iter.sroa.11.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.0358, i32 0, i32 8, i32 2
  %77 = ptrtoint ptr %iter.sroa.11.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %77)
  %iter.sroa.11.0.copyload = load i32, ptr %iter.sroa.11.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio.0358, i32 0, i32 20
  %tobool133.not = icmp eq ptr %71, null
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio.0358, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %skip.2354 = phi i32 [ %skip.1357, %land.rhs.lr.ph ], [ %skip.4.ph, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0353 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.11.0352 = phi i32 [ %iter.sroa.11.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.11.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.17.0351 = phi i32 [ %iter.sroa.17.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.17.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %78 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx95 = getelementptr %struct.bio_vec, ptr %79, i32 %iter.sroa.11.0352
  %80 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx95, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %79, i32 %iter.sroa.11.0352, i32 2
  %82 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_offset, align 4
  %add = add i32 %83, %iter.sroa.17.0351
  %div291 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %81, i32 %div291
  %bv_len104 = getelementptr %struct.bio_vec, ptr %79, i32 %iter.sroa.11.0352, i32 1
  %84 = ptrtoint ptr %bv_len104 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bv_len104, align 4
  %sub106 = sub i32 %85, %iter.sroa.17.0351
  %86 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0353, i32 %sub106)
  %rem = and i32 %add, 4095
  %sub117 = sub nuw nsw i32 4096, %rem
  %87 = call i32 @llvm.umin.i32(i32 %86, i32 %sub117)
  %88 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr, ptr %bvec, align 4
  %89 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %68, align 4
  %90 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %rem, ptr %69, align 4
  br i1 %tobool133.not, label %land.end139, label %land.rhs.land.end139.thread_crit_edge

land.rhs.land.end139.thread_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end139.thread

land.end139:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.sroa.6.0353, i32 %92)
  %cmp137 = icmp eq i32 %iter.sroa.6.0353, %92
  %spec.select347 = select i1 %cmp137, i32 0, i32 32768
  br label %land.end139.thread

land.end139.thread:                               ; preds = %land.end139, %land.rhs.land.end139.thread_crit_edge
  %93 = phi i1 [ false, %land.rhs.land.end139.thread_crit_edge ], [ %cmp137, %land.end139 ]
  %94 = phi i32 [ 32768, %land.rhs.land.end139.thread_crit_edge ], [ %spec.select347, %land.end139 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_send_cmd.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_send_cmd, %if.then157)) #14
          to label %do.end162 [label %if.then157], !srcloc !542

if.then157:                                       ; preds = %land.end139.thread
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %disk.i310 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %disk.i310, align 4
  %part0.i311 = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %part0.i311 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %part0.i311, align 4
  %bd_device.i312 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %68, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_send_cmd.__UNIQUE_ID_ddebug531, ptr noundef %bd_device.i312, ptr noundef nonnull @.str.76, ptr noundef %add.ptr.i, i32 noundef %100) #14
  br label %do.end162

do.end162:                                        ; preds = %if.then157, %land.end139.thread
  %101 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %68, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %from, i32 noundef 1, ptr noundef nonnull %bvec, i32 noundef 1, i32 noundef %102) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.2354)
  %tobool164.not = icmp eq i32 %skip.2354, 0
  br i1 %tobool164.not, label %do.end162.if.end173_crit_edge, label %if.then165

do.end162.if.end173_crit_edge:                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then165:                                       ; preds = %do.end162
  %103 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.2354, i32 %104)
  %cmp167.not = icmp ult i32 %skip.2354, %104
  br i1 %cmp167.not, label %if.end172, label %if.then169

if.then169:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #16
  %sub171 = sub i32 %skip.2354, %104
  br label %for.inc

if.end172:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #16
  call void @iov_iter_advance(ptr noundef nonnull %from, i32 noundef %skip.2354) #14
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %do.end162.if.end173_crit_edge
  %call174 = call fastcc i32 @sock_xmit(ptr noundef %nbd, i32 noundef %index, i32 noundef 1, ptr noundef nonnull %from, i32 noundef %94, ptr noundef nonnull %sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.end191

if.then177:                                       ; preds = %if.end173
  %105 = zext i32 %call174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %call174, label %do.end187 [
    i32 -4, label %if.then177.if.then180_crit_edge
    i32 -512, label %if.then177.if.then180_crit_edge360
  ]

if.then177.if.then180_crit_edge360:               ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then180

if.then177.if.then180_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then180

if.then180:                                       ; preds = %if.then177.if.then180_crit_edge, %if.then177.if.then180_crit_edge360
  %pending181 = getelementptr inbounds %struct.nbd_sock, ptr %5, i32 0, i32 2
  %106 = ptrtoint ptr %pending181 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr.i, ptr %pending181, align 4
  %107 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sent, align 4
  %109 = ptrtoint ptr %sent3 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %sent3, align 4
  %flags183 = getelementptr inbounds %struct.nbd_cmd, ptr %cmd, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %flags183) #14
  br label %cleanup197.thread

do.end187:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %disk.i310 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %disk.i310, align 4
  %part0189 = getelementptr inbounds %struct.gendisk, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %part0189 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %part0189, align 4
  %bd_device190 = getelementptr inbounds %struct.block_device, ptr %113, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device190, ptr noundef nonnull @.str.78, i32 noundef %call174) #17
  br label %cleanup197.thread

if.end191:                                        ; preds = %if.end173
  br i1 %93, label %if.end191.cleanup197_crit_edge, label %if.end191.for.inc_crit_edge

if.end191.for.inc_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end191.cleanup197_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup197

cleanup197.thread:                                ; preds = %do.end187, %if.then180
  %retval.2.ph = phi i32 [ -11, %do.end187 ], [ 9, %if.then180 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #14
  br label %cleanup204

for.inc:                                          ; preds = %if.end191.for.inc_crit_edge, %if.then169
  %skip.4.ph = phi i32 [ 0, %if.end191.for.inc_crit_edge ], [ %sub171, %if.then169 ]
  %114 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %68, align 4
  %116 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %117, 255
  %118 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %118, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %115, %iter.sroa.17.0351
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %120, i32 %iter.sroa.11.0352, i32 1
  %121 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %122)
  %cmp.i.i = icmp eq i32 %add.i.i, %122
  %spec.select348 = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select349 = add i32 %iter.sroa.11.0352, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.17.1 = phi i32 [ %iter.sroa.17.0351, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select348, %if.else.i ]
  %iter.sroa.11.2 = phi i32 [ %iter.sroa.11.0352, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select349, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0353, %115
  %tobool94.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool94.not, label %bio_advance_iter_single.exit.cleanup197_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

bio_advance_iter_single.exit.cleanup197_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup197

cleanup197:                                       ; preds = %bio_advance_iter_single.exit.cleanup197_crit_edge, %if.end191.cleanup197_crit_edge, %while.body.cleanup197_crit_edge
  %skip.6 = phi i32 [ %skip.1357, %while.body.cleanup197_crit_edge ], [ %skip.4.ph, %bio_advance_iter_single.exit.cleanup197_crit_edge ], [ 0, %if.end191.cleanup197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #14
  %tobool93.not = icmp eq ptr %71, null
  br i1 %tobool93.not, label %cleanup197.out_crit_edge, label %cleanup197.while.body_crit_edge

cleanup197.while.body_crit_edge:                  ; preds = %cleanup197
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup197.out_crit_edge:                         ; preds = %cleanup197
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %cleanup197.out_crit_edge, %if.end91.out_crit_edge, %send_pages.out_crit_edge
  call fastcc void @trace_nbd_payload_sent(ptr noundef %add.ptr.i, i64 noundef %handle.0)
  %pending202 = getelementptr inbounds %struct.nbd_sock, ptr %5, i32 0, i32 2
  %123 = ptrtoint ptr %pending202 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %pending202, align 4
  %124 = ptrtoint ptr %sent3 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %sent3, align 4
  br label %cleanup204

cleanup204:                                       ; preds = %out, %cleanup197.thread, %do.end80, %do.body74.cleanup204_crit_edge, %if.end71, %do.end, %do.body.cleanup204_crit_edge, %entry.cleanup204_crit_edge
  %retval.5 = phi i32 [ 0, %out ], [ 9, %if.end71 ], [ -5, %do.end ], [ -5, %do.body.cleanup204_crit_edge ], [ -11, %do.end80 ], [ -11, %do.body74.cleanup204_crit_edge ], [ -5, %entry.cleanup204_crit_edge ], [ %retval.2.ph, %cleanup197.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %request) #14
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_mark_nsock_dead(ptr nocapture noundef readonly %nbd, ptr nocapture noundef %nsock, i32 noundef %notify) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.nbd_sock, ptr %nsock, i32 0, i32 4
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dead, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notify)
  %tobool1.not = icmp eq i32 %notify, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end15_crit_edge, label %land.lhs.true2

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true2:                                   ; preds = %entry
  %config = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %runtime_flags.i = getelementptr inbounds %struct.nbd_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %runtime_flags.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %nbd_disconnected.exit, label %land.lhs.true2.if.end15thread-pre-split_crit_edge

land.lhs.true2.if.end15thread-pre-split_crit_edge: ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15thread-pre-split

nbd_disconnected.exit:                            ; preds = %land.lhs.true2
  %7 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %runtime_flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then, label %nbd_disconnected.exit.if.end15thread-pre-split_crit_edge

nbd_disconnected.exit.if.end15thread-pre-split_crit_edge: ; preds = %nbd_disconnected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15thread-pre-split

if.then:                                          ; preds = %nbd_disconnected.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3072, i32 noundef 48) #18
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then.if.end15thread-pre-split_crit_edge, label %do.body

if.then.if.end15thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15thread-pre-split

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #14
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.92, ptr noundef nonnull @nbd_mark_nsock_dead.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry10 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry10, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nbd_dead_link_work, ptr %func, align 4
  %index = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %index12 = getelementptr inbounds %struct.link_dead_args, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %index12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef nonnull %call7.i) #14
  br label %if.end15thread-pre-split

if.end15thread-pre-split:                         ; preds = %do.body, %if.then.if.end15thread-pre-split_crit_edge, %nbd_disconnected.exit.if.end15thread-pre-split_crit_edge, %land.lhs.true2.if.end15thread-pre-split_crit_edge
  %19 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %dead, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %entry.if.end15_crit_edge
  %20 = phi i8 [ %.pr, %if.end15thread-pre-split ], [ %1, %entry.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end35_crit_edge

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then18:                                        ; preds = %if.end15
  %21 = ptrtoint ptr %nsock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nsock, align 4
  %call19 = tail call i32 @kernel_sock_shutdown(ptr noundef %22, i32 noundef 2) #14
  %config20 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %23 = ptrtoint ptr %config20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config20, align 4
  %live_connections = getelementptr inbounds %struct.nbd_config, ptr %24, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %live_connections, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !543
  tail call void @llvm.prefetch.p0(ptr %live_connections, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %live_connections, ptr %live_connections, i32 1, ptr elementtype(i32) %live_connections) #14, !srcloc !544
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then22, label %if.then18.if.end35_crit_edge

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then22:                                        ; preds = %if.then18
  %26 = ptrtoint ptr %config20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config20, align 4
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %27, i32 0, i32 1
  %call24 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %runtime_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end35_crit_edge, label %if.then26

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %config20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config20, align 4
  %runtime_flags28 = getelementptr inbounds %struct.nbd_config, ptr %29, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %runtime_flags28) #14
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %30 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device.i, ptr noundef nonnull @.str.93) #17
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.then22.if.end35_crit_edge, %if.then18.if.end35_crit_edge, %if.end15.if.end35_crit_edge
  %34 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %dead, align 4
  %pending = getelementptr inbounds %struct.nbd_sock, ptr %nsock, i32 0, i32 2
  %35 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pending, align 4
  %sent = getelementptr inbounds %struct.nbd_sock, ptr %nsock, i32 0, i32 3
  %36 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sent, align 4
  ret void
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nbd_send_request(ptr noundef %nbd_request, i32 noundef %index, ptr noundef %rq) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_send_request, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nbd_send_request, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !542

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !531

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !546
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_send_request, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %nbd_request, i32 noundef %index, ptr noundef %rq) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !547
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !547
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !531

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_send_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nbd_send_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_nbd_send_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 102, ptr noundef nonnull @.str.81) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %38 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_xmit(ptr nocapture noundef readonly %nbd, i32 noundef %index, i32 noundef %send, ptr nocapture noundef readonly %iter, i32 noundef %msg_flags, ptr noundef %sent) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %socks = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socks, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %8 = getelementptr inbounds i8, ptr %msg, i32 32
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end12, !prof !532

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @sock_xmit._rs, ptr noundef nonnull @__func__.sock_xmit) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send)
  %tobool9.not = icmp eq i32 %send, 0
  %cond = select i1 %tobool9.not, ptr @.str.91, ptr @.str.90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.89, ptr noundef nonnull %cond) #17
  br label %cleanup

if.end12:                                         ; preds = %entry
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %msg_iter, ptr %iter, i32 24)
  %15 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %20, 2048
  %or.i = or i32 %20, 2048
  store i32 %or.i, ptr %flags1.i, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %21 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %or = or i32 %msg_flags, 16384
  %msg_flags15 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send)
  %tobool16.not = icmp eq i32 %send, 0
  %tobool27.not = icmp eq ptr %sent, null
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  br label %do.body14

do.body14:                                        ; preds = %do.cond30.do.body14_crit_edge, %if.end12
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 41
  %24 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 134144, ptr %sk_allocation, align 8
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %msg, align 8
  %26 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %msg_namelen, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %21, align 8
  %28 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %msg_controllen, align 8
  %29 = ptrtoint ptr %msg_flags15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %msg_flags15, align 4
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call i32 @sock_sendmsg(ptr noundef nonnull %7, ptr noundef nonnull %msg) #14
  br label %if.end21

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = call i32 @sock_recvmsg(ptr noundef nonnull %7, ptr noundef nonnull %msg, i32 noundef %or) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %result.0 = phi i32 [ %call18, %if.then17 ], [ %call20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %result.0)
  %cmp = icmp slt i32 %result.0, 1
  br i1 %cmp, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp23 = icmp eq i32 %result.0, 0
  %spec.store.select = select i1 %cmp23, i32 -32, i32 %result.0
  br label %do.end33

if.end26:                                         ; preds = %if.end21
  br i1 %tobool27.not, label %if.end26.do.cond30_crit_edge, label %if.then28

if.end26.do.cond30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sent, align 4
  %add = add i32 %31, %result.0
  store i32 %add, ptr %sent, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %if.then28, %if.end26.do.cond30_crit_edge
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i.i, align 8
  %tobool32.not = icmp eq i32 %33, 0
  br i1 %tobool32.not, label %do.cond30.do.end33_crit_edge, label %do.cond30.do.body14_crit_edge

do.cond30.do.body14_crit_edge:                    ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

do.cond30.do.end33_crit_edge:                     ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33

do.end33:                                         ; preds = %do.cond30.do.end33_crit_edge, %if.then22
  %result.1 = phi i32 [ %spec.store.select, %if.then22 ], [ %result.0, %do.cond30.do.end33_crit_edge ]
  %34 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i47 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i47 to ptr
  %task.i48 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i48, align 8
  %flags1.i49 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags1.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags1.i49, align 4
  %and.i50 = and i32 %39, -2049
  %or.i51 = or i32 %and.i50, %and.i
  store i32 %or.i51, ptr %flags1.i49, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %do.end33 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nbd_header_sent(ptr noundef %req, i64 noundef %handle) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_sent, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nbd_header_sent, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !542

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !531

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !550
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_sent, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !551
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !551
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !531

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_sent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nbd_header_sent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_nbd_header_sent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 38, ptr noundef nonnull @.str.81) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %38 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nbd_payload_sent(ptr noundef %req, i64 noundef %handle) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_sent, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nbd_payload_sent, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !542

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !531

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !552
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_sent, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !553
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !553
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !531

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_sent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nbd_payload_sent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_nbd_payload_sent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 45, ptr noundef nonnull @.str.81) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %38 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_unique_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbd_dead_link_work(ptr noundef %work) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.link_dead_args, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 28, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.nbd_mcast_index.exit_crit_edge, label %if.end.i

entry.nbd_mcast_index.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_mcast_index.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nbd_genl_family, i32 noundef 0, i8 noundef zeroext 4) #14
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %nbd_mcast_index.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %nbd_mcast_index.exit

if.end9.i:                                        ; preds = %if.end5.i
  %add.ptr1.i.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nbd_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.i.i = icmp eq i8 %6, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end9.i
  %.b1.i.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.nbd_mcast_index.exit_crit_edge, label %if.then.i.i.i, !prof !531

land.rhs.i.i.i.nbd_mcast_index.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_mcast_index.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 308, i32 noundef 9, ptr noundef null) #14
  br label %nbd_mcast_index.exit

if.end39.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nbd_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %dst_group.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %dst_group.i.i.i.i, align 8
  %call.i.i.i20.i = call i32 @netlink_broadcast(ptr noundef %8, ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef %7, i32 noundef 3264) #14
  br label %nbd_mcast_index.exit

nbd_mcast_index.exit:                             ; preds = %if.end39.i.i.i, %if.then.i.i.i, %land.rhs.i.i.i.nbd_mcast_index.exit_crit_edge, %if.then8.i, %if.then4.i, %entry.nbd_mcast_index.exit_crit_edge
  call void @kfree(ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #0 align 64 {
entry:
  %old.i.i.i69 = alloca i32, align 4
  %old.i.i.i49 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nbd_index_mutex, i32 noundef 0) #14
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %refs = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #14
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %6 = phi i32 [ %5, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %9, i32 %add.i.i.i, ptr elementtype(i32) %refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !531

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #14
  %14 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.out_crit_edge, label %if.end2

refcount_inc_not_zero.exit.out_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end2:                                          ; preds = %refcount_inc_not_zero.exit
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i49) #14
  %call.i.i.i.i.i.i50 = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %16 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %config_refs, align 4
  br label %do.body.i.i.i52

do.body.i.i.i52:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.do.body.i.i.i52_crit_edge, %if.end2
  %18 = phi i32 [ %17, %if.end2 ], [ %asmresult3.i.i.i.i.i.i60, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.do.body.i.i.i52_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i51 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i51, label %do.body.i.i.i52.if.end4.i.i.i65_crit_edge, label %do.cond.i.i.i56

do.body.i.i.i52.if.end4.i.i.i65_crit_edge:        ; preds = %do.body.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i65

do.cond.i.i.i56:                                  ; preds = %do.body.i.i.i52
  %add.i.i.i53 = add i32 %18, 1
  %call.i.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %call.i3.i.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i49, i32 noundef 4) #14
  %20 = ptrtoint ptr %old.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i49, align 4
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i59

do.body.i.i.i.i.i.i59:                            ; preds = %do.body.i.i.i.i.i.i59.do.body.i.i.i.i.i.i59_crit_edge, %do.cond.i.i.i56
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 %21, i32 %add.i.i.i53, ptr elementtype(i32) %config_refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i57 = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i.i57, 0
  br i1 %tobool.not.i.i.i.i.i.i58, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62, label %do.body.i.i.i.i.i.i59.do.body.i.i.i.i.i.i59_crit_edge

do.body.i.i.i.i.i.i59.do.body.i.i.i.i.i.i59_crit_edge: ; preds = %do.body.i.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i59

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62:     ; preds = %do.body.i.i.i.i.i.i59
  %asmresult3.i.i.i.i.i.i60 = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i61 = icmp eq i32 %asmresult3.i.i.i.i.i.i60, %21
  br i1 %cmp.not.i.i.i.i.i61, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.if.end4.i.i.i65_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.do.body.i.i.i52_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.do.body.i.i.i52_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i52

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.if.end4.i.i.i65_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i65

if.end4.i.i.i65:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i62.if.end4.i.i.i65_crit_edge, %do.body.i.i.i52.if.end4.i.i.i65_crit_edge
  %23 = ptrtoint ptr %old.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i49, align 4
  %add5.i.i.i63 = add i32 %24, 1
  %25 = or i32 %add5.i.i.i63, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i64 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i64, label %if.end4.i.i.i65.refcount_inc_not_zero.exit68_crit_edge, label %if.then10.i.i.i66, !prof !531

if.end4.i.i.i65.refcount_inc_not_zero.exit68_crit_edge: ; preds = %if.end4.i.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit68

if.then10.i.i.i66:                                ; preds = %if.end4.i.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef 0) #14
  %26 = ptrtoint ptr %old.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr92 = load i32, ptr %old.i.i.i49, align 4
  br label %refcount_inc_not_zero.exit68

refcount_inc_not_zero.exit68:                     ; preds = %if.then10.i.i.i66, %if.end4.i.i.i65.refcount_inc_not_zero.exit68_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i65.refcount_inc_not_zero.exit68_crit_edge ], [ %.pr92, %if.then10.i.i.i66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i67.not = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i49) #14
  br i1 %tobool12.i.i.i67.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %refcount_inc_not_zero.exit68
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i69) #14
  %call.i.i.i.i.i.i70 = call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %28 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %config_refs, align 4
  br label %do.body.i.i.i72

do.body.i.i.i72:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.do.body.i.i.i72_crit_edge, %if.then4
  %30 = phi i32 [ %29, %if.then4 ], [ %asmresult3.i.i.i.i.i.i80, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.do.body.i.i.i72_crit_edge ]
  %31 = ptrtoint ptr %old.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %old.i.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i71 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i71, label %do.body.i.i.i72.if.end4.i.i.i85_crit_edge, label %do.cond.i.i.i76

do.body.i.i.i72.if.end4.i.i.i85_crit_edge:        ; preds = %do.body.i.i.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i85

do.cond.i.i.i76:                                  ; preds = %do.body.i.i.i72
  %add.i.i.i73 = add i32 %30, 1
  %call.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %call.i3.i.i.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i69, i32 noundef 4) #14
  %32 = ptrtoint ptr %old.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i69, align 4
  call void @llvm.prefetch.p0(ptr %config_refs, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i79

do.body.i.i.i.i.i.i79:                            ; preds = %do.body.i.i.i.i.i.i79.do.body.i.i.i.i.i.i79_crit_edge, %do.cond.i.i.i76
  %34 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %config_refs, ptr %config_refs, i32 %33, i32 %add.i.i.i73, ptr elementtype(i32) %config_refs) #14, !srcloc !538
  %asmresult.i.i.i.i.i.i77 = extractvalue { i32, i32 } %34, 0
  %tobool.not.i.i.i.i.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i77, 0
  br i1 %tobool.not.i.i.i.i.i.i78, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82, label %do.body.i.i.i.i.i.i79.do.body.i.i.i.i.i.i79_crit_edge

do.body.i.i.i.i.i.i79.do.body.i.i.i.i.i.i79_crit_edge: ; preds = %do.body.i.i.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i79

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82:     ; preds = %do.body.i.i.i.i.i.i79
  %asmresult3.i.i.i.i.i.i80 = extractvalue { i32, i32 } %34, 1
  %cmp.not.i.i.i.i.i81 = icmp eq i32 %asmresult3.i.i.i.i.i.i80, %33
  br i1 %cmp.not.i.i.i.i.i81, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.if.end4.i.i.i85_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.do.body.i.i.i72_crit_edge, !prof !531

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.do.body.i.i.i72_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i72

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.if.end4.i.i.i85_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i85

if.end4.i.i.i85:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i82.if.end4.i.i.i85_crit_edge, %do.body.i.i.i72.if.end4.i.i.i85_crit_edge
  %35 = ptrtoint ptr %old.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old.i.i.i69, align 4
  %add5.i.i.i83 = add i32 %36, 1
  %37 = or i32 %add5.i.i.i83, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i84 = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i84, label %if.end4.i.i.i85.refcount_inc_not_zero.exit88_crit_edge, label %if.then10.i.i.i86, !prof !531

if.end4.i.i.i85.refcount_inc_not_zero.exit88_crit_edge: ; preds = %if.end4.i.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit88

if.then10.i.i.i86:                                ; preds = %if.end4.i.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %config_refs, i32 noundef 0) #14
  %38 = ptrtoint ptr %old.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr93 = load i32, ptr %old.i.i.i69, align 4
  br label %refcount_inc_not_zero.exit88

refcount_inc_not_zero.exit88:                     ; preds = %if.then10.i.i.i86, %if.end4.i.i.i85.refcount_inc_not_zero.exit88_crit_edge
  %39 = phi i32 [ %36, %if.end4.i.i.i85.refcount_inc_not_zero.exit88_crit_edge ], [ %.pr93, %if.then10.i.i.i86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.i.i.i87.not = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i69) #14
  br i1 %tobool12.i.i.i87.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %refcount_inc_not_zero.exit88
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %config_lock) #14
  br label %out

if.end9:                                          ; preds = %refcount_inc_not_zero.exit88
  %call10 = call fastcc ptr @nbd_alloc_config()
  %config11 = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %config11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call10, ptr %config11, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %config_lock) #14
  br label %out

if.end15:                                         ; preds = %if.end9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %config_refs, i32 noundef 4) #14
  %41 = ptrtoint ptr %config_refs to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %config_refs, align 4
  %call.i.i.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !539
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end15.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !532

if.end15.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15
  %add.i.i.i90 = add i32 %asmresult.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i90, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i91 = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i91, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !531

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @mutex_unlock(ptr noundef %config_lock) #14
  %44 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool19.not = icmp eq i32 %44, 0
  br i1 %tobool19.not, label %refcount_inc.exit.out_crit_edge, label %if.then20

refcount_inc.exit.out_crit_edge:                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then20:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bd_disk, align 8
  %state = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #14
  br label %out

if.else:                                          ; preds = %refcount_inc_not_zero.exit68
  %config23 = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %config23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config23, align 4
  %runtime_flags.i = getelementptr inbounds %struct.nbd_config, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %runtime_flags.i, align 4
  %51 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %nbd_disconnected.exit, label %if.else.if.then26_crit_edge

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

nbd_disconnected.exit:                            ; preds = %if.else
  %52 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %runtime_flags.i, align 4
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool25.not = icmp eq i32 %54, 0
  br i1 %tobool25.not, label %nbd_disconnected.exit.out_crit_edge, label %nbd_disconnected.exit.if.then26_crit_edge

nbd_disconnected.exit.if.then26_crit_edge:        ; preds = %nbd_disconnected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

nbd_disconnected.exit.out_crit_edge:              ; preds = %nbd_disconnected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then26:                                        ; preds = %nbd_disconnected.exit.if.then26_crit_edge, %if.else.if.then26_crit_edge
  %55 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool27.not = icmp eq i32 %55, 0
  br i1 %tobool27.not, label %if.then26.out_crit_edge, label %if.then28

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bd_disk, align 8
  %state30 = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %state30) #14
  br label %out

out:                                              ; preds = %if.then28, %if.then26.out_crit_edge, %nbd_disconnected.exit.out_crit_edge, %if.then20, %refcount_inc.exit.out_crit_edge, %if.then13, %if.then7, %refcount_inc_not_zero.exit.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.then28 ], [ 0, %if.then26.out_crit_edge ], [ 0, %nbd_disconnected.exit.out_crit_edge ], [ -6, %entry.out_crit_edge ], [ -6, %refcount_inc_not_zero.exit.out_crit_edge ], [ 0, %if.then7 ], [ -12, %if.then13 ], [ 0, %if.then20 ], [ 0, %refcount_inc.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nbd_index_mutex) #14
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbd_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %config = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %runtime_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %7 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0, align 4
  %bd_openers = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %bd_openers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_openers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nbd_disconnect_and_put(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @nbd_config_put(ptr noundef %1)
  tail call fastcc void @nbd_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 43776, i32 %6)
  %cmp.not = icmp eq i32 %6, 43776
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %runtime_flags, align 4
  %.fr25 = freeze i32 %8
  %9 = and i32 %.fr25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end3.if.then8_crit_edge, label %switch.early.test

if.end3.if.then8_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

switch.early.test:                                ; preds = %if.end3
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %cmd, label %do.end [
    i32 43784, label %switch.early.test.if.then8_crit_edge
    i32 43780, label %switch.early.test.if.then8_crit_edge31
  ]

switch.early.test.if.then8_crit_edge31:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

switch.early.test.if.then8_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %switch.early.test.if.then8_crit_edge, %switch.early.test.if.then8_crit_edge31, %if.end3.if.then8_crit_edge
  %11 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config1, align 4
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %cmd, label %sw.epilog.i [
    i32 43784, label %sw.bb.i
    i32 43780, label %sw.bb2.i
    i32 43776, label %sw.bb3.i
    i32 43777, label %sw.bb5.i
    i32 43778, label %sw.bb8.i
    i32 43783, label %sw.bb13.i
    i32 43785, label %sw.bb42.i
    i32 43786, label %sw.bb44.i
    i32 43779, label %sw.bb45.i
    i32 43781, label %if.then8.if.end11_crit_edge
    i32 43782, label %if.then8.if.end11_crit_edge32
  ]

if.then8.if.end11_crit_edge32:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

sw.bb.i:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nbd_disconnect(ptr noundef %3) #14
  br label %if.end11

sw.bb2.i:                                         ; preds = %if.then8
  tail call fastcc void @sock_shutdown(ptr noundef %3) #14
  %call.i.i = tail call i32 @__invalidate_device(ptr noundef %bdev, i1 noundef zeroext true) #14
  %bd_openers.i.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 6
  %14 = ptrtoint ptr %bd_openers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_openers.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i.i = icmp sgt i32 %15, 1
  br i1 %cmp.i.i.i, label %sw.bb2.i.nbd_bdev_reset.exit.i.i_crit_edge, label %if.end.i.i.i

sw.bb2.i.nbd_bdev_reset.exit.i.i_crit_edge:       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_bdev_reset.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk, align 8
  tail call void @set_capacity(ptr noundef %17, i64 noundef 0) #14
  br label %nbd_bdev_reset.exit.i.i

nbd_bdev_reset.exit.i.i:                          ; preds = %if.end.i.i.i, %sw.bb2.i.nbd_bdev_reset.exit.i.i_crit_edge
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config1, align 4
  %runtime_flags.i.i = getelementptr inbounds %struct.nbd_config, ptr %19, i32 0, i32 1
  %call1.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %runtime_flags.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %nbd_bdev_reset.exit.i.i.if.end11_crit_edge, label %if.then.i.i

nbd_bdev_reset.exit.i.i.if.end11_crit_edge:       ; preds = %nbd_bdev_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then.i.i:                                      ; preds = %nbd_bdev_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nbd_config_put(ptr noundef %3) #14
  br label %if.end11

sw.bb3.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call fastcc i32 @nbd_add_socket(ptr noundef %3, i32 noundef %arg, i1 noundef zeroext false) #14
  br label %if.end11

sw.bb5.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %bytesize6.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 10
  %20 = ptrtoint ptr %bytesize6.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytesize6.i, align 8
  %conv.i = zext i32 %arg to i64
  %call7.i = tail call fastcc i32 @nbd_set_size(ptr noundef %3, i64 noundef %21, i64 noundef %conv.i) #14
  br label %if.end11

sw.bb8.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %conv9.i = zext i32 %arg to i64
  %blksize_bits.i.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 9
  %22 = ptrtoint ptr %blksize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blksize_bits.i.i, align 8
  %shl.i.i = shl nuw i32 1, %23
  %conv11.i = zext i32 %shl.i.i to i64
  %call12.i = tail call fastcc i32 @nbd_set_size(ptr noundef %3, i64 noundef %conv9.i, i64 noundef %conv11.i) #14
  br label %if.end11

sw.bb13.i:                                        ; preds = %if.then8
  %blksize_bits.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 9
  %24 = ptrtoint ptr %blksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blksize_bits.i, align 8
  %conv14.i = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp18.i = icmp ult i32 %25, 64
  %cond.i = select i1 %cmp18.i, i32 %25, i32 0
  %sh_prom.i = zext i32 %cond.i to i64
  %shl.i = shl i64 %conv14.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %25)
  %cmp20.not.i = icmp eq i32 %cond.i, %25
  br i1 %cmp20.not.i, label %lor.lhs.false22.i, label %sw.bb13.i.if.end11_crit_edge

sw.bb13.i.if.end11_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

lor.lhs.false22.i:                                ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %26 = icmp slt i64 %shl.i, 0
  %shr94.i = lshr i64 %shl.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr94.i, i64 %conv14.i)
  %cmp36.i = icmp ne i64 %shr94.i, %conv14.i
  %or.cond95.i = select i1 %26, i1 true, i1 %cmp36.i
  br i1 %or.cond95.i, label %lor.lhs.false22.i.if.end11_crit_edge, label %if.end.i

lor.lhs.false22.i.if.end11_crit_edge:             ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i84.i = shl nuw i32 1, %25
  %conv40.i = zext i32 %shl.i84.i to i64
  %call41.i = tail call fastcc i32 @nbd_set_size(ptr noundef %3, i64 noundef %shl.i, i64 noundef %conv40.i) #14
  br label %if.end11

sw.bb42.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = mul i32 %arg, 100
  %timeout1.i.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i.i, ptr %timeout1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i85.i = icmp eq i32 %arg, 0
  %disk4.i.i = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %disk4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disk4.i.i, align 4
  %queue5.i.i = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %queue5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue5.i.i, align 4
  %.conv.i.i = select i1 %tobool.not.i85.i, i32 3000, i32 %conv.i.i
  tail call void @blk_queue_rq_timeout(ptr noundef %31, i32 noundef %.conv.i.i) #14
  br label %if.end11

sw.bb44.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %arg, ptr %12, align 8
  br label %if.end11

sw.bb45.i:                                        ; preds = %if.then8
  %call.i86.i = tail call fastcc i32 @nbd_start_device(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool.not.i87.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool.not.i87.i, label %if.end.i.i, label %sw.bb45.i.if.end11_crit_edge

sw.bb45.i.if.end11_crit_edge:                     ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end.i.i:                                       ; preds = %sw.bb45.i
  %33 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i.i = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %config_lock) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1405) #14
  %recv_threads.i.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %recv_threads.i.i, i32 noundef 4) #14
  %36 = ptrtoint ptr %recv_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %recv_threads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i, label %if.end4.i.i.if.end25.i.i_crit_edge, label %if.then9.i.i

if.end4.i.i.if.end25.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i.i

if.then9.i.i:                                     ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  %38 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #14
  %recv_wq.i.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 8
  %call1170.i.i = call i32 @prepare_to_wait_event(ptr noundef %recv_wq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #14
  %call.i.i5371.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %recv_threads.i.i, i32 noundef 4) #14
  %39 = ptrtoint ptr %recv_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %recv_threads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1472.i.i = icmp eq i32 %40, 0
  br i1 %cmp1472.i.i, label %if.then9.i.i.if.end21.thread65.i.i_crit_edge, label %if.then9.i.i.if.end16.i.i_crit_edge

if.then9.i.i.if.end16.i.i_crit_edge:              ; preds = %if.then9.i.i
  br label %if.end16.i.i

if.then9.i.i.if.end21.thread65.i.i_crit_edge:     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.thread65.i.i

if.end16.i.i:                                     ; preds = %cleanup.i.i.if.end16.i.i_crit_edge, %if.then9.i.i.if.end16.i.i_crit_edge
  %call1173.i.i = phi i32 [ %call11.i.i, %cleanup.i.i.if.end16.i.i_crit_edge ], [ %call1170.i.i, %if.then9.i.i.if.end16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1173.i.i)
  %tobool17.not.i.i = icmp eq i32 %call1173.i.i, 0
  br i1 %tobool17.not.i.i, label %cleanup.i.i, label %if.then24.i.i

cleanup.i.i:                                      ; preds = %if.end16.i.i
  call void @schedule() #14
  %call11.i.i = call i32 @prepare_to_wait_event(ptr noundef %recv_wq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #14
  %call.i.i53.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %recv_threads.i.i, i32 noundef 4) #14
  %41 = ptrtoint ptr %recv_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %recv_threads.i.i, align 4
  %cmp14.i.i = icmp eq i32 %42, 0
  br i1 %cmp14.i.i, label %cleanup.i.i.if.end21.thread65.i.i_crit_edge, label %cleanup.i.i.if.end16.i.i_crit_edge

cleanup.i.i.if.end16.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

cleanup.i.i.if.end21.thread65.i.i_crit_edge:      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.thread65.i.i

if.end21.thread65.i.i:                            ; preds = %cleanup.i.i.if.end21.thread65.i.i_crit_edge, %if.then9.i.i.if.end21.thread65.i.i_crit_edge
  call void @finish_wait(ptr noundef %recv_wq.i.i, ptr noundef nonnull %__wq_entry.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  br label %if.end25.i.i

if.then24.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  call fastcc void @sock_shutdown(ptr noundef %3) #14
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then24.i.i, %if.end21.thread65.i.i, %if.end4.i.i.if.end25.i.i_crit_edge
  %__ret.064.i.i = phi i32 [ %call1173.i.i, %if.then24.i.i ], [ 0, %if.end21.thread65.i.i ], [ 0, %if.end4.i.i.if.end25.i.i_crit_edge ]
  %recv_workq.i.i = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %recv_workq.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recv_workq.i.i, align 4
  call void @flush_workqueue(ptr noundef %44) #14
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  %bd_openers.i.i88.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 6
  %45 = ptrtoint ptr %bd_openers.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bd_openers.i.i88.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i.i89.i = icmp sgt i32 %46, 1
  br i1 %cmp.i.i89.i, label %if.end25.i.i.nbd_bdev_reset.exit.i93.i_crit_edge, label %if.end.i.i91.i

if.end25.i.i.nbd_bdev_reset.exit.i93.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_bdev_reset.exit.i93.i

if.end.i.i91.i:                                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bd_disk, align 8
  call void @set_capacity(ptr noundef %48, i64 noundef 0) #14
  br label %nbd_bdev_reset.exit.i93.i

nbd_bdev_reset.exit.i93.i:                        ; preds = %if.end.i.i91.i, %if.end25.i.i.nbd_bdev_reset.exit.i93.i_crit_edge
  %runtime_flags.i92.i = getelementptr inbounds %struct.nbd_config, ptr %12, i32 0, i32 1
  %49 = ptrtoint ptr %runtime_flags.i92.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %runtime_flags.i92.i, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool28.not.i.i = icmp eq i32 %51, 0
  %spec.select.i.i = select i1 %tobool28.not.i.i, i32 %__ret.064.i.i, i32 0
  %52 = ptrtoint ptr %runtime_flags.i92.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %runtime_flags.i92.i, align 4
  %and1.i54.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i54.i.i)
  %tobool33.not.i.i = icmp eq i32 %and1.i54.i.i, 0
  %ret.1.i.i = select i1 %tobool33.not.i.i, i32 %spec.select.i.i, i32 -110
  br label %if.end11

sw.epilog.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end:                                           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.116) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.epilog.i, %nbd_bdev_reset.exit.i93.i, %sw.bb45.i.if.end11_crit_edge, %sw.bb44.i, %sw.bb42.i, %if.end.i, %lor.lhs.false22.i.if.end11_crit_edge, %sw.bb13.i.if.end11_crit_edge, %sw.bb8.i, %sw.bb5.i, %sw.bb3.i, %if.then.i.i, %nbd_bdev_reset.exit.i.i.if.end11_crit_edge, %sw.bb.i, %if.then8.if.end11_crit_edge, %if.then8.if.end11_crit_edge32
  %error.0 = phi i32 [ -22, %do.end ], [ -25, %sw.epilog.i ], [ 0, %sw.bb44.i ], [ 0, %sw.bb42.i ], [ %call41.i, %if.end.i ], [ %call12.i, %sw.bb8.i ], [ %call7.i, %sw.bb5.i ], [ %call4.i, %sw.bb3.i ], [ 0, %sw.bb.i ], [ 0, %if.then8.if.end11_crit_edge ], [ 0, %if.then8.if.end11_crit_edge32 ], [ 0, %nbd_bdev_reset.exit.i.i.if.end11_crit_edge ], [ 0, %if.then.i.i ], [ %ret.1.i.i, %nbd_bdev_reset.exit.i93.i ], [ %call.i86.i, %sw.bb45.i.if.end11_crit_edge ], [ -22, %sw.bb13.i.if.end11_crit_edge ], [ -22, %lor.lhs.false22.i.if.end11_crit_edge ]
  call void @mutex_unlock(ptr noundef %config_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end11 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_disconnect_and_put(ptr noundef %nbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config_lock = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #14
  tail call fastcc void @nbd_disconnect(ptr noundef %nbd)
  tail call fastcc void @sock_shutdown(ptr noundef %nbd)
  %recv_workq = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 7
  %0 = ptrtoint ptr %recv_workq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_workq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #14
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %2 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %5) #14
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %nbd, ptr noundef nonnull @nbd_clear_req, ptr noundef null) #14
  %6 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk.i, align 4
  %queue2.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue2.i, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %9) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_clear_que.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_disconnect_and_put, %if.then.i)) #14
          to label %nbd_clear_que.exit [label %if.then.i], !srcloc !542

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_clear_que.__UNIQUE_ID_ddebug538, ptr noundef %bd_device.i, ptr noundef nonnull @.str.115) #14
  br label %nbd_clear_que.exit

nbd_clear_que.exit:                               ; preds = %if.then.i, %entry
  %task_setup = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 10
  %14 = ptrtoint ptr %task_setup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %task_setup, align 4
  tail call void @mutex_unlock(ptr noundef %config_lock) #14
  %config = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %16, i32 0, i32 1
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %runtime_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %nbd_clear_que.exit.if.end_crit_edge, label %if.then

nbd_clear_que.exit.if.end_crit_edge:              ; preds = %nbd_clear_que.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %nbd_clear_que.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nbd_config_put(ptr noundef %nbd)
  br label %if.end

if.end:                                           ; preds = %if.then, %nbd_clear_que.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbd_disconnect(ptr noundef %nbd) unnamed_addr #0 align 64 {
entry:
  %request.i = alloca %struct.nbd_request, align 1
  %iov.i = alloca %struct.kvec, align 4
  %from.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device, ptr noundef nonnull @.str.110) #17
  %runtime_flags = getelementptr inbounds %struct.nbd_config, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %runtime_flags) #14
  %flags = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  %6 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %request.i) #14
  %8 = call ptr @memcpy(ptr %request.i, ptr @__const.send_disconnects.request, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #14
  %9 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %10 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %request.i, ptr %iov.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 28, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from.i) #14
  %12 = call ptr @memset(ptr %from.i, i32 255, i32 24)
  %num_connections.i = getelementptr inbounds %struct.nbd_config, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %num_connections.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_connections.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.i = icmp sgt i32 %14, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.send_disconnects.exit_crit_edge

entry.send_disconnects.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_disconnects.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %socks.i = getelementptr inbounds %struct.nbd_config, ptr %7, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %socks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.013.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %from.i, i32 noundef 1, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 28) #14
  %tx_lock.i = getelementptr inbounds %struct.nbd_sock, ptr %18, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #14
  %call.i = call fastcc i32 @sock_xmit(ptr noundef %nbd, i32 noundef %i.013.i, i32 noundef 1, ptr noundef nonnull %from.i, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %do.end.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.112, i32 noundef %call.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock.i) #14
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %23 = ptrtoint ptr %num_connections.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_connections.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %24
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.send_disconnects.exit_crit_edge

if.end.i.send_disconnects.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_disconnects.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

send_disconnects.exit:                            ; preds = %if.end.i.send_disconnects.exit_crit_edge, %entry.send_disconnects.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %request.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nbd_clear_req(ptr noundef %req, ptr nocapture noundef readnone %data, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 25
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr %struct.request, ptr %req, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %flags = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, -5
  store i32 %and.i, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %status, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  tail call void @blk_mq_complete_request(ptr noundef %req) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbd_set_size(ptr nocapture noundef readonly %nbd, i64 noundef %bytesize, i64 noundef %blksize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blksize)
  %tobool.not = icmp eq i64 %blksize, 0
  %0 = trunc i64 %blksize to i32
  %conv = select i1 %tobool.not, i32 1024, i32 %0
  %1 = add i32 %conv, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %1)
  %2 = icmp ult i32 %1, 3585
  %3 = tail call i32 @llvm.ctpop.i32(i32 %conv) #14, !range !537
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 2
  %or.cond = and i1 %2, %cmp1.i.i
  br i1 %or.cond, label %if.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3:                                          ; preds = %entry
  %config = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %bytesize4 = getelementptr inbounds %struct.nbd_config, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %bytesize4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %bytesize, ptr %bytesize4, align 8
  %7 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #14, !range !537
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %blksize_bits = getelementptr inbounds %struct.nbd_config, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %blksize_bits to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %blksize_bits, align 8
  %pid = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 12
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end3.return_crit_edge, label %if.end10

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end10:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end21_crit_edge, label %if.then13

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %17 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 18
  %21 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %discard_granularity, align 4
  %22 = load ptr, ptr %disk, align 4
  %queue17 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue17, align 4
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 37, i32 19
  %25 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %discard_alignment, align 4
  %26 = load ptr, ptr %disk, align 4
  %queue20 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %queue20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue20, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %28, i32 noundef -1) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end10.if.end21_crit_edge
  %disk22 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %29 = ptrtoint ptr %disk22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk22, align 4
  %queue23 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %queue23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue23, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %32, i32 noundef %conv) #14
  %33 = ptrtoint ptr %disk22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disk22, align 4
  %queue26 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %queue26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue26, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %36, i32 noundef %conv) #14
  %37 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not = icmp eq i32 %37, 0
  br i1 %tobool28.not, label %if.end21.if.end31_crit_edge, label %if.then29

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %disk22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disk22, align 4
  %state = getelementptr inbounds %struct.gendisk, ptr %39, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end21.if.end31_crit_edge
  %40 = ptrtoint ptr %disk22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disk22, align 4
  %shr = ashr i64 %bytesize, 9
  %call33 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %41, i64 noundef %shr) #14
  br i1 %call33, label %if.end31.return_crit_edge, label %if.then34

if.end31.return_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %disk22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disk22, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 10
  %call36 = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 2) #14
  br label %return

return:                                           ; preds = %if.then34, %if.end31.return_crit_edge, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3.return_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end31.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_set_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_work(ptr noundef %work) #0 align 64 {
entry:
  %iov.i = alloca %struct.kvec, align 4
  %to.i = alloca %struct.iov_iter, align 8
  %reply = alloca %struct.nbd_reply, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nbd1 = getelementptr inbounds %struct.recv_thread_args, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %nbd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nbd1, align 4
  %config2 = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %disk = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %index = getelementptr inbounds %struct.recv_thread_args, ptr %work, i32 0, i32 2
  %8 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 2
  %data.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds i8, ptr %reply, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #14
  %10 = call ptr @memset(ptr %9, i32 255, i32 12)
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #14
  %13 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reply, ptr %iov.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to.i) #14
  %15 = call ptr @memset(ptr %to.i, i32 255, i32 24)
  %16 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reply, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %to.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 16) #14
  %call.i = call fastcc i32 @sock_xmit(ptr noundef %1, i32 noundef %12, i32 noundef 0, ptr noundef nonnull %to.i, i32 noundef 256, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %while.cond
  %17 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config2, align 4
  %runtime_flags.i.i = getelementptr inbounds %struct.nbd_config, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %runtime_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %runtime_flags.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %nbd_disconnected.exit.i, label %if.then.i.nbd_read_reply.exit.thread_crit_edge

if.then.i.nbd_read_reply.exit.thread_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_read_reply.exit.thread

nbd_disconnected.exit.i:                          ; preds = %if.then.i
  %22 = ptrtoint ptr %runtime_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %runtime_flags.i.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.end.i, label %nbd_disconnected.exit.i.nbd_read_reply.exit.thread_crit_edge

nbd_disconnected.exit.i.nbd_read_reply.exit.thread_crit_edge: ; preds = %nbd_disconnected.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nbd_read_reply.exit.thread

do.end.i:                                         ; preds = %nbd_disconnected.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device.i, ptr noundef nonnull @.str.150, i32 noundef %call.i) #17
  br label %nbd_read_reply.exit.thread

if.end3.i:                                        ; preds = %while.cond
  %29 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1732535960, i32 %30)
  %cmp5.not.i = icmp eq i32 %30, 1732535960
  br i1 %cmp5.not.i, label %if.end, label %do.end9.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk, align 4
  %part011.i = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %part011.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %part011.i, align 4
  %bd_device12.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device12.i, ptr noundef nonnull @.str.153, i32 noundef %30) #17
  br label %nbd_read_reply.exit.thread

nbd_read_reply.exit.thread:                       ; preds = %do.end9.i, %do.end.i, %nbd_disconnected.exit.i.nbd_read_reply.exit.thread_crit_edge, %if.then.i.nbd_read_reply.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  br label %while.end

if.end:                                           ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  %35 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !554
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.155, i32 noundef 696, ptr noundef nonnull @.str.156) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %39 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !531

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !555
  %42 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i2.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, %40
  %48 = inttoptr i32 %add.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add15.i.i = add i32 %50, 1
  store i32 %add15.i.i, ptr %48, align 4
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !556
  %and.i.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i42, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !532

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #14, !srcloc !557
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %53, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !558
  call void @llvm.prefetch.p0(ptr %53, i32 1, i32 3, i32 1) #14
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 0, i32 1, ptr elementtype(i32) %53) #14, !srcloc !559
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atomic_long_add_unless.exit.i.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !560
  br label %atomic_long_add_unless.exit.i.i

atomic_long_add_unless.exit.i.i:                  ; preds = %do.end11.i.i.i.i.i.i, %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %atomic_long_add_unless.exit.i.i, %do.end31.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end31.i.i ], [ %cmp.i.i.i.i.i, %atomic_long_add_unless.exit.i.i ]
  %call.i3.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i, label %if.end39.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end39.i.i.percpu_ref_tryget.exit_crit_edge:    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end39.i.i
  %call1.i4.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.155, i32 noundef 724, ptr noundef nonnull @.str.157) #14
  br label %percpu_ref_tryget.exit

percpu_ref_tryget.exit:                           ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, %if.end39.i.i.percpu_ref_tryget.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !561
  %55 = call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i.i10.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %ret.0.off0.i.i, label %if.end6, label %do.end

do.end:                                           ; preds = %percpu_ref_tryget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %62, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149) #17
  br label %while.end

if.end6:                                          ; preds = %percpu_ref_tryget.exit
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index, align 4
  %call8 = call fastcc ptr @nbd_handle_reply(ptr noundef %1, i32 noundef %64, ptr noundef nonnull %reply)
  %cmp.i43 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @percpu_ref_put(ptr noundef %q_usage_counter)
  br label %while.end

if.end12:                                         ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %call8, i32 -192
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %queue_flags.i, align 4
  %69 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i44 = icmp eq i32 %69, 0
  br i1 %tobool.not.i44, label %if.end12.if.then19_crit_edge, label %blk_should_fake_timeout.exit

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

blk_should_fake_timeout.exit:                     ; preds = %if.end12
  %call1.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %66) #14
  br i1 %call1.i, label %blk_should_fake_timeout.exit.cleanup_crit_edge, label %blk_should_fake_timeout.exit.if.then19_crit_edge, !prof !532

blk_should_fake_timeout.exit.if.then19_crit_edge: ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

blk_should_fake_timeout.exit.cleanup_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %blk_should_fake_timeout.exit.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  call void @blk_mq_complete_request(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %blk_should_fake_timeout.exit.cleanup_crit_edge
  call fastcc void @percpu_ref_put(ptr noundef %q_usage_counter)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #14
  br label %while.cond

while.end:                                        ; preds = %if.then10, %do.end, %nbd_read_reply.exit.thread
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #14
  %socks = getelementptr inbounds %struct.nbd_config, ptr %3, i32 0, i32 3
  %70 = ptrtoint ptr %socks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %socks, align 8
  %72 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %tx_lock = getelementptr inbounds %struct.nbd_sock, ptr %75, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #14
  call fastcc void @nbd_mark_nsock_dead(ptr noundef %1, ptr noundef %75, i32 noundef 1)
  call void @mutex_unlock(ptr noundef %tx_lock) #14
  call fastcc void @nbd_config_put(ptr noundef %1)
  %recv_threads = getelementptr inbounds %struct.nbd_config, ptr %3, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %recv_threads, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %recv_threads, i32 1, i32 3, i32 1) #14
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %recv_threads, ptr %recv_threads, i32 1, ptr elementtype(i32) %recv_threads) #14, !srcloc !562
  %recv_wq = getelementptr inbounds %struct.nbd_config, ptr %3, i32 0, i32 8
  call void @__wake_up(ptr noundef %recv_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @kfree(ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pid = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_dbg_tasks_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nbd_dbg_tasks_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_dbg_tasks_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pid = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.140, i32 noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_dbg_flags_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nbd_dbg_flags_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbd_dbg_flags_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %config = getelementptr inbounds %struct.nbd_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, i32 noundef %5) #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.142) #14
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.143) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.144) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.145) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %and10 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.146) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %and14 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.147) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbd_handle_reply(ptr nocapture noundef readonly %nbd, i32 noundef %index, ptr nocapture noundef readonly %reply) unnamed_addr #0 align 64 {
entry:
  %bvec = alloca %struct.bio_vec, align 4
  %to = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.nbd_reply, ptr %reply, i32 0, i32 2
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %handle.0.copyload = load i64, ptr %handle1, align 4
  %conv.i = trunc i64 %handle.0.copyload to i32
  %1 = lshr i32 %conv.i, 16
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd, i32 0, i32 3
  %2 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_hw_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ugt i32 %3, %1
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %nbd, i32 0, i32 11
  %4 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tags, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %conv6 = and i32 %conv.i, 65535
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6)
  %cmp.i = icmp ugt i32 %9, %conv6
  br i1 %cmp.i, label %if.end, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end:                                           ; preds = %if.then
  %rqs.i = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %rqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rqs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %conv6
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %13) #14, !srcloc !563
  %14 = ptrtoint ptr %rqs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rqs.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %15, i32 %conv6
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.request, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i295.not = icmp eq i32 %19, 0
  br i1 %cmp.i295.not, label %lor.lhs.false.do.end_crit_edge, label %if.end12

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %req.0320 = phi ptr [ null, %if.end.do.end_crit_edge ], [ %17, %lor.lhs.false.do.end_crit_edge ], [ null, %entry.do.end_crit_edge ], [ null, %if.then.do.end_crit_edge ]
  %disk = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %20 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.158, i32 noundef %conv.i, ptr noundef %req.0320) #17
  br label %cleanup217

if.end12:                                         ; preds = %lor.lhs.false
  tail call fastcc void @trace_nbd_header_received(ptr noundef nonnull %17, i64 noundef %handle.0.copyload)
  %add.ptr.i = getelementptr %struct.request, ptr %17, i32 1
  %lock = getelementptr %struct.request, ptr %17, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %flags = getelementptr %struct.request, ptr %17, i32 1, i32 23
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and.i = and i32 %25, -5
  store i32 %and.i, ptr %flags, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool15.not = icmp eq i32 %26, 0
  br i1 %tobool15.not, label %do.end19, label %if.end25

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %disk20 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %27 = ptrtoint ptr %disk20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk20, align 4
  %part021 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %part021 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %part021, align 4
  %bd_device22 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  %status = getelementptr %struct.request, ptr %17, i32 1, i32 22
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 4
  %conv23 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device22, ptr noundef nonnull @.str.161, i32 noundef %conv.i, i32 noundef %conv23, i32 noundef %and.i) #17
  br label %out

if.end25:                                         ; preds = %if.end12
  %index26 = getelementptr %struct.request, ptr %17, i32 1, i32 17
  %33 = ptrtoint ptr %index26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %index)
  %cmp27.not = icmp eq i32 %34, %index
  br i1 %cmp27.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %disk33 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %35 = ptrtoint ptr %disk33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %disk33, align 4
  %part034 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %part034 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %part034, align 4
  %bd_device35 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device35, ptr noundef nonnull @.str.164, i32 noundef %conv.i, i32 noundef %index, i32 noundef %34) #17
  br label %out

if.end37:                                         ; preds = %if.end25
  %cmd_cookie = getelementptr %struct.request, ptr %17, i32 1, i32 25
  %39 = ptrtoint ptr %cmd_cookie to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd_cookie, align 4
  %shr.i297 = lshr i64 %handle.0.copyload, 32
  %conv.i298 = trunc i64 %shr.i297 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i298)
  %cmp39.not = icmp eq i32 %40, %conv.i298
  br i1 %cmp39.not, label %if.end50, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %disk45 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %41 = ptrtoint ptr %disk45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disk45, align 4
  %part046 = getelementptr inbounds %struct.gendisk, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %part046 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %part046, align 4
  %bd_device47 = getelementptr inbounds %struct.block_device, ptr %44, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device47, ptr noundef nonnull @.str.167, ptr noundef nonnull %17, i32 noundef %40, i32 noundef %conv.i298) #17
  br label %out

if.end50:                                         ; preds = %if.end37
  %status51 = getelementptr %struct.request, ptr %17, i32 1, i32 22
  %45 = ptrtoint ptr %status51 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %status51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp53.not = icmp eq i8 %46, 0
  br i1 %cmp53.not, label %if.end62, label %do.end58

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %disk59 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %47 = ptrtoint ptr %disk59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disk59, align 4
  %part060 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part060 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part060, align 4
  %bd_device61 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device61, ptr noundef nonnull @.str.170, ptr noundef nonnull %17) #17
  br label %out

if.end62:                                         ; preds = %if.end50
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool65.not = icmp eq i32 %53, 0
  br i1 %tobool65.not, label %if.end73, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %disk70 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %54 = ptrtoint ptr %disk70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk70, align 4
  %part071 = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part071 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part071, align 4
  %bd_device72 = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device72, ptr noundef nonnull @.str.173, ptr noundef nonnull %17) #17
  br label %out

if.end73:                                         ; preds = %if.end62
  %error = getelementptr inbounds %struct.nbd_reply, ptr %reply, i32 0, i32 1
  %58 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool74.not = icmp eq i32 %59, 0
  br i1 %tobool74.not, label %do.body85, label %do.end78

do.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %disk79 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %60 = ptrtoint ptr %disk79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disk79, align 4
  %part080 = getelementptr inbounds %struct.gendisk, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %part080 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %part080, align 4
  %bd_device81 = getelementptr inbounds %struct.block_device, ptr %63, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device81, ptr noundef nonnull @.str.176, i32 noundef %59) #17
  %64 = ptrtoint ptr %status51 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %status51, align 4
  br label %out

do.body85:                                        ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_handle_reply.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_handle_reply, %if.then90)) #14
          to label %do.end94 [label %if.then90], !srcloc !542

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  %disk.i = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  %65 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %68, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_handle_reply.__UNIQUE_ID_ddebug532, ptr noundef %bd_device.i, ptr noundef nonnull @.str.178, ptr noundef nonnull %17) #14
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body85
  %cmd_flags = getelementptr inbounds %struct.request, ptr %17, i32 0, i32 3
  %69 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_flags, align 4
  %and.i301 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301)
  %tobool.i.not = icmp eq i32 %and.i301, 0
  br i1 %tobool.i.not, label %if.then99, label %do.end94.out_crit_edge

do.end94.out_crit_edge:                           ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then99:                                        ; preds = %do.end94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec) #14
  %71 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec, align 4, !annotation !533
  %72 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %72, align 4, !annotation !533
  %74 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 4, !annotation !533
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #14
  %76 = call ptr @memset(ptr %to, i32 255, i32 24)
  %bio = getelementptr inbounds %struct.request, ptr %17, i32 0, i32 10
  %77 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bio, align 8
  %tobool100.not = icmp eq ptr %78, null
  br i1 %tobool100.not, label %if.then99.cleanup_crit_edge, label %for.body.lr.ph

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then99
  %disk.i302 = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc202.for.body_crit_edge, %for.body.lr.ph
  %storemerge332 = phi ptr [ %78, %for.body.lr.ph ], [ %124, %for.inc202.for.body_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge332, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool110.not327 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool110.not327, label %for.body.for.inc202_crit_edge, label %land.rhs.lr.ph

for.body.for.inc202_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc202

land.rhs.lr.ph:                                   ; preds = %for.body
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge332, i32 0, i32 8, i32 3
  %80 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %80)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge332, i32 0, i32 8, i32 2
  %81 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %81)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %storemerge332, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %storemerge332, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %iter.sroa.6.0330 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0329 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0328 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %82 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx113 = getelementptr %struct.bio_vec, ptr %83, i32 %iter.sroa.10.0329
  %84 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx113, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %83, i32 %iter.sroa.10.0329, i32 2
  %86 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bv_offset, align 4
  %add = add i32 %87, %iter.sroa.16.0328
  %div286 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %85, i32 %div286
  %bv_len128 = getelementptr %struct.bio_vec, ptr %83, i32 %iter.sroa.10.0329, i32 1
  %88 = ptrtoint ptr %bv_len128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bv_len128, align 4
  %sub = sub i32 %89, %iter.sroa.16.0328
  %90 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0330, i32 %sub)
  %rem = and i32 %add, 4095
  %sub144 = sub nuw nsw i32 4096, %rem
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 %sub144)
  %92 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr, ptr %bvec, align 4
  %93 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %72, align 4
  %94 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %rem, ptr %74, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %to, i32 noundef 0, ptr noundef nonnull %bvec, i32 noundef 1, i32 noundef %91) #14
  %call165 = call fastcc i32 @sock_xmit(ptr noundef %nbd, i32 noundef %index, i32 noundef 0, ptr noundef nonnull %to, i32 noundef 256, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %do.end171, label %do.body181

do.end171:                                        ; preds = %land.rhs
  %95 = ptrtoint ptr %disk.i302 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %disk.i302, align 4
  %part0173 = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %part0173 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %part0173, align 4
  %bd_device174 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device174, ptr noundef nonnull @.str.180, i32 noundef %call165) #17
  %config = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 4
  %99 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config, align 4
  %runtime_flags.i = getelementptr inbounds %struct.nbd_config, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %runtime_flags.i, align 4
  %103 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i, label %nbd_disconnected.exit, label %do.end171.if.then177_crit_edge

do.end171.if.then177_crit_edge:                   ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then177

nbd_disconnected.exit:                            ; preds = %do.end171
  %104 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %runtime_flags.i, align 4
  %106 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool176.not = icmp eq i32 %106, 0
  br i1 %tobool176.not, label %nbd_disconnected.exit.cleanup_crit_edge, label %nbd_disconnected.exit.if.then177_crit_edge

nbd_disconnected.exit.if.then177_crit_edge:       ; preds = %nbd_disconnected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then177

nbd_disconnected.exit.cleanup_crit_edge:          ; preds = %nbd_disconnected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then177:                                       ; preds = %nbd_disconnected.exit.if.then177_crit_edge, %do.end171.if.then177_crit_edge
  %107 = ptrtoint ptr %status51 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 10, ptr %status51, align 4
  br label %cleanup

do.body181:                                       ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbd_handle_reply.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbd_handle_reply, %if.then193)) #14
          to label %for.inc [label %if.then193], !srcloc !542

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %disk.i302 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %disk.i302, align 4
  %part0.i303 = getelementptr inbounds %struct.gendisk, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %part0.i303 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %part0.i303, align 4
  %bd_device.i304 = getelementptr inbounds %struct.block_device, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbd_handle_reply.__UNIQUE_ID_ddebug537, ptr noundef %bd_device.i304, ptr noundef nonnull @.str.182, ptr noundef nonnull %17, i32 noundef %113) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then193, %do.body181
  %114 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %72, align 4
  %116 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %117, 255
  %118 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %118, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %115, %iter.sroa.16.0328
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %120, i32 %iter.sroa.10.0329, i32 1
  %121 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %122)
  %cmp.i.i = icmp eq i32 %add.i.i, %122
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select324 = add i32 %iter.sroa.10.0329, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0328, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0329, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select324, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0330, %115
  %tobool110.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool110.not, label %bio_advance_iter_single.exit.for.inc202_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

bio_advance_iter_single.exit.for.inc202_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc202

for.inc202:                                       ; preds = %bio_advance_iter_single.exit.for.inc202_crit_edge, %for.body.for.inc202_crit_edge
  %123 = ptrtoint ptr %storemerge332 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %storemerge332, align 8
  %tobool105.not = icmp eq ptr %124, null
  br i1 %tobool105.not, label %for.inc202.cleanup_crit_edge, label %for.inc202.for.body_crit_edge

for.inc202.for.body_crit_edge:                    ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc202.cleanup_crit_edge:                     ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc202.cleanup_crit_edge, %if.then177, %nbd_disconnected.exit.cleanup_crit_edge, %if.then99.cleanup_crit_edge
  %ret.0 = phi i32 [ 0, %if.then177 ], [ -5, %nbd_disconnected.exit.cleanup_crit_edge ], [ 0, %if.then99.cleanup_crit_edge ], [ 0, %for.inc202.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #14
  br label %out

out:                                              ; preds = %cleanup, %do.end94.out_crit_edge, %do.end78, %do.end69, %do.end58, %do.end44, %do.end32, %do.end19
  %ret.1 = phi i32 [ -2, %do.end32 ], [ -2, %do.end44 ], [ -2, %do.end58 ], [ -2, %do.end69 ], [ 0, %do.end78 ], [ %ret.0, %cleanup ], [ 0, %do.end94.out_crit_edge ], [ -2, %do.end19 ]
  call fastcc void @trace_nbd_payload_received(ptr noundef nonnull %17, i64 noundef %handle.0.copyload)
  call void @mutex_unlock(ptr noundef %lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool211.not = icmp eq i32 %ret.1, 0
  %125 = inttoptr i32 %ret.1 to ptr
  %spec.select336 = select i1 %tobool211.not, ptr %add.ptr.i, ptr %125
  br label %cleanup217

cleanup217:                                       ; preds = %out, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end ], [ %spec.select336, %out ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !554
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.155, i32 noundef 696, ptr noundef nonnull @.str.156) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !531

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !555
  %7 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !556
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !532

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !557
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !543
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #14, !srcloc !544
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !532

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.155, i32 noundef 724, ptr noundef nonnull @.str.157) #14
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !561
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nbd_header_received(ptr noundef %req, i64 noundef %handle) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_received, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nbd_header_received, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !542

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !531

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !564
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_received, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !565
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !565
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !531

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_header_received, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nbd_header_received.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_nbd_header_received.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 52, ptr noundef nonnull @.str.81) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %38 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nbd_payload_received(ptr noundef %req, i64 noundef %handle) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_received, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nbd_payload_received, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !542

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !521) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !531

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !566
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_received, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %req, i64 noundef %handle) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !567
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !567
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !531

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nbd_payload_received, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nbd_payload_received.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_nbd_payload_received.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 59, ptr noundef nonnull @.str.81) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %38 = tail call i32 @llvm.read_register.i32(metadata !521) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backend_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %backend = getelementptr inbounds %struct.nbd_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend, align 4
  %tobool.not = icmp eq ptr %5, null
  %..str.185 = select i1 %tobool.not, ptr @.str.185, ptr %5
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.184, ptr noundef %..str.185)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_cb(i32 noundef %id, ptr noundef %ptr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @populate_nbd_status(ptr noundef %ptr, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @populate_nbd_status(ptr noundef %nbd, ptr noundef %reply) unnamed_addr #0 align 64 {
entry:
  %tmp.i22 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %config_refs = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %config_refs, i32 noundef 4) #14
  %0 = ptrtoint ptr %config_refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %config_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %tobool.not to i8
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %reply, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %reply, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not25 = icmp eq ptr %3, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not25
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.nbd_device, ptr %nbd, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %reply, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i22) #14
  %7 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %tmp.i22, align 1
  %call.i23 = call i32 @nla_put(ptr noundef %reply, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i22) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool10.not = icmp eq i32 %call.i23, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !63, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !145, !147, !148, !150, !152, !154, !155, !156, !157, !159, !160, !162, !164, !166, !167, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !216, !217, !218, !219, !220, !221, !222, !224, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !251, !252, !254, !255, !256, !257, !258, !260, !261, !263, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !282, !284, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !312, !313, !315, !316, !318, !320, !321, !322, !323, !325, !326, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !344, !346, !348, !350, !351, !352, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !438, !439, !440, !442, !443, !444, !445, !446, !447, !449, !451, !453, !455, !457, !458, !459, !460, !462, !463, !464, !466, !467, !469, !470, !471, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !489, !490, !491, !493, !494, !496, !497, !499, !500, !502, !503, !504, !506, !508, !510, !511, !512, !513, !515, !516, !518, !519}
!llvm.named.register.sp = !{!521}
!llvm.module.flags = !{!522, !523, !524, !525, !526, !527, !528, !529}
!llvm.ident = !{!530}

!0 = !{ptr @__tracepoint_nbd_header_sent, !1, !"__tracepoint_nbd_header_sent", i1 false, i1 false}
!1 = !{!"../include/trace/events/nbd.h", i32 33, i32 1}
!2 = !{ptr @__tracepoint_ptr_nbd_header_sent, !1, !"__tracepoint_ptr_nbd_header_sent", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_nbd_header_sent, !1, !"__SCK__tp_func_nbd_header_sent", i1 false, i1 false}
!4 = !{ptr @__tracepoint_nbd_payload_sent, !5, !"__tracepoint_nbd_payload_sent", i1 false, i1 false}
!5 = !{!"../include/trace/events/nbd.h", i32 40, i32 1}
!6 = !{ptr @__tracepoint_ptr_nbd_payload_sent, !5, !"__tracepoint_ptr_nbd_payload_sent", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_nbd_payload_sent, !5, !"__SCK__tp_func_nbd_payload_sent", i1 false, i1 false}
!8 = !{ptr @__tracepoint_nbd_header_received, !9, !"__tracepoint_nbd_header_received", i1 false, i1 false}
!9 = !{!"../include/trace/events/nbd.h", i32 47, i32 1}
!10 = !{ptr @__tracepoint_ptr_nbd_header_received, !9, !"__tracepoint_ptr_nbd_header_received", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_nbd_header_received, !9, !"__SCK__tp_func_nbd_header_received", i1 false, i1 false}
!12 = !{ptr @__tracepoint_nbd_payload_received, !13, !"__tracepoint_nbd_payload_received", i1 false, i1 false}
!13 = !{!"../include/trace/events/nbd.h", i32 54, i32 1}
!14 = !{ptr @__tracepoint_ptr_nbd_payload_received, !13, !"__tracepoint_ptr_nbd_payload_received", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_nbd_payload_received, !13, !"__SCK__tp_func_nbd_payload_received", i1 false, i1 false}
!16 = !{ptr @__tracepoint_nbd_send_request, !17, !"__tracepoint_nbd_send_request", i1 false, i1 false}
!17 = !{!"../include/trace/events/nbd.h", i32 94, i32 1}
!18 = !{ptr @__tracepoint_ptr_nbd_send_request, !17, !"__tracepoint_ptr_nbd_send_request", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_nbd_send_request, !17, !"__SCK__tp_func_nbd_send_request", i1 false, i1 false}
!20 = !{ptr @event_class_nbd_transport_event, !21, !"event_class_nbd_transport_event", i1 false, i1 false}
!21 = !{!"../include/trace/events/nbd.h", i32 10, i32 1}
!22 = !{ptr @event_nbd_header_sent, !1, !"event_nbd_header_sent", i1 false, i1 false}
!23 = !{ptr @__event_nbd_header_sent, !1, !"__event_nbd_header_sent", i1 false, i1 false}
!24 = !{ptr @event_nbd_payload_sent, !5, !"event_nbd_payload_sent", i1 false, i1 false}
!25 = !{ptr @__event_nbd_payload_sent, !5, !"__event_nbd_payload_sent", i1 false, i1 false}
!26 = !{ptr @event_nbd_header_received, !9, !"event_nbd_header_received", i1 false, i1 false}
!27 = !{ptr @__event_nbd_header_received, !9, !"__event_nbd_header_received", i1 false, i1 false}
!28 = !{ptr @event_nbd_payload_received, !13, !"event_nbd_payload_received", i1 false, i1 false}
!29 = !{ptr @__event_nbd_payload_received, !13, !"__event_nbd_payload_received", i1 false, i1 false}
!30 = !{ptr @event_class_nbd_send_request, !31, !"event_class_nbd_send_request", i1 false, i1 false}
!31 = !{!"../include/trace/events/nbd.h", i32 61, i32 1}
!32 = !{ptr @event_nbd_send_request, !17, !"event_nbd_send_request", i1 false, i1 false}
!33 = !{ptr @__event_nbd_send_request, !17, !"__event_nbd_send_request", i1 false, i1 false}
!34 = !{ptr @__bpf_trace_tp_map_nbd_header_sent, !1, !"__bpf_trace_tp_map_nbd_header_sent", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_nbd_payload_sent, !5, !"__bpf_trace_tp_map_nbd_payload_sent", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_nbd_header_received, !9, !"__bpf_trace_tp_map_nbd_header_received", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_nbd_payload_received, !13, !"__bpf_trace_tp_map_nbd_payload_received", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_nbd_send_request, !17, !"__bpf_trace_tp_map_nbd_send_request", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/nbd.c", i32 2542, i32 4}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nbd_cleanup._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @nbd_cleanup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/nbd.c", i32 2551, i32 31}
!47 = !{ptr @__initcall__kmod_nbd__540_2554_nbd_init6, !48, !"__initcall__kmod_nbd__540_2554_nbd_init6", i1 false, i1 false}
!48 = !{!"../drivers/block/nbd.c", i32 2554, i32 1}
!49 = !{ptr @__exitcall_nbd_cleanup, !50, !"__exitcall_nbd_cleanup", i1 false, i1 false}
!50 = !{!"../drivers/block/nbd.c", i32 2555, i32 1}
!51 = !{ptr @__UNIQUE_ID_description541, !52, !"__UNIQUE_ID_description541", i1 false, i1 false}
!52 = !{!"../drivers/block/nbd.c", i32 2557, i32 1}
!53 = !{ptr @__UNIQUE_ID_file542, !54, !"__UNIQUE_ID_file542", i1 false, i1 false}
!54 = !{!"../drivers/block/nbd.c", i32 2558, i32 1}
!55 = !{ptr @__UNIQUE_ID_license543, !54, !"__UNIQUE_ID_license543", i1 false, i1 false}
!56 = !{ptr @__param_nbds_max, !57, !"__param_nbds_max", i1 false, i1 false}
!57 = !{!"../drivers/block/nbd.c", i32 2560, i32 1}
!58 = !{ptr @__UNIQUE_ID_nbds_maxtype544, !57, !"__UNIQUE_ID_nbds_maxtype544", i1 false, i1 false}
!59 = !{ptr @__UNIQUE_ID_nbds_max545, !60, !"__UNIQUE_ID_nbds_max545", i1 false, i1 false}
!60 = !{!"../drivers/block/nbd.c", i32 2561, i32 1}
!61 = !{ptr @__param_max_part, !62, !"__param_max_part", i1 false, i1 false}
!62 = !{!"../drivers/block/nbd.c", i32 2562, i32 1}
!63 = !{ptr @__UNIQUE_ID_max_parttype546, !62, !"__UNIQUE_ID_max_parttype546", i1 false, i1 false}
!64 = !{ptr @__UNIQUE_ID_max_part547, !65, !"__UNIQUE_ID_max_part547", i1 false, i1 false}
!65 = !{!"../drivers/block/nbd.c", i32 2563, i32 1}
!66 = !{ptr @nbd_del_wq, !67, !"nbd_del_wq", i1 false, i1 false}
!67 = !{!"../drivers/block/nbd.c", i32 52, i32 33}
!68 = !{ptr @__tpstrtab_nbd_header_sent, !1, !"__tpstrtab_nbd_header_sent", i1 false, i1 false}
!69 = !{ptr @__tpstrtab_nbd_payload_sent, !5, !"__tpstrtab_nbd_payload_sent", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_nbd_header_received, !9, !"__tpstrtab_nbd_header_received", i1 false, i1 false}
!71 = !{ptr @__tpstrtab_nbd_payload_received, !13, !"__tpstrtab_nbd_payload_received", i1 false, i1 false}
!72 = !{ptr @__tpstrtab_nbd_send_request, !17, !"__tpstrtab_nbd_send_request", i1 false, i1 false}
!73 = !{ptr @str__nbd__trace_system_name, !74, !"str__nbd__trace_system_name", i1 false, i1 false}
!74 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!75 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @trace_event_fields_nbd_transport_event, !21, !"trace_event_fields_nbd_transport_event", i1 false, i1 false}
!80 = !{ptr @trace_event_type_funcs_nbd_transport_event, !21, !"trace_event_type_funcs_nbd_transport_event", i1 false, i1 false}
!81 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @print_fmt_nbd_transport_event, !21, !"print_fmt_nbd_transport_event", i1 false, i1 false}
!83 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @trace_event_fields_nbd_send_request, !31, !"trace_event_fields_nbd_send_request", i1 false, i1 false}
!88 = !{ptr @trace_event_type_funcs_nbd_send_request, !31, !"trace_event_type_funcs_nbd_send_request", i1 false, i1 false}
!89 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @print_fmt_nbd_send_request, !31, !"print_fmt_nbd_send_request", i1 false, i1 false}
!91 = !{ptr @nbd_dbg_dir, !92, !"nbd_dbg_dir", i1 false, i1 false}
!92 = !{!"../drivers/block/nbd.c", i32 153, i32 23}
!93 = !{ptr @.str.14, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/nbd.c", i32 51, i32 8}
!95 = !{ptr @.str.15, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nbd_index_mutex, !94, !"nbd_index_mutex", i1 false, i1 false}
!97 = !{ptr @.str.16, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/block/nbd.c", i32 50, i32 8}
!99 = !{ptr @nbd_index_idr, !98, !"nbd_index_idr", i1 false, i1 false}
!100 = !{ptr @nbd_genl_family, !101, !"nbd_genl_family", i1 false, i1 false}
!101 = !{!"../drivers/block/nbd.c", i32 2304, i32 27}
!102 = !{ptr @nbd_attr_policy, !103, !"nbd_attr_policy", i1 false, i1 false}
!103 = !{!"../drivers/block/nbd.c", i32 1864, i32 32}
!104 = !{ptr @nbd_connect_genl_ops, !105, !"nbd_connect_genl_ops", i1 false, i1 false}
!105 = !{!"../drivers/block/nbd.c", i32 2277, i32 36}
!106 = !{ptr @.str.17, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/block/nbd.c", i32 1921, i32 3}
!108 = !{ptr @.str.18, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @nbd_genl_connect._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @nbd_genl_connect._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/nbd.c", i32 1925, i32 3}
!113 = !{ptr @nbd_genl_connect._entry.19, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @nbd_genl_connect._entry_ptr.21, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.23, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/nbd.c", i32 1939, i32 5}
!117 = !{ptr @nbd_genl_connect._entry.22, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @nbd_genl_connect._entry_ptr.24, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.26, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/block/nbd.c", i32 1950, i32 4}
!121 = !{ptr @nbd_genl_connect._entry.25, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @nbd_genl_connect._entry_ptr.27, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/nbd.c", i32 1961, i32 3}
!125 = !{ptr @nbd_genl_connect._entry.28, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @nbd_genl_connect._entry_ptr.30, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/block/nbd.c", i32 1973, i32 3}
!129 = !{ptr @nbd_genl_connect._entry.31, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nbd_genl_connect._entry_ptr.33, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/nbd.c", i32 2028, i32 5}
!133 = !{ptr @nbd_genl_connect._entry.34, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @nbd_genl_connect._entry_ptr.36, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.38, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/nbd.c", i32 2037, i32 5}
!137 = !{ptr @nbd_genl_connect._entry.37, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @nbd_genl_connect._entry_ptr.39, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/nbd.c", i32 2062, i32 3}
!141 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nbd_genl_connect._entry.40, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @nbd_genl_connect._entry_ptr.44, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @nbd_dev_add.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/block/nbd.c", i32 1742, i32 2}
!147 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @nbd_dev_add.__key.46, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/block/nbd.c", i32 1765, i32 9}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/nbd.c", i32 1772, i32 36}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/block/nbd.c", i32 1776, i32 3}
!154 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @nbd_dev_add._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @nbd_dev_add._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @nbd_dev_add.__key.50, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/block/nbd.c", i32 1794, i32 2}
!159 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/nbd.c", i32 1817, i32 27}
!162 = !{ptr @nbd_mq_ops, !163, !"nbd_mq_ops", i1 false, i1 false}
!163 = !{!"../drivers/block/nbd.c", i32 1717, i32 32}
!164 = !{ptr @.str.53, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/nbd.c", i32 966, i32 3}
!166 = !{ptr @nbd_handle_cmd._rs, !165, !"_rs", i1 false, i1 false}
!167 = !{ptr @__func__.nbd_handle_cmd, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @nbd_handle_cmd._entry, !165, !"_entry", i1 false, i1 false}
!170 = !{ptr @nbd_handle_cmd._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @nbd_handle_cmd._rs.55, !172, !"_rs", i1 false, i1 false}
!172 = !{!"../drivers/block/nbd.c", i32 973, i32 3}
!173 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @nbd_handle_cmd._entry.56, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @nbd_handle_cmd._entry_ptr.58, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @nbd_handle_cmd._rs.59, !177, !"_rs", i1 false, i1 false}
!177 = !{!"../drivers/block/nbd.c", i32 1027, i32 3}
!178 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @nbd_handle_cmd._entry.60, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @nbd_handle_cmd._entry_ptr.62, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @find_fallback._rs, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../drivers/block/nbd.c", i32 913, i32 3}
!183 = !{ptr @__func__.find_fallback, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.63, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @find_fallback._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @find_fallback._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @find_fallback._rs.64, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/block/nbd.c", i32 936, i32 4}
!189 = !{ptr @find_fallback._entry.65, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @find_fallback._entry_ptr.66, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/block/nbd.c", i32 378, i32 2}
!193 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @sock_shutdown._entry, !192, !"_entry", i1 false, i1 false}
!196 = !{ptr @sock_shutdown._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @nbd_send_cmd._rs, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../drivers/block/nbd.c", i32 574, i32 3}
!199 = !{ptr @__func__.nbd_send_cmd, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.70, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @nbd_send_cmd._entry, !198, !"_entry", i1 false, i1 false}
!202 = !{ptr @nbd_send_cmd._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/block/nbd.c", i32 612, i32 2}
!205 = !{ptr @nbd_send_cmd.__UNIQUE_ID_ddebug526, !204, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!206 = !{ptr @nbd_send_cmd._rs.72, !207, !"_rs", i1 false, i1 false}
!207 = !{!"../drivers/block/nbd.c", i32 632, i32 3}
!208 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @nbd_send_cmd._entry.73, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @nbd_send_cmd._entry_ptr.75, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.76, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/block/nbd.c", i32 650, i32 4}
!213 = !{ptr @nbd_send_cmd.__UNIQUE_ID_ddebug531, !212, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!214 = !{ptr @.str.78, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/block/nbd.c", i32 673, i32 5}
!216 = !{ptr @nbd_send_cmd._entry.77, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @nbd_send_cmd._entry_ptr.79, !215, !"_entry_ptr", i1 false, i1 false}
!218 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!219 = !{ptr @.str.80, !17, !"<string literal>", i1 false, i1 false}
!220 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!221 = !{ptr @.str.81, !17, !"<string literal>", i1 false, i1 false}
!222 = distinct !{null, !223, !"__already_done", i1 false, i1 false}
!223 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!224 = !{ptr @.str.82, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.83, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/block/nbd.c", i32 211, i32 29}
!227 = !{ptr @.str.84, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/block/nbd.c", i32 212, i32 29}
!229 = !{ptr @.str.85, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/nbd.c", i32 213, i32 29}
!231 = !{ptr @.str.86, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/block/nbd.c", i32 214, i32 29}
!233 = !{ptr @.str.87, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/block/nbd.c", i32 215, i32 29}
!235 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/block/nbd.c", i32 217, i32 9}
!237 = !{ptr @sock_xmit._rs, !238, !"_rs", i1 false, i1 false}
!238 = !{!"../drivers/block/nbd.c", i32 504, i32 3}
!239 = !{ptr @__func__.sock_xmit, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.89, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @sock_xmit._entry, !238, !"_entry", i1 false, i1 false}
!242 = !{ptr @sock_xmit._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.91, !238, !"<string literal>", i1 false, i1 false}
!245 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!246 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!247 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!248 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!249 = !{ptr @nbd_mark_nsock_dead.__key, !250, !"__key", i1 false, i1 false}
!250 = !{!"../drivers/block/nbd.c", i32 297, i32 4}
!251 = !{ptr @.str.92, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.93, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/block/nbd.c", i32 309, i32 5}
!254 = !{ptr @.str.94, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.95, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @nbd_mark_nsock_dead._entry, !253, !"_entry", i1 false, i1 false}
!257 = !{ptr @nbd_mark_nsock_dead._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!258 = distinct !{null, !259, !"__already_done", i1 false, i1 false}
!259 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!260 = !{ptr @.str.96, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @nbd_xmit_timeout._rs, !262, !"_rs", i1 false, i1 false}
!262 = !{!"../drivers/block/nbd.c", i32 421, i32 3}
!263 = !{ptr @__func__.nbd_xmit_timeout, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.97, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @nbd_xmit_timeout._entry, !262, !"_entry", i1 false, i1 false}
!266 = !{ptr @nbd_xmit_timeout._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/block/nbd.c", i32 460, i32 3}
!269 = !{ptr @nbd_xmit_timeout._entry.98, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @nbd_xmit_timeout._entry_ptr.100, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @nbd_xmit_timeout._rs.101, !272, !"_rs", i1 false, i1 false}
!272 = !{!"../drivers/block/nbd.c", i32 479, i32 2}
!273 = !{ptr @.str.103, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @nbd_xmit_timeout._entry.102, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @nbd_xmit_timeout._entry_ptr.104, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.105, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/block/nbd.c", i32 353, i32 2}
!278 = !{ptr @.str.106, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @nbd_complete_rq.__UNIQUE_ID_ddebug525, !277, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!280 = !{ptr @.str.107, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.108, !277, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @nbd_init_request.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../drivers/block/nbd.c", i32 1713, i32 2}
!284 = !{ptr @.str.109, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @part_shift, !286, !"part_shift", i1 false, i1 false}
!286 = !{!"../drivers/block/nbd.c", i32 164, i32 12}
!287 = !{ptr @nbd_fops, !288, !"nbd_fops", i1 false, i1 false}
!288 = !{!"../drivers/block/nbd.c", i32 1589, i32 45}
!289 = !{ptr @.str.110, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/block/nbd.c", i32 1274, i32 2}
!291 = !{ptr @.str.111, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @nbd_disconnect._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @nbd_disconnect._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.112, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/block/nbd.c", i32 1264, i32 4}
!296 = !{ptr @.str.113, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @send_disconnects._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @send_disconnects._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.114, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/block/nbd.c", i32 899, i32 2}
!301 = !{ptr @.str.115, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @nbd_clear_que.__UNIQUE_ID_ddebug538, !300, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!303 = !{ptr @.str.116, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/block/nbd.c", i32 1513, i32 3}
!305 = !{ptr @.str.117, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @nbd_ioctl._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @nbd_ioctl._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @nbd_total_devices, !309, !"nbd_total_devices", i1 false, i1 false}
!309 = !{!"../drivers/block/nbd.c", i32 53, i32 12}
!310 = !{ptr @nbd_alloc_config.__key, !311, !"__key", i1 false, i1 false}
!311 = !{!"../drivers/block/nbd.c", i32 1526, i32 2}
!312 = !{ptr @.str.118, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @nbd_alloc_config.__key.119, !314, !"__key", i1 false, i1 false}
!314 = !{!"../drivers/block/nbd.c", i32 1527, i32 2}
!315 = !{ptr @.str.120, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @nbd_sock_policy, !317, !"nbd_sock_policy", i1 false, i1 false}
!317 = !{!"../drivers/block/nbd.c", i32 1877, i32 32}
!318 = !{ptr @.str.121, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/block/nbd.c", i32 1118, i32 3}
!320 = !{ptr @.str.122, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @nbd_add_socket._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @nbd_add_socket._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @nbd_add_socket.__key, !324, !"__key", i1 false, i1 false}
!324 = !{!"../drivers/block/nbd.c", i32 1142, i32 2}
!325 = !{ptr @.str.123, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.124, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/block/nbd.c", i32 1083, i32 3}
!328 = !{ptr @.str.125, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @nbd_get_socket._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @nbd_get_socket._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.126, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/block/nbd.c", i32 1343, i32 3}
!333 = !{ptr @.str.127, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @nbd_start_device._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @nbd_start_device._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.129, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/block/nbd.c", i32 1354, i32 3}
!338 = !{ptr @nbd_start_device._entry.128, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @nbd_start_device._entry_ptr.130, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @nbd_start_device.__key, !341, !"__key", i1 false, i1 false}
!341 = !{!"../drivers/block/nbd.c", i32 1384, i32 3}
!342 = !{ptr @.str.131, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/block/nbd.c", i32 230, i32 20}
!344 = !{ptr @pid_attr, !345, !"pid_attr", i1 false, i1 false}
!345 = !{!"../drivers/block/nbd.c", i32 229, i32 38}
!346 = !{ptr @.str.132, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/block/nbd.c", i32 226, i32 22}
!348 = !{ptr @.str.133, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/block/nbd.c", i32 1647, i32 3}
!350 = !{ptr @.str.134, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @nbd_dev_dbg_init._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @nbd_dev_dbg_init._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.135, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/block/nbd.c", i32 1653, i32 22}
!355 = !{ptr @.str.136, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/block/nbd.c", i32 1654, i32 21}
!357 = !{ptr @.str.137, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/block/nbd.c", i32 1655, i32 21}
!359 = !{ptr @.str.138, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/block/nbd.c", i32 1656, i32 21}
!361 = !{ptr @.str.139, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/block/nbd.c", i32 1657, i32 22}
!363 = !{ptr @nbd_dbg_tasks_fops, !364, !"nbd_dbg_tasks_fops", i1 false, i1 false}
!364 = !{!"../drivers/block/nbd.c", i32 1610, i32 1}
!365 = !{ptr @.str.140, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/block/nbd.c", i32 1605, i32 17}
!367 = !{ptr @nbd_dbg_flags_fops, !368, !"nbd_dbg_flags_fops", i1 false, i1 false}
!368 = !{!"../drivers/block/nbd.c", i32 1635, i32 1}
!369 = !{ptr @.str.141, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/block/nbd.c", i32 1617, i32 16}
!371 = !{ptr @.str.142, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/block/nbd.c", i32 1619, i32 14}
!373 = !{ptr @.str.143, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/block/nbd.c", i32 1622, i32 15}
!375 = !{ptr @.str.144, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/block/nbd.c", i32 1624, i32 15}
!377 = !{ptr @.str.145, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/block/nbd.c", i32 1626, i32 15}
!379 = !{ptr @.str.146, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/block/nbd.c", i32 1628, i32 15}
!381 = !{ptr @.str.147, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/block/nbd.c", i32 1630, i32 15}
!383 = !{ptr @.str.148, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/block/nbd.c", i32 846, i32 4}
!385 = !{ptr @.str.149, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @recv_work._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @recv_work._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.150, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/block/nbd.c", i32 708, i32 4}
!390 = !{ptr @.str.151, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @nbd_read_reply._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @nbd_read_reply._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.153, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/block/nbd.c", i32 714, i32 3}
!395 = !{ptr @nbd_read_reply._entry.152, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @nbd_read_reply._entry_ptr.154, !394, !"_entry_ptr", i1 false, i1 false}
!397 = distinct !{null, !398, !"__warned", i1 false, i1 false}
!398 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!399 = !{ptr @.str.155, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.156, !398, !"<string literal>", i1 false, i1 false}
!401 = distinct !{null, !402, !"__warned", i1 false, i1 false}
!402 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!403 = !{ptr @.str.157, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.158, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/block/nbd.c", i32 741, i32 3}
!406 = !{ptr @.str.159, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @nbd_handle_reply._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @nbd_handle_reply._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.161, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/block/nbd.c", i32 750, i32 3}
!411 = !{ptr @nbd_handle_reply._entry.160, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @nbd_handle_reply._entry_ptr.162, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.164, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/block/nbd.c", i32 756, i32 3}
!415 = !{ptr @nbd_handle_reply._entry.163, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @nbd_handle_reply._entry_ptr.165, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.167, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/block/nbd.c", i32 762, i32 3}
!419 = !{ptr @nbd_handle_reply._entry.166, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @nbd_handle_reply._entry_ptr.168, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.170, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/block/nbd.c", i32 768, i32 3}
!423 = !{ptr @nbd_handle_reply._entry.169, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @nbd_handle_reply._entry_ptr.171, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.173, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/block/nbd.c", i32 774, i32 3}
!427 = !{ptr @nbd_handle_reply._entry.172, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @nbd_handle_reply._entry_ptr.174, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.176, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/block/nbd.c", i32 780, i32 3}
!431 = !{ptr @nbd_handle_reply._entry.175, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @nbd_handle_reply._entry_ptr.177, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.178, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/block/nbd.c", i32 786, i32 2}
!435 = !{ptr @nbd_handle_reply.__UNIQUE_ID_ddebug532, !434, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!436 = !{ptr @.str.180, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/block/nbd.c", i32 796, i32 5}
!438 = !{ptr @nbd_handle_reply._entry.179, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @nbd_handle_reply._entry_ptr.181, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.182, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/block/nbd.c", i32 811, i32 4}
!442 = !{ptr @nbd_handle_reply.__UNIQUE_ID_ddebug537, !441, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!443 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!444 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!445 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!446 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!447 = !{ptr @.str.183, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/block/nbd.c", i32 244, i32 20}
!449 = !{ptr @backend_attr, !450, !"backend_attr", i1 false, i1 false}
!450 = !{!"../drivers/block/nbd.c", i32 243, i32 38}
!451 = !{ptr @.str.184, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/block/nbd.c", i32 240, i32 22}
!453 = !{ptr @.str.185, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/block/nbd.c", i32 240, i32 46}
!455 = !{ptr @.str.186, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/block/nbd.c", i32 2108, i32 3}
!457 = !{ptr @.str.187, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @nbd_genl_disconnect._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @nbd_genl_disconnect._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.189, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/block/nbd.c", i32 2116, i32 3}
!462 = !{ptr @nbd_genl_disconnect._entry.188, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @nbd_genl_disconnect._entry_ptr.190, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @nbd_genl_disconnect._entry.191, !465, !"_entry", i1 false, i1 false}
!465 = !{!"../drivers/block/nbd.c", i32 2122, i32 3}
!466 = !{ptr @nbd_genl_disconnect._entry_ptr.192, !465, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.193, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/block/nbd.c", i32 2148, i32 3}
!469 = !{ptr @.str.194, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @nbd_genl_reconfigure._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @nbd_genl_reconfigure._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.196, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/block/nbd.c", i32 2156, i32 3}
!474 = !{ptr @nbd_genl_reconfigure._entry.195, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @nbd_genl_reconfigure._entry_ptr.197, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.199, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/block/nbd.c", i32 2165, i32 5}
!478 = !{ptr @nbd_genl_reconfigure._entry.198, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @nbd_genl_reconfigure._entry_ptr.200, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.202, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/block/nbd.c", i32 2172, i32 4}
!482 = !{ptr @nbd_genl_reconfigure._entry.201, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @nbd_genl_reconfigure._entry_ptr.203, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @nbd_genl_reconfigure._entry.204, !485, !"_entry", i1 false, i1 false}
!485 = !{!"../drivers/block/nbd.c", i32 2178, i32 3}
!486 = !{ptr @nbd_genl_reconfigure._entry_ptr.205, !485, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.207, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/block/nbd.c", i32 2185, i32 3}
!489 = !{ptr @nbd_genl_reconfigure._entry.206, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @nbd_genl_reconfigure._entry_ptr.208, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @nbd_genl_reconfigure._entry.209, !492, !"_entry", i1 false, i1 false}
!492 = !{!"../drivers/block/nbd.c", i32 2195, i32 3}
!493 = !{ptr @nbd_genl_reconfigure._entry_ptr.210, !492, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @nbd_genl_reconfigure._entry.211, !495, !"_entry", i1 false, i1 false}
!495 = !{!"../drivers/block/nbd.c", i32 2243, i32 5}
!496 = !{ptr @nbd_genl_reconfigure._entry_ptr.212, !495, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @nbd_genl_reconfigure._entry.213, !498, !"_entry", i1 false, i1 false}
!498 = !{!"../drivers/block/nbd.c", i32 2252, i32 5}
!499 = !{ptr @nbd_genl_reconfigure._entry_ptr.214, !498, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.216, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/block/nbd.c", i32 2265, i32 4}
!502 = !{ptr @nbd_genl_reconfigure._entry.215, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @nbd_genl_reconfigure._entry_ptr.217, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @nbd_reconnect_socket.__key, !505, !"__key", i1 false, i1 false}
!505 = !{!"../drivers/block/nbd.c", i32 1197, i32 3}
!506 = !{ptr @nbd_mcast_grps, !507, !"nbd_mcast_grps", i1 false, i1 false}
!507 = !{!"../drivers/block/nbd.c", i32 2300, i32 42}
!508 = !{ptr @.str.218, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/block/nbd.c", i32 2469, i32 3}
!510 = !{ptr @.str.219, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @nbd_init._entry, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @nbd_init._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.220, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/block/nbd.c", i32 2497, i32 31}
!515 = !{ptr @__param_str_nbds_max, !57, !"__param_str_nbds_max", i1 false, i1 false}
!516 = !{ptr @nbds_max, !517, !"nbds_max", i1 false, i1 false}
!517 = !{!"../drivers/block/nbd.c", i32 162, i32 21}
!518 = !{ptr @__param_str_max_part, !62, !"__param_str_max_part", i1 false, i1 false}
!519 = !{ptr @max_part, !520, !"max_part", i1 false, i1 false}
!520 = !{!"../drivers/block/nbd.c", i32 163, i32 12}
!521 = !{!"sp"}
!522 = !{i32 1, !"wchar_size", i32 2}
!523 = !{i32 1, !"min_enum_size", i32 4}
!524 = !{i32 8, !"branch-target-enforcement", i32 0}
!525 = !{i32 8, !"sign-return-address", i32 0}
!526 = !{i32 8, !"sign-return-address-all", i32 0}
!527 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!528 = !{i32 7, !"uwtable", i32 1}
!529 = !{i32 7, !"frame-pointer", i32 2}
!530 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!531 = !{!"branch_weights", i32 2000, i32 1}
!532 = !{!"branch_weights", i32 1, i32 2000}
!533 = !{!"auto-init"}
!534 = !{i64 2148617064}
!535 = !{i64 2148531528, i64 2148531560, i64 2148531589, i64 2148531623, i64 2148531654, i64 2148531677}
!536 = !{i64 2149663034}
!537 = !{i32 0, i32 33}
!538 = !{i64 1013046, i64 1013070, i64 1013091, i64 1013108, i64 1013125}
!539 = !{i64 2148529063, i64 2148529095, i64 2148529124, i64 2148529158, i64 2148529189, i64 2148529212}
!540 = !{i8 0, i8 2}
!541 = !{i64 2148527533, i64 2148527559, i64 2148527588, i64 2148527622, i64 2148527653, i64 2148527676}
!542 = !{i64 2148340926, i64 2148340931, i64 2148340944, i64 2148340988, i64 2148341022, i64 2148341043}
!543 = !{i64 2148615985}
!544 = !{i64 2148530718, i64 2148530750, i64 2148530779, i64 2148530813, i64 2148530844, i64 2148530867}
!545 = !{i64 2148616214}
!546 = !{i64 2157399352}
!547 = !{i64 2157399591}
!548 = !{i64 2149363606}
!549 = !{i64 2149364642}
!550 = !{i64 2157328253}
!551 = !{i64 2157328468}
!552 = !{i64 2157348658}
!553 = !{i64 2157348875}
!554 = !{i64 2149355047}
!555 = !{i64 921791, i64 921852}
!556 = !{i64 924523}
!557 = !{i64 924808}
!558 = !{i64 2148526952}
!559 = !{i64 1013552, i64 1013577, i64 1013599, i64 1013615, i64 1013627, i64 1013647, i64 1013671, i64 1013687, i64 1013699}
!560 = !{i64 2148527140}
!561 = !{i64 2149355313}
!562 = !{i64 2148529998, i64 2148530024, i64 2148530053, i64 2148530087, i64 2148530118, i64 2148530141}
!563 = !{i64 1026801}
!564 = !{i64 2157365170}
!565 = !{i64 2157365393}
!566 = !{i64 2157381882}
!567 = !{i64 2157382107}
