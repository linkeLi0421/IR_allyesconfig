; ModuleID = '/llk/IR_all_yes/net/bluetooth/hci_sock.c_pt.bc'
source_filename = "../net/bluetooth/hci_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hci_mgmt_chan_register\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_mgmt_chan_register\09\09\09\09"
module asm "\09.long\09__crc_hci_mgmt_chan_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_mgmt_chan_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_mgmt_chan_register\22\09\09\09\09\09"
module asm "__kstrtabns_hci_mgmt_chan_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hci_mgmt_chan_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_mgmt_chan_unregister\09\09\09\09"
module asm "\09.long\09__crc_hci_mgmt_chan_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_mgmt_chan_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_mgmt_chan_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hci_mgmt_chan_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.hci_sec_filter = type { i32, [2 x i32], [6 x [4 x i32]] }
%struct.hci_pinfo = type { %struct.bt_sock, ptr, %struct.hci_filter, i8, i16, i32, i32, [16 x i8], i16 }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.hci_filter = type { i32, [2 x i32], i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hci_mon_hdr = type { i16, i16, i16 }
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_ev_stack_internal = type { i16, [0 x i8] }
%struct.hci_mon_new_index = type { i8, i8, %struct.bdaddr_t, [8 x i8] }
%struct.hci_mon_index_info = type { %struct.bdaddr_t, i16 }
%struct.hci_mgmt_chan = type { %struct.list_head, i16, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_hci = type { i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.111 }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.__va_list = type { ptr }
%struct.hci_ufilter = type { i32, [2 x i32], i16 }
%struct.mgmt_hdr = type { i16, i16, i16 }
%struct.hci_mgmt_handler = type { ptr, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@hci_send_to_sock.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_send_to_sock\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/bluetooth/hci_sock.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdev %p len %d\0A\00", [16 x i8] zeroinitializer }, align 32
@hci_sk_list = internal global { %struct.bt_sock_list, [44 x i8] } { %struct.bt_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } }, ptr null }, [44 x i8] zeroinitializer }, align 32
@monitor_promisc = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@hci_send_to_monitor.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_send_to_monitor\00", [44 x i8] zeroinitializer }, align 32
@hci_sock_dev_event.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hci_sock_dev_event\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdev %s event %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mgmt_chan_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mgmt_chan_list_lock, i64 52), ptr getelementptr (i8, ptr @mgmt_chan_list_lock, i64 52) }, ptr @mgmt_chan_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mgmt_chan_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mgmt_chan_list, ptr @mgmt_chan_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_hci_mgmt_chan_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_mgmt_chan_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_mgmt_chan_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_mgmt_chan_register to i32), ptr @__kstrtab_hci_mgmt_chan_register, ptr @__kstrtabns_hci_mgmt_chan_register }, section "___ksymtab+hci_mgmt_chan_register", align 4
@__kstrtab_hci_mgmt_chan_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_mgmt_chan_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_mgmt_chan_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_mgmt_chan_unregister to i32), ptr @__kstrtab_hci_mgmt_chan_unregister, ptr @__kstrtabns_hci_mgmt_chan_unregister }, section "___ksymtab+hci_mgmt_chan_unregister", align 4
@hci_sk_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1040, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"HCI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@hci_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 31, ptr @hci_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HCI socket registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hci\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create HCI proc file\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HCI socket layer initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_sk_list.lock\00", [47 x i8] zeroinitializer }, align 32
@__hci_send_to_channel.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__hci_send_to_channel\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"channel %u len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mgmt_chan_list_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mgmt_chan_list_lock\00", [44 x i8] zeroinitializer }, align 32
@hci_sock_create.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 2, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hci_sock_create\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 31, ptr null, ptr @hci_sock_release, ptr @hci_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @hci_sock_getname, ptr @datagram_poll, ptr @hci_sock_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @hci_sock_setsockopt, ptr @hci_sock_getsockopt, ptr null, ptr @hci_sock_sendmsg, ptr @hci_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hci_sock_release.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_sock_release\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sock %p sk %p\0A\00", [17 x i8] zeroinitializer }, align 32
@sock_cookie_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sock_cookie_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_sock_bind.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.19, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_sock_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Linux version %s (%s)\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bluetooth subsystem version %u.%u\00", [62 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@hci_sock_getname.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.19, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_sock_getname\00", [47 x i8] zeroinitializer }, align 32
@hci_sock_ioctl.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_sock_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmd %x arg %lx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hci_sock_setsockopt.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_sock_setsockopt\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sk %p, opt %d\0A\00", [17 x i8] zeroinitializer }, align 32
@hci_sock_setsockopt_old.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.34, i8 1, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci_sock_setsockopt_old\00", [40 x i8] zeroinitializer }, align 32
@hci_sec_filter = internal constant { %struct.hci_sec_filter, [52 x i8] } { %struct.hci_sec_filter { i32 16, [2 x i32] [i32 268491262, i32 45068], [6 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 -1107296250, i32 1, i32 0, i32 0], [4 x i32] [i32 20992, i32 0, i32 0, i32 0], [4 x i32] [i32 -1431305728, i32 725625514, i32 86114644, i32 0], [4 x i32] [i32 702, i32 0, i32 0, i32 0], [4 x i32] [i32 234, i32 0, i32 0, i32 0]] }, [52 x i8] zeroinitializer }, align 32
@hci_sock_getsockopt.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.34, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_sock_getsockopt\00", [44 x i8] zeroinitializer }, align 32
@hci_sock_getsockopt_old.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.34, i8 1, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci_sock_getsockopt_old\00", [40 x i8] zeroinitializer }, align 32
@hci_sock_sendmsg.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.19, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_sock_sendmsg\00", [47 x i8] zeroinitializer }, align 32
@hci_mgmt_cmd.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_mgmt_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"got %d bytes\0A\00", [18 x i8] zeroinitializer }, align 32
@hci_mgmt_cmd.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown op %u\0A\00", [17 x i8] zeroinitializer }, align 32
@hci_sock_recvmsg.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_sock_recvmsg\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock %p, sk %p\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 6, i64 14, i64 15]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 240]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.50 = internal global [18 x i64] [i64 16, i64 32, i64 1074022601, i64 1074022602, i64 1074022603, i64 1074022604, i64 1074022621, i64 1074022622, i64 1074022623, i64 1074022624, i64 1074022625, i64 1074022626, i64 1074022627, i64 1074022628, i64 2147764434, i64 2147764435, i64 2147764436, i64 2147764464]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1074022620, i64 1074022630, i64 1074022631, i64 2147764437, i64 2147764439]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 274]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 274]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 208, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"hci_sk_list\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 161, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"monitor_promisc\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 44, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 320, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 748, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"mgmt_chan_list_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"mgmt_chan_list\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 39, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"hci_sk_proto\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2087, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"hci_sock_family_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2123, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2141, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2145, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2147, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2152, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 162, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 273, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 40, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2098, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"hci_sock_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2064, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 842, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"sock_cookie_ida\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 42, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1224, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1094, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1284, i32 25 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1287, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1393, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 982, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 230, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 214, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 156, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1917, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1834, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"hci_sec_filter\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 140, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2031, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1966, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1700, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1520, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1550, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [28 x i8] c"../net/bluetooth/hci_sock.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1462, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_hci_mgmt_chan_register, ptr @__ksymtab_hci_mgmt_chan_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hci_sk_list, ptr @monitor_promisc, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mgmt_chan_list_lock, ptr @mgmt_chan_list, ptr @hci_sk_proto, ptr @hci_sock_family_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hci_sock_ops, ptr @.str.18, ptr @.str.19, ptr @sock_cookie_ida, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @hci_sec_filter, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_sk_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_promisc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_chan_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_chan_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_sk_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_cookie_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_sec_filter to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_sock_set_flag(ptr noundef %sk, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 5
  tail call void @_set_bit(i32 noundef %nr, ptr noundef %flags) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_sock_clear_flag(ptr noundef %sk, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %nr, ptr noundef %flags) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_sock_test_flag(ptr noundef %sk, i32 noundef %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 5
  %div3.i = lshr i32 %nr, 5
  %arrayidx.i = getelementptr i32, ptr %flags, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %nr, 31
  %shr.i = lshr i32 %1, %and.i
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @hci_sock_get_channel(ptr nocapture noundef readonly %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel, align 2
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_sock_get_cookie(ptr nocapture noundef readonly %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_send_to_sock(ptr noundef %hdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_send_to_sock.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_send_to_sock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_send_to_sock.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %hdev, i32 noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %2 = load ptr, ptr @hci_sk_list, align 4
  %tobool4.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -84
  %tobool6.not168174 = icmp eq ptr %add.ptr, null
  %tobool6.not168 = or i1 %tobool4.not, %tobool6.not168174
  br i1 %tobool6.not168, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %incoming = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %cb61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sk.0171 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr124, %cleanup.for.body_crit_edge ]
  %skb_copy.0169 = phi ptr [ null, %for.body.lr.ph ], [ %skb_copy.2, %cleanup.for.body_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.0171, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.not = icmp eq i8 %5, 3
  br i1 %cmp.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %hdev8 = getelementptr inbounds %struct.hci_pinfo, ptr %sk.0171, i32 0, i32 1
  %6 = ptrtoint ptr %hdev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev8, align 8
  %cmp9.not = icmp eq ptr %7, %hdev
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %cmp13 = icmp eq ptr %9, %sk.0171
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %sk.0171, i32 0, i32 4
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %channel, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end16.cleanup_crit_edge [
    i16 0, label %if.then20
    i16 1, label %if.then60
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  %13 = ptrtoint ptr %cb61 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cb61, align 8
  %.off = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %if.end52, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end52:                                         ; preds = %if.then20
  %filter.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk.0171, i32 0, i32 2
  %and.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %filter.i, align 4
  %17 = shl nuw nsw i32 1, %and.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end52.cleanup_crit_edge, label %if.end.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 4
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.end97_crit_edge

if.end.i.if.end97_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end7.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = and i8 %22, 63
  %and9.i = zext i8 %23 to i32
  %event_mask.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk.0171, i32 0, i32 2, i32 1
  %shr.i5457.i = lshr i32 %and9.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %event_mask.i, i32 %shr.i5457.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %and.i55.i = and i32 %and9.i, 31
  %shl.i.i = shl nuw i32 1, %and.i55.i
  %and1.i56.i = and i32 %shl.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i56.i)
  %tobool11.not.i = icmp eq i32 %and1.i56.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end13.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  %opcode.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk.0171, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.not.i = icmp eq i16 %27, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end97_crit_edge, label %if.end16.i

if.end13.i.if.end97_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end16.i:                                       ; preds = %if.end13.i
  %trunc.i = trunc i8 %22 to i6
  %28 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.44)
  switch i6 %trunc.i, label %if.end16.i.if.end97_crit_edge [
    i6 14, label %land.lhs.true.i
    i6 15, label %land.lhs.true29.i
  ]

if.end16.i.if.end97_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.lhs.true.i:                                  ; preds = %if.end16.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 3
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %30)
  %cmp23.not.i = icmp eq i16 %27, %30
  br i1 %cmp23.not.i, label %land.lhs.true.i.if.end97_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.if.end97_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.lhs.true29.i:                                ; preds = %if.end16.i
  %add.ptr34.i = getelementptr i8, ptr %20, i32 4
  %31 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr34.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %32)
  %cmp38.not.i = icmp eq i16 %27, %32
  br i1 %cmp38.not.i, label %land.lhs.true29.i.if.end97_crit_edge, label %land.lhs.true29.i.cleanup_crit_edge

land.lhs.true29.i.cleanup_crit_edge:              ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true29.i.if.end97_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then60:                                        ; preds = %if.end16
  %33 = ptrtoint ptr %incoming to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %incoming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool63.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool63.not, label %if.then60.cleanup_crit_edge, label %if.end65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  %34 = ptrtoint ptr %cb61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cb61, align 8
  %.off161 = add i8 %35, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off161)
  %switch162 = icmp ult i8 %.off161, 4
  br i1 %switch162, label %if.end65.if.end97_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65.if.end97_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end97:                                         ; preds = %if.end65.if.end97_crit_edge, %land.lhs.true29.i.if.end97_crit_edge, %land.lhs.true.i.if.end97_crit_edge, %if.end16.i.if.end97_crit_edge, %if.end13.i.if.end97_crit_edge, %if.end.i.if.end97_crit_edge
  %tobool98.not = icmp eq ptr %skb_copy.0169, null
  br i1 %tobool98.not, label %if.then99, label %if.end97.if.end108_crit_edge

if.end97.if.end108_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then99:                                        ; preds = %if.end97
  %call100 = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef 1, i32 noundef 2592, i1 noundef zeroext true) #13
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.then99.cleanup_crit_edge, label %if.end103

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end103:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  %call104 = tail call ptr @skb_push(ptr noundef nonnull %call100, i32 noundef 1) #13
  %36 = ptrtoint ptr %cb61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cb61, align 8
  %38 = ptrtoint ptr %call104 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %call104, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.end97.if.end108_crit_edge
  %skb_copy.1 = phi ptr [ %skb_copy.0169, %if.end97.if.end108_crit_edge ], [ %call100, %if.end103 ]
  %call109 = tail call ptr @skb_clone(ptr noundef nonnull %skb_copy.1, i32 noundef 2592) #13
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %if.end112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  %call113 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.0171, ptr noundef nonnull %call109) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end112.cleanup_crit_edge, label %if.then115

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call109, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end112.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.then99.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %land.lhs.true29.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %skb_copy.2 = phi ptr [ %skb_copy.0169, %lor.lhs.false.cleanup_crit_edge ], [ %skb_copy.0169, %for.body.cleanup_crit_edge ], [ %skb_copy.0169, %if.end12.cleanup_crit_edge ], [ %skb_copy.0169, %if.then20.cleanup_crit_edge ], [ %skb_copy.0169, %if.then60.cleanup_crit_edge ], [ %skb_copy.0169, %if.end65.cleanup_crit_edge ], [ %skb_copy.0169, %if.end16.cleanup_crit_edge ], [ null, %if.then99.cleanup_crit_edge ], [ %skb_copy.1, %if.end108.cleanup_crit_edge ], [ %skb_copy.1, %if.then115 ], [ %skb_copy.1, %if.end112.cleanup_crit_edge ], [ %skb_copy.0169, %if.end52.cleanup_crit_edge ], [ %skb_copy.0169, %if.end7.i.cleanup_crit_edge ], [ %skb_copy.0169, %land.lhs.true.i.cleanup_crit_edge ], [ %skb_copy.0169, %land.lhs.true29.i.cleanup_crit_edge ]
  %39 = getelementptr inbounds %struct.sock_common, ptr %sk.0171, i32 0, i32 15
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool120.not = icmp eq ptr %41, null
  %add.ptr124 = getelementptr i8, ptr %41, i32 -84
  %tobool6.not175 = icmp eq ptr %add.ptr124, null
  %tobool6.not = or i1 %tobool120.not, %tobool6.not175
  br i1 %tobool6.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %skb_copy.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %skb_copy.2, %cleanup.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef %skb_copy.0.lcssa, i32 noundef 0) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_send_to_channel(i16 noundef zeroext %channel, ptr noundef %skb, i32 noundef %flag, ptr noundef %skip_sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext %channel, ptr noundef %skb, i32 noundef %flag, ptr noundef %skip_sk)
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__hci_send_to_channel(i16 noundef zeroext %channel, ptr noundef %skb, i32 noundef %flag, ptr noundef readnone %skip_sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hci_send_to_channel.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_send_to_channel, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %channel to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hci_send_to_channel.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @hci_sk_list, align 4
  %tobool4.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -84
  %tobool6.not6265 = icmp eq ptr %add.ptr, null
  %tobool6.not62 = or i1 %tobool4.not, %tobool6.not6265
  br i1 %tobool6.not62, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %div3.i.i = lshr i32 %flag, 5
  %and.i.i = and i32 %flag, 31
  %3 = shl nuw i32 1, %and.i.i
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sk.063 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr41, %cleanup.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk.063, i32 0, i32 5
  %arrayidx.i.i = getelementptr i32, ptr %flags.i, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %6 = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  %cmp = icmp eq ptr %sk.063, %skip_sk
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.063, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp15.not = icmp eq i8 %8, 3
  br i1 %cmp15.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %channel19 = getelementptr inbounds %struct.hci_pinfo, ptr %sk.063, i32 0, i32 4
  %9 = ptrtoint ptr %channel19 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %channel19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %channel)
  %cmp22.not = icmp eq i16 %10, %channel
  br i1 %cmp22.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call26 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.063, ptr noundef nonnull %call26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call26, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk.063, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool37.not = icmp eq ptr %13, null
  %add.ptr41 = getelementptr i8, ptr %13, i32 -84
  %tobool6.not66 = icmp eq ptr %add.ptr41, null
  %tobool6.not = or i1 %tobool37.not, %tobool6.not66
  br i1 %tobool6.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_send_to_monitor(ptr noundef %hdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @monitor_promisc, i32 noundef 4) #13
  %0 = load volatile i32, ptr @monitor_promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_send_to_monitor.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_send_to_monitor, %if.then5)) #13
          to label %do.end [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_send_to_monitor.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.3, ptr noundef %hdev, i32 noundef %2) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cb, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %4, label %do.end.cleanup_crit_edge [
    i8 1, label %do.end.sw.epilog_crit_edge
    i8 4, label %sw.bb7
    i8 2, label %sw.bb8
    i8 3, label %sw.bb14
    i8 5, label %sw.bb24
    i8 -16, label %sw.bb34
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %incoming = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %incoming to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %incoming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool11.not, i16 1024, i16 1280
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %incoming17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %incoming17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load18 = load i8, ptr %incoming17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18)
  %tobool20.not = icmp sgt i8 %bf.load18, -1
  %.58 = select i1 %tobool20.not, i16 1536, i16 1792
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %incoming27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %incoming27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load28 = load i8, ptr %incoming27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %tobool30.not = icmp sgt i8 %bf.load28, -1
  %.59 = select i1 %tobool30.not, i16 4608, i16 4864
  br label %sw.epilog

