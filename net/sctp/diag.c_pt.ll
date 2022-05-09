; ModuleID = '/llk/IR_all_yes/net/sctp/diag.c_pt.bc'
source_filename = "../net/sctp/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.sctp_comm_param = type { ptr, ptr, ptr, ptr, i8 }
%struct.inet_diag_req_v2 = type { i8, i8, i8, i8, i32, %struct.inet_diag_sockid }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.109, %union.anon.111, %union.anon.112, i16, i8, i8, i32, %union.anon.114, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.117, [0 x i32], %union.anon.118, i16, i16, %union.anon.119, %struct.refcount_struct, [0 x i32], %union.anon.120 }
%union.anon.109 = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.114 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { %struct.hlist_node }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.125 }
%union.anon.125 = type { [6 x i32], [24 x i8] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_infox = type { ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.170, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.170 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.sctp_stream = type { %struct.anon.171, %struct.anon.176, i16, i16, ptr, %union.anon.178, ptr }
%struct.anon.171 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.172, i32, ptr, i8 }
%union.anon.172 = type { i32 }
%struct.anon.176 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.177, i32, i32, i32, i8, i8 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.121, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.122, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.123, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.121 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.43, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.43 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.55 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.55 = type { %struct.callback_head }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.168, %struct.anon.169, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.168 = type { i32, i8, i8, i8 }
%struct.anon.169 = type { i16, i16, i16, i8, i8 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.135 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.108, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.108 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@sctp_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @sctp_diag_dump, ptr @sctp_diag_dump_one, ptr @sctp_diag_get_info, ptr null, ptr null, ptr null, i16 132, i16 368 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_sctp_diag__571_528_sctp_diag_init6 = internal global ptr @sctp_diag_init, section ".initcall6.init", align 4
@__exitcall_sctp_diag_exit = internal global ptr @sctp_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file572 = internal constant [34 x i8] c"sctp_diag.file=net/sctp/sctp_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license573 = internal constant [22 x i8] c"sctp_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias574 = internal constant [45 x i8] c"sctp_diag.alias=net-pf-16-proto-4-type-2-132\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"reno\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@inet_diag_msg_sctpladdrs_fill.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/sctp/diag.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@inet_diag_msg_sctpladdrs_fill.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@inet_assoc_attr_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"sctp_diag_handler\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 510, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 203, i32 43 }
@___asan_gen_.15 = private constant [19 x i8] c"../net/sctp/diag.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 76, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 991, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias574, ptr @__UNIQUE_ID_file572, ptr @__UNIQUE_ID_license573, ptr @__exitcall_sctp_diag_exit, ptr @__initcall__kmod_sctp_diag__571_528_sctp_diag_init6, ptr @sctp_diag_exit, ptr @sctp_diag_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sctp_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @inet_diag_unregister(ptr noundef nonnull @sctp_diag_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_register(ptr noundef nonnull @sctp_diag_handler) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  %commp = alloca %struct.sctp_comm_param, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idiag_states1 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 4
  %0 = ptrtoint ptr %idiag_states1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idiag_states1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %commp) #6
  %7 = getelementptr inbounds i8, ptr %commp, i32 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %commp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %commp, align 4
  %cb3 = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 1
  %10 = ptrtoint ptr %cb3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cb, ptr %cb3, align 4
  %r4 = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 2
  %11 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %r, ptr %r4, align 4
  %nlh = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 3
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %nlh, align 4
  %net_admin = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 4
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb, align 4
  %call6 = tail call zeroext i1 @netlink_net_capable(ptr noundef %14, i32 noundef 12) #6
  %frombool = zext i1 %call6 to i8
  %15 = ptrtoint ptr %net_admin to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %net_admin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #6
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pos, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.skip_crit_edge, label %if.end

if.then.skip_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end:                                           ; preds = %if.then
  %call9 = call i32 @sctp_for_each_endpoint(ptr noundef nonnull @sctp_ep_dump, ptr noundef nonnull %commp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.skip_crit_edge, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

skip:                                             ; preds = %if.end.skip_crit_edge, %if.then.skip_crit_edge
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %16, align 4
  %arrayidx14 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %skip, %entry.if.end16_crit_edge
  %and17 = and i32 %1, -1153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.done_crit_edge, label %if.end20

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 @sctp_transport_traverse_process(ptr noundef nonnull @sctp_sock_filter, ptr noundef nonnull @sctp_sock_dump, ptr noundef %6, ptr noundef nonnull %pos, ptr noundef nonnull %commp) #6
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx, align 4
  br label %done

done:                                             ; preds = %if.end20, %if.end16.done_crit_edge, %if.end.done_crit_edge
  %arrayidx23 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx24, align 4
  store i32 0, ptr %arrayidx23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %commp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_diag_dump_one(ptr nocapture noundef readonly %cb, ptr noundef %req) #2 align 64 {
entry:
  %laddr = alloca %union.sctp_addr, align 4
  %paddr = alloca %union.sctp_addr, align 4
  %commp = alloca %struct.sctp_comm_param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %nlh2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %laddr) #6
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %laddr, i32 0, i32 1
  %10 = call ptr @memset(ptr %laddr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %paddr) #6
  %11 = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 1
  %12 = call ptr @memset(ptr %paddr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %commp) #6
  %13 = getelementptr inbounds i8, ptr %commp, i32 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %commp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %commp, align 4
  %cb4 = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 1
  %16 = ptrtoint ptr %cb4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cb4, align 4
  %r = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 2
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req, ptr %r, align 4
  %nlh5 = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 3
  %18 = ptrtoint ptr %nlh5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %nlh5, align 4
  %net_admin = getelementptr inbounds %struct.sctp_comm_param, ptr %commp, i32 0, i32 4
  %call6 = tail call zeroext i1 @netlink_net_capable(ptr noundef %1, i32 noundef 12) #6
  %frombool = zext i1 %call6 to i8
  %19 = ptrtoint ptr %net_admin to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %net_admin, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp = icmp eq i8 %21, 2
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %9, align 2
  %idiag_src = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 2
  %26 = getelementptr inbounds %struct.sockaddr_in6, ptr %laddr, i32 0, i32 2
  %27 = ptrtoint ptr %idiag_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idiag_src, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %26, align 4
  %30 = ptrtoint ptr %laddr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %laddr, align 4
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idiag_dport, align 2
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %11, align 2
  %idiag_dst = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %idiag_dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idiag_dst, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %25, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 3
  %38 = getelementptr inbounds %struct.sockaddr_in6, ptr %laddr, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %38, ptr %idiag_src, i32 16)
  %40 = ptrtoint ptr %laddr to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 10, ptr %laddr, align 4
  %idiag_dport21 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %idiag_dport21 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idiag_dport21, align 2
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %11, align 2
  %idiag_dst25 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %44 = call ptr @memcpy(ptr %37, ptr %idiag_dst25, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ 10, %if.else ], [ 2, %if.then ]
  %45 = ptrtoint ptr %paddr to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %storemerge, ptr %paddr, align 4
  %call28 = call i32 @sctp_transport_lookup_process(ptr noundef nonnull @sctp_sock_dump_one, ptr noundef %6, ptr noundef nonnull %laddr, ptr noundef nonnull %paddr, ptr noundef nonnull %commp) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %commp) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %paddr) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %laddr) #6
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_diag_get_info(ptr noundef %sk, ptr nocapture noundef writeonly %r, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_infox, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmem_alloc = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rmem_alloc, i32 noundef 4) #6
  %2 = ptrtoint ptr %rmem_alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rmem_alloc, align 4
  %idiag_rqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %idiag_rqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %idiag_rqueue, align 4
  %5 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asoc, align 4
  %sndbuf_used = getelementptr inbounds %struct.sctp_association, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %sndbuf_used to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sndbuf_used, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %9 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_ack_backlog, align 4
  %idiag_rqueue3 = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %11 = ptrtoint ptr %idiag_rqueue3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %idiag_rqueue3, align 4
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %12 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sk_max_ack_backlog, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %.sink = phi i32 [ %13, %do.end ], [ %8, %if.then ]
  %14 = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc, align 4
  %call13 = tail call i32 @sctp_get_sctp_info(ptr noundef %sk, ptr noundef %19, ptr noundef nonnull %17) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_for_each_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_ep_dump(ptr noundef %ep, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %cb3 = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %cb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb3, align 4
  %r4 = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %r4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r4, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %skc_net.i88 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i88 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i88, align 4
  %cmp.i.not = icmp eq ptr %14, %12
  br i1 %cmp.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %if.end.next_crit_edge, label %if.end10

if.end.next_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end10:                                         ; preds = %if.end
  %idiag_states = getelementptr inbounds %struct.inet_diag_req_v2, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %idiag_states to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idiag_states, align 4
  %and = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %asocs = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 3
  %21 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %asocs, align 4
  %cmp.i89.not = icmp eq ptr %22, %asocs
  br i1 %cmp.i89.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.next_crit_edge

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp16.not = icmp eq i8 %24, 0
  br i1 %cmp16.not, label %if.end15.if.end25_crit_edge, label %land.lhs.true18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.end15
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %skc_family, align 8
  %27 = zext i8 %24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %27)
  %cmp22.not = icmp eq i16 %26, %27
  br i1 %cmp22.not, label %land.lhs.true18.if.end25_crit_edge, label %land.lhs.true18.next_crit_edge