sw.bb34:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb24, %sw.bb14, %sw.bb8, %sw.bb7, %do.end.sw.epilog_crit_edge
  %opcode.0 = phi i16 [ 2816, %sw.bb34 ], [ 768, %sw.bb7 ], [ 512, %do.end.sw.epilog_crit_edge ], [ %., %sw.bb8 ], [ %.58, %sw.bb14 ], [ %.59, %sw.bb24 ]
  %call35 = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef 6, i32 noundef 2592, i1 noundef zeroext true) #13
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.epilog.cleanup_crit_edge, label %if.end38

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call ptr @skb_push(ptr noundef nonnull %call35, i32 noundef 6) #13
  %9 = ptrtoint ptr %call39 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %opcode.0, ptr %call39, align 1
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %index = getelementptr inbounds %struct.hci_mon_hdr, ptr %call39, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %index, align 1
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len41, align 4
  %conv42 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %len43 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call39, i32 0, i32 2
  %17 = ptrtoint ptr %len43 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %len43, align 1
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call35, i32 noundef 0, ptr noundef null) #13
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call35, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_send_monitor_ctrl_event(ptr noundef readonly %hdev, i16 noundef zeroext %event, ptr noundef readonly %data, i16 noundef zeroext %data_len, i64 noundef %tstamp, i32 noundef %flag, ptr noundef readnone %skip_sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hdev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.0 = phi i16 [ %2, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %3 = load ptr, ptr @hci_sk_list, align 4
  %tobool1.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -84
  %tobool3.not6568 = icmp eq ptr %add.ptr, null
  %tobool3.not65 = or i1 %tobool1.not, %tobool3.not6568
  br i1 %tobool3.not65, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div3.i.i = lshr i32 %flag, 5
  %and.i.i = and i32 %flag, 31
  %4 = shl nuw i32 1, %and.i.i
  %conv14 = zext i16 %data_len to i32
  %add.i = add nuw nsw i32 %conv14, 14
  %5 = tail call i16 @llvm.bswap.i16(i16 %event) #13
  %tobool21.not = icmp eq ptr %data, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sk.066 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr37, %cleanup.for.body_crit_edge ]
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %sk.066, i32 0, i32 4
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp.not = icmp eq i16 %7, 3
  br i1 %cmp.not, label %if.end6, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk.066, i32 0, i32 5
  %arrayidx.i.i = getelementptr i32, ptr %flags.i, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %10 = and i32 %9, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  %cmp10 = icmp eq ptr %sk.066, %skip_sk
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cookie = getelementptr inbounds %struct.hci_pinfo, ptr %sk.066, i32 0, i32 6
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cookie, align 4
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %18 = ptrtoint ptr %call19 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %call19, align 1
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #13
  %19 = ptrtoint ptr %call20 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %5, ptr %call20, align 1
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv14) #13
  %20 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %conv14)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %tstamp, ptr %21, align 8
  %call26 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 6) #13
  %23 = ptrtoint ptr %call26 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 4352, ptr %call26, align 1
  %index27 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call26, i32 0, i32 1
  %24 = ptrtoint ptr %index27 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %index.0, ptr %index27, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = trunc i32 %26 to i16
  %conv28 = add i16 %27, -6
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv28)
  %len29 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call26, i32 0, i32 2
  %29 = ptrtoint ptr %len29 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %len29, align 1
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %30 = getelementptr inbounds %struct.sock_common, ptr %sk.066, i32 0, i32 15
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool33.not = icmp eq ptr %32, null
  %add.ptr37 = getelementptr i8, ptr %32, i32 -84
  %tobool3.not69 = icmp eq ptr %add.ptr37, null
  %tobool3.not = or i1 %tobool33.not, %tobool3.not69
  br i1 %tobool3.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_sock_dev_event(ptr noundef %hdev, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_dev_event.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_dev_event, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_dev_event.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %event) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @monitor_promisc, i32 noundef 4) #13
  %0 = load volatile i32, ptr @monitor_promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %call6 = tail call fastcc ptr @create_monitor_event(ptr noundef %hdev, i32 noundef %event)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then8

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call6, i32 noundef 0, ptr noundef null) #13
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call6, i32 noundef 0) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge, %do.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp = icmp slt i32 %event, 5
  br i1 %cmp, label %if.then11, label %if.end10.if.end36_crit_edge

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then11:                                        ; preds = %if.end10
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then11.if.end13_crit_edge, label %if.end.i

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #13
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -3, ptr %call1.i, align 1
  %plen.i = getelementptr inbounds %struct.hci_event_hdr, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %plen.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %plen.i, align 1
  %call4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #13
  %9 = ptrtoint ptr %call4.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1, ptr %call4.i, align 1
  %data7.i = getelementptr inbounds %struct.hci_ev_stack_internal, ptr %call4.i, i32 0, i32 1
  %ev.sroa.5.0.insert.ext = zext i16 %2 to i32
  %ev.sroa.0.0.insert.ext = shl i32 %event, 16
  %ev.sroa.0.0.insert.insert = or i32 %ev.sroa.0.0.insert.ext, %ev.sroa.5.0.insert.ext
  %10 = ptrtoint ptr %data7.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %ev.sroa.0.0.insert.insert, ptr %data7.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %incoming.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %incoming.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %incoming.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %incoming.i, align 4
  %call.i.i1.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.i1.i, ptr %12, align 8
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %cb.i, align 8
  tail call void @hci_send_to_sock(ptr noundef null, ptr noundef nonnull %call.i.i.i) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #13
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.then11.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp14 = icmp eq i32 %event, 2
  br i1 %cmp14, label %if.then16, label %if.end13.if.end36_crit_edge

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then16:                                        ; preds = %if.end13
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %15 = load ptr, ptr @hci_sk_list, align 4
  %tobool18.not = icmp eq ptr %15, null
  %add.ptr = getelementptr i8, ptr %15, i32 -84
  %tobool20.not5962 = icmp eq ptr %add.ptr, null
  %tobool20.not59 = or i1 %tobool18.not, %tobool20.not5962
  br i1 %tobool20.not59, label %if.then16.for.end_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then16.for.body_crit_edge
  %sk.060 = phi ptr [ %add.ptr32, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.then16.for.body_crit_edge ]
  %hdev21 = getelementptr inbounds %struct.hci_pinfo, ptr %sk.060, i32 0, i32 1
  %16 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev21, align 8
  %cmp22 = icmp eq ptr %17, %hdev
  br i1 %cmp22, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk.060, i32 0, i32 51
  %18 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %sk_err, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk.060, i32 0, i32 76
  %19 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_state_change, align 4
  tail call void %20(ptr noundef nonnull %sk.060) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk.060, i32 0, i32 15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool28.not = icmp eq ptr %23, null
  %add.ptr32 = getelementptr i8, ptr %23, i32 -84
  %tobool20.not63 = icmp eq ptr %add.ptr32, null
  %tobool20.not = or i1 %tobool28.not, %tobool20.not63
  br i1 %tobool20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then16.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.end13.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_event(ptr nocapture noundef readonly %hdev, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 9, label %sw.bb11
    i32 3, label %entry.sw.bb15_crit_edge
    i32 7, label %sw.bb25
    i32 8, label %sw.bb30
  ]

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #13
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_type, align 1
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %call1, align 1
  %bus = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bus, align 2
  %bus2 = getelementptr inbounds %struct.hci_mon_new_index, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %bus2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bus2, align 1
  %bdaddr = getelementptr inbounds %struct.hci_mon_new_index, ptr %call1, i32 0, i32 2
  %bdaddr3 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %bdaddr, ptr %bdaddr3, i32 6)
  %name = getelementptr inbounds %struct.hci_mon_new_index, ptr %call1, i32 0, i32 3
  %name4 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %12 = ptrtoint ptr %name4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %name4, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %name, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call.i.i66 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i67 = icmp eq ptr %call.i.i66, null
  br i1 %tobool.not.i67, label %sw.bb6.cleanup_crit_edge, label %bt_skb_alloc.exit73

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bt_skb_alloc.exit73:                              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i66, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i68, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i.i69, ptr %data.i.i68, align 4
  %tail.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i66, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i70, align 8
  %add.ptr1.i.i71 = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr1.i.i71, ptr %tail.i.i70, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 31
  %19 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %manufacturer, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp = icmp eq i16 %20, -1
  br i1 %cmp, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.sw.bb15_crit_edge

sw.bb11.sw.bb15_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb11.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge
  %call.i.i74 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i75 = icmp eq ptr %call.i.i74, null
  br i1 %tobool.not.i75, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i76 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i77, ptr %data.i.i76, align 4
  %tail.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i78, align 8
  %add.ptr1.i.i79 = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i79, ptr %tail.i.i78, align 8
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i74, i32 noundef 8) #13
  %bdaddr22 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %25 = call ptr @memcpy(ptr %call20, ptr %bdaddr22, i32 6)
  %manufacturer23 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 31
  %26 = ptrtoint ptr %manufacturer23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %manufacturer23, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %manufacturer24 = getelementptr inbounds %struct.hci_mon_index_info, ptr %call20, i32 0, i32 1
  %29 = ptrtoint ptr %manufacturer24 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %manufacturer24, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %call.i.i82 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i83 = icmp eq ptr %call.i.i82, null
  br i1 %tobool.not.i83, label %sw.bb25.cleanup_crit_edge, label %bt_skb_alloc.exit89

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bt_skb_alloc.exit89:                              ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i84, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %31, i32 8
  store ptr %add.ptr.i.i85, ptr %data.i.i84, align 4
  %tail.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i86, align 8
  %add.ptr1.i.i87 = getelementptr i8, ptr %33, i32 8
  store ptr %add.ptr1.i.i87, ptr %tail.i.i86, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %call.i.i90 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i91 = icmp eq ptr %call.i.i90, null
  br i1 %tobool.not.i91, label %sw.bb30.cleanup_crit_edge, label %bt_skb_alloc.exit97

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bt_skb_alloc.exit97:                              ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i90, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %35, i32 8
  store ptr %add.ptr.i.i93, ptr %data.i.i92, align 4
  %tail.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i90, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i94, align 8
  %add.ptr1.i.i95 = getelementptr i8, ptr %37, i32 8
  store ptr %add.ptr1.i.i95, ptr %tail.i.i94, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %bt_skb_alloc.exit97, %bt_skb_alloc.exit89, %if.end19, %bt_skb_alloc.exit73, %if.end
  %skb.0 = phi ptr [ %call.i.i74, %if.end19 ], [ %call.i.i, %if.end ], [ %call.i.i66, %bt_skb_alloc.exit73 ], [ %call.i.i82, %bt_skb_alloc.exit89 ], [ %call.i.i90, %bt_skb_alloc.exit97 ]
  %opcode.0 = phi i16 [ 2560, %if.end19 ], [ 0, %if.end ], [ 256, %bt_skb_alloc.exit73 ], [ 2048, %bt_skb_alloc.exit89 ], [ 2304, %bt_skb_alloc.exit97 ]
  %call.i.i98 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i.i98, ptr %38, align 8
  %call35 = tail call ptr @skb_push(ptr noundef nonnull %skb.0, i32 noundef 6) #13
  %40 = ptrtoint ptr %call35 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %opcode.0, ptr %call35, align 1
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id, align 8
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %index = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35, i32 0, i32 1
  %44 = ptrtoint ptr %index to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %index, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %47 = trunc i32 %46 to i16
  %conv37 = add i16 %47, -6
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %len38 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35, i32 0, i32 2
  %49 = ptrtoint ptr %len38 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %len38, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.0, %sw.epilog ], [ null, %sw.bb11.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %sw.bb6.cleanup_crit_edge ], [ null, %sw.bb15.cleanup_crit_edge ], [ null, %sw.bb25.cleanup_crit_edge ], [ null, %sw.bb30.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_mgmt_chan_register(ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.hci_mgmt_chan, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp ult i16 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @mgmt_chan_list_lock, i32 noundef 0) #13
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channel, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %c.0.in.i = phi ptr [ @mgmt_chan_list, %if.end ], [ %c.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, @mgmt_chan_list
  br i1 %cmp.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %channel1.i = getelementptr inbounds %struct.hci_mgmt_chan, ptr %c.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channel1.i, align 4
  %cmp3.i = icmp eq i16 %6, %3
  br i1 %cmp3.i, label %__hci_mgmt_chan_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__hci_mgmt_chan_find.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %__hci_mgmt_chan_find.exit.if.end4_crit_edge, label %__hci_mgmt_chan_find.exit.return.sink.split_crit_edge

__hci_mgmt_chan_find.exit.return.sink.split_crit_edge: ; preds = %__hci_mgmt_chan_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

__hci_mgmt_chan_find.exit.if.end4_crit_edge:      ; preds = %__hci_mgmt_chan_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %__hci_mgmt_chan_find.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mgmt_chan_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c, ptr noundef %7, ptr noundef nonnull @mgmt_chan_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.return.sink.split_crit_edge

if.end4.return.sink.split_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %c, ptr getelementptr inbounds (%struct.list_head, ptr @mgmt_chan_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mgmt_chan_list, ptr %c, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %c, ptr %7, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.i.i, %if.end4.return.sink.split_crit_edge, %__hci_mgmt_chan_find.exit.return.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -114, %__hci_mgmt_chan_find.exit.return.sink.split_crit_edge ], [ 0, %if.end4.return.sink.split_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_mgmt_chan_unregister(ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mgmt_chan_list_lock, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %c, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_sock_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @hci_sk_proto, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bt_sock_register(i32 noundef 1, ptr noundef nonnull @hci_sock_family_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7) #13
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.8, ptr noundef nonnull @hci_sk_list, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #13
  tail call void @bt_sock_unregister(i32 noundef 1) #13
  br label %error

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.10) #13
  br label %cleanup

error:                                            ; preds = %if.then7, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ]
  tail call void @proto_unregister(ptr noundef nonnull @hci_sk_proto) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_sock_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.8) #13
  tail call void @bt_sock_unregister(i32 noundef 1) #13
  tail call void @proto_unregister(ptr noundef nonnull @hci_sk_proto) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_create.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_create, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_create.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.17, ptr noundef %sock) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not = icmp eq i16 %1, 3
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hci_sock_ops, ptr %ops, align 4
  %call6 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @hci_sk_proto, i32 noundef %kern) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call6) #13
  %3 = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, -257
  store i32 %and.i.i, ptr %3, align 4
  %conv10 = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv10, ptr %sk_protocol, align 4
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %sock, align 128
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 2, ptr %skc_state, align 2
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 82
  %9 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hci_sock_destruct, ptr %sk_destruct, align 4
  tail call void @bt_sock_link(ptr noundef nonnull @hci_sk_list, ptr noundef nonnull %call6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -94, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #13
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_release.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_release, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_release.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.19, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channel, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %3, label %if.end6.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 0, label %if.end6.sw.bb7_crit_edge
    i16 1, label %if.end6.sw.bb7_crit_edge48
    i16 3, label %if.end6.sw.bb7_crit_edge49
  ]