land.lhs.true18.next_crit_edge:                   ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true18.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %7, i32 0, i32 5
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %inet_sport, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp28.not = icmp eq i16 %29, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool34.not = icmp eq i16 %29, 0
  %or.cond = or i1 %tobool34.not, %cmp28.not
  br i1 %or.cond, label %if.end36, label %if.end25.next_crit_edge

if.end25.next_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end36:                                         ; preds = %if.end25
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %7, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idiag_dport, align 2
  %34 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %36)
  %cmp42.not = icmp eq i16 %33, %36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool48.not = icmp eq i16 %33, 0
  %or.cond87 = or i1 %tobool48.not, %cmp42.not
  br i1 %or.cond87, label %if.end50, label %if.end36.next_crit_edge

if.end36.next_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end50:                                         ; preds = %if.end36
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %sk53 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3, i32 24
  %39 = ptrtoint ptr %sk53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk53, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 71
  %41 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user_ns.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlmsg_seq, align 4
  %net_admin = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 4
  %55 = ptrtoint ptr %net_admin to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %net_admin, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool58 = icmp ne i8 %56, 0
  %call59 = tail call fastcc i32 @inet_sctp_diag_fill(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %7, ptr noundef %48, i32 noundef %50, i32 noundef %54, i16 noundef zeroext 2, ptr noundef %52, i1 noundef zeroext %tobool58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end50.out_crit_edge, label %if.end50.next_crit_edge

if.end50.next_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

next:                                             ; preds = %if.end50.next_crit_edge, %if.end36.next_crit_edge, %if.end25.next_crit_edge, %land.lhs.true18.next_crit_edge, %land.lhs.true.next_crit_edge, %if.end.next_crit_edge
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %next, %if.end50.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %next ], [ 0, %entry.out_crit_edge ], [ 2, %if.end50.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_traverse_process(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sock_filter(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %tsp, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %asocs = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asocs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -88
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %tsp, i32 0, i32 8
  %4 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc, align 8
  %cmp.not = icmp eq ptr %5, %add.ptr
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %r2 = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp3.not = icmp eq i8 %9, 0
  br i1 %cmp3.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family, align 8
  %12 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp8.not = icmp eq i16 %11, %12
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sock_dump(ptr noundef readonly %ep, ptr nocapture noundef readonly %tsp, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %cb3 = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %cb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb3, align 4
  %r4 = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %r4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r4, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %tsp, i32 0, i32 8
  %8 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asoc, align 8
  %ep5 = getelementptr inbounds %struct.sctp_association, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ep5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep5, align 4
  %cmp.not = icmp eq ptr %11, %ep
  br i1 %cmp.not, label %if.end, label %entry.release_crit_edge

entry.release_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end:                                           ; preds = %entry
  %asocs = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn118 = load ptr, ptr %asocs, align 4
  %cmp8.not120 = icmp eq ptr %.pn118, %asocs
  br i1 %cmp8.not120, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 4
  %arrayidx9 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 1
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %7, i32 0, i32 5
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %7, i32 0, i32 5, i32 1
  %arrayidx35 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 3
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %5, i32 0, i32 1
  %net_admin = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %next68.for.body_crit_edge, %for.body.lr.ph
  %.pn121 = phi ptr [ %.pn118, %for.body.lr.ph ], [ %.pn, %next68.for.body_crit_edge ]
  %assoc.0122 = getelementptr i8, ptr %.pn121, i32 -88
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10 = icmp slt i32 %14, %16
  br i1 %cmp10, label %for.body.next68_crit_edge, label %if.end12

for.body.next68_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %next68

if.end12:                                         ; preds = %for.body
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id, align 4
  %bind_addr = getelementptr i8, ptr %.pn121, i32 -12
  %19 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bind_addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp15.not = icmp eq i16 %18, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  %or.cond = or i1 %tobool.not, %cmp15.not
  br i1 %or.cond, label %if.end21, label %if.end12.next68_crit_edge

if.end12.next68_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %next68

if.end21:                                         ; preds = %if.end12
  %21 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idiag_dport, align 2
  %port24 = getelementptr i8, ptr %.pn121, i32 174
  %23 = ptrtoint ptr %port24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %port24, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp26.not = icmp eq i16 %22, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool32.not = icmp eq i16 %22, 0
  %or.cond113 = or i1 %tobool32.not, %cmp26.not
  br i1 %or.cond113, label %if.end34, label %if.end21.next68_crit_edge

if.end21.next68_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %next68

if.end34:                                         ; preds = %if.end21
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end34.if.end49_crit_edge

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true37:                                  ; preds = %if.end34
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %sk40 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 24
  %29 = ptrtoint ptr %sk40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk40, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 71
  %31 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 25
  %37 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_ns.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 12
  %39 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %portid, align 4
  %41 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nlmsg_seq, align 4
  %45 = ptrtoint ptr %net_admin to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %net_admin, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool44 = icmp ne i8 %46, 0
  %call45 = tail call fastcc i32 @inet_sctp_diag_fill(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %7, ptr noundef %38, i32 noundef %40, i32 noundef %44, i16 noundef zeroext 2, ptr noundef %42, i1 noundef zeroext %tobool44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %land.lhs.true37.release_crit_edge, label %land.lhs.true37.if.end49_crit_edge

land.lhs.true37.if.end49_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true37.release_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end49:                                         ; preds = %land.lhs.true37.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %47 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx35, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %sk53 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 3, i32 24
  %50 = ptrtoint ptr %sk53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk53, align 8
  %sk_socket.i114 = getelementptr inbounds %struct.sock, ptr %51, i32 0, i32 71
  %52 = ptrtoint ptr %sk_socket.i114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk_socket.i114, align 8
  %file.i115 = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %file.i115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %file.i115, align 4
  %f_cred.i116 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %f_cred.i116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_cred.i116, align 8
  %user_ns.i117 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 25
  %58 = ptrtoint ptr %user_ns.i117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %user_ns.i117, align 4
  %portid57 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 3, i32 12
  %60 = ptrtoint ptr %portid57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %portid57, align 4
  %62 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nlh, align 4
  %nlmsg_seq59 = getelementptr inbounds %struct.nlmsghdr, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %nlmsg_seq59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nlmsg_seq59, align 4
  %66 = ptrtoint ptr %net_admin to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %net_admin, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool62 = icmp ne i8 %67, 0
  %call63 = tail call fastcc i32 @inet_sctp_diag_fill(ptr noundef %1, ptr noundef %assoc.0122, ptr noundef %3, ptr noundef %7, ptr noundef %59, i32 noundef %61, i32 noundef %65, i16 noundef zeroext 0, ptr noundef %63, i1 noundef zeroext %tobool62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end49.release_crit_edge, label %if.end49.next68_crit_edge

if.end49.next68_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %next68

if.end49.release_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

next68:                                           ; preds = %if.end49.next68_crit_edge, %if.end21.next68_crit_edge, %if.end12.next68_crit_edge, %for.body.next68_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %.pn121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn121, align 4
  %cmp8.not = icmp eq ptr %.pn, %asocs
  br i1 %cmp8.not, label %next68.for.end_crit_edge, label %next68.for.body_crit_edge

next68.for.body_crit_edge:                        ; preds = %next68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

next68.for.end_crit_edge:                         ; preds = %next68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %next68.for.end_crit_edge, %if.end.for.end_crit_edge
  %arrayidx75 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr %struct.netlink_callback, ptr %5, i32 0, i32 13, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx77, align 4
  br label %release

release:                                          ; preds = %for.end, %if.end49.release_crit_edge, %land.lhs.true37.release_crit_edge, %entry.release_crit_edge
  %err.0 = phi i32 [ 0, %entry.release_crit_edge ], [ 0, %for.end ], [ 1, %land.lhs.true37.release_crit_edge ], [ 1, %if.end49.release_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inet_sctp_diag_fill(ptr noundef %sk, ptr noundef %asoc, ptr noundef %skb, ptr nocapture noundef readonly %req, ptr noundef %user_ns, i32 noundef %portid, i32 noundef %seq, i16 noundef zeroext %nlmsg_flags, ptr nocapture noundef readonly %unlh, i1 noundef zeroext %net_admin) unnamed_addr #2 align 64 {
entry:
  %mem = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep1, align 8
  %idiag_ext = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %idiag_ext to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idiag_ext, align 2
  %conv = zext i8 %3 to i32
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %unlh, i32 0, i32 1
  %4 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_type, align 4
  %conv2 = zext i16 %5 to i32
  %conv3 = zext i16 %nlmsg_flags to i32
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup101_crit_edge

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 88
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup101_crit_edge, label %nlmsg_put.exit, !prof !33

skb_tailroom.exit.i.cleanup101_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %conv2, i32 noundef 72, i32 noundef %conv3) #6
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup101_crit_edge, label %if.end

nlmsg_put.exit.cleanup101_crit_edge:              ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body11, label %do.end17, !prof !33

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

do.end17:                                         ; preds = %if.end
  %idiag_timer = getelementptr i8, ptr %call3.i, i32 18
  %14 = ptrtoint ptr %idiag_timer to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %idiag_timer, align 2
  %idiag_retrans = getelementptr i8, ptr %call3.i, i32 19
  %15 = ptrtoint ptr %idiag_retrans to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %idiag_retrans, align 1
  %idiag_expires = getelementptr i8, ptr %call3.i, i32 68
  %16 = ptrtoint ptr %idiag_expires to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %idiag_expires, align 4
  %tobool18.not = icmp eq ptr %asoc, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end17
  %primary_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %primary_path.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %primary_path.i, align 8
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %address_list.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %address_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %address_list.i, align 4
  %laddr.sroa.5.0.a.sroa_idx.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %20, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %laddr.sroa.5.0.a.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %laddr.sroa.5.0.copyload.i = load i32, ptr %laddr.sroa.5.0.a.sroa_idx.i, align 4
  %laddr.sroa.7.0.a.sroa_idx.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %20, i32 0, i32 2, i32 0, i32 3
  %22 = ptrtoint ptr %laddr.sroa.7.0.a.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %laddr.sroa.7.0.copyload.i = load i32, ptr %laddr.sroa.7.0.a.sroa_idx.i, align 4
  %laddr.sroa.9.0.a.sroa_idx.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %20, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %laddr.sroa.9.0.a.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %laddr.sroa.9.0.copyload.i = load i32, ptr %laddr.sroa.9.0.a.sroa_idx.i, align 4
  %laddr.sroa.10.0.a.sroa_idx.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %20, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %laddr.sroa.10.0.a.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %laddr.sroa.10.0.copyload.i = load i32, ptr %laddr.sroa.10.0.a.sroa_idx.i, align 4
  %laddr.sroa.11.0.a.sroa_idx.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %20, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %laddr.sroa.11.0.a.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %laddr.sroa.11.0.copyload.i = load i32, ptr %laddr.sroa.11.0.a.sroa_idx.i, align 4
  %paddr.sroa.5.0.ipaddr.sroa_idx.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 6, i32 0, i32 2
  %26 = ptrtoint ptr %paddr.sroa.5.0.ipaddr.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %paddr.sroa.5.0.copyload.i = load i32, ptr %paddr.sroa.5.0.ipaddr.sroa_idx.i, align 4
  %paddr.sroa.7.0.ipaddr.sroa_idx.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 6, i32 0, i32 3
  %27 = ptrtoint ptr %paddr.sroa.7.0.ipaddr.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %paddr.sroa.7.0.copyload.i = load i32, ptr %paddr.sroa.7.0.ipaddr.sroa_idx.i, align 8
  %paddr.sroa.9.0.ipaddr.sroa_idx.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %paddr.sroa.9.0.ipaddr.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %paddr.sroa.9.0.copyload.i = load i32, ptr %paddr.sroa.9.0.ipaddr.sroa_idx.i, align 4
  %paddr.sroa.10.0.ipaddr.sroa_idx.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %paddr.sroa.10.0.ipaddr.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %paddr.sroa.10.0.copyload.i = load i32, ptr %paddr.sroa.10.0.ipaddr.sroa_idx.i, align 8
  %paddr.sroa.11.0.ipaddr.sroa_idx.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %paddr.sroa.11.0.ipaddr.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %paddr.sroa.11.0.copyload.i = load i32, ptr %paddr.sroa.11.0.ipaddr.sroa_idx.i, align 4
  %dst5.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 18
  %31 = ptrtoint ptr %dst5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst5.i, align 8
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %33 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %skc_family.i, align 8
  %conv.i167 = trunc i16 %34 to i8
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i167, ptr %add.ptr.i, align 4
  %36 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bind_addr.i, align 4
  %id.i = getelementptr i8, ptr %call3.i, i32 20
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %id.i, align 4
  %port9.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %port9.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %port9.i, align 2
  %idiag_dport.i = getelementptr i8, ptr %call3.i, i32 22
  %41 = ptrtoint ptr %idiag_dport.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %idiag_dport.i, align 2
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then19.cond.end.i_crit_edge, label %cond.true.i

if.then19.cond.end.i_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %32, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then19.cond.end.i_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %if.then19.cond.end.i_crit_edge ]
  %idiag_if.i = getelementptr i8, ptr %call3.i, i32 56
  %46 = ptrtoint ptr %idiag_if.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %idiag_if.i, align 4
  %idiag_cookie.i = getelementptr i8, ptr %call3.i, i32 60
  tail call void @sock_diag_save_cookie(ptr noundef %sk, ptr noundef %idiag_cookie.i) #6
  %47 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %48)
  %cmp.i168 = icmp eq i16 %48, 10
  %idiag_src.i = getelementptr i8, ptr %call3.i, i32 24
  br i1 %cmp.i168, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %idiag_src.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %laddr.sroa.7.0.copyload.i, ptr %idiag_src.i, align 4
  %laddr.sroa.9.8.arraydecay18.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 28
  %50 = ptrtoint ptr %laddr.sroa.9.8.arraydecay18.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %laddr.sroa.9.0.copyload.i, ptr %laddr.sroa.9.8.arraydecay18.sroa_idx.i, align 4
  %laddr.sroa.10.8.arraydecay18.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 32
  %51 = ptrtoint ptr %laddr.sroa.10.8.arraydecay18.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %laddr.sroa.10.0.copyload.i, ptr %laddr.sroa.10.8.arraydecay18.sroa_idx.i, align 4
  %laddr.sroa.11.8.arraydecay18.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 36
  %52 = ptrtoint ptr %laddr.sroa.11.8.arraydecay18.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %laddr.sroa.11.0.copyload.i, ptr %laddr.sroa.11.8.arraydecay18.sroa_idx.i, align 4
  %paddr.sroa.9.8.arraydecay20.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 44
  %53 = ptrtoint ptr %paddr.sroa.9.8.arraydecay20.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %paddr.sroa.9.0.copyload.i, ptr %paddr.sroa.9.8.arraydecay20.sroa_idx.i, align 4
  %paddr.sroa.10.8.arraydecay20.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 48
  %54 = ptrtoint ptr %paddr.sroa.10.8.arraydecay20.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %paddr.sroa.10.0.copyload.i, ptr %paddr.sroa.10.8.arraydecay20.sroa_idx.i, align 4
  %paddr.sroa.11.8.arraydecay20.sroa_idx.i = getelementptr i8, ptr %call3.i, i32 52
  %55 = ptrtoint ptr %paddr.sroa.11.8.arraydecay20.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %paddr.sroa.11.0.copyload.i, ptr %paddr.sroa.11.8.arraydecay20.sroa_idx.i, align 4
  br label %if.end.i169

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = getelementptr i8, ptr %call3.i, i32 28
  %57 = call ptr @memset(ptr %56, i32 0, i32 28)
  %58 = ptrtoint ptr %idiag_src.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %laddr.sroa.5.0.copyload.i, ptr %idiag_src.i, align 4
  br label %if.end.i169

if.end.i169:                                      ; preds = %if.else.i, %if.then.i
  %paddr.sroa.5.0.copyload.i.sink = phi i32 [ %paddr.sroa.7.0.copyload.i, %if.then.i ], [ %paddr.sroa.5.0.copyload.i, %if.else.i ]
  %59 = getelementptr i8, ptr %call3.i, i32 40
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %paddr.sroa.5.0.copyload.i.sink, ptr %59, align 4
  %state.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i, align 4
  %conv33.i = trunc i32 %62 to i8
  %idiag_state.i = getelementptr i8, ptr %call3.i, i32 17
  %63 = ptrtoint ptr %idiag_state.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv33.i, ptr %idiag_state.i, align 1
  %pprev.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 39, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i169.if.end20_crit_edge, label %if.then35.i

if.end.i169.if.end20_crit_edge:                   ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then35.i:                                      ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %idiag_timer to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %idiag_timer, align 2
  %rtx_data_chunks.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 42
  %67 = ptrtoint ptr %rtx_data_chunks.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rtx_data_chunks.i, align 8
  %conv36.i = trunc i32 %68 to i8
  %69 = ptrtoint ptr %idiag_retrans to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv36.i, ptr %idiag_retrans, align 1
  %expires.i = getelementptr inbounds %struct.sctp_transport, ptr %18, i32 0, i32 39, i32 1
  %70 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %71, %72
  %call37.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #6
  %73 = ptrtoint ptr %idiag_expires to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call37.i, ptr %idiag_expires, align 4
  br label %if.end20

if.else:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @inet_diag_msg_common_fill(ptr noundef %add.ptr.i, ptr noundef %sk) #6
  %74 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load volatile i8, ptr %skc_state.i, align 2
  %idiag_state = getelementptr i8, ptr %call3.i, i32 17
  %76 = ptrtoint ptr %idiag_state to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %idiag_state, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then35.i, %if.end.i169.if.end20_crit_edge
  %call22 = tail call i32 @inet_diag_msg_attrs_fill(ptr noundef %sk, ptr noundef %skb, ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef %user_ns, i1 noundef zeroext %net_admin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.if.end62_crit_edge, label %if.then27

if.end25.if.end62_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then27:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mem) #6
  %77 = getelementptr inbounds i8, ptr %mem, i32 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %77, align 4, !annotation !35
  br i1 %tobool18.not, label %if.else41.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then27
  %ep29 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %79 = ptrtoint ptr %ep29 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ep29, align 4
  %sndbuf_policy = getelementptr inbounds %struct.sctp_endpoint, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %sndbuf_policy to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sndbuf_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool30.not = icmp eq i32 %82, 0
  br i1 %tobool30.not, label %land.lhs.true36.critedge161, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sndbuf_used = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 47
  %83 = ptrtoint ptr %sndbuf_used to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sndbuf_used, align 4
  br label %land.lhs.true36

land.lhs.true36.critedge161:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #6
  %85 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i170 = add i32 %86, -1
  br label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true36.critedge161, %if.then31
  %.sink = phi i32 [ %sub.i170, %land.lhs.true36.critedge161 ], [ %84, %if.then31 ]
  %87 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.sink, ptr %87, align 4
  %89 = ptrtoint ptr %ep29 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ep29, align 4
  %rcvbuf_policy = getelementptr inbounds %struct.sctp_endpoint, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %rcvbuf_policy to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rcvbuf_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool38.not = icmp eq i32 %92, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.else41_crit_edge, label %if.then39

land.lhs.true36.if.else41_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else41

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  %rmem_alloc = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  br label %if.end43

if.else41.critedge:                               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %sk_wmem_alloc.i171 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i172 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i171, i32 noundef 4) #6
  %93 = ptrtoint ptr %sk_wmem_alloc.i171 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %sk_wmem_alloc.i171, align 4
  %sub.i173 = add i32 %94, -1
  %arrayidx.c164 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 2
  %95 = ptrtoint ptr %arrayidx.c164 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub.i173, ptr %arrayidx.c164, align 4
  br label %if.else41

if.else41:                                        ; preds = %if.else41.critedge, %land.lhs.true36.if.else41_crit_edge
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  %sk_backlog.i.sink = phi ptr [ %sk_backlog.i, %if.else41 ], [ %rmem_alloc, %if.then39 ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.sink, i32 noundef 4) #6
  %96 = ptrtoint ptr %sk_backlog.i.sink to i32
  call void @__asan_load4_noabort(i32 %96)
  %amt.1 = load volatile i32, ptr %sk_backlog.i.sink, align 4
  %97 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %amt.1, ptr %mem, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %98 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sk_rcvbuf, align 8
  %arrayidx45 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx45, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %101 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sk_sndbuf, align 4
  %arrayidx46 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx46, align 4
  %sk_forward_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %104 = ptrtoint ptr %sk_forward_alloc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sk_forward_alloc, align 8
  %arrayidx47 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 4
  %106 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx47, align 4
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %107 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sk_wmem_queued, align 8
  %arrayidx48 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 5
  %109 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx48, align 4
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_omem_alloc, i32 noundef 4) #6
  %110 = ptrtoint ptr %sk_omem_alloc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %sk_omem_alloc, align 4
  %arrayidx50 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 6
  %112 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx50, align 4
  %len = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 1
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %len, align 4
  %arrayidx54 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 7
  %115 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx54, align 4
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i166 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_drops, i32 noundef 4) #6
  %116 = ptrtoint ptr %sk_drops to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %sk_drops, align 4
  %arrayidx56 = getelementptr inbounds [9 x i32], ptr %mem, i32 0, i32 8
  %118 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx56, align 4
  %call57 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 36, ptr noundef nonnull %mem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mem) #6
  br i1 %cmp, label %if.end43.if.then.i.i_crit_edge, label %if.end43.if.end62_crit_edge

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end43.if.then.i.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end62:                                         ; preds = %if.end43.if.end62_crit_edge, %if.end25.if.end62_crit_edge
  %and63 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end74_crit_edge, label %if.then65

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then65:                                        ; preds = %if.end62
  %call66 = call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 368, i32 noundef 14) #6
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then65.if.then.i.i_crit_edge, label %cleanup71.thread