if.end6.sw.bb7_crit_edge49:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end6.sw.bb7_crit_edge48:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end6.sw.bb7_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @monitor_promisc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @monitor_promisc, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @monitor_promisc, ptr nonnull @monitor_promisc, i32 1, ptr nonnull elementtype(i32) @monitor_promisc) #13, !srcloc !124
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6.sw.bb7_crit_edge, %if.end6.sw.bb7_crit_edge48, %if.end6.sw.bb7_crit_edge49
  %call8 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef nonnull %1)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %sw.bb7.if.end11_crit_edge, label %if.then10

sw.bb7.if.end11_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call8, i32 noundef 0, ptr noundef null) #13
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call8, i32 noundef 0) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.bb7.if.end11_crit_edge
  %cookie.i = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end11.sw.epilog_crit_edge, label %if.then.i

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cookie.i, align 4
  tail call void @ida_free(ptr noundef nonnull @sock_cookie_ida, i32 noundef %7) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %if.end11.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  tail call void @bt_sock_unlink(ptr noundef nonnull @hci_sk_list, ptr noundef nonnull %1) #13
  %hdev12 = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev12, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %sw.epilog.if.end21_crit_edge, label %if.then14

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then14:                                        ; preds = %sw.epilog
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp = icmp eq i16 %12, 1
  br i1 %cmp, label %if.then18, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @hci_dev_do_close(ptr noundef nonnull %10) #13
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %dev_flags) #13
  tail call void @mgmt_index_added(ptr noundef nonnull %10) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14.if.end20_crit_edge
  %promisc = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 200
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %promisc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %promisc, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %promisc, ptr %promisc, i32 1, ptr elementtype(i32) %promisc) #13, !srcloc !124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_release, %if.then.i45)) #13
          to label %hci_dev_put.exit [label %if.then.i45], !srcloc !123

if.then.i45:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.23, ptr noundef %name.i, i32 noundef %15) #13
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i45, %if.end20
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #13
  br label %if.end21

if.end21:                                         ; preds = %hci_dev_put.exit, %sw.epilog.if.end21_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %16 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or.i.i.i = or i32 %18, 1
  store i32 %or.i.i.i, ptr %16, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %19 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sk_socket.i.i, align 8
  %20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i46, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i46:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !128
  tail call void @sk_free(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i46, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_bind(ptr noundef %sock, ptr noundef readonly %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  %haddr = alloca %struct.sockaddr_hci, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %haddr)
  %0 = ptrtoint ptr %haddr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %haddr, align 2
  %haddr.2.haddr.2.haddr.2..sroa_idx = getelementptr inbounds i8, ptr %haddr, i32 2
  %1 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  %haddr.4.haddr.4.haddr.4..sroa_idx = getelementptr inbounds i8, ptr %haddr, i32 4
  %2 = ptrtoint ptr %haddr.4.haddr.4.haddr.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %haddr.4.haddr.4.haddr.4..sroa_idx, align 2
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %3 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_bind.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_bind, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_bind.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.19, ptr noundef %sock, ptr noundef %4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %addr, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %5 = tail call i32 @llvm.umin.i32(i32 %addr_len, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %6 = icmp ugt i32 %5, 5
  %7 = sub nuw nsw i32 6, %5
  %8 = select i1 %6, i32 0, i32 %7
  %9 = getelementptr i8, ptr %haddr, i32 %5
  %10 = call ptr @memset(ptr %9, i32 0, i32 %8)
  %11 = call ptr @memcpy(ptr %haddr, ptr %addr, i32 %5)
  %12 = ptrtoint ptr %haddr to i32
  call void @__asan_load2_noabort(i32 %12)
  %haddr.0.haddr.0.haddr.0. = load i16, ptr %haddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %haddr.0.haddr.0.haddr.0.)
  %cmp8.not = icmp eq i16 %haddr.0.haddr.0.haddr.0., 31
  br i1 %cmp8.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #13
  %hdev12 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev12, align 8
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %15 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dev_flags, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %hdev12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %hdev12, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 2, ptr %skc_state, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_bind, %if.then.i)) #13
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.23, ptr noundef %name.i, i32 noundef %21) #13
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.then16
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #13
  br label %if.end18

if.end18:                                         ; preds = %hci_dev_put.exit, %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %skc_state20 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp22 = icmp eq i8 %23, 3
  br i1 %cmp22, label %if.end18.done_crit_edge, label %if.end25

if.end18.done_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end25:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %haddr.4.haddr.4.haddr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %haddr.4.haddr.4.haddr.4. = load i16, ptr %haddr.4.haddr.4.haddr.4..sroa_idx, align 2
  %25 = zext i16 %haddr.4.haddr.4.haddr.4. to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %haddr.4.haddr.4.haddr.4., label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb58
    i16 2, label %sw.bb131
    i16 4, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end25
  %26 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev12, align 8
  %tobool28.not = icmp eq ptr %27, null
  br i1 %tobool28.not, label %if.end30, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end30:                                         ; preds = %sw.bb
  %28 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %28)
  %haddr.2.haddr.2.haddr.2. = load i16, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %haddr.2.haddr.2.haddr.2.)
  %cmp32.not = icmp eq i16 %haddr.2.haddr.2.haddr.2., -1
  br i1 %cmp32.not, label %if.end30.if.end41_crit_edge, label %if.then34

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then34:                                        ; preds = %if.end30
  %conv31 = zext i16 %haddr.2.haddr.2.haddr.2. to i32
  %call37 = tail call ptr @hci_dev_get(i32 noundef %conv31) #13
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then34.done_crit_edge, label %if.end40

if.then34.done_crit_edge:                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %promisc = getelementptr inbounds %struct.hci_dev, ptr %call37, i32 0, i32 200
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %promisc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %promisc, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %promisc, ptr %promisc, i32 1, ptr elementtype(i32) %promisc) #13, !srcloc !129
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30.if.end41_crit_edge
  %hdev.0 = phi ptr [ %call37, %if.end40 ], [ null, %if.end30.if.end41_crit_edge ]
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 4
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %channel, align 2
  %call43 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %4)
  br i1 %call43, label %if.end41.if.end49_crit_edge, label %if.then44

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then44:                                        ; preds = %if.end41
  %call45 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %4)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then44.if.end49_crit_edge, label %if.then47

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call45, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call45, i32 noundef 0) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %call50 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call50, label %if.then51, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #13
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49.if.end52_crit_edge
  %31 = ptrtoint ptr %hdev12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %hdev.0, ptr %hdev12, align 8
  %call54 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %4)
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end52.sw.epilog_crit_edge, label %if.then56

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call54, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call54, i32 noundef 0) #13
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end25
  %32 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev12, align 8
  %tobool60.not = icmp eq ptr %33, null
  br i1 %tobool60.not, label %if.end62, label %sw.bb58.done_crit_edge

sw.bb58.done_crit_edge:                           ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end62:                                         ; preds = %sw.bb58
  %34 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %haddr.2.haddr.2.haddr.2.288 = load i16, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %haddr.2.haddr.2.haddr.2.288)
  %cmp65 = icmp eq i16 %haddr.2.haddr.2.haddr.2.288, -1
  br i1 %cmp65, label %if.end62.done_crit_edge, label %if.end68

if.end62.done_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end68:                                         ; preds = %if.end62
  %call69 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call69, label %if.end71, label %if.end68.done_crit_edge

if.end68.done_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end71:                                         ; preds = %if.end68
  %conv73 = zext i16 %haddr.2.haddr.2.haddr.2.288 to i32
  %call74 = tail call ptr @hci_dev_get(i32 noundef %conv73) #13
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end71.done_crit_edge, label %if.end77

if.end71.done_crit_edge:                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end77:                                         ; preds = %if.end71
  %flags = getelementptr inbounds %struct.hci_dev, ptr %call74, i32 0, i32 3
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool79.not = icmp eq i32 %37, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.end77.if.then98_crit_edge

if.end77.if.then98_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

lor.lhs.false:                                    ; preds = %if.end77
  %dev_flags80 = getelementptr inbounds %struct.hci_dev, ptr %call74, i32 0, i32 206
  %38 = ptrtoint ptr %dev_flags80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dev_flags80, align 4
  %and1.i303 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i303)
  %tobool83.not = icmp eq i32 %and1.i303, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %lor.lhs.false.if.then98_crit_edge

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

lor.lhs.false84:                                  ; preds = %lor.lhs.false
  %40 = ptrtoint ptr %dev_flags80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dev_flags80, align 4
  %42 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool88.not = icmp eq i32 %42, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false84.if.then98_crit_edge

lor.lhs.false84.if.then98_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

lor.lhs.false89:                                  ; preds = %lor.lhs.false84
  %43 = ptrtoint ptr %dev_flags80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dev_flags80, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool93.not = icmp eq i32 %45, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %lor.lhs.false89.if.end99_crit_edge

lor.lhs.false89.if.end99_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

land.lhs.true94:                                  ; preds = %lor.lhs.false89
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %and1.i308 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i308)
  %tobool97.not = icmp eq i32 %and1.i308, 0
  br i1 %tobool97.not, label %land.lhs.true94.if.end99_crit_edge, label %land.lhs.true94.if.then98_crit_edge

land.lhs.true94.if.then98_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

land.lhs.true94.if.end99_crit_edge:               ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then98:                                        ; preds = %land.lhs.true94.if.then98_crit_edge, %lor.lhs.false84.if.then98_crit_edge, %lor.lhs.false.if.then98_crit_edge, %if.end77.if.then98_crit_edge
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call74)
  br label %done

if.end99:                                         ; preds = %land.lhs.true94.if.end99_crit_edge, %lor.lhs.false89.if.end99_crit_edge
  %call102 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %dev_flags80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call74)
  br label %done

if.end105:                                        ; preds = %if.end99
  tail call void @mgmt_index_removed(ptr noundef nonnull %call74) #13
  %id = getelementptr inbounds %struct.hci_dev, ptr %call74, i32 0, i32 4
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id, align 8
  %call106 = tail call i32 @hci_dev_open(i16 noundef zeroext %49) #13
  %50 = zext i32 %call106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call106, label %if.else [
    i32 0, label %if.end105.if.end115_crit_edge
    i32 -114, label %if.end105.if.end115_crit_edge347
  ]

if.end105.if.end115_crit_edge347:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %dev_flags80) #13
  tail call void @mgmt_index_added(ptr noundef nonnull %call74) #13
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call74)
  br label %done

if.end115:                                        ; preds = %if.end105.if.end115_crit_edge, %if.end105.if.end115_crit_edge347
  %channel117 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 4
  %51 = ptrtoint ptr %channel117 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %channel117, align 2
  %call118 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %4)
  br i1 %call118, label %if.end115.if.end124_crit_edge, label %if.then119

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then119:                                       ; preds = %if.end115
  %call120 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %4)
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.then119.if.end124_crit_edge, label %if.then122

if.then119.if.end124_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call120, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call120, i32 noundef 0) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then119.if.end124_crit_edge, %if.end115.if.end124_crit_edge
  %flags.i311 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i311) #13
  %52 = ptrtoint ptr %hdev12 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call74, ptr %hdev12, align 8
  %call126 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %4)
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %if.end124.if.end129_crit_edge, label %if.then128

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call126, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call126, i32 noundef 0) #13
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124.if.end129_crit_edge
  %promisc130 = getelementptr inbounds %struct.hci_dev, ptr %call74, i32 0, i32 200
  %call.i.i309 = tail call zeroext i1 @__kasan_check_write(ptr noundef %promisc130, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %promisc130, i32 1, i32 3, i32 1) #13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %promisc130, ptr %promisc130, i32 1, ptr elementtype(i32) %promisc130) #13, !srcloc !129
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end25
  %54 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %54)
  %haddr.2.haddr.2.haddr.2.290 = load i16, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %haddr.2.haddr.2.haddr.2.290)
  %cmp134.not = icmp eq i16 %haddr.2.haddr.2.haddr.2.290, -1
  br i1 %cmp134.not, label %if.end137, label %sw.bb131.done_crit_edge

sw.bb131.done_crit_edge:                          ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end137:                                        ; preds = %sw.bb131
  %call138 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call138, label %if.end140, label %if.end137.done_crit_edge

if.end137.done_crit_edge:                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end140:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %channel142 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 4
  %55 = ptrtoint ptr %channel142 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %channel142, align 2
  %flags.i312 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i312) #13
  tail call void (ptr, ptr, ...) @send_monitor_note(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4))
  tail call void (ptr, ptr, ...) @send_monitor_note(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 22)
  tail call fastcc void @send_monitor_replay(ptr noundef %4)
  tail call fastcc void @send_monitor_control_replay(ptr noundef %4)
  %call.i.i310 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @monitor_promisc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @monitor_promisc, i32 1, i32 3, i32 1) #13
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @monitor_promisc, ptr nonnull @monitor_promisc, i32 1, ptr nonnull elementtype(i32) @monitor_promisc) #13, !srcloc !129
  br label %sw.epilog

sw.bb147:                                         ; preds = %if.end25
  %57 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %57)
  %haddr.2.haddr.2.haddr.2.291 = load i16, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %haddr.2.haddr.2.haddr.2.291)
  %cmp150.not = icmp eq i16 %haddr.2.haddr.2.haddr.2.291, -1
  br i1 %cmp150.not, label %if.end153, label %sw.bb147.done_crit_edge

sw.bb147.done_crit_edge:                          ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end153:                                        ; preds = %sw.bb147
  %call154 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call154, label %if.end156, label %if.end153.done_crit_edge

if.end153.done_crit_edge:                         ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end156:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  %channel158 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 4
  %58 = ptrtoint ptr %channel158 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 4, ptr %channel158, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  tail call void @mutex_lock_nested(ptr noundef nonnull @mgmt_chan_list_lock, i32 noundef 0) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.default
  %c.0.in.i.i = phi ptr [ @mgmt_chan_list, %sw.default ], [ %c.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %59 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %c.0.i.i = load ptr, ptr %c.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %c.0.i.i, @mgmt_chan_list
  br i1 %cmp.not.i.i, label %hci_mgmt_chan_find.exit.thread, label %for.body.i.i

hci_mgmt_chan_find.exit.thread:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %done

for.body.i.i:                                     ; preds = %for.cond.i.i
  %channel1.i.i = getelementptr inbounds %struct.hci_mgmt_chan, ptr %c.0.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %channel1.i.i, align 4
  %cmp3.i.i = icmp eq i16 %61, %haddr.4.haddr.4.haddr.4.
  br i1 %cmp3.i.i, label %hci_mgmt_chan_find.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

hci_mgmt_chan_find.exit:                          ; preds = %for.body.i.i
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  %tobool161.not = icmp eq ptr %c.0.i.i, null
  br i1 %tobool161.not, label %hci_mgmt_chan_find.exit.done_crit_edge, label %if.end163

hci_mgmt_chan_find.exit.done_crit_edge:           ; preds = %hci_mgmt_chan_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end163:                                        ; preds = %hci_mgmt_chan_find.exit
  %62 = ptrtoint ptr %haddr.2.haddr.2.haddr.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %62)
  %haddr.2.haddr.2.haddr.2.292 = load i16, ptr %haddr.2.haddr.2.haddr.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %haddr.2.haddr.2.haddr.2.292)
  %cmp166.not = icmp eq i16 %haddr.2.haddr.2.haddr.2.292, -1
  br i1 %cmp166.not, label %if.end169, label %if.end163.done_crit_edge

if.end163.done_crit_edge:                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end169:                                        ; preds = %if.end163
  %call170 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call170, label %if.then171, label %if.end169.if.end172_crit_edge

if.end169.if.end172_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