if.then65.if.then.i.i_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

cleanup71.thread:                                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i174 = getelementptr i8, ptr %call66, i32 4
  br label %if.end74

if.end74:                                         ; preds = %cleanup71.thread, %if.end62.if.end74_crit_edge
  %info.1 = phi ptr [ null, %if.end62.if.end74_crit_edge ], [ %add.ptr.i174, %cleanup71.thread ]
  br i1 %tobool18.not, label %do.end.i, label %if.then.i177

if.then.i177:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i176 = call zeroext i1 @__kasan_check_read(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  %119 = ptrtoint ptr %rmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %rmem_alloc.i, align 4
  %idiag_rqueue.i = getelementptr i8, ptr %call3.i, i32 72
  %121 = ptrtoint ptr %idiag_rqueue.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %idiag_rqueue.i, align 4
  %sndbuf_used.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 47
  %122 = ptrtoint ptr %sndbuf_used.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sndbuf_used.i, align 4
  br label %if.end.i178

do.end.i:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %124 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %idiag_rqueue3.i = getelementptr i8, ptr %call3.i, i32 72
  %126 = ptrtoint ptr %idiag_rqueue3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %idiag_rqueue3.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %127 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  br label %if.end.i178

if.end.i178:                                      ; preds = %do.end.i, %if.then.i177
  %.sink.i = phi i32 [ %128, %do.end.i ], [ %123, %if.then.i177 ]
  %129 = getelementptr i8, ptr %call3.i, i32 76
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink.i, ptr %129, align 4
  %tobool9.not.i = icmp eq ptr %info.1, null
  br i1 %tobool9.not.i, label %if.end.i178.sctp_diag_get_info.exit_crit_edge, label %if.then10.i

if.end.i178.sctp_diag_get_info.exit_crit_edge:    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_diag_get_info.exit

if.then10.i:                                      ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 @sctp_get_sctp_info(ptr noundef %sk, ptr noundef %asoc, ptr noundef nonnull %info.1) #6
  br label %sctp_diag_get_info.exit

sctp_diag_get_info.exit:                          ; preds = %if.then10.i, %if.end.i178.sctp_diag_get_info.exit_crit_edge
  %.asoc = select i1 %tobool18.not, ptr %1, ptr %asoc
  %cond = getelementptr inbounds %struct.sctp_ep_common, ptr %.asoc, i32 0, i32 6, i32 1
  %call.i = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i179 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i179, label %land.lhs.true.i, label %sctp_diag_get_info.exit.for.cond.i.preheader_crit_edge

sctp_diag_get_info.exit.for.cond.i.preheader_crit_edge: ; preds = %sctp_diag_get_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %sctp_diag_get_info.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b79.i = load i1, ptr @inet_diag_msg_sctpladdrs_fill.__warned, align 1
  br i1 %.b79.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i180

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

if.then.i180:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @inet_diag_msg_sctpladdrs_fill.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @.str.2) #6
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i180, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %sctp_diag_get_info.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %addrcnt.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %laddr.0.in.i = phi ptr [ %laddr.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %cond, %for.cond.i.preheader ]
  %131 = ptrtoint ptr %laddr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %laddr.0.i = load volatile ptr, ptr %laddr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %laddr.0.i, %cond
  %inc.i = add i32 %addrcnt.0.i, 1
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %mul.i = shl i32 %addrcnt.0.i, 7
  %call18.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 12, i32 noundef %mul.i) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %for.end.i.if.then.i.i_crit_edge, label %if.end21.i

for.end.i.if.then.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end21.i:                                       ; preds = %for.end.i
  %add.ptr.i.i = getelementptr i8, ptr %call18.i, i32 4
  %call24.i = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true26.i, label %if.end21.i.do.end34.i_crit_edge

if.end21.i.do.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

land.lhs.true26.i:                                ; preds = %if.end21.i
  %call27.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.do.end34.i_crit_edge, label %land.lhs.true29.i

land.lhs.true26.i.do.end34.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

land.lhs.true29.i:                                ; preds = %land.lhs.true26.i
  %.b7778.i = load i1, ptr @inet_diag_msg_sctpladdrs_fill.__warned.3, align 1
  br i1 %.b7778.i, label %land.lhs.true29.i.do.end34.i_crit_edge, label %if.then31.i

land.lhs.true29.i.do.end34.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

if.then31.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @inet_diag_msg_sctpladdrs_fill.__warned.3, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull @.str.2) #6
  br label %do.end34.i

do.end34.i:                                       ; preds = %if.then31.i, %land.lhs.true29.i.do.end34.i_crit_edge, %land.lhs.true26.i.do.end34.i_crit_edge, %if.end21.i.do.end34.i_crit_edge
  %132 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %132)
  %laddr.180.i = load volatile ptr, ptr %cond, align 4
  %cmp45.not81.i = icmp eq ptr %laddr.180.i, %cond
  br i1 %cmp45.not81.i, label %do.end34.i.if.end83_crit_edge, label %do.end34.i.for.body46.i_crit_edge