if.then171:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i313 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i313) #13
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.end169.if.end172_crit_edge
  %channel174 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 4
  %63 = ptrtoint ptr %channel174 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %haddr.4.haddr.4.haddr.4., ptr %channel174, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %haddr.4.haddr.4.haddr.4.)
  %cmp177 = icmp eq i16 %haddr.4.haddr.4.haddr.4., 3
  br i1 %cmp177, label %if.then179, label %if.end172.sw.epilog_crit_edge

if.end172.sw.epilog_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then179:                                       ; preds = %if.end172
  %call180 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %4)
  br i1 %call180, label %if.then179.if.end186_crit_edge, label %if.then181

if.then179.if.end186_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then181:                                       ; preds = %if.then179
  %call182 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %4)
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %if.then181.if.end186_crit_edge, label %if.then184

if.then181.if.end186_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then184:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call182, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call182, i32 noundef 0) #13
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.then181.if.end186_crit_edge, %if.then179.if.end186_crit_edge
  %call187 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %4)
  %tobool188.not = icmp eq ptr %call187, null
  br i1 %tobool188.not, label %if.end186.if.end190_crit_edge, label %if.then189

if.end186.if.end190_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end190

if.then189:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call187, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call187, i32 noundef 0) #13
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.end186.if.end190_crit_edge
  %flags.i314 = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i314) #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i314) #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i314) #13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i314) #13
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i314) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i314) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end190, %if.end172.sw.epilog_crit_edge, %if.end156, %if.end140, %if.end129, %if.then56, %if.end52.sw.epilog_crit_edge
  %mtu = getelementptr inbounds %struct.hci_pinfo, ptr %4, i32 0, i32 8
  %64 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool192.not = icmp eq i16 %65, 0
  br i1 %tobool192.not, label %if.then193, label %sw.epilog.if.end195_crit_edge

sw.epilog.if.end195_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195

if.then193:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1028, ptr %mtu, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %sw.epilog.if.end195_crit_edge
  %67 = ptrtoint ptr %skc_state20 to i32
  call void @__asan_store1_noabort(i32 %67)
  store volatile i8 3, ptr %skc_state20, align 2
  br label %done

done:                                             ; preds = %if.end195, %if.end163.done_crit_edge, %hci_mgmt_chan_find.exit.done_crit_edge, %hci_mgmt_chan_find.exit.thread, %if.end153.done_crit_edge, %sw.bb147.done_crit_edge, %if.end137.done_crit_edge, %sw.bb131.done_crit_edge, %if.else, %if.then104, %if.then98, %if.end71.done_crit_edge, %if.end68.done_crit_edge, %if.end62.done_crit_edge, %sw.bb58.done_crit_edge, %if.then34.done_crit_edge, %sw.bb.done_crit_edge, %if.end18.done_crit_edge
  %err.2 = phi i32 [ 0, %if.end195 ], [ -16, %if.then98 ], [ -87, %if.then104 ], [ %call106, %if.else ], [ -114, %if.end18.done_crit_edge ], [ -114, %sw.bb.done_crit_edge ], [ -19, %if.then34.done_crit_edge ], [ -114, %sw.bb58.done_crit_edge ], [ -22, %if.end62.done_crit_edge ], [ -1, %if.end68.done_crit_edge ], [ -19, %if.end71.done_crit_edge ], [ -22, %sw.bb131.done_crit_edge ], [ -1, %if.end137.done_crit_edge ], [ -22, %sw.bb147.done_crit_edge ], [ -1, %if.end153.done_crit_edge ], [ -22, %hci_mgmt_chan_find.exit.done_crit_edge ], [ -22, %if.end163.done_crit_edge ], [ -22, %hci_mgmt_chan_find.exit.thread ]
  tail call void @release_sock(ptr noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %done ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %haddr)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_getname(ptr noundef %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_getname.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_getname, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_getname.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.19, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool4.not = icmp eq i32 %peer, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %hdev1.i = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end6.if.then9_crit_edge, label %if.end.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %4 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags.i, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %hci_hdev_from_sock.exit, label %if.end.i.if.then9_crit_edge

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

hci_hdev_from_sock.exit:                          ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %hci_hdev_from_sock.exit.if.then9_crit_edge, label %if.end11

hci_hdev_from_sock.exit.if.then9_crit_edge:       ; preds = %hci_hdev_from_sock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %hci_hdev_from_sock.exit.if.then9_crit_edge, %if.end.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i2428 = phi ptr [ %3, %hci_hdev_from_sock.exit.if.then9_crit_edge ], [ inttoptr (i32 -32 to ptr), %if.end.i.if.then9_crit_edge ], [ inttoptr (i32 -77 to ptr), %if.end6.if.then9_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i2428 to i32
  br label %done

if.end11:                                         ; preds = %hci_hdev_from_sock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 31, ptr %addr, align 2
  %id = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 8
  %hci_dev = getelementptr inbounds %struct.sockaddr_hci, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %hci_dev to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %hci_dev, align 2
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %channel, align 2
  %hci_channel = getelementptr inbounds %struct.sockaddr_hci, ptr %addr, i32 0, i32 2
  %14 = ptrtoint ptr %hci_channel to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %hci_channel, align 2
  br label %done

done:                                             ; preds = %if.end11, %if.then9
  %err.0 = phi i32 [ %7, %if.then9 ], [ 6, %if.end11 ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_ioctl.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_ioctl, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_ioctl.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.29, i32 noundef %cmd, i32 noundef %arg) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #13
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end6, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end6:                                          ; preds = %do.end
  %cookie.i = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @sock_cookie_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #13
  %7 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #13
  %8 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cookie.i, align 4
  %comm.i = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 7
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %call4.i = tail call ptr @__get_task_comm(ptr noundef %comm.i, i32 noundef 16, ptr noundef %12) #13
  %call9 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call9, label %if.then10, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %call12 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %2)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call12, i32 noundef 0, ptr noundef null) #13
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  tail call void @release_sock(ptr noundef %2) #13
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %cmd, label %sw.epilog [
    i32 -2147202862, label %sw.bb
    i32 -2147202861, label %sw.bb18
    i32 -2147202860, label %sw.bb20
    i32 1074022601, label %sw.bb22
    i32 1074022602, label %sw.bb28
    i32 1074022603, label %sw.bb34
    i32 1074022604, label %sw.bb40
    i32 1074022621, label %if.end16.sw.bb46_crit_edge
    i32 1074022622, label %if.end16.sw.bb46_crit_edge83
    i32 1074022623, label %if.end16.sw.bb46_crit_edge84
    i32 1074022624, label %if.end16.sw.bb46_crit_edge85
    i32 1074022625, label %if.end16.sw.bb46_crit_edge86
    i32 1074022626, label %if.end16.sw.bb46_crit_edge87
    i32 1074022627, label %if.end16.sw.bb46_crit_edge88
    i32 1074022628, label %if.end16.sw.bb46_crit_edge89
    i32 -2147202832, label %sw.bb51
  ]

if.end16.sw.bb46_crit_edge89:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge88:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge87:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge86:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge85:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge84:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge83:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

if.end16.sw.bb46_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb46

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @hci_get_dev_list(ptr noundef %0) #13
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @hci_get_dev_info(ptr noundef %0) #13
  br label %cleanup

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call i32 @hci_get_conn_list(ptr noundef %0) #13
  br label %cleanup

sw.bb22:                                          ; preds = %if.end16
  %call23 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call23, label %if.end25, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %conv26 = trunc i32 %arg to i16
  %call27 = tail call i32 @hci_dev_open(i16 noundef zeroext %conv26) #13
  br label %cleanup

sw.bb28:                                          ; preds = %if.end16
  %call29 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call29, label %if.end31, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  %conv32 = trunc i32 %arg to i16
  %call33 = tail call i32 @hci_dev_close(i16 noundef zeroext %conv32) #13
  br label %cleanup

sw.bb34:                                          ; preds = %if.end16
  %call35 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call35, label %if.end37, label %sw.bb34.cleanup_crit_edge

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  %conv38 = trunc i32 %arg to i16
  %call39 = tail call i32 @hci_dev_reset(i16 noundef zeroext %conv38) #13
  br label %cleanup

sw.bb40:                                          ; preds = %if.end16
  %call41 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call41, label %if.end43, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #15
  %conv44 = trunc i32 %arg to i16
  %call45 = tail call i32 @hci_dev_reset_stat(i16 noundef zeroext %conv44) #13
  br label %cleanup

sw.bb46:                                          ; preds = %if.end16.sw.bb46_crit_edge, %if.end16.sw.bb46_crit_edge83, %if.end16.sw.bb46_crit_edge84, %if.end16.sw.bb46_crit_edge85, %if.end16.sw.bb46_crit_edge86, %if.end16.sw.bb46_crit_edge87, %if.end16.sw.bb46_crit_edge88, %if.end16.sw.bb46_crit_edge89
  %call47 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call47, label %if.end49, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call i32 @hci_dev_cmd(i32 noundef %cmd, ptr noundef %0) #13
  br label %cleanup

sw.bb51:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 @hci_inquiry(ptr noundef %0) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end16
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #13
  %hdev1.i.i = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %sw.epilog.if.then.i79_crit_edge, label %if.end.i.i

sw.epilog.if.then.i79_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i79

if.end.i.i:                                       ; preds = %sw.epilog
  %dev_flags.i.i = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 206
  %16 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_flags.i.i, align 4
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i.i, label %hci_hdev_from_sock.exit.i, label %if.end.i.i.if.then.i79_crit_edge

if.end.i.i.if.then.i79_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i79

hci_hdev_from_sock.exit.i:                        ; preds = %if.end.i.i
  %cmp.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %hci_hdev_from_sock.exit.i.if.then.i79_crit_edge, label %if.end.i

hci_hdev_from_sock.exit.i.if.then.i79_crit_edge:  ; preds = %hci_hdev_from_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i79

if.then.i79:                                      ; preds = %hci_hdev_from_sock.exit.i.if.then.i79_crit_edge, %if.end.i.i.if.then.i79_crit_edge, %sw.epilog.if.then.i79_crit_edge
  %retval.0.i47.i = phi ptr [ %15, %hci_hdev_from_sock.exit.i.if.then.i79_crit_edge ], [ inttoptr (i32 -32 to ptr), %if.end.i.i.if.then.i79_crit_edge ], [ inttoptr (i32 -77 to ptr), %sw.epilog.if.then.i79_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i47.i to i32
  br label %done

if.end.i:                                         ; preds = %hci_hdev_from_sock.exit.i
  %20 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dev_flags.i.i, align 4
  %22 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i80 = icmp eq i32 %22, 0
  br i1 %tobool.not.i80, label %if.end5.i, label %if.end.i.done_crit_edge

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end5.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dev_flags.i.i, align 4
  %25 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.done_crit_edge

if.end5.i.done_crit_edge:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end11.i:                                       ; preds = %if.end5.i
  %dev_type.i = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 6
  %26 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dev_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 0
  br i1 %cmp.not.i, label %if.end14.i, label %if.end11.i.done_crit_edge

if.end11.i.done_crit_edge:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end14.i:                                       ; preds = %if.end11.i
  %28 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %if.end14.i.done_crit_edge [
    i32 1074022620, label %sw.bb.i
    i32 -2147202859, label %sw.bb18.i
    i32 -2147202857, label %sw.bb20.i
    i32 1074022630, label %sw.bb22.i
    i32 1074022631, label %sw.bb27.i
  ]

if.end14.i.done_crit_edge:                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = tail call zeroext i1 @capable(i32 noundef 12) #13
  %..i = select i1 %call15.i, i32 -95, i32 -1
  br label %done

sw.bb18.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 @hci_get_conn_info(ptr noundef nonnull %15, ptr noundef %0) #13
  br label %done

sw.bb20.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call21.i = tail call i32 @hci_get_auth_info(ptr noundef nonnull %15, ptr noundef %0) #13
  br label %done

sw.bb22.i:                                        ; preds = %if.end14.i
  %call23.i = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call23.i, label %if.end25.i, label %sw.bb22.i.done_crit_edge

sw.bb22.i.done_crit_edge:                         ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end25.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  %call26.i = tail call fastcc i32 @hci_sock_reject_list_add(ptr noundef nonnull %15, ptr noundef %0) #13
  br label %done

sw.bb27.i:                                        ; preds = %if.end14.i
  %call28.i = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call28.i, label %if.end30.i, label %sw.bb27.i.done_crit_edge

sw.bb27.i.done_crit_edge:                         ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end30.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #15
  %call31.i = tail call fastcc i32 @hci_sock_reject_list_del(ptr noundef nonnull %15, ptr noundef %0) #13
  br label %done

done:                                             ; preds = %if.end30.i, %sw.bb27.i.done_crit_edge, %if.end25.i, %sw.bb22.i.done_crit_edge, %sw.bb20.i, %sw.bb18.i, %sw.bb.i, %if.end14.i.done_crit_edge, %if.end11.i.done_crit_edge, %if.end5.i.done_crit_edge, %if.end.i.done_crit_edge, %if.then.i79, %do.end.done_crit_edge
  %err.0 = phi i32 [ -77, %do.end.done_crit_edge ], [ %19, %if.then.i79 ], [ %call31.i, %if.end30.i ], [ %call26.i, %if.end25.i ], [ %call21.i, %sw.bb20.i ], [ %call19.i, %sw.bb18.i ], [ -16, %if.end.i.done_crit_edge ], [ -95, %if.end5.i.done_crit_edge ], [ -95, %if.end11.i.done_crit_edge ], [ %..i, %sw.bb.i ], [ -1, %sw.bb22.i.done_crit_edge ], [ -1, %sw.bb27.i.done_crit_edge ], [ -515, %if.end14.i.done_crit_edge ]
  tail call void @release_sock(ptr noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %sw.bb51, %if.end49, %sw.bb46.cleanup_crit_edge, %if.end43, %sw.bb40.cleanup_crit_edge, %if.end37, %sw.bb34.cleanup_crit_edge, %if.end31, %sw.bb28.cleanup_crit_edge, %if.end25, %sw.bb22.cleanup_crit_edge, %sw.bb20, %sw.bb18, %sw.bb
  %retval.0 = phi i32 [ %err.0, %done ], [ %call52, %sw.bb51 ], [ %call50, %if.end49 ], [ %call45, %if.end43 ], [ %call39, %if.end37 ], [ %call33, %if.end31 ], [ %call27, %if.end25 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb ], [ -1, %sw.bb22.cleanup_crit_edge ], [ -1, %sw.bb28.cleanup_crit_edge ], [ -1, %sw.bb34.cleanup_crit_edge ], [ -1, %sw.bb40.cleanup_crit_edge ], [ -1, %sw.bb46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %len) #0 align 64 {
entry:
  %opt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %opt) #13
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %opt, align 2, !annotation !130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_setsockopt.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_setsockopt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_setsockopt.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.34, ptr noundef %1, i32 noundef %optname) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 0, label %if.then4
    i32 274, label %if.end9
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i32 @hci_sock_setsockopt_old(ptr noundef %sock, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %len)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %4 = and i32 %optname, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %switch = icmp eq i32 %4, 12
  br i1 %switch, label %sw.bb, label %if.end9.done_crit_edge

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb:                                            ; preds = %if.end9
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %switch35 = icmp ult i16 %6, 2
  br i1 %switch35, label %sw.bb.done_crit_edge, label %sw.epilog

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.epilog:                                        ; preds = %sw.bb
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %7 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 2, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 2) #13
  %9 = call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #9, !srcloc !132
  %and.i.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %7, i32 noundef 2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end14_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end14_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i39 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 2, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 2, %res.0.i.i.i.i39
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i39)
  br label %done

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %7, align 1
  %15 = ptrtoint ptr %opt to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %opt, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end14_crit_edge
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %opt, align 2
  %mtu = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %mtu, align 8
  br label %done