do.end34.i.for.body46.i_crit_edge:                ; preds = %do.end34.i
  br label %for.body46.i

do.end34.i.if.end83_crit_edge:                    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %do.end34.i.for.body46.i_crit_edge
  %laddr.183.i = phi ptr [ %laddr.1.i, %for.body46.i.for.body46.i_crit_edge ], [ %laddr.180.i, %do.end34.i.for.body46.i_crit_edge ]
  %info.082.i = phi ptr [ %add.ptr48.i, %for.body46.i.for.body46.i_crit_edge ], [ %add.ptr.i.i, %do.end34.i.for.body46.i_crit_edge ]
  %a.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.183.i, i32 0, i32 2
  %133 = call ptr @memcpy(ptr %info.082.i, ptr %a.i, i32 28)
  %add.ptr47.i = getelementptr i8, ptr %info.082.i, i32 28
  %134 = call ptr @memset(ptr %add.ptr47.i, i32 0, i32 100)
  %add.ptr48.i = getelementptr i8, ptr %info.082.i, i32 128
  %135 = ptrtoint ptr %laddr.183.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %laddr.1.i = load volatile ptr, ptr %laddr.183.i, align 4
  %cmp45.not.i = icmp eq ptr %laddr.1.i, %cond
  br i1 %cmp45.not.i, label %for.body46.i.if.end83_crit_edge, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46.i

for.body46.i.if.end83_crit_edge:                  ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end83:                                         ; preds = %for.body46.i.if.end83_crit_edge, %do.end34.i.if.end83_crit_edge
  %and86 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool87.not
  br i1 %or.cond, label %if.end83.if.end94_crit_edge, label %if.then88

if.end83.if.end94_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then88:                                        ; preds = %if.end83
  %call1.i183 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 5, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %cmp90 = icmp slt i32 %call1.i183, 0
  br i1 %cmp90, label %if.then88.if.then.i.i_crit_edge, label %if.then88.if.end94_crit_edge

if.then88.if.end94_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then88.if.then.i.i_crit_edge:                  ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end94:                                         ; preds = %if.then88.if.end94_crit_edge, %if.end83.if.end94_crit_edge
  br i1 %tobool18.not, label %if.end94.if.end100_crit_edge, label %land.lhs.true96

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true96:                                  ; preds = %if.end94
  %peer.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %transport_count.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %136 = ptrtoint ptr %transport_count.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %transport_count.i, align 4
  %conv.i184 = zext i16 %137 to i32
  %mul.i185 = shl nuw nsw i32 %conv.i184, 7
  %call.i186 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 13, i32 noundef %mul.i185) #6
  %tobool.not.i187 = icmp eq ptr %call.i186, null
  br i1 %tobool.not.i187, label %land.lhs.true96.if.then.i.i_crit_edge, label %if.end.i188