done:                                             ; preds = %if.end14, %if.then11.i.i.i.i, %sw.bb.done_crit_edge, %if.end9.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end14 ], [ -92, %sw.bb.done_crit_edge ], [ -92, %if.end9.done_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %err.0, %done ], [ -92, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %opt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_getsockopt.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_getsockopt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_getsockopt.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.34, ptr noundef %1, i32 noundef %optname) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 0, label %if.then4
    i32 274, label %if.end9
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i32 @hci_sock_getsockopt_old(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %3 = and i32 %optname, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %switch = icmp eq i32 %3, 12
  br i1 %switch, label %sw.bb, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %mtu = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mtu, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2045) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !132
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i16 %5, i32 -1226833921) #13, !srcloc !135
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool16.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end9.sw.epilog_crit_edge
  %err.0 = phi i32 [ %spec.select, %sw.bb ], [ -92, %if.end9.sw.epilog_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %err.0, %sw.epilog ], [ -92, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_sendmsg.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_sendmsg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_sendmsg.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.19, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup156_crit_edge

do.end.cleanup156_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

if.end6:                                          ; preds = %do.end
  %and7 = and i32 %3, -24641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  %or.cond = or i1 %cmp, %tobool8.not
  br i1 %or.cond, label %if.end6.cleanup156_crit_edge, label %lor.lhs.false

if.end6.cleanup156_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

lor.lhs.false:                                    ; preds = %if.end6
  %mtu = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mtu, align 8
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp11 = icmp ult i32 %conv, %len
  br i1 %cmp11, label %lor.lhs.false.cleanup156_crit_edge, label %if.end14

lor.lhs.false.cleanup156_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

if.end14:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #13
  %6 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err.i, align 4, !annotation !130
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %and.i = and i32 %8, 64
  %add.i.i = add i32 %len, 8
  %call.i.i = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef %and.i, ptr noundef nonnull %err.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.critedge.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end4.i.i

land.lhs.true.critedge.i.i:                       ; preds = %if.end14
  %13 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge, label %land.lhs.true.critedge.i.i.if.then.i_crit_edge

land.lhs.true.critedge.i.i.if.then.i_crit_edge:   ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge, %if.then.i.i
  %sk_err.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %15 = ptrtoint ptr %sk_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_err.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %sock_error.exit.thread.i.i, label %sock_error.exit.i.i, !prof !127

sock_error.exit.thread.i.i:                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %err.i, align 4
  br label %if.end8.i.i

sock_error.exit.i.i:                              ; preds = %if.end4.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  call void @llvm.prefetch.p0(ptr %sk_err.i.i.i, i32 1, i32 3, i32 1) #13
  %18 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i.i.i) #13, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !138
  %sub.i.i.i = sub i32 0, %asmresult.i.i.i.i
  %19 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i.i.i, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool6.not.i.i, label %sock_error.exit.i.i.if.end8.i.i_crit_edge, label %sock_error.exit.i.i.out.i.i_crit_edge

sock_error.exit.i.i.out.i.i_crit_edge:            ; preds = %sock_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

sock_error.exit.i.i.if.end8.i.i_crit_edge:        ; preds = %sock_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %sock_error.exit.i.i.if.end8.i.i_crit_edge, %sock_error.exit.thread.i.i
  %sk_shutdown.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %20 = ptrtoint ptr %sk_shutdown.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sk_shutdown.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool9.not.i.i, label %bt_skb_send_alloc.exit.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -104, ptr %err.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.then10.i.i, %sock_error.exit.i.i.out.i.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #13
  br label %if.then.i

bt_skb_send_alloc.exit.i:                         ; preds = %if.end8.i.i
  br i1 %tobool.not.i.i, label %bt_skb_send_alloc.exit.i.if.then.i_crit_edge, label %if.end.i

bt_skb_send_alloc.exit.i.if.then.i_crit_edge:     ; preds = %bt_skb_send_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %bt_skb_send_alloc.exit.i.if.then.i_crit_edge, %out.i.i, %land.lhs.true.critedge.i.i.if.then.i_crit_edge
  %23 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err.i, align 4
  %25 = inttoptr i32 %24 to ptr
  br label %bt_skb_sendmsg.exit

if.end.i:                                         ; preds = %bt_skb_send_alloc.exit.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i.i, label %do.body2.i.i, !prof !127

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

skb_tailroom.exit.i.i:                            ; preds = %if.end.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %30 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %len)
  %cmp.i2.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %len
  %32 = add i32 %sub.ptr.rhs.cast.i.i.i, %len
  %sub9.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %32
  %.sink.i.i = select i1 %cmp.i2.i, i32 %sub9.i.i, i32 0
  %33 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i.i, ptr %33, align 4
  %call3.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #13
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call3.i, i32 noundef %len, i1 noundef zeroext false) #13
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call3.i, i32 noundef %len, ptr noundef %msg_iter.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %len
  br i1 %cmp.i.i, label %if.end7.i, label %bt_skb_sendmsg.exit.thread, !prof !127

bt_skb_sendmsg.exit.thread:                       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #13
  br label %if.then17

if.end7.i:                                        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %35 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_priority.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %37 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %priority.i, align 4
  br label %bt_skb_sendmsg.exit

bt_skb_sendmsg.exit:                              ; preds = %if.end7.i, %if.then.i
  %retval.0.i221 = phi ptr [ %call.i.i, %if.end7.i ], [ %25, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #13
  %cmp.i = icmp ugt ptr %retval.0.i221, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bt_skb_sendmsg.exit.if.then17_crit_edge, label %if.end19

bt_skb_sendmsg.exit.if.then17_crit_edge:          ; preds = %bt_skb_sendmsg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %bt_skb_sendmsg.exit.if.then17_crit_edge, %bt_skb_sendmsg.exit.thread
  %retval.0.i221234 = phi ptr [ inttoptr (i32 -14 to ptr), %bt_skb_sendmsg.exit.thread ], [ %retval.0.i221, %bt_skb_sendmsg.exit.if.then17_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i221234 to i32
  br label %cleanup156

if.end19:                                         ; preds = %bt_skb_sendmsg.exit
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %channel, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %40, label %sw.default [
    i16 0, label %if.end19.sw.epilog_crit_edge
    i16 1, label %if.end19.sw.epilog_crit_edge252
    i16 2, label %if.end19.drop_crit_edge
    i16 4, label %sw.bb22
  ]

if.end19.drop_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end19.sw.epilog_crit_edge252:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call fastcc i32 @hci_logging_frame(ptr noundef %retval.0.i221)
  br label %drop

sw.default:                                       ; preds = %if.end19
  call void @mutex_lock_nested(ptr noundef nonnull @mgmt_chan_list_lock, i32 noundef 0) #13
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %channel, align 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.default
  %c.0.in.i = phi ptr [ @mgmt_chan_list, %sw.default ], [ %c.0.i, %for.body.i.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, @mgmt_chan_list
  br i1 %cmp.not.i, label %for.cond.i.if.end29_crit_edge, label %for.body.i

for.cond.i.if.end29_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

for.body.i:                                       ; preds = %for.cond.i
  %channel1.i = getelementptr inbounds %struct.hci_mgmt_chan, ptr %c.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %channel1.i, align 4
  %cmp3.i = icmp eq i16 %46, %43
  br i1 %cmp3.i, label %__hci_mgmt_chan_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__hci_mgmt_chan_find.exit:                        ; preds = %for.body.i
  %tobool26.not = icmp eq ptr %c.0.i, null
  br i1 %tobool26.not, label %__hci_mgmt_chan_find.exit.if.end29_crit_edge, label %if.then27

__hci_mgmt_chan_find.exit.if.end29_crit_edge:     ; preds = %__hci_mgmt_chan_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %__hci_mgmt_chan_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = call fastcc i32 @hci_mgmt_cmd(ptr noundef nonnull %c.0.i, ptr noundef %1, ptr noundef %retval.0.i221)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %__hci_mgmt_chan_find.exit.if.end29_crit_edge, %for.cond.i.if.end29_crit_edge
  %err.0 = phi i32 [ %call28, %if.then27 ], [ -22, %__hci_mgmt_chan_find.exit.if.end29_crit_edge ], [ -22, %for.cond.i.if.end29_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %drop

sw.epilog:                                        ; preds = %if.end19.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge252
  %hdev1.i = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdev1.i, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %sw.epilog.if.then32_crit_edge, label %if.end.i223

sw.epilog.if.then32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.end.i223:                                      ; preds = %sw.epilog
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 206
  %49 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %dev_flags.i, align 4
  %51 = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i = icmp eq i32 %51, 0
  br i1 %tobool3.not.i, label %hci_hdev_from_sock.exit, label %if.end.i223.if.then32_crit_edge

if.end.i223.if.then32_crit_edge:                  ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

hci_hdev_from_sock.exit:                          ; preds = %if.end.i223
  %cmp.i225 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %hci_hdev_from_sock.exit.if.then32_crit_edge, label %if.end34

hci_hdev_from_sock.exit.if.then32_crit_edge:      ; preds = %hci_hdev_from_sock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.then32:                                        ; preds = %hci_hdev_from_sock.exit.if.then32_crit_edge, %if.end.i223.if.then32_crit_edge, %sw.epilog.if.then32_crit_edge
  %retval.0.i224242 = phi ptr [ %48, %hci_hdev_from_sock.exit.if.then32_crit_edge ], [ inttoptr (i32 -32 to ptr), %if.end.i223.if.then32_crit_edge ], [ inttoptr (i32 -77 to ptr), %sw.epilog.if.then32_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i224242 to i32
  br label %drop

if.end34:                                         ; preds = %hci_hdev_from_sock.exit
  %flags35 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags35, align 4
  %and1.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool37.not = icmp eq i32 %and1.i, 0
  br i1 %tobool37.not, label %if.end34.drop_crit_edge, label %if.end39

if.end34.drop_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end39:                                         ; preds = %if.end34
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i221, i32 0, i32 19
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i221, i32 0, i32 3
  %59 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %cb, align 8
  %call40 = call ptr @skb_pull(ptr noundef %retval.0.i221, i32 noundef 1) #13
  %60 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %61)
  %cmp43 = icmp eq i16 %61, 1
  %62 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cb, align 8
  br i1 %cmp43, label %if.then45, label %if.else75

if.then45:                                        ; preds = %if.end39
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %63, label %if.then45.drop_crit_edge [
    i8 1, label %if.then45.if.end73_crit_edge
    i8 2, label %if.then45.if.end73_crit_edge253
    i8 3, label %if.then45.if.end73_crit_edge254
    i8 5, label %if.then45.if.end73_crit_edge255
  ]

if.then45.if.end73_crit_edge255:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then45.if.end73_crit_edge254:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then45.if.end73_crit_edge253:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then45.if.end73_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then45.drop_crit_edge:                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end73:                                         ; preds = %if.then45.if.end73_crit_edge, %if.then45.if.end73_crit_edge253, %if.then45.if.end73_crit_edge254, %if.then45.if.end73_crit_edge255
  %raw_q = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %raw_q, ptr noundef %retval.0.i221) #13
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 138
  %65 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workqueue, align 4
  %tx_work = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 154
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %tx_work) #13
  br label %done

if.else75:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp80 = icmp eq i8 %63, 1
  br i1 %cmp80, label %if.then82, label %if.else124

if.then82:                                        ; preds = %if.else75
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %68, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #13
  %72 = lshr i16 %71, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 6143, i16 %71)
  %cmp91 = icmp ugt i16 %71, 6143
  br i1 %cmp91, label %if.then82.land.lhs.true99_crit_edge, label %lor.lhs.false93

if.then82.land.lhs.true99_crit_edge:              ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true99

lor.lhs.false93:                                  ; preds = %if.then82
  %conv90 = zext i16 %72 to i32
  %73 = and i16 %71, 127
  %and95 = zext i16 %73 to i32
  %arrayidx96 = getelementptr %struct.hci_sec_filter, ptr @hci_sec_filter, i32 0, i32 2, i32 %conv90
  %shr.i245 = lshr i32 %and95, 5
  %add.ptr.i = getelementptr i32, ptr %arrayidx96, i32 %shr.i245
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 4
  %and.i226 = and i32 %and95, 31
  %shl.i = shl nuw i32 1, %and.i226
  %and1.i227 = and i32 %75, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i227)
  %tobool98.not = icmp eq i32 %and1.i227, 0
  br i1 %tobool98.not, label %lor.lhs.false93.land.lhs.true99_crit_edge, label %lor.lhs.false93.if.end102_crit_edge

lor.lhs.false93.if.end102_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

lor.lhs.false93.land.lhs.true99_crit_edge:        ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true99

land.lhs.true99:                                  ; preds = %lor.lhs.false93.land.lhs.true99_crit_edge, %if.then82.land.lhs.true99_crit_edge
  %call100 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call100, label %land.lhs.true99.if.end102_crit_edge, label %land.lhs.true99.drop_crit_edge

land.lhs.true99.drop_crit_edge:                   ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

land.lhs.true99.if.end102_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true99.if.end102_crit_edge, %lor.lhs.false93.if.end102_crit_edge
  %opcode105 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i221, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %opcode105 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %71, ptr %opcode105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %72)
  %cmp107 = icmp eq i16 %72, 63
  br i1 %cmp107, label %if.then109, label %if.else114

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %raw_q110 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %raw_q110, ptr noundef %retval.0.i221) #13
  %workqueue111 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 138
  %77 = ptrtoint ptr %workqueue111 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %workqueue111, align 4
  %tx_work112 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 154
  %call.i228 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %tx_work112) #13
  br label %done

if.else114:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %req_flags = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i221, i32 0, i32 3, i32 14
  %79 = ptrtoint ptr %req_flags to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %req_flags, align 2
  %81 = or i8 %80, 1
  store i8 %81, ptr %req_flags, align 2
  %cmd_q = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 161
  call void @skb_queue_tail(ptr noundef %cmd_q, ptr noundef %retval.0.i221) #13
  %workqueue119 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 138
  %82 = ptrtoint ptr %workqueue119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %workqueue119, align 4
  %cmd_work = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 153
  %call.i229 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %cmd_work) #13
  br label %done

if.else124:                                       ; preds = %if.else75
  %call125 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call125, label %if.end127, label %if.else124.drop_crit_edge

if.else124.drop_crit_edge:                        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end127:                                        ; preds = %if.else124
  %84 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cb, align 8
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %85, label %if.end127.drop_crit_edge [
    i8 2, label %if.end127.if.end149_crit_edge
    i8 3, label %if.end127.if.end149_crit_edge256
    i8 5, label %if.end127.if.end149_crit_edge257
  ]

if.end127.if.end149_crit_edge257:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.end127.if.end149_crit_edge256:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.end127.if.end149_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.end127.drop_crit_edge:                         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end149:                                        ; preds = %if.end127.if.end149_crit_edge, %if.end127.if.end149_crit_edge256, %if.end127.if.end149_crit_edge257
  %raw_q150 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %raw_q150, ptr noundef %retval.0.i221) #13
  %workqueue151 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 138
  %87 = ptrtoint ptr %workqueue151 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %workqueue151, align 4
  %tx_work152 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 154
  %call.i230 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %88, ptr noundef %tx_work152) #13
  br label %done

done:                                             ; preds = %drop, %if.end149, %if.else114, %if.then109, %if.end73
  %err.2 = phi i32 [ %err.3, %drop ], [ %len, %if.end149 ], [ %len, %if.end73 ], [ %len, %if.else114 ], [ %len, %if.then109 ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup156

drop:                                             ; preds = %if.end127.drop_crit_edge, %if.else124.drop_crit_edge, %land.lhs.true99.drop_crit_edge, %if.then45.drop_crit_edge, %if.end34.drop_crit_edge, %if.then32, %if.end29, %sw.bb22, %if.end19.drop_crit_edge
  %err.3 = phi i32 [ %err.0, %if.end29 ], [ %call23, %sw.bb22 ], [ %52, %if.then32 ], [ -95, %if.end19.drop_crit_edge ], [ -100, %if.end34.drop_crit_edge ], [ -22, %if.then45.drop_crit_edge ], [ -1, %if.else124.drop_crit_edge ], [ -22, %if.end127.drop_crit_edge ], [ -1, %land.lhs.true99.drop_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %retval.0.i221, i32 noundef 0) #13
  br label %done

cleanup156:                                       ; preds = %done, %if.then17, %lor.lhs.false.cleanup156_crit_edge, %if.end6.cleanup156_crit_edge, %do.end.cleanup156_crit_edge
  %retval.0 = phi i32 [ %38, %if.then17 ], [ %err.2, %done ], [ -95, %do.end.cleanup156_crit_edge ], [ -22, %if.end6.cleanup156_crit_edge ], [ -22, %lor.lhs.false.cleanup156_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_recvmsg.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_recvmsg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_recvmsg.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.43, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and4 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp = icmp eq i16 %4, 4
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %6)
  %cmp12 = icmp eq i8 %6, 9
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef %and, ptr noundef nonnull %err) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %9 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %len)
  %cmp22 = icmp ugt i32 %10, %len
  br i1 %cmp22, label %if.then24, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_flags, align 4
  %or = or i32 %12, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %copied.0 = phi i32 [ %len, %if.then24 ], [ %10, %if.end19.if.end25_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call16, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #13
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %err, align 4
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %channel, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %20, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %if.end25.sw.bb29_crit_edge
    i16 2, label %if.end25.sw.bb29_crit_edge75
  ]

if.end25.sw.bb29_crit_edge75:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb29

if.end25.sw.bb29_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb29

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @hci_sock_cmsg(ptr noundef %1, ptr noundef %msg, ptr noundef nonnull %call16)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end25.sw.bb29_crit_edge, %if.end25.sw.bb29_crit_edge75
  call fastcc void @sock_recv_timestamp(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call16)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  %call31 = call fastcc ptr @hci_mgmt_chan_find(i16 noundef zeroext %20)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %sw.default.sw.epilog_crit_edge, label %if.then33

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then33:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sock_recv_timestamp(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then33, %sw.default.sw.epilog_crit_edge, %sw.bb29, %sw.bb
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call16) #13
  %and35 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 %copied.0, i32 %10
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool39.not, i32 %spec.select, i32 %23
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then18, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ %8, %if.then18 ], [ -95, %do.end.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_close(ptr nocapture noundef readonly %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channel, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %3, label %if.end.cleanup_crit_edge [
    i16 0, label %if.end.sw.epilog_crit_edge
    i16 1, label %if.end.sw.epilog_crit_edge28
    i16 3, label %if.end.sw.epilog_crit_edge29
  ]

if.end.sw.epilog_crit_edge29:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge28:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge28, %if.end.sw.epilog_crit_edge29
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %9 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cookie, align 4
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %call5, align 1
  %call.i.i27 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %13 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.i27, ptr %13, align 8
  %call6 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 6) #13
  %15 = ptrtoint ptr %call6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 3840, ptr %call6, align 1
  %hdev = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 1
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 8
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end3.if.end11_crit_edge, label %if.then8

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 8
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end3.if.end11_crit_edge
  %.sink = phi i16 [ %20, %if.then8 ], [ -1, %if.end3.if.end11_crit_edge ]
  %21 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call6, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %.sink, ptr %21, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = trunc i32 %24 to i16
  %conv12 = add i16 %25, -6
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %len13 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call6, i32 0, i32 2
  %27 = ptrtoint ptr %len13 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %len13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end11 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_do_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_added(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_dev_put(ptr noundef %d) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_dev_put, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 2
  %kref = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #13
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_dev_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @sock_cookie_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #13
  %2 = tail call i32 @llvm.smax.i32(i32 %call, i32 -1)
  %3 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cookie, align 4
  %comm = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 7
  %4 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %call4 = tail call ptr @__get_task_comm(ptr noundef %comm, i32 noundef 16, ptr noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_open(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  %ver = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver) #13
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !130
  %1 = getelementptr inbounds [3 x i8], ptr %ver, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !130
  %3 = getelementptr inbounds [3 x i8], ptr %ver, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !130
  %cookie = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 6
  %5 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 4
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channel, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %8, label %if.end.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb1
    i16 3, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %ver, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 5632, ptr %1, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %ver, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 5632, ptr %1, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @mgmt_fill_version_info(ptr noundef nonnull %ver) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %format.0 = phi i16 [ 512, %sw.bb5 ], [ 256, %sw.bb1 ], [ 0, %sw.bb ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef 38, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cookie, align 4
  %call13 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #13
  %22 = call i32 @llvm.bswap.i32(i32 %21) #13
  %23 = ptrtoint ptr %call13 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %call13, align 1
  %call14 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #13
  %24 = ptrtoint ptr %call14 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %format.0, ptr %call14, align 1
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #13
  %25 = call ptr @memcpy(ptr %call.i, ptr %ver, i32 3)
  %call17 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #13
  %and1.i.i = shl i32 %19, 24
  %26 = and i32 %and1.i.i, 16777216
  %27 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %call17, align 1
  %call.i51 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #13
  %28 = ptrtoint ptr %call.i51 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %call.i51, align 1
  %comm = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 7
  %call.i52 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #13
  %29 = call ptr @memcpy(ptr %call.i52, ptr %comm, i32 16)
  %call.i.i53 = call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call.i.i53, ptr %30, align 8
  %call20 = call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 6) #13
  %32 = ptrtoint ptr %call20 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 3584, ptr %call20, align 1
  %hdev = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 1
  %33 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev, align 8
  %tobool21.not = icmp eq ptr %34, null
  br i1 %tobool21.not, label %if.end9.if.end25_crit_edge, label %if.then22

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.hci_dev, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id, align 8
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end9.if.end25_crit_edge
  %.sink = phi i16 [ %37, %if.then22 ], [ -1, %if.end9.if.end25_crit_edge ]
  %38 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call20, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %.sink, ptr %38, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %42 = trunc i32 %41 to i16
  %conv26 = add i16 %42, -6
  %43 = call i16 @llvm.bswap.i16(i16 %conv26)
  %len27 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call20, i32 0, i32 2
  %44 = ptrtoint ptr %len27 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %len27, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end25 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_removed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_open(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_monitor_note(ptr noundef %sk, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !130
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %add.i = add i32 %call, 9
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call void @llvm.va_start(ptr nonnull %args)
  %call2 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %call) #13
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load17 = load i32, ptr %args, align 4
  %.fca.0.insert18 = insertvalue [1 x i32] poison, i32 %.fca.0.load17, 0
  %call4 = call i32 @vsprintf(ptr noundef %call2, ptr noundef %fmt, [1 x i32] %.fca.0.insert18)
  %call5 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #13
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call5, align 1
  call void @llvm.va_end(ptr nonnull %args)
  %call.i.i30 = call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %8 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i.i30, ptr %8, align 8
  %call6 = call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 6) #13
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 3072, ptr %call6, align 1
  %index = getelementptr inbounds %struct.hci_mon_hdr, ptr %call6, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -1, ptr %index, align 1
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len7, align 4
  %14 = trunc i32 %13 to i16
  %conv = add i16 %14, -6
  %15 = call i16 @llvm.bswap.i16(i16 %conv)
  %len8 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call6, i32 0, i32 2
  %16 = ptrtoint ptr %len8 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %len8, align 1
  %call9 = call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_monitor_replay(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_dev_list to i32))
  %hdev.077 = load ptr, ptr @hci_dev_list, align 4
  %cmp.not78 = icmp eq ptr %hdev.077, @hci_dev_list
  br i1 %cmp.not78, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %hdev.079 = phi ptr [ %hdev.0, %cleanup.for.body_crit_edge ], [ %hdev.077, %entry.for.body_crit_edge ]
  %call = tail call fastcc ptr @create_monitor_event(ptr noundef %hdev.079, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev.079, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i.i82.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i83.i = icmp eq ptr %call.i.i82.i, null
  br i1 %tobool.not.i83.i, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %data.i.i84.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i84.i, align 4
  %add.ptr.i.i85.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr.i.i85.i, ptr %data.i.i84.i, align 4
  %tail.i.i86.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i86.i, align 8
  %add.ptr1.i.i87.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr1.i.i87.i, ptr %tail.i.i86.i, align 8
  %call.i.i98.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i.i98.i, ptr %7, align 8
  %call35.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i82.i, i32 noundef 6) #13
  %9 = ptrtoint ptr %call35.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2048, ptr %call35.i, align 1
  %id.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.079, i32 0, i32 4
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id.i, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #13
  %index.i = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35.i, i32 0, i32 1
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %index.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = trunc i32 %15 to i16
  %conv37.i = add i16 %16, -6
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv37.i) #13
  %len38.i = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35.i, i32 0, i32 2
  %18 = ptrtoint ptr %len38.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %len38.i, align 1
  %call13 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call.i.i82.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i82.i, i32 noundef 0) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %and1.i58 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i58)
  %tobool19.not = icmp eq i32 %and1.i58, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end16
  %call.i.i74.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i75.i = icmp eq ptr %call.i.i74.i, null
  br i1 %tobool.not.i75.i, label %if.then20.cleanup_crit_edge, label %if.end28.thread73

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28.thread73:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i76.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i76.i, align 4
  %add.ptr.i.i77.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i77.i, ptr %data.i.i76.i, align 4
  %tail.i.i78.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i78.i, align 8
  %add.ptr1.i.i79.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i79.i, ptr %tail.i.i78.i, align 8
  %call20.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i74.i, i32 noundef 8) #13
  %bdaddr22.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.079, i32 0, i32 7
  %25 = call ptr @memcpy(ptr %call20.i, ptr %bdaddr22.i, i32 6)
  %manufacturer23.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.079, i32 0, i32 31
  %26 = ptrtoint ptr %manufacturer23.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %manufacturer23.i, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #13
  %manufacturer24.i = getelementptr inbounds %struct.hci_mon_index_info, ptr %call20.i, i32 0, i32 1
  %29 = ptrtoint ptr %manufacturer24.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %manufacturer24.i, align 1
  %call.i.i98.i60 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call.i.i98.i60, ptr %30, align 8
  %call35.i61 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i74.i, i32 noundef 6) #13
  %32 = ptrtoint ptr %call35.i61 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 2560, ptr %call35.i61, align 1
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %id.i, align 8
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #13
  %index.i63 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35.i61, i32 0, i32 1
  %36 = ptrtoint ptr %index.i63 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %index.i63, align 1
  %len.i64 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i74.i, i32 0, i32 6
  %37 = ptrtoint ptr %len.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i64, align 4
  %39 = trunc i32 %38 to i16
  %conv37.i65 = add i16 %39, -6
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv37.i65) #13
  %len38.i66 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call35.i61, i32 0, i32 2
  %41 = ptrtoint ptr %len38.i66 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %len38.i66, align 1
  br label %if.then30

if.else:                                          ; preds = %if.end16
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev.079, i32 0, i32 206
  %42 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dev_flags, align 4
  %and1.i59 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i59)
  %tobool23.not = icmp eq i32 %and1.i59, 0
  br i1 %tobool23.not, label %if.else.cleanup_crit_edge, label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %call25 = tail call fastcc ptr @create_monitor_event(ptr noundef %hdev.079, i32 noundef 9)
  %tobool29.not = icmp eq ptr %call25, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end28.thread73
  %skb.076 = phi ptr [ %call.i.i74.i, %if.end28.thread73 ], [ %call25, %if.end28.if.then30_crit_edge ]
  %call31 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %skb.076) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %if.then33

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.076, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %44 = ptrtoint ptr %hdev.079 to i32
  call void @__asan_load4_noabort(i32 %44)
  %hdev.0 = load ptr, ptr %hdev.079, align 4
  %cmp.not = icmp eq ptr %hdev.0, @hci_dev_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_monitor_control_replay(ptr noundef %mon_sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %0 = load ptr, ptr @hci_sk_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2830 = icmp eq ptr %add.ptr, null
  %tobool2.not28 = or i1 %tobool.not, %tobool2.not2830
  br i1 %tobool2.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %sk.029 = phi ptr [ %add.ptr14, %cleanup.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %call = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef nonnull %sk.029)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call4 = tail call i32 @sock_queue_rcv_skb(ptr noundef %mon_sk, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk.029, i32 0, i32 15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %3, null
  %add.ptr14 = getelementptr i8, ptr %3, i32 -84
  %tobool2.not31 = icmp eq ptr %add.ptr14, null
  %tobool2.not = or i1 %tobool10.not, %tobool2.not31
  br i1 %tobool2.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hci_mgmt_chan_find(i16 noundef zeroext %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mgmt_chan_list_lock, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %c.0.in.i = phi ptr [ @mgmt_chan_list, %entry ], [ %c.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, @mgmt_chan_list
  br i1 %cmp.not.i, label %for.cond.i.__hci_mgmt_chan_find.exit_crit_edge, label %for.body.i

for.cond.i.__hci_mgmt_chan_find.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hci_mgmt_chan_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %channel1.i = getelementptr inbounds %struct.hci_mgmt_chan, ptr %c.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %channel1.i, align 4
  %cmp3.i = icmp eq i16 %2, %channel
  br i1 %cmp3.i, label %for.body.i.__hci_mgmt_chan_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.__hci_mgmt_chan_find.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hci_mgmt_chan_find.exit

__hci_mgmt_chan_find.exit:                        ; preds = %for.body.i.__hci_mgmt_chan_find.exit_crit_edge, %for.cond.i.__hci_mgmt_chan_find.exit_crit_edge
  %retval.0.i = phi ptr [ %c.0.i, %for.body.i.__hci_mgmt_chan_find.exit_crit_edge ], [ null, %for.cond.i.__hci_mgmt_chan_find.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_fill_version_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_dev_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_dev_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_conn_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_close(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_reset(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_reset_stat(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_cmd(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_inquiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_auth_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_reject_list_add(ptr noundef %hdev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %bdaddr = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bdaddr) #13
  %0 = call ptr @memset(ptr %bdaddr, i32 255, i32 6)
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 6, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bdaddr, i32 noundef 6) #13
  %2 = call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !132
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bdaddr, ptr noundef %arg, i32 noundef 6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i8 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 6, %entry.if.then11.i.i_crit_edge ], [ 6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 6, %res.0.i.i8
  %add.ptr.i.i = getelementptr i8, ptr %bdaddr, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i8)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %reject_list = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 185
  %call1 = call i32 @hci_bdaddr_list_add(ptr noundef %reject_list, ptr noundef nonnull %bdaddr, i8 noundef zeroext 0) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bdaddr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_reject_list_del(ptr noundef %hdev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %bdaddr = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bdaddr) #13
  %0 = call ptr @memset(ptr %bdaddr, i32 255, i32 6)
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 6, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bdaddr, i32 noundef 6) #13
  %2 = call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !132
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bdaddr, ptr noundef %arg, i32 noundef 6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i8 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 6, %entry.if.then11.i.i_crit_edge ], [ 6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 6, %res.0.i.i8
  %add.ptr.i.i = getelementptr i8, ptr %bdaddr, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i8)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %reject_list = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 185
  %call1 = call i32 @hci_bdaddr_list_del(ptr noundef %reject_list, ptr noundef nonnull %bdaddr, i8 noundef zeroext 0) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bdaddr) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_setsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %uf = alloca %struct.hci_ufilter, align 4
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uf) #13
  %0 = call ptr @memset(ptr %uf, i32 0, i32 16)
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #13
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %opt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_setsockopt_old.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_setsockopt_old, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_setsockopt_old.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.34, ptr noundef %2, i32 noundef %optname) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #13
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end6, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end6:                                          ; preds = %do.end
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %optname, label %if.end6.done_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb19
    i32 2, label %sw.bb36
  ]

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb:                                            ; preds = %if.end6
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %7 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 4, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %9 = call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #9, !srcloc !132
  %and.i.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %7, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end10thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i32 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i32)
  br label %done

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %7, align 1
  %15 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %opt, align 4
  br label %if.end10

if.end10thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end.i.i
  %17 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %14, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %cmsg_mask15 = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %cmsg_mask15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmsg_mask15, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %20 = or i8 %19, 1
  %21 = ptrtoint ptr %cmsg_mask15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %cmsg_mask15, align 4
  br label %done

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %22 = and i8 %19, -2
  %23 = ptrtoint ptr %cmsg_mask15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %cmsg_mask15, align 4
  br label %done

sw.bb19:                                          ; preds = %if.end6
  %src.coerce.fca.0.extract.i.i1 = extractvalue [2 x i32] %optval.coerce, 0
  %24 = inttoptr i32 %src.coerce.fca.0.extract.i.i1 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i2 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i2)
  %bf.cast.i.i.i3 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i2, 0
  br i1 %bf.cast.i.i.i3, label %if.end.i.i26, label %if.end59.i.i.i.i8

if.end59.i.i.i.i8:                                ; preds = %sw.bb19
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i.i.i9 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i9, label %if.end59.i.i.i.i8.if.then11.i.i.i.i25_crit_edge, label %land.lhs.true.i.i.i.i12

if.end59.i.i.i.i8.if.then11.i.i.i.i25_crit_edge:  ; preds = %if.end59.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i25