land.lhs.true96.if.then.i.i_crit_edge:            ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end.i188:                                      ; preds = %land.lhs.true96
  %138 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %from.025.i = load ptr, ptr %peer.i, align 8
  %cmp.not26.i = icmp eq ptr %from.025.i, %peer.i
  br i1 %cmp.not26.i, label %if.end.i188.if.end100_crit_edge, label %for.body.preheader.i

if.end.i188.if.end100_crit_edge:                  ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

for.body.preheader.i:                             ; preds = %if.end.i188
  %add.ptr.i.i189 = getelementptr i8, ptr %call.i186, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %from.028.i = phi ptr [ %from.0.i, %for.body.i.for.body.i_crit_edge ], [ %from.025.i, %for.body.preheader.i ]
  %info.027.i = phi ptr [ %add.ptr7.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i.i189, %for.body.preheader.i ]
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %from.028.i, i32 0, i32 6
  %139 = call ptr @memcpy(ptr %info.027.i, ptr %ipaddr.i, i32 28)
  %add.ptr6.i = getelementptr i8, ptr %info.027.i, i32 28
  %140 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 100)
  %add.ptr7.i = getelementptr i8, ptr %info.027.i, i32 128
  %141 = ptrtoint ptr %from.028.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %from.0.i = load ptr, ptr %from.028.i, align 8
  %cmp.not.i190 = icmp eq ptr %from.0.i, %peer.i
  br i1 %cmp.not.i190, label %for.body.i.if.end100_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end100_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.end100:                                        ; preds = %for.body.i.if.end100_crit_edge, %if.end.i188.if.end100_crit_edge, %if.end94.if.end100_crit_edge
  %142 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %143 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %144 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup101