land.lhs.true.i.i.i.i12:                          ; preds = %if.end59.i.i.i.i8
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 4, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i.i.i10 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i10)
  %cmp.i6.i.i.i11 = icmp eq i32 %asmresult.i.i.i.i10, 0
  br i1 %cmp.i6.i.i.i11, label %if.end.i.i.i.i22, label %land.lhs.true.i.i.i.i12.if.then11.i.i.i.i25_crit_edge, !prof !127

land.lhs.true.i.i.i.i12.if.then11.i.i.i.i25_crit_edge: ; preds = %land.lhs.true.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i25

if.end.i.i.i.i22:                                 ; preds = %land.lhs.true.i.i.i.i12
  %call.i.i.i.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %26 = call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i.i.i14 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i.i14 to ptr
  %cpu_domain.i.i.i.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i15) #9, !srcloc !132
  %and.i.i.i.i.i.i16 = and i32 %28, -13
  %or.i.i.i.i.i.i17 = or i32 %and.i.i.i.i.i.i16, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i17) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i.i.i18 = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %24, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i18)
  %tobool4.not.i.i.i.i21 = icmp eq i32 %call1.i.i.i.i.i18, 0
  br i1 %tobool4.not.i.i.i.i21, label %if.end23thread-pre-split, label %if.end.i.i.i.i22.if.then11.i.i.i.i25_crit_edge, !prof !127

if.end.i.i.i.i22.if.then11.i.i.i.i25_crit_edge:   ; preds = %if.end.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i25

if.then11.i.i.i.i25:                              ; preds = %if.end.i.i.i.i22.if.then11.i.i.i.i25_crit_edge, %land.lhs.true.i.i.i.i12.if.then11.i.i.i.i25_crit_edge, %if.end59.i.i.i.i8.if.then11.i.i.i.i25_crit_edge
  %res.0.i.i.i.i2037 = phi i32 [ %call1.i.i.i.i.i18, %if.end.i.i.i.i22.if.then11.i.i.i.i25_crit_edge ], [ 4, %if.end59.i.i.i.i8.if.then11.i.i.i.i25_crit_edge ], [ 4, %land.lhs.true.i.i.i.i12.if.then11.i.i.i.i25_crit_edge ]
  %sub.i.i.i.i23 = sub i32 4, %res.0.i.i.i.i2037
  %add.ptr.i.i.i.i24 = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i23
  %29 = call ptr @memset(ptr %add.ptr.i.i.i.i24, i32 0, i32 %res.0.i.i.i.i2037)
  br label %done

if.end.i.i26:                                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %24, align 1
  %32 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %opt, align 4
  br label %if.end23

if.end23thread-pre-split:                         ; preds = %if.end.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr40 = load i32, ptr %opt, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23thread-pre-split, %if.end.i.i26
  %34 = phi i32 [ %.pr40, %if.end23thread-pre-split ], [ %31, %if.end.i.i26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool24.not = icmp eq i32 %34, 0
  %cmsg_mask31 = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 3
  %35 = ptrtoint ptr %cmsg_mask31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cmsg_mask31, align 4
  br i1 %tobool24.not, label %if.else30, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %37 = or i8 %36, 2
  %38 = ptrtoint ptr %cmsg_mask31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %cmsg_mask31, align 4
  br label %done

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %39 = and i8 %36, -3
  %40 = ptrtoint ptr %cmsg_mask31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %cmsg_mask31, align 4
  br label %done

sw.bb36:                                          ; preds = %if.end6
  %filter = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2
  %41 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %filter, align 4
  %43 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %uf, align 4
  %opcode = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %opcode, align 4
  %opcode38 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 2
  %46 = ptrtoint ptr %opcode38 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %opcode38, align 4
  %event_mask = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %event_mask, align 4
  %event_mask39 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 1
  %49 = ptrtoint ptr %event_mask39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %event_mask39, align 4
  %add.ptr42 = getelementptr %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 1, i32 1
  %50 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr42, align 4
  %arrayidx44 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx44, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %len, i32 16)
  %call48 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %uf, [2 x i32] %optval.coerce, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %sw.bb36.done_crit_edge

sw.bb36.done_crit_edge:                           ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end51:                                         ; preds = %sw.bb36
  %call52 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call52, label %if.end51.if.end62_crit_edge, label %if.then53

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %uf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uf, align 4
  %and55 = and i32 %55, 16
  store i32 %and55, ptr %uf, align 4
  %56 = ptrtoint ptr %event_mask39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %event_mask39, align 4
  %and58 = and i32 %57, 268491262
  store i32 %and58, ptr %event_mask39, align 4
  %58 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx44, align 4
  %and61 = and i32 %59, 45068
  store i32 %and61, ptr %arrayidx44, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then53, %if.end51.if.end62_crit_edge
  %60 = ptrtoint ptr %uf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %uf, align 4
  %62 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %filter, align 4
  %63 = ptrtoint ptr %opcode38 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %opcode38, align 4
  %65 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %opcode, align 4
  %66 = ptrtoint ptr %event_mask39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %event_mask39, align 4
  %68 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %event_mask, align 4
  %69 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx44, align 4
  %71 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %add.ptr42, align 4
  br label %done

done:                                             ; preds = %if.end62, %sw.bb36.done_crit_edge, %if.else30, %if.then25, %if.then11.i.i.i.i25, %if.else, %if.then12, %if.then11.i.i.i.i, %if.end6.done_crit_edge, %do.end.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end62 ], [ 0, %if.then25 ], [ 0, %if.else30 ], [ 0, %if.then12 ], [ 0, %if.else ], [ -77, %do.end.done_crit_edge ], [ -14, %sw.bb36.done_crit_edge ], [ -92, %if.end6.done_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i25 ]
  call void @release_sock(ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uf) #13
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #16, !srcloc !131
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !132
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !127

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_getsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) unnamed_addr #0 align 64 {
entry:
  %uf = alloca %struct.hci_ufilter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uf) #13
  %0 = call ptr @memset(ptr %uf, i32 255, i32 16)
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sock_getsockopt_old.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sock_getsockopt_old, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sock_getsockopt_old.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.34, ptr noundef %2, i32 noundef %optname) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1968) #13
  %3 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !132
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !140
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult6 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool8.not = icmp eq i32 %asmresult, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #13
  %channel = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not = icmp eq i16 %8, 0
  br i1 %cmp.not, label %if.end13, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end13:                                         ; preds = %if.end10
  %9 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %optname, label %if.end13.done_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb34
    i32 2, label %sw.bb61
  ]

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %cmsg_mask = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %cmsg_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmsg_mask, align 4
  %12 = and i8 %11, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1985) #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i4 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i4 to ptr
  %cpu_domain.i.i5 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i5) #9, !srcloc !132
  %and.i6 = and i32 %15, -13
  %or.i7 = or i32 %and.i6, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i7) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %12, i32 -1226833921) #13, !srcloc !141
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %done

sw.bb34:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %cmsg_mask35 = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %cmsg_mask35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmsg_mask35, align 4
  %19 = lshr i8 %18, 1
  %.lobit = and i8 %19, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1995) #13
  %20 = tail call i32 @llvm.read_register.i32(metadata !113) #13
  %and.i.i.i8 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i8 to ptr
  %cpu_domain.i.i9 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i9) #9, !srcloc !132
  %and.i10 = and i32 %22, -13
  %or.i11 = or i32 %and.i10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i11) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %.lobit, i32 -1226833921) #13, !srcloc !142
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool58.not = icmp eq i32 %23, 0
  %spec.select2 = select i1 %tobool58.not, i32 0, i32 -14
  br label %done

sw.bb61:                                          ; preds = %if.end13
  %filter = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2
  %24 = getelementptr inbounds i8, ptr %uf, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %filter, align 4
  %28 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %uf, align 4
  %opcode = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %opcode, align 4
  %opcode63 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 2
  %31 = ptrtoint ptr %opcode63 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %opcode63, align 4
  %event_mask = getelementptr inbounds %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %event_mask, align 4
  %event_mask64 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 1
  %34 = ptrtoint ptr %event_mask64 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %event_mask64, align 4
  %add.ptr67 = getelementptr %struct.hci_pinfo, ptr %2, i32 0, i32 2, i32 1, i32 1
  %35 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr67, align 4
  %arrayidx69 = getelementptr inbounds %struct.hci_ufilter, ptr %uf, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx69, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %asmresult6, i32 16)
  call void @__check_object_size(ptr noundef nonnull %uf, i32 noundef %38, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb61.copy_to_user.exit_crit_edge, label %if.end.i.i

sw.bb61.copy_to_user.exit_crit_edge:              ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %sw.bb61
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %38, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uf, i32 noundef %38) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %uf, i32 noundef %38) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %sw.bb61.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %38, %sw.bb61.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %38, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool74.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select3 = select i1 %tobool74.not, i32 0, i32 -14
  br label %done

done:                                             ; preds = %copy_to_user.exit, %sw.bb34, %sw.bb, %if.end13.done_crit_edge, %if.end10.done_crit_edge
  %err.0 = phi i32 [ -77, %if.end10.done_crit_edge ], [ -92, %if.end13.done_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select2, %sw.bb34 ], [ %spec.select3, %copy_to_user.exit ]
  call void @release_sock(ptr noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -14, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_logging_frame(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ult i32 %1, 9
  br i1 %cmp, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len1 = getelementptr inbounds %struct.hci_mon_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %sub = add i32 %1, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp3.not = icmp eq i32 %sub, %conv
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup58_crit_edge

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp8 = icmp eq i16 %8, 0
  br i1 %cmp8, label %if.then10, label %if.end6.cleanup58_crit_edge

if.end6.cleanup58_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.then10:                                        ; preds = %if.end6
  %arrayidx = getelementptr i8, ptr %3, i32 6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr i8, ptr %3, i32 7
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %10)
  %cmp15 = icmp ugt i8 %10, 7
  br i1 %cmp15, label %if.then10.cleanup58_crit_edge, label %lor.lhs.false

if.then10.cleanup58_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

lor.lhs.false:                                    ; preds = %if.then10
  %sub19 = add i32 %1, -1
  %arrayidx20 = getelementptr i8, ptr %3, i32 %sub19
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp22.not = icmp eq i8 %14, 0
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.cleanup58_crit_edge

lor.lhs.false.cleanup58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %conv25 = zext i8 %12 to i32
  %sub28 = add i32 %1, -9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28, i32 %conv25)
  %cmp29 = icmp ult i32 %sub28, %conv25
  br i1 %cmp29, label %lor.lhs.false24.cleanup58_crit_edge, label %lor.lhs.false31

lor.lhs.false24.cleanup58_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %add34 = add nuw nsw i32 %conv25, 7
  %arrayidx35 = getelementptr i8, ptr %3, i32 %add34
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp37.not = icmp eq i8 %16, 0
  br i1 %cmp37.not, label %if.end40, label %lor.lhs.false31.cleanup58_crit_edge

lor.lhs.false31.cleanup58_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end40:                                         ; preds = %lor.lhs.false31
  %index43 = getelementptr inbounds %struct.hci_mon_hdr, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %index43 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %index43, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp45.not = icmp eq i16 %18, -1
  br i1 %cmp45.not, label %if.end40.if.end52_crit_edge, label %if.then47

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then47:                                        ; preds = %if.end40
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv44 = zext i16 %19 to i32
  %call = tail call ptr @hci_dev_get(i32 noundef %conv44) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then47.cleanup58_crit_edge, label %if.then47.if.end52_crit_edge

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then47.cleanup58_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %hdev.0 = phi ptr [ %call, %if.then47.if.end52_crit_edge ], [ null, %if.end40.if.end52_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 3328, ptr %3, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef %skb, i32 noundef 0, ptr noundef null)
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %tobool55.not = icmp eq ptr %hdev.0, null
  br i1 %tobool55.not, label %if.end52.cleanup58_crit_edge, label %if.then56

if.end52.cleanup58_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %hdev.0)
  br label %cleanup58

cleanup58:                                        ; preds = %if.then56, %if.end52.cleanup58_crit_edge, %if.then47.cleanup58_crit_edge, %lor.lhs.false31.cleanup58_crit_edge, %lor.lhs.false24.cleanup58_crit_edge, %lor.lhs.false.cleanup58_crit_edge, %if.then10.cleanup58_crit_edge, %if.end6.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup58_crit_edge ], [ -22, %if.end.cleanup58_crit_edge ], [ -22, %if.then10.cleanup58_crit_edge ], [ -22, %lor.lhs.false.cleanup58_crit_edge ], [ -22, %lor.lhs.false24.cleanup58_crit_edge ], [ -22, %lor.lhs.false31.cleanup58_crit_edge ], [ -22, %if.end6.cleanup58_crit_edge ], [ -19, %if.then47.cleanup58_crit_edge ], [ %22, %if.then56 ], [ %22, %if.end52.cleanup58_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_mgmt_cmd(ptr nocapture noundef readonly %chan, ptr noundef %sk, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_mgmt_cmd.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_mgmt_cmd, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_mgmt_cmd.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.40, i32 noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ult i32 %3, 6
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %index8 = getelementptr inbounds %struct.mgmt_hdr, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %index8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %index8, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %len9 = getelementptr inbounds %struct.mgmt_hdr, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %len9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len9, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %sub = add i32 %3, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp11.not = icmp eq i32 %sub, %conv
  br i1 %cmp11.not, label %if.end14, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %channel = getelementptr inbounds %struct.hci_mgmt_chan, ptr %chan, i32 0, i32 1
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp16 = icmp eq i16 %16, 3
  br i1 %cmp16, label %if.then18, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then18:                                        ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %5, i32 6
  %add.i.i = add nuw nsw i32 %conv, 14
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then18.if.end24_crit_edge, label %if.end.i

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end.i:                                         ; preds = %if.then18
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cookie.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 6
  %21 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cookie.i, align 4
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %24 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %call1.i, align 1
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #13
  %25 = ptrtoint ptr %call2.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %7, ptr %call2.i, align 1
  %tobool3.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not.i, label %if.end.i.if.then22_crit_edge, label %if.then4.i

if.end.i.if.then22_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv) #13
  %26 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr, i32 %conv)
  br label %if.then22

if.then22:                                        ; preds = %if.then4.i, %if.end.i.if.then22_crit_edge
  %call.i.i26.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %27 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i.i26.i, ptr %27, align 8
  %call8.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #13
  %29 = ptrtoint ptr %call8.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 4096, ptr %call8.i, align 1
  %index10.i = getelementptr inbounds %struct.hci_mon_hdr, ptr %call8.i, i32 0, i32 1
  %30 = ptrtoint ptr %index10.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %10, ptr %index10.i, align 1
  %len11.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len11.i, align 4
  %33 = trunc i32 %32 to i16
  %conv12.i = add i16 %33, -6
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #13
  %len13.i = getelementptr inbounds %struct.hci_mon_hdr, ptr %call8.i, i32 0, i32 2
  %35 = ptrtoint ptr %len13.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %len13.i, align 1
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call fastcc void @__hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call.i.i.i, i32 noundef 0, ptr noundef null) #13
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then18.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %conv25 = zext i16 %8 to i32
  %handler_count = getelementptr inbounds %struct.hci_mgmt_chan, ptr %chan, i32 0, i32 2
  %36 = ptrtoint ptr %handler_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handler_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv25)
  %cmp26.not = icmp ugt i32 %37, %conv25
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end24.do.body31_crit_edge

if.end24.do.body31_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

lor.lhs.false:                                    ; preds = %if.end24
  %handlers = getelementptr inbounds %struct.hci_mgmt_chan, ptr %chan, i32 0, i32 3
  %38 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handlers, align 4
  %arrayidx = getelementptr %struct.hci_mgmt_handler, ptr %39, i32 %conv25
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %cmp28 = icmp eq ptr %41, null
  br i1 %cmp28, label %lor.lhs.false.do.body31_crit_edge, label %if.end49

lor.lhs.false.do.body31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

do.body31:                                        ; preds = %lor.lhs.false.do.body31_crit_edge, %if.end24.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_mgmt_cmd.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_mgmt_cmd, %if.then43)) #13
          to label %do.end47 [label %if.then43], !srcloc !123

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_mgmt_cmd.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.41, i32 noundef %conv25) #13
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %call48 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 1) #13
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 5
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool54.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end49
  %flags = getelementptr %struct.hci_mgmt_handler, ptr %39, i32 %conv25, i32 2
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 20) #13
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp60.not = icmp eq i16 %10, -1
  br i1 %cmp60.not, label %if.end58.if.end95_crit_edge, label %if.then62

if.end58.if.end95_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then62:                                        ; preds = %if.end58
  %conv59 = zext i16 %11 to i32
  %call64 = tail call ptr @hci_dev_get(i32 noundef %conv59) #13
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 17) #13
  br label %cleanup

if.end68:                                         ; preds = %if.then62
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %call64, i32 0, i32 206
  %46 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %dev_flags, align 4
  %and1.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool70.not = icmp eq i32 %and1.i, 0
  br i1 %tobool70.not, label %lor.lhs.false71, label %if.end68.if.then151.sink.split_crit_edge

if.end68.if.then151.sink.split_crit_edge:         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then151.sink.split

lor.lhs.false71:                                  ; preds = %if.end68
  %48 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %dev_flags, align 4
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool75.not = icmp eq i32 %50, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %lor.lhs.false71.if.then151.sink.split_crit_edge

lor.lhs.false71.if.then151.sink.split_crit_edge:  ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then151.sink.split

lor.lhs.false76:                                  ; preds = %lor.lhs.false71
  %51 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dev_flags, align 4
  %53 = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool80.not = icmp eq i32 %53, 0
  br i1 %tobool80.not, label %if.end83, label %lor.lhs.false76.if.then151.sink.split_crit_edge

lor.lhs.false76.if.then151.sink.split_crit_edge:  ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then151.sink.split

if.end83:                                         ; preds = %lor.lhs.false76
  %54 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %dev_flags, align 4
  %56 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool87.not = icmp eq i32 %56, 0
  br i1 %tobool87.not, label %if.end83.if.end95_crit_edge, label %land.lhs.true88

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true88:                                  ; preds = %if.end83
  %flags89 = getelementptr %struct.hci_mgmt_handler, ptr %39, i32 %conv25, i32 2
  %57 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags89, align 4
  %and90 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %land.lhs.true88.if.then151.sink.split_crit_edge, label %land.lhs.true88.if.end95_crit_edge

land.lhs.true88.if.end95_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true88.if.then151.sink.split_crit_edge:  ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then151.sink.split

if.end95:                                         ; preds = %land.lhs.true88.if.end95_crit_edge, %if.end83.if.end95_crit_edge, %if.end58.if.end95_crit_edge
  %hdev.0 = phi ptr [ %call64, %land.lhs.true88.if.end95_crit_edge ], [ %call64, %if.end83.if.end95_crit_edge ], [ null, %if.end58.if.end95_crit_edge ]
  %flags96 = getelementptr %struct.hci_mgmt_handler, ptr %39, i32 %conv25, i32 2
  %59 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags96, align 4
  %and97 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end95.if.end114_crit_edge

if.end95.if.end114_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then99:                                        ; preds = %if.end95
  %tobool106.not = icmp ne ptr %hdev.0, null
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp ne i32 %61, 0
  %cmp109.not = xor i1 %tobool106.not, %62
  br i1 %cmp109.not, label %if.then99.if.end114_crit_edge, label %if.then111

if.then99.if.end114_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then111:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  %call112 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 17) #13
  br label %done

if.end114:                                        ; preds = %if.then99.if.end114_crit_edge, %if.end95.if.end114_crit_edge
  %and116 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  %data_len129 = getelementptr %struct.hci_mgmt_handler, ptr %39, i32 %conv25, i32 1
  %63 = ptrtoint ptr %data_len129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len129, align 4
  br i1 %tobool117.not, label %land.lhs.true127.critedge, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv)
  %cmp123 = icmp ugt i32 %64, %conv
  br i1 %cmp123, label %land.lhs.true121.if.then132_crit_edge, label %land.lhs.true121.if.end134_crit_edge

land.lhs.true121.if.end134_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

land.lhs.true121.if.then132_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then132

land.lhs.true127.critedge:                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv)
  %cmp130.not = icmp eq i32 %64, %conv
  br i1 %cmp130.not, label %land.lhs.true127.critedge.if.end134_crit_edge, label %land.lhs.true127.critedge.if.then132_crit_edge

land.lhs.true127.critedge.if.then132_crit_edge:   ; preds = %land.lhs.true127.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then132

land.lhs.true127.critedge.if.end134_crit_edge:    ; preds = %land.lhs.true127.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then132:                                       ; preds = %land.lhs.true127.critedge.if.then132_crit_edge, %land.lhs.true121.if.then132_crit_edge
  %call133 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 13) #13
  br label %done

if.end134:                                        ; preds = %land.lhs.true127.critedge.if.end134_crit_edge, %land.lhs.true121.if.end134_crit_edge
  %tobool135.not = icmp eq ptr %hdev.0, null
  br i1 %tobool135.not, label %if.end134.if.end140_crit_edge, label %land.lhs.true136

if.end134.if.end140_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

land.lhs.true136:                                 ; preds = %if.end134
  %hdev_init = getelementptr inbounds %struct.hci_mgmt_chan, ptr %chan, i32 0, i32 4
  %65 = ptrtoint ptr %hdev_init to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hdev_init, align 4
  %tobool137.not = icmp eq ptr %66, null
  br i1 %tobool137.not, label %land.lhs.true136.if.end140_crit_edge, label %if.then138

land.lhs.true136.if.end140_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

if.then138:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %66(ptr noundef %sk, ptr noundef nonnull %hdev.0) #13
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %land.lhs.true136.if.end140_crit_edge, %if.end134.if.end140_crit_edge
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %add.ptr142 = getelementptr i8, ptr %68, i32 6
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call144 = tail call i32 %70(ptr noundef %sk, ptr noundef %hdev.0, ptr noundef %add.ptr142, i16 noundef zeroext %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.end140.done_crit_edge, label %if.end148

if.end140.done_crit_edge:                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end148:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len4, align 4
  br label %done

done:                                             ; preds = %if.end148, %if.end140.done_crit_edge, %if.then132, %if.then111
  %err.0 = phi i32 [ %call133, %if.then132 ], [ %call144, %if.end140.done_crit_edge ], [ %72, %if.end148 ], [ %call112, %if.then111 ]
  %tobool150.not = icmp eq ptr %hdev.0, null
  br i1 %tobool150.not, label %done.cleanup_crit_edge, label %done.if.then151_crit_edge

done.if.then151_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then151

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then151.sink.split:                            ; preds = %land.lhs.true88.if.then151.sink.split_crit_edge, %lor.lhs.false76.if.then151.sink.split_crit_edge, %lor.lhs.false71.if.then151.sink.split_crit_edge, %if.end68.if.then151.sink.split_crit_edge
  %call93 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %11, i16 noundef zeroext %8, i8 noundef zeroext 17) #13
  br label %if.then151

if.then151:                                       ; preds = %if.then151.sink.split, %done.if.then151_crit_edge
  %err.0252 = phi i32 [ %err.0, %done.if.then151_crit_edge ], [ %call93, %if.then151.sink.split ]
  %hdev.1251 = phi ptr [ %hdev.0, %done.if.then151_crit_edge ], [ %call64, %if.then151.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_mgmt_cmd, %if.then.i)) #13
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.1251, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.1251, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #13
  %73 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.23, ptr noundef %name.i, i32 noundef %74) #13
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.then151
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.1251, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #13
  br label %cleanup

cleanup:                                          ; preds = %hci_dev_put.exit, %done.cleanup_crit_edge, %if.then66, %if.then56, %do.end47, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %err.0252, %hci_dev_put.exit ], [ %err.0, %done.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call57, %if.then56 ], [ %call67, %if.then66 ], [ %call48, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_status(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_sock_cmsg(ptr nocapture noundef readonly %sk, ptr noundef %msg, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %incoming = alloca i32, align 4
  %tv = alloca %struct.__kernel_old_timeval, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmsg_mask = getelementptr inbounds %struct.hci_pinfo, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %cmsg_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmsg_mask, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %incoming) #13
  %incoming1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %incoming1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %incoming1, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %conv2 = zext i8 %bf.lshr to i32
  %3 = ptrtoint ptr %incoming to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv2, ptr %incoming, align 4
  %call = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %incoming) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %incoming) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tv) #13
  %4 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tv, align 8, !annotation !130
  %5 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %tv, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !130
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tv, i64 noundef %9) #13
  %call7 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 0, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tv) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 7
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %9 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_tsflags, align 8
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool3.not = icmp eq i64 %2, 0
  %and6 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %lor.lhs.false8, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %11 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hwtstamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool9.not = icmp eq i64 %12, 0
  %13 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool14.not = icmp eq i16 %13, 0
  %or.cond36 = select i1 %tobool9.not, i1 true, i1 %tobool14.not
  br i1 %or.cond36, label %if.else, label %lor.lhs.false8.if.then_crit_edge

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef %skb) #13
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  %sk_stamp_seq.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  %14 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !144
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %16 = tail call ptr @llvm.returnaddress(i32 0) #13
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %17) #13
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %18 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %2, ptr %sk_stamp.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %17) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %19 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i35.not = icmp eq i32 %23, 0
  br i1 %tobool.i35.not, label %if.end.if.end21_crit_edge, label %land.lhs.true17

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.end
  %wifi_acked_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %wifi_acked_valid to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %wifi_acked_valid, align 8
  %25 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool19.not = icmp eq i16 %25, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end21_crit_edge, label %if.then20

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %sk, ptr noundef %skb) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true17.if.end21_crit_edge, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !68, !70, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !87, !88, !90, !91, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hci_sock.c", i32 208, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hci_send_to_sock.__UNIQUE_ID_ddebug476, !1, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/hci_sock.c", i32 320, i32 2}
!8 = !{ptr @hci_send_to_monitor.__UNIQUE_ID_ddebug478, !7, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/hci_sock.c", i32 748, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hci_sock_dev_event.__UNIQUE_ID_ddebug479, !10, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!13 = !{ptr @__ksymtab_hci_mgmt_chan_register, !14, !"__ksymtab_hci_mgmt_chan_register", i1 false, i1 false}
!14 = !{!"../net/bluetooth/hci_sock.c", i32 826, i32 1}
!15 = !{ptr @__ksymtab_hci_mgmt_chan_unregister, !16, !"__ksymtab_hci_mgmt_chan_unregister", i1 false, i1 false}
!16 = !{!"../net/bluetooth/hci_sock.c", i32 834, i32 1}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bluetooth/hci_sock.c", i32 2141, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/hci_sock.c", i32 2145, i32 34}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/hci_sock.c", i32 2147, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bluetooth/hci_sock.c", i32 2152, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bluetooth/hci_sock.c", i32 162, i32 10}
!27 = !{ptr @hci_sk_list, !28, !"hci_sk_list", i1 false, i1 false}
!28 = !{!"../net/bluetooth/hci_sock.c", i32 161, i32 28}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/bluetooth/hci_sock.c", i32 273, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__hci_send_to_channel.__UNIQUE_ID_ddebug477, !30, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!33 = !{ptr @monitor_promisc, !34, !"monitor_promisc", i1 false, i1 false}
!34 = !{!"../net/bluetooth/hci_sock.c", i32 44, i32 17}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/bluetooth/hci_sock.c", i32 40, i32 8}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mgmt_chan_list_lock, !36, !"mgmt_chan_list_lock", i1 false, i1 false}
!39 = !{ptr @mgmt_chan_list, !40, !"mgmt_chan_list", i1 false, i1 false}
!40 = !{!"../net/bluetooth/hci_sock.c", i32 39, i32 8}
!41 = !{ptr @hci_sk_proto, !42, !"hci_sk_proto", i1 false, i1 false}
!42 = !{!"../net/bluetooth/hci_sock.c", i32 2087, i32 21}
!43 = !{ptr @hci_sock_family_ops, !44, !"hci_sock_family_ops", i1 false, i1 false}
!44 = !{!"../net/bluetooth/hci_sock.c", i32 2123, i32 38}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bluetooth/hci_sock.c", i32 2098, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hci_sock_create.__UNIQUE_ID_ddebug498, !46, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!49 = !{ptr @hci_sock_ops, !50, !"hci_sock_ops", i1 false, i1 false}
!50 = !{!"../net/bluetooth/hci_sock.c", i32 2064, i32 31}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bluetooth/hci_sock.c", i32 842, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hci_sock_release.__UNIQUE_ID_ddebug480, !52, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/bluetooth/hci_sock.c", i32 42, i32 8}
!57 = !{ptr @sock_cookie_ida, !56, !"sock_cookie_ida", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !59, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/hci_sock.c", i32 1094, i32 2}
!65 = !{ptr @hci_sock_bind.__UNIQUE_ID_ddebug482, !64, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/bluetooth/hci_sock.c", i32 1284, i32 25}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/bluetooth/hci_sock.c", i32 1287, i32 25}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/hci_sock.c", i32 1393, i32 2}
!72 = !{ptr @hci_sock_getname.__UNIQUE_ID_ddebug485, !71, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/hci_sock.c", i32 982, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hci_sock_ioctl.__UNIQUE_ID_ddebug481, !74, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/bluetooth/hci_sock.c", i32 1917, i32 2}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hci_sock_setsockopt.__UNIQUE_ID_ddebug493, !85, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/bluetooth/hci_sock.c", i32 1834, i32 2}
!90 = !{ptr @hci_sock_setsockopt_old.__UNIQUE_ID_ddebug490, !89, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!91 = !{ptr @hci_sec_filter, !92, !"hci_sec_filter", i1 false, i1 false}
!92 = !{!"../net/bluetooth/hci_sock.c", i32 140, i32 36}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/bluetooth/hci_sock.c", i32 2031, i32 2}
!95 = !{ptr @hci_sock_getsockopt.__UNIQUE_ID_ddebug497, !94, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/bluetooth/hci_sock.c", i32 1966, i32 2}
!98 = !{ptr @hci_sock_getsockopt_old.__UNIQUE_ID_ddebug494, !97, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/bluetooth/hci_sock.c", i32 1700, i32 2}
!101 = !{ptr @hci_sock_sendmsg.__UNIQUE_ID_ddebug489, !100, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/hci_sock.c", i32 1520, i32 2}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hci_mgmt_cmd.__UNIQUE_ID_ddebug487, !103, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/bluetooth/hci_sock.c", i32 1550, i32 3}
!108 = !{ptr @hci_mgmt_cmd.__UNIQUE_ID_ddebug488, !107, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/bluetooth/hci_sock.c", i32 1462, i32 2}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hci_sock_recvmsg.__UNIQUE_ID_ddebug486, !110, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148978111, i64 2148978116, i64 2148978129, i64 2148978173, i64 2148978207, i64 2148978228}
!124 = !{i64 2148280646, i64 2148280672, i64 2148280701, i64 2148280735, i64 2148280766, i64 2148280789}
!125 = !{i64 2148367712}
!126 = !{i64 2148282176, i64 2148282208, i64 2148282237, i64 2148282271, i64 2148282302, i64 2148282325}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2149485764}
!129 = !{i64 2148278181, i64 2148278207, i64 2148278236, i64 2148278270, i64 2148278301, i64 2148278324}
!130 = !{!"auto-init"}
!131 = !{i64 2152309380, i64 2152309405}
!132 = !{i64 4804935}
!133 = !{i64 4805132}
!134 = !{i64 2152290365}
!135 = !{i64 2157509420, i64 2157509700, i64 2157510034, i64 2157510368}
!136 = !{i64 2156848689}
!137 = !{i64 784949, i64 784966, i64 784990, i64 785016, i64 785034}
!138 = !{i64 2156849032}
!139 = !{i64 2155166116, i64 2155166604, i64 2155166153, i64 2155166209, i64 2155166243, i64 2155166267, i64 2155166308, i64 2155166329, i64 2155166357, i64 2155166391}
!140 = !{i64 2157475806, i64 2157476086, i64 2157476420, i64 2157476754}
!141 = !{i64 2157481426, i64 2157481706, i64 2157482040, i64 2157482374}
!142 = !{i64 2157494314, i64 2157494594, i64 2157494928, i64 2157495262}
!143 = !{i64 2152310061, i64 2152310086}
!144 = !{i64 2150074145}
!145 = !{i64 2150074470}