if.then.i.i:                                      ; preds = %land.lhs.true96.if.then.i.i_crit_edge, %if.then88.if.then.i.i_crit_edge, %for.end.i.if.then.i.i_crit_edge, %if.then65.if.then.i.i_crit_edge, %if.end43.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %145 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %146, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !33

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %147 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i193 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i194 = ptrtoint ptr %148 to i32
  %sub.ptr.sub.i.i195 = sub i32 %sub.ptr.lhs.cast.i.i193, %sub.ptr.rhs.cast.i.i194
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i195) #6
  br label %cleanup101

cleanup101:                                       ; preds = %nlmsg_cancel.exit, %if.end100, %nlmsg_put.exit.cleanup101_crit_edge, %skb_tailroom.exit.i.cleanup101_crit_edge, %entry.cleanup101_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end100 ], [ -90, %nlmsg_put.exit.cleanup101_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup101_crit_edge ], [ -90, %entry.cleanup101_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_msg_common_fill(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_msg_attrs_fill(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_lookup_process(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sock_dump_one(ptr noundef readonly %ep, ptr nocapture noundef readonly %tsp, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %tsp, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 4
  %r = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r, align 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %idiag_cookie = getelementptr inbounds %struct.inet_diag_req_v2, ptr %5, i32 0, i32 5, i32 5
  %call = tail call i32 @sock_diag_check_cookie(ptr noundef %3, ptr noundef %idiag_cookie) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b38.i = load i1, ptr @inet_assoc_attr_size.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @inet_assoc_attr_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef nonnull @.str.2) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %address_list.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.end.i
  %laddr.0.in.i = phi ptr [ %address_list.i, %do.end.i ], [ %laddr.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %addrcnt.0.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %laddr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %laddr.0.i = load volatile ptr, ptr %laddr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %laddr.0.i, %address_list.i
  %inc.i = add i32 %addrcnt.0.i, 1
  br i1 %cmp.not.i, label %inet_assoc_attr_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

inet_assoc_attr_size.exit:                        ; preds = %for.cond.i
  %transport_count.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %transport_count.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_count.i, align 4
  %conv.i = zext i16 %10 to i32
  %reass.add = add i32 %addrcnt.0.i, %conv.i
  %reass.mul = shl i32 %reass.add, 7
  %sub.i.i = add i32 %reass.mul, 624
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %inet_assoc_attr_size.exit.cleanup_crit_edge, label %if.end7

inet_assoc_attr_size.exit.cleanup_crit_edge:      ; preds = %inet_assoc_attr_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %inet_assoc_attr_size.exit
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #6
  %ep8 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ep8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep8, align 4
  %cmp.not = icmp eq ptr %12, %ep
  br i1 %cmp.not, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end7
  %sk11 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk11, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 71
  %15 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlmsg_seq, align 4
  %net_admin = getelementptr inbounds %struct.sctp_comm_param, ptr %p, i32 0, i32 4
  %29 = ptrtoint ptr %net_admin to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %net_admin, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool15 = icmp ne i8 %30, 0
  %call16 = tail call fastcc i32 @inet_sctp_diag_fill(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef %5, ptr noundef %22, i32 noundef %24, i32 noundef %28, i16 noundef zeroext 0, ptr noundef %26, i1 noundef zeroext %tobool15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end41

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call16)
  %cmp19 = icmp eq i32 %call16, -90
  br i1 %cmp19, label %do.end, label %if.then18.out_crit_edge, !prof !33

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 273, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end41:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_sock(ptr noundef %3) #6
  %31 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skc_net.i, align 4
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %35, i32 0, i32 54
  %36 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %diag_nlsk, align 8
  %38 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %portid, align 4
  %call.i75 = tail call i32 @netlink_unicast(ptr noundef %37, ptr noundef nonnull %call.i.i, i32 noundef %39, i32 noundef 64) #6
  %40 = tail call i32 @llvm.smin.i32(i32 %call.i75, i32 0) #6
  br label %cleanup

out:                                              ; preds = %do.end, %if.then18.out_crit_edge, %if.end7.out_crit_edge
  %err.0 = phi i32 [ -11, %if.end7.out_crit_edge ], [ -90, %do.end ], [ %call16, %if.then18.out_crit_edge ]
  tail call void @release_sock(ptr noundef %3) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end41, %inet_assoc_attr_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %40, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %inet_assoc_attr_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_check_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_get_sctp_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_sctp_diag__571_528_sctp_diag_init6, !1, !"__initcall__kmod_sctp_diag__571_528_sctp_diag_init6", i1 false, i1 false}
!1 = !{!"../net/sctp/diag.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_sctp_diag_exit, !3, !"__exitcall_sctp_diag_exit", i1 false, i1 false}
!3 = !{!"../net/sctp/diag.c", i32 529, i32 1}
!4 = !{ptr @__UNIQUE_ID_file572, !5, !"__UNIQUE_ID_file572", i1 false, i1 false}
!5 = !{!"../net/sctp/diag.c", i32 530, i32 1}
!6 = !{ptr @__UNIQUE_ID_license573, !5, !"__UNIQUE_ID_license573", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias574, !8, !"__UNIQUE_ID_alias574", i1 false, i1 false}
!8 = !{!"../net/sctp/diag.c", i32 531, i32 1}
!9 = !{ptr @sctp_diag_handler, !10, !"sctp_diag_handler", i1 false, i1 false}
!10 = !{!"../net/sctp/diag.c", i32 510, i32 39}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sctp/diag.c", i32 203, i32 43}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sctp/diag.c", i32 76, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sctp/diag.c", i32 84, i32 2}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/netlink.h", i32 991, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sctp/diag.c", i32 232, i32 2}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2158242047, i64 2158242527, i64 2158242084, i64 2158242140, i64 2158242174, i64 2158242198, i64 2158242239, i64 2158242260, i64 2158242288, i64 2158242322}
!35 = !{!"auto-init"}
