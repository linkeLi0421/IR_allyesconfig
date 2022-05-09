; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/cxgbit/cxgbit_cm.c_pt.bc'
source_filename = "../drivers/target/iscsi/cxgbit/cxgbit_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
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
%struct.cxgbit_device = type { %struct.list_head, %struct.cxgb4_lld_info, [32 x ptr], %struct.spinlock, [4 x [2 x i8]], %struct.cxgbit_list_head, i32, %struct.kref, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgbit_list_head = type { %struct.list_head, %struct.spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.cxgbit_np = type { %struct.cxgbit_sock_common, %struct.wait_queue_head, ptr, %struct.completion, %struct.list_head, %struct.spinlock, %struct.kref, i32 }
%struct.cxgbit_sock_common = type { ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.cxgbit_wr_wait, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.198 }
%union.anon.198 = type { ptr, [124 x i8] }
%struct.cxgbit_wr_wait = type { %struct.completion, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iscsi_np = type { i32, i32, i32, i32, i8, %struct.atomic_t, i32, i32, i32, %struct.spinlock, %struct.completion, ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, [48 x i8] }
%struct.np_info = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.197, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.197 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.cxgbit_sock = type { %struct.cxgbit_sock_common, ptr, ptr, ptr, ptr, %struct.list_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_close_con_req = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%union.opcode_tid = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.cpl_rx_data_ack = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }
%struct.fw_flowc_wr = type { i32, i32, [0 x %struct.fw_flowc_mnemval] }
%struct.fw_flowc_mnemval = type { i8, [3 x i8], i32 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64 }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.serv_entry = type { ptr }
%struct.cpl_close_listsvr_rpl = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_pass_open_rpl = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_set_tcb_rpl = type { %union.opcode_tid, i16, i8, i8, i64 }
%struct.cpl_pass_establish = type { %union.opcode_tid, i32, i32, i16, i16, i32, i32 }
%struct.cpl_pass_accept_req = type { %union.opcode_tid, i16, i16, i32, i16, i16, i32, %struct.tcp_options }
%struct.tcp_options = type { i16, i8, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%struct.cpl_tid_release = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.cpl_abort_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_fw4_ack = type { %union.opcode_tid, i8, [2 x i8], i8, i32, i32, i64 }
%struct.cpl_abort_req_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_abort_rpl_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpl_t5_pass_accept_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i64, i32, [3 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@cdev_list_head = external dso_local global %struct.list_head, align 4
@cxgbit_setup_np.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cnp->accept_wait\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_setup_np.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cnp->np_accept_lock\00", [43 x i8] zeroinitializer }, align 32
@__func__.cxgbit_abort_conn = private unnamed_addr constant [18 x i8] c"cxgbit_abort_conn\00", align 1
@_cxgbit_free_csk.__UNIQUE_ID_ddebug736 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgbit\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_cxgbit_free_csk\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/target/iscsi/cxgbit/cxgbit_cm.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s csk %p state %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_ofld_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s - device not up - dropping\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgbit_ofld_send\00", [47 x i8] zeroinitializer }, align 32
@cxgbit_ofld_send._entry_ptr = internal global ptr @cxgbit_ofld_send._entry, section ".printk_index", align 4
@cxgbit_l2t_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.5, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgbit_l2t_send\00", [16 x i8] zeroinitializer }, align 32
@cxgbit_l2t_send._entry_ptr = internal global ptr @cxgbit_l2t_send._entry, section ".printk_index", align 4
@cxgbit_send_tx_flowc_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014csk %u without VLAN Tag on DCB Link\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgbit_send_tx_flowc_wr\00", [40 x i8] zeroinitializer }, align 32
@cxgbit_send_tx_flowc_wr._entry_ptr = internal global ptr @cxgbit_send_tx_flowc_wr._entry, section ".printk_index", align 4
@cxgbit_send_tx_flowc_wr.__UNIQUE_ID_ddebug752 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: csk %p; tx_chan = %u; rss_qid = %u; snd_seq = %u; rcv_seq = %u; snd_win = %u; emss = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.cxgbit_setup_conn_digest = private unnamed_addr constant [25 x i8] c"cxgbit_setup_conn_digest\00", align 1
@__func__.cxgbit_setup_conn_pgidx = private unnamed_addr constant [24 x i8] c"cxgbit_setup_conn_pgidx\00", align 1
@cxgbit_cplhandlers = dso_local global { <{ [196 x ptr], [43 x ptr] }>, [228 x i8] } { <{ [196 x ptr], [43 x ptr] }> <{ [196 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_close_listsrv_rpl, ptr null, ptr null, ptr null, ptr @cxgbit_pass_open_rpl, ptr null, ptr @cxgbit_rx_cpl, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_rx_cpl, ptr null, ptr @cxgbit_rx_cpl, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_rx_cpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_rx_data, ptr @cxgbit_set_tcb_rpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_pass_establish, ptr null, ptr null, ptr @cxgbit_pass_accept_req, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgbit_rx_cpl], [43 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cdev_list_lock = external dso_local global %struct.mutex, align 4
@cxgbit_create_server4.__UNIQUE_ID_ddebug728 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_create_server4\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: dev = %s; stid = %u; sin_port = %u\0A\00", [56 x i8] zeroinitializer }, align 32
@cxgbit_create_server4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013create server failed err %d stid %d laddr %pI4 lport %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cxgbit_create_server4._entry_ptr = internal global ptr @cxgbit_create_server4._entry, section ".printk_index", align 4
@cxgbit_create_server6.__UNIQUE_ID_ddebug727 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_create_server6\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: dev = %s; stid = %u; sin6_port = %u\0A\00", [55 x i8] zeroinitializer }, align 32
@cxgbit_create_server6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Unable to find clip table entry. laddr %pI6. Error:%d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgbit_create_server6._entry_ptr = internal global ptr @cxgbit_create_server6._entry, section ".printk_index", align 4
@cxgbit_create_server6._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013create server6 err %d stid %d laddr %pI6 lport %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_create_server6._entry_ptr.22 = internal global ptr @cxgbit_create_server6._entry.20, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@cxgbit_get_real_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Bond devices are not supported. Interface:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_get_real_dev\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_get_real_dev._entry_ptr = internal global ptr @cxgbit_get_real_dev._entry, section ".printk_index", align 4
@cxgbit_ipv6_netdev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.__cxgbit_free_cdev_np = private unnamed_addr constant [22 x i8] c"__cxgbit_free_cdev_np\00", align 1
@cxgbit_send_abort_req.__UNIQUE_ID_ddebug733 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_send_abort_req\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: csk %p tid %u; state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgbit_abort_arp_failure.__UNIQUE_ID_ddebug732 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxgbit_abort_arp_failure\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s cdev %p\0A\00", [20 x i8] zeroinitializer }, align 32
@cxgbit_wake_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013%s: err:%u\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgbit_wake_up\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_wake_up._entry_ptr = internal global ptr @cxgbit_wake_up._entry, section ".printk_index", align 4
@cxgbit_wait_for_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s - Device %s not responding tid %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_wait_for_reply\00", [42 x i8] zeroinitializer }, align 32
@cxgbit_wait_for_reply._entry_ptr = internal global ptr @cxgbit_wait_for_reply._entry, section ".printk_index", align 4
@cxgbit_wait_for_reply._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: FW reply %d tid %u\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgbit_wait_for_reply._entry_ptr.39 = internal global ptr @cxgbit_wait_for_reply._entry.37, section ".printk_index", align 4
@__cxgbit_free_conn.__UNIQUE_ID_ddebug734 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__cxgbit_free_conn\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: state %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__cxgbit_free_conn._entry = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 746, ptr null, ptr null }, align 1
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: csk %p; state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__cxgbit_free_conn._entry_ptr = internal global ptr @__cxgbit_free_conn._entry, section ".printk_index", align 4
@cxgbit_send_tcb_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: csk 0x%p, tid %u, state %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_send_tcb_skb\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_send_tcb_skb._entry_ptr = internal global ptr @cxgbit_send_tcb_skb._entry, section ".printk_index", align 4
@cxgbit_close_listsrv_rpl.__UNIQUE_ID_ddebug754 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxgbit_close_listsrv_rpl\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: cnp = %p; stid = %u; status = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgbit_close_listsrv_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s stid %d lookup failure\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgbit_close_listsrv_rpl._entry_ptr = internal global ptr @cxgbit_close_listsrv_rpl._entry, section ".printk_index", align 4
@cxgbit_pass_open_rpl.__UNIQUE_ID_ddebug753 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.5, ptr @.str.46, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbit_pass_open_rpl\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_pass_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxgbit_pass_open_rpl._entry_ptr = internal global ptr @cxgbit_pass_open_rpl._entry, section ".printk_index", align 4
@cxgbit_rx_cpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013can't find conn. for tid %u.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxgbit_rx_cpl\00", [18 x i8] zeroinitializer }, align 32
@cxgbit_rx_cpl._entry_ptr = internal global ptr @cxgbit_rx_cpl._entry, section ".printk_index", align 4
@cxgbit_fw4_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013csk 0x%p,%u, cr %u,%u+%u, empty.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgbit_fw4_ack\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_fw4_ack._entry_ptr = internal global ptr @cxgbit_fw4_ack._entry, section ".printk_index", align 4
@cxgbit_fw4_ack._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.5, i32 1861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014csk 0x%p,%u, cr %u,%u+%u, < %u.\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgbit_fw4_ack._entry_ptr.55 = internal global ptr @cxgbit_fw4_ack._entry.53, section ".printk_index", align 4
@cxgbit_fw4_ack._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.5, i32 1880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014csk 0x%p,%u, snd_una %u/%u.\00", [34 x i8] zeroinitializer }, align 32
@cxgbit_fw4_ack._entry_ptr.58 = internal global ptr @cxgbit_fw4_ack._entry.56, section ".printk_index", align 4
@cxgbit_credit_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013csk 0x%p, tid %u, credit %u > %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbit_credit_err\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_credit_err._entry_ptr = internal global ptr @cxgbit_credit_err._entry, section ".printk_index", align 4
@cxgbit_credit_err._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.5, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013csk 0x%p, tid %u, credit %u + %u != %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@cxgbit_credit_err._entry_ptr.63 = internal global ptr @cxgbit_credit_err._entry.61, section ".printk_index", align 4
@cxgbit_peer_close.__UNIQUE_ID_ddebug756 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbit_peer_close\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: csk %p; tid %u; state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cxgbit_peer_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: cpl_peer_close in bad state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgbit_peer_close._entry_ptr = internal global ptr @cxgbit_peer_close._entry, section ".printk_index", align 4
@cxgbit_close_con_rpl.__UNIQUE_ID_ddebug757 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.67, ptr @.str.5, ptr @.str.65, i8 1, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbit_close_con_rpl\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_close_con_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.67, ptr @.str.5, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: cpl_close_con_rpl in bad state %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cxgbit_close_con_rpl._entry_ptr = internal global ptr @cxgbit_close_con_rpl._entry, section ".printk_index", align 4
@cxgbit_abort_req_rss.__UNIQUE_ID_ddebug758 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.69, ptr @.str.5, ptr @.str.65, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbit_abort_req_rss\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_abort_req_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.69, ptr @.str.5, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: got neg advise %d on tid %u\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgbit_abort_req_rss._entry_ptr = internal global ptr @cxgbit_abort_req_rss._entry, section ".printk_index", align 4
@cxgbit_abort_req_rss._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.5, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: cpl_abort_req_rss in bad state %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cxgbit_abort_req_rss._entry_ptr.73 = internal global ptr @cxgbit_abort_req_rss._entry.71, section ".printk_index", align 4
@cxgbit_abort_rpl_rss.__UNIQUE_ID_ddebug759 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.74, ptr @.str.5, ptr @.str.65, i8 1, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbit_abort_rpl_rss\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_abort_rpl_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.74, ptr @.str.5, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: cpl_abort_rpl_rss in state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cxgbit_abort_rpl_rss._entry_ptr = internal global ptr @cxgbit_abort_rpl_rss._entry, section ".printk_index", align 4
@cxgbit_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.76, ptr @.str.5, i32 1928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgbit_rx_data\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_rx_data._entry_ptr = internal global ptr @cxgbit_rx_data._entry, section ".printk_index", align 4
@cxgbit_set_tcb_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013can't find connection for tid %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgbit_set_tcb_rpl\00", [45 x i8] zeroinitializer }, align 32
@cxgbit_set_tcb_rpl._entry_ptr = internal global ptr @cxgbit_set_tcb_rpl._entry, section ".printk_index", align 4
@cxgbit_pass_establish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.79, ptr @.str.5, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_pass_establish\00", [42 x i8] zeroinitializer }, align 32
@cxgbit_pass_establish._entry_ptr = internal global ptr @cxgbit_pass_establish._entry, section ".printk_index", align 4
@cxgbit_pass_establish.__UNIQUE_ID_ddebug755 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.79, ptr @.str.5, ptr @.str.80, i8 1, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: csk %p; tid %u; cnp %p\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgbit_set_emss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Warning: misaligned mtu idx %u mss %u emss=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgbit_set_emss\00", [16 x i8] zeroinitializer }, align 32
@cxgbit_set_emss._entry_ptr = internal global ptr @cxgbit_set_emss._entry, section ".printk_index", align 4
@cxgbit_set_emss.__UNIQUE_ID_ddebug735 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.82, ptr @.str.5, ptr @.str.83, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s mss_idx %u mss %u emss=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req.__UNIQUE_ID_ddebug747 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.84, ptr @.str.5, ptr @.str.85, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgbit_pass_accept_req\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: cdev = %p; stid = %u; tid = %u\0A\00", [60 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s connect request on invalid stid %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry_ptr = internal global ptr @cxgbit_pass_accept_req._entry, section ".printk_index", align 4
@cxgbit_pass_accept_req._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.5, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s - listening parent not in CSK_STATE_LISTEN\0A\00", [47 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry_ptr.89 = internal global ptr @cxgbit_pass_accept_req._entry.87, section ".printk_index", align 4
@cxgbit_pass_accept_req._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.84, ptr @.str.5, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s csk not null tid %u\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry_ptr.92 = internal global ptr @cxgbit_pass_accept_req._entry.90, section ".printk_index", align 4
@cxgbit_pass_accept_req.__UNIQUE_ID_ddebug748 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.84, ptr @.str.5, ptr @.str.93, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s parent sock %p tid %u laddr %pI4 raddr %pI4 lport %d rport %d peer_mss %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req.__UNIQUE_ID_ddebug749 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.84, ptr @.str.5, ptr @.str.94, i8 1, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s parent sock %p tid %u laddr %pI6 raddr %pI6 lport %d rport %d peer_mss %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.84, ptr @.str.5, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s - failed to find dst entry!\0A\00", [62 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry_ptr.97 = internal global ptr @cxgbit_pass_accept_req._entry.95, section ".printk_index", align 4
@cxgbit_pass_accept_req._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.84, ptr @.str.5, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s - failed to allocate l2t entry!\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req._entry_ptr.100 = internal global ptr @cxgbit_pass_accept_req._entry.98, section ".printk_index", align 4
@cxgbit_pass_accept_req.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&csk->lock\00", [21 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_req.__key.102 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&csk->waitq\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.104, ptr @.str.5, ptr @.str.105, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_set_tcp_window\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s snd_win %d rcv_win %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgbit_get_iscsi_dcb_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016iSCSI priority is set to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxgbit_get_iscsi_dcb_priority\00", [34 x i8] zeroinitializer }, align 32
@cxgbit_get_iscsi_dcb_priority._entry_ptr = internal global ptr @cxgbit_get_iscsi_dcb_priority._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@cxgbit_pass_accept_rpl.__UNIQUE_ID_ddebug746 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgbit_pass_accept_rpl\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s csk %p tid %u\0A\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_arp_failure_discard.__UNIQUE_ID_ddebug731 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.111, ptr @.str.5, ptr @.str.112, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxgbit_arp_failure_discard\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s cxgbit_device %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 8, i64 38, i64 43, i64 45, i64 50, i64 195]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 438, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 442, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 800, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1004, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1035, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1472, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1479, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"cxgbit_cplhandlers\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2006, i32 24 }
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 87, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 203, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 223, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 152, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 161, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 187, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 695, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 251, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 279, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 723, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 663, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 653, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 43, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 62, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 68, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 723, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 745, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1494, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1608, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1612, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1586, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1590, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1992, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1850, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1858, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1878, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1814, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1825, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1673, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1692, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1701, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1716, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1732, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1736, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1759, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1789, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1801, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1928, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1907, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1636, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1641, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 771, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 773, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1234, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1239, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1245, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1252, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1262, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1273, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1286, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1300, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1362, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1363, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 847, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 892, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1984, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1143, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [43 x i8] c"../drivers/target/iscsi/cxgbit/cxgbit_cm.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 643, i32 2 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__cxgbit_free_conn._entry, ptr @__cxgbit_free_conn._entry_ptr, ptr @cxgbit_abort_req_rss._entry, ptr @cxgbit_abort_req_rss._entry.71, ptr @cxgbit_abort_req_rss._entry_ptr, ptr @cxgbit_abort_req_rss._entry_ptr.73, ptr @cxgbit_abort_rpl_rss._entry, ptr @cxgbit_abort_rpl_rss._entry_ptr, ptr @cxgbit_close_con_rpl._entry, ptr @cxgbit_close_con_rpl._entry_ptr, ptr @cxgbit_close_listsrv_rpl._entry, ptr @cxgbit_close_listsrv_rpl._entry_ptr, ptr @cxgbit_create_server4._entry, ptr @cxgbit_create_server4._entry_ptr, ptr @cxgbit_create_server6._entry, ptr @cxgbit_create_server6._entry.20, ptr @cxgbit_create_server6._entry_ptr, ptr @cxgbit_create_server6._entry_ptr.22, ptr @cxgbit_credit_err._entry, ptr @cxgbit_credit_err._entry.61, ptr @cxgbit_credit_err._entry_ptr, ptr @cxgbit_credit_err._entry_ptr.63, ptr @cxgbit_fw4_ack._entry, ptr @cxgbit_fw4_ack._entry.53, ptr @cxgbit_fw4_ack._entry.56, ptr @cxgbit_fw4_ack._entry_ptr, ptr @cxgbit_fw4_ack._entry_ptr.55, ptr @cxgbit_fw4_ack._entry_ptr.58, ptr @cxgbit_get_iscsi_dcb_priority._entry, ptr @cxgbit_get_iscsi_dcb_priority._entry_ptr, ptr @cxgbit_get_real_dev._entry, ptr @cxgbit_get_real_dev._entry_ptr, ptr @cxgbit_l2t_send._entry, ptr @cxgbit_l2t_send._entry_ptr, ptr @cxgbit_ofld_send._entry, ptr @cxgbit_ofld_send._entry_ptr, ptr @cxgbit_pass_accept_req._entry, ptr @cxgbit_pass_accept_req._entry.87, ptr @cxgbit_pass_accept_req._entry.90, ptr @cxgbit_pass_accept_req._entry.95, ptr @cxgbit_pass_accept_req._entry.98, ptr @cxgbit_pass_accept_req._entry_ptr, ptr @cxgbit_pass_accept_req._entry_ptr.100, ptr @cxgbit_pass_accept_req._entry_ptr.89, ptr @cxgbit_pass_accept_req._entry_ptr.92, ptr @cxgbit_pass_accept_req._entry_ptr.97, ptr @cxgbit_pass_establish._entry, ptr @cxgbit_pass_establish._entry_ptr, ptr @cxgbit_pass_open_rpl._entry, ptr @cxgbit_pass_open_rpl._entry_ptr, ptr @cxgbit_peer_close._entry, ptr @cxgbit_peer_close._entry_ptr, ptr @cxgbit_rx_cpl._entry, ptr @cxgbit_rx_cpl._entry_ptr, ptr @cxgbit_rx_data._entry, ptr @cxgbit_rx_data._entry_ptr, ptr @cxgbit_send_tcb_skb._entry, ptr @cxgbit_send_tcb_skb._entry_ptr, ptr @cxgbit_send_tx_flowc_wr._entry, ptr @cxgbit_send_tx_flowc_wr._entry_ptr, ptr @cxgbit_set_emss._entry, ptr @cxgbit_set_emss._entry_ptr, ptr @cxgbit_set_tcb_rpl._entry, ptr @cxgbit_set_tcb_rpl._entry_ptr, ptr @cxgbit_wait_for_reply._entry, ptr @cxgbit_wait_for_reply._entry.37, ptr @cxgbit_wait_for_reply._entry_ptr, ptr @cxgbit_wait_for_reply._entry_ptr.39, ptr @cxgbit_wake_up._entry, ptr @cxgbit_wake_up._entry_ptr, ptr @cxgbit_setup_np.__key, ptr @.str, ptr @cxgbit_setup_np.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cxgbit_cplhandlers, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @cxgbit_pass_accept_req.__key, ptr @.str.101, ptr @cxgbit_pass_accept_req.__key.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @skb_queue_head_init.__key, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_setup_np.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_setup_np.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_ofld_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_l2t_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_send_tx_flowc_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_cplhandlers to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_create_server4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_create_server6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_create_server6._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_get_real_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_wake_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_wait_for_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_wait_for_reply._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_send_tcb_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_close_listsrv_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_rx_cpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_fw4_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_fw4_ack._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_fw4_ack._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_credit_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_credit_err._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_peer_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_close_con_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_abort_req_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_abort_req_rss._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_abort_rpl_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_tcb_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_establish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_emss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_pass_accept_req.__key.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_get_iscsi_dcb_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_cxgbit_free_cnp(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -492
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgbit_find_device(ptr noundef readnone %ndev, ptr noundef writeonly %port_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cdev_list_head to i32))
  %cdev.032 = load ptr, ptr @cdev_list_head, align 4
  %cmp.not33 = icmp eq ptr %cdev.032, @cdev_list_head
  br i1 %cmp.not33, label %entry.cleanup17_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond2.preheader.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %cdev.034 to i32
  call void @__asan_load4_noabort(i32 %0)
  %cdev.0 = load ptr, ptr %cdev.034, align 4
  %cmp.not = icmp eq ptr %cdev.0, @cdev_list_head
  br i1 %cmp.not, label %for.cond.loopexit.cleanup17_crit_edge, label %for.cond.loopexit.for.cond2.preheader_crit_edge

for.cond.loopexit.for.cond2.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.cond.loopexit.cleanup17_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

for.cond2.preheader:                              ; preds = %for.cond.loopexit.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %cdev.034 = phi ptr [ %cdev.0, %for.cond.loopexit.for.cond2.preheader_crit_edge ], [ %cdev.032, %entry.for.cond2.preheader_crit_edge ]
  %nports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.034, i32 0, i32 1, i32 11
  %1 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %nports, align 2
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp430.not = icmp eq i8 %bf.clear, 0
  br i1 %cmp430.not, label %for.cond2.preheader.for.cond.loopexit_crit_edge, label %for.body6.lr.ph

for.cond2.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.034, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %wide.trip.count = zext i8 %bf.clear to i32
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc.for.body6_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %5, %ndev
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  %tobool.not = icmp eq ptr %port_id, null
  br i1 %tobool.not, label %if.then.cleanup17_crit_edge, label %if.then9

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = trunc i32 %indvars.iv to i8
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %port_id, align 1
  br label %cleanup17

for.inc:                                          ; preds = %for.body6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

cleanup17:                                        ; preds = %if.then9, %if.then.cleanup17_crit_edge, %for.cond.loopexit.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.2 = phi ptr [ %cdev.034, %if.then.cleanup17_crit_edge ], [ %cdev.034, %if.then9 ], [ null, %entry.cleanup17_crit_edge ], [ null, %for.cond.loopexit.cleanup17_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_setup_np(ptr noundef %np, ptr nocapture noundef readonly %ksockaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ksockaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ksockaddr, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge91
  ]

entry.if.end_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 500) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %accept_wait = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %accept_wait, ptr noundef nonnull @.str, ptr noundef nonnull @cxgbit_setup_np.__key) #10
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wr_wait, align 4
  %wait.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #10
  %accept_comp = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %accept_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %accept_comp, align 8
  %wait.i46 = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i46, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #10
  %np_accept_list = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %np_accept_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %np_accept_list, ptr %np_accept_list, align 8
  %prev.i = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %np_accept_list, ptr %prev.i, align 4
  %np_accept_lock = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %np_accept_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cxgbit_setup_np.__key.1, i16 noundef signext 3) #10
  %kref = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %8 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %kref, align 4
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %9 = call ptr @memcpy(ptr %np_sockaddr, ptr %ksockaddr, i32 128)
  %local_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %local_addr, ptr %ksockaddr, i32 128)
  %np14 = getelementptr inbounds %struct.cxgbit_np, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %np14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %np, ptr %np14, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call7.i.i, align 8
  %13 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %local_addr, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %14, label %do.body.if.else_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then8.i
  ]

do.body.if.else_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then.i:                                        ; preds = %do.body
  %sin_addr.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sin_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i = icmp eq i32 %17, 0
  br i1 %cmp3.i, label %if.then.i.if.then17_crit_edge, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then.i.if.then17_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then8.i:                                       ; preds = %do.body
  %sin6_addr.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i) #10
  %and.i.i = and i32 %call.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp9.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp9.i, label %if.then8.i.if.then17_crit_edge, label %if.then8.i.if.else_crit_edge

if.then8.i.if.else_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then8.i.if.then17_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %if.then8.i.if.then17_crit_edge, %if.then.i.if.then17_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %18 = ptrtoint ptr %call7.i.i to i32
  %shr.i.i.i = lshr i32 %18, 10
  %and.i.i.i = and i32 %shr.i.i.i, 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %cxgbit_np_hash_find.exit.i.for.cond.i_crit_edge, %if.then17
  %cdev.0.in.i = phi ptr [ @cdev_list_head, %if.then17 ], [ %cdev.0.i, %cxgbit_np_hash_find.exit.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %cdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %cdev.0.i = load ptr, ptr %cdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cdev.0.i, @cdev_list_head
  br i1 %cmp.not.i, label %for.cond9.preheader.i, label %for.body.i

for.cond9.preheader.i:                            ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cdev_list_head to i32))
  %cdev.139.i = load ptr, ptr @cdev_list_head, align 4
  %cmp11.not40.i = icmp eq ptr %cdev.139.i, @cdev_list_head
  br i1 %cmp11.not40.i, label %for.cond9.preheader.i.for.end27.i_crit_edge, label %for.cond9.preheader.i.for.body13.i_crit_edge

for.cond9.preheader.i.for.body13.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body13.i

for.cond9.preheader.i.for.end27.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.body.i:                                       ; preds = %for.cond.i
  %np_lock.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.0.i, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %np_lock.i.i) #10
  %arrayidx.i.i = getelementptr %struct.cxgbit_device, ptr %cdev.0.i, i32 0, i32 2, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %p.0.in.i.i = phi ptr [ %arrayidx.i.i, %for.body.i ], [ %p.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %20 = ptrtoint ptr %p.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %for.cond.i.i.cxgbit_np_hash_find.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.cxgbit_np_hash_find.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_np_hash_find.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cnp1.i.i = getelementptr inbounds %struct.np_info, ptr %p.0.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %cnp1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cnp1.i.i, align 4
  %cmp.i.i = icmp eq ptr %22, %call7.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid2.i.i = getelementptr inbounds %struct.np_info, ptr %p.0.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %stid2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stid2.i.i, align 4
  br label %cxgbit_np_hash_find.exit.i

cxgbit_np_hash_find.exit.i:                       ; preds = %if.then.i.i, %for.cond.i.i.cxgbit_np_hash_find.exit.i_crit_edge
  %stid.0.i.i = phi i32 [ %24, %if.then.i.i ], [ -1, %for.cond.i.i.cxgbit_np_hash_find.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i.i) #10
  %cmp1.i = icmp sgt i32 %stid.0.i.i, -1
  br i1 %cmp1.i, label %if.end20.thread, label %cxgbit_np_hash_find.exit.i.for.cond.i_crit_edge

cxgbit_np_hash_find.exit.i.for.cond.i_crit_edge:  ; preds = %cxgbit_np_hash_find.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end20.thread:                                  ; preds = %cxgbit_np_hash_find.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  br label %if.then22

for.body13.i:                                     ; preds = %for.inc21.i.for.body13.i_crit_edge, %for.cond9.preheader.i.for.body13.i_crit_edge
  %cdev.142.i = phi ptr [ %cdev.1.i, %for.inc21.i.for.body13.i_crit_edge ], [ %cdev.139.i, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  %count.041.i = phi i32 [ %count.1.i, %for.inc21.i.for.body13.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  %call14.i = tail call fastcc i32 @__cxgbit_setup_cdev_np(ptr noundef %cdev.142.i, ptr noundef nonnull %call7.i.i) #10
  %25 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call14.i, label %for.body13.i.for.inc21.i_crit_edge [
    i32 -110, label %for.body13.i.for.end27.i_crit_edge
    i32 0, label %if.end20.i
  ]

for.body13.i.for.end27.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.body13.i.for.inc21.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i

if.end20.i:                                       ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.041.i, 1
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.end20.i, %for.body13.i.for.inc21.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.end20.i ], [ %count.041.i, %for.body13.i.for.inc21.i_crit_edge ]
  %26 = ptrtoint ptr %cdev.142.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cdev.1.i = load ptr, ptr %cdev.142.i, align 4
  %cmp11.not.i = icmp eq ptr %cdev.1.i, @cdev_list_head
  br i1 %cmp11.not.i, label %for.inc21.i.for.end27.i_crit_edge, label %for.inc21.i.for.body13.i_crit_edge

for.inc21.i.for.body13.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc21.i.for.end27.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.inc21.i.for.end27.i_crit_edge, %for.body13.i.for.end27.i_crit_edge, %for.cond9.preheader.i.for.end27.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %for.cond9.preheader.i.for.end27.i_crit_edge ], [ %count.1.i, %for.inc21.i.for.end27.i_crit_edge ], [ %count.041.i, %for.body13.i.for.end27.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool.not.i = icmp eq i32 %count.0.lcssa.i, 0
  %cond.i = sext i1 %tobool.not.i to i32
  br label %if.end20

if.else:                                          ; preds = %if.then8.i.if.else_crit_edge, %if.then.i.if.else_crit_edge, %do.body.if.else_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %27 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %local_addr, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !268) #10
  %and.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !278
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.else.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.else.rcu_read_lock.exit.i.i_crit_edge
  %33 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %28, label %rcu_read_lock.exit.i.i.out.i.i_crit_edge [
    i16 2, label %if.then.i.i48
    i16 10, label %if.then5.i.i
  ]

rcu_read_lock.exit.i.i.out.i.i_crit_edge:         ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then.i.i48:                                    ; preds = %rcu_read_lock.exit.i.i
  %sin_addr.i.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sin_addr.i.i, align 8
  %call.i15.i.i = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %35, i1 noundef zeroext false) #10
  %tobool.not.i16.i.i = icmp eq ptr %call.i15.i.i, null
  br i1 %tobool.not.i16.i.i, label %if.then.i.i48.out.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i48.out.i.i_crit_edge:                  ; preds = %if.then.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i48
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i15.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %37, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i15.i.i) #14
  br label %out.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %and.i.i.i.i.i = and i64 %37, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i64 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end.i.i.i.i.if.end9.i.i_crit_edge, label %if.then2.i.i.i.i

if.end.i.i.i.i.if.end9.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i.i = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %call.i15.i.i) #10
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %call6.i.i = tail call fastcc ptr @cxgbit_ipv6_netdev(ptr noundef %sin6_addr.i.i) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then2.i.i.i.i
  %ndev.0.i.i = phi ptr [ %call6.i.i, %if.then5.i.i ], [ %call3.i.i.i.i, %if.then2.i.i.i.i ]
  %tobool.not.i.i50 = icmp eq ptr %ndev.0.i.i, null
  br i1 %tobool.not.i.i50, label %if.end7.i.i.out.i.i_crit_edge, label %if.end7.i.i.if.end9.i.i_crit_edge

if.end7.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.end7.i.i.out.i.i_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end9.i.i:                                      ; preds = %if.end7.i.i.if.end9.i.i_crit_edge, %if.end.i.i.i.i.if.end9.i.i_crit_edge
  %ndev.032.i.i = phi ptr [ %ndev.0.i.i, %if.end7.i.i.if.end9.i.i_crit_edge ], [ %call.i15.i.i, %if.end.i.i.i.i.if.end9.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cdev_list_head to i32))
  %cdev.032.i.i.i = load ptr, ptr @cdev_list_head, align 4
  %cmp.not33.i.i.i = icmp eq ptr %cdev.032.i.i.i, @cdev_list_head
  br i1 %cmp.not33.i.i.i, label %if.end9.i.i.out.i.i_crit_edge, label %if.end9.i.i.for.cond2.preheader.i.i.i_crit_edge

if.end9.i.i.for.cond2.preheader.i.i.i_crit_edge:  ; preds = %if.end9.i.i
  br label %for.cond2.preheader.i.i.i

if.end9.i.i.out.i.i_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

for.cond.loopexit.i.i.i:                          ; preds = %for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge, %for.cond2.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge
  %38 = ptrtoint ptr %cdev.034.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %cdev.0.i.i.i = load ptr, ptr %cdev.034.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %cdev.0.i.i.i, @cdev_list_head
  br i1 %cmp.not.i.i.i, label %for.cond.loopexit.i.i.i.out.i.i_crit_edge, label %for.cond.loopexit.i.i.i.for.cond2.preheader.i.i.i_crit_edge

for.cond.loopexit.i.i.i.for.cond2.preheader.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i.i.i

for.cond.loopexit.i.i.i.out.i.i_crit_edge:        ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

for.cond2.preheader.i.i.i:                        ; preds = %for.cond.loopexit.i.i.i.for.cond2.preheader.i.i.i_crit_edge, %if.end9.i.i.for.cond2.preheader.i.i.i_crit_edge
  %cdev.034.i.i.i = phi ptr [ %cdev.0.i.i.i, %for.cond.loopexit.i.i.i.for.cond2.preheader.i.i.i_crit_edge ], [ %cdev.032.i.i.i, %if.end9.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %nports.i.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.034.i.i.i, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %nports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i.i = load i8, ptr %nports.i.i.i, align 2
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i.i)
  %cmp430.not.i.i.i = icmp eq i8 %bf.clear.i.i.i, 0
  br i1 %cmp430.not.i.i.i, label %for.cond2.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge, label %for.body6.lr.ph.i.i.i

for.cond2.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge: ; preds = %for.cond2.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i.i.i

for.body6.lr.ph.i.i.i:                            ; preds = %for.cond2.preheader.i.i.i
  %ports.i.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.034.i.i.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ports.i.i.i, align 4
  %wide.trip.count.i.i.i = zext i8 %bf.clear.i.i.i to i32
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body6.i.i.i_crit_edge, %for.body6.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %41, i32 %indvars.iv.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp7.i.i.i = icmp eq ptr %43, %ndev.032.i.i
  br i1 %cmp7.i.i.i, label %for.body6.i.i.i.out.i.i_crit_edge, label %for.inc.i.i.i

for.body6.i.i.i.out.i.i_crit_edge:                ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

for.inc.i.i.i:                                    ; preds = %for.body6.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge, label %for.inc.i.i.i.for.body6.i.i.i_crit_edge

for.inc.i.i.i.for.body6.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.i.i

for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i.i.i

out.i.i:                                          ; preds = %for.body6.i.i.i.out.i.i_crit_edge, %for.cond.loopexit.i.i.i.out.i.i_crit_edge, %if.end9.i.i.out.i.i_crit_edge, %if.end7.i.i.out.i.i_crit_edge, %do.end.i.i.i.i, %if.then.i.i48.out.i.i_crit_edge, %rcu_read_lock.exit.i.i.out.i.i_crit_edge
  %cdev.0.i.i = phi ptr [ null, %if.end7.i.i.out.i.i_crit_edge ], [ null, %if.end9.i.i.out.i.i_crit_edge ], [ null, %rcu_read_lock.exit.i.i.out.i.i_crit_edge ], [ null, %if.then.i.i48.out.i.i_crit_edge ], [ null, %do.end.i.i.i.i ], [ %cdev.034.i.i.i, %for.body6.i.i.i.out.i.i_crit_edge ], [ null, %for.cond.loopexit.i.i.i.out.i.i_crit_edge ]
  %call.i18.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i18.i.i, label %out.i.i.cxgbit_find_np_cdev.exit.i_crit_edge, label %land.lhs.true.i21.i.i

out.i.i.cxgbit_find_np_cdev.exit.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_find_np_cdev.exit.i

land.lhs.true.i21.i.i:                            ; preds = %out.i.i
  %call1.i19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call1.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %land.lhs.true.i21.i.i.cxgbit_find_np_cdev.exit.i_crit_edge, label %land.lhs.true2.i23.i.i

land.lhs.true.i21.i.i.cxgbit_find_np_cdev.exit.i_crit_edge: ; preds = %land.lhs.true.i21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_find_np_cdev.exit.i

land.lhs.true2.i23.i.i:                           ; preds = %land.lhs.true.i21.i.i
  %.b4.i22.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i.i, label %land.lhs.true2.i23.i.i.cxgbit_find_np_cdev.exit.i_crit_edge, label %if.then.i24.i.i

land.lhs.true2.i23.i.i.cxgbit_find_np_cdev.exit.i_crit_edge: ; preds = %land.lhs.true2.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_find_np_cdev.exit.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true2.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #10
  br label %cxgbit_find_np_cdev.exit.i

cxgbit_find_np_cdev.exit.i:                       ; preds = %if.then.i24.i.i, %land.lhs.true2.i23.i.i.cxgbit_find_np_cdev.exit.i_crit_edge, %land.lhs.true.i21.i.i.cxgbit_find_np_cdev.exit.i_crit_edge, %out.i.i.cxgbit_find_np_cdev.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !279
  %44 = tail call i32 @llvm.read_register.i32(metadata !268) #10
  %and.i.i.i.i.i25.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i25.i.i to ptr
  %preempt_count.i.i.i.i26.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i26.i.i, align 4
  %sub.i.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i26.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i51 = icmp eq ptr %cdev.0.i.i, null
  br i1 %tobool.not.i51, label %cxgbit_find_np_cdev.exit.i.cxgbit_setup_cdev_np.exit_crit_edge, label %if.end.i

cxgbit_find_np_cdev.exit.i.cxgbit_setup_cdev_np.exit_crit_edge: ; preds = %cxgbit_find_np_cdev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_setup_cdev_np.exit

if.end.i:                                         ; preds = %cxgbit_find_np_cdev.exit.i
  %48 = ptrtoint ptr %call7.i.i to i32
  %shr.i.i.i52 = lshr i32 %48, 10
  %and.i.i.i53 = and i32 %shr.i.i.i52, 31
  %np_lock.i.i54 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.0.i.i, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %np_lock.i.i54) #10
  %arrayidx.i.i55 = getelementptr %struct.cxgbit_device, ptr %cdev.0.i.i, i32 0, i32 2, i32 %and.i.i.i53
  br label %for.cond.i.i58

for.cond.i.i58:                                   ; preds = %for.body.i.i61.for.cond.i.i58_crit_edge, %if.end.i
  %p.0.in.i.i56 = phi ptr [ %arrayidx.i.i55, %if.end.i ], [ %p.0.i.i57, %for.body.i.i61.for.cond.i.i58_crit_edge ]
  %49 = ptrtoint ptr %p.0.in.i.i56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %p.0.i.i57 = load ptr, ptr %p.0.in.i.i56, align 4
  %tobool.not.i15.i = icmp eq ptr %p.0.i.i57, null
  br i1 %tobool.not.i15.i, label %cxgbit_np_hash_find.exit.thread.i, label %for.body.i.i61

cxgbit_np_hash_find.exit.thread.i:                ; preds = %for.cond.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i.i54) #10
  br label %if.end3.i

for.body.i.i61:                                   ; preds = %for.cond.i.i58
  %cnp1.i.i59 = getelementptr inbounds %struct.np_info, ptr %p.0.i.i57, i32 0, i32 1
  %50 = ptrtoint ptr %cnp1.i.i59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cnp1.i.i59, align 4
  %cmp.i.i60 = icmp eq ptr %51, %call7.i.i
  br i1 %cmp.i.i60, label %cxgbit_np_hash_find.exit.i63, label %for.body.i.i61.for.cond.i.i58_crit_edge

for.body.i.i61.for.cond.i.i58_crit_edge:          ; preds = %for.body.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i58

cxgbit_np_hash_find.exit.i63:                     ; preds = %for.body.i.i61
  %stid2.i.i62 = getelementptr inbounds %struct.np_info, ptr %p.0.i.i57, i32 0, i32 2
  %52 = ptrtoint ptr %stid2.i.i62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stid2.i.i62, align 4
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i.i54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i = icmp sgt i32 %53, -1
  br i1 %cmp.i, label %cxgbit_np_hash_find.exit.i63.cxgbit_setup_cdev_np.exit_crit_edge, label %cxgbit_np_hash_find.exit.i63.if.end3.i_crit_edge

cxgbit_np_hash_find.exit.i63.if.end3.i_crit_edge: ; preds = %cxgbit_np_hash_find.exit.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

cxgbit_np_hash_find.exit.i63.cxgbit_setup_cdev_np.exit_crit_edge: ; preds = %cxgbit_np_hash_find.exit.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_setup_cdev_np.exit

if.end3.i:                                        ; preds = %cxgbit_np_hash_find.exit.i63.if.end3.i_crit_edge, %cxgbit_np_hash_find.exit.thread.i
  %call4.i = tail call fastcc i32 @__cxgbit_setup_cdev_np(ptr noundef nonnull %cdev.0.i.i, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.cxgbit_setup_cdev_np.exit_crit_edge

if.end3.i.cxgbit_setup_cdev_np.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_setup_cdev_np.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cdev.0.i.i, ptr %call7.i.i, align 8
  br label %cxgbit_setup_cdev_np.exit

cxgbit_setup_cdev_np.exit:                        ; preds = %if.end7.i, %if.end3.i.cxgbit_setup_cdev_np.exit_crit_edge, %cxgbit_np_hash_find.exit.i63.cxgbit_setup_cdev_np.exit_crit_edge, %cxgbit_find_np_cdev.exit.i.cxgbit_setup_cdev_np.exit_crit_edge
  %ret.0.i = phi i32 [ -1, %cxgbit_np_hash_find.exit.i63.cxgbit_setup_cdev_np.exit_crit_edge ], [ -1, %if.end3.i.cxgbit_setup_cdev_np.exit_crit_edge ], [ 0, %if.end7.i ], [ -1, %cxgbit_find_np_cdev.exit.i.cxgbit_setup_cdev_np.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  br label %if.end20

if.end20:                                         ; preds = %cxgbit_setup_cdev_np.exit, %for.end27.i
  %ret.0 = phi i32 [ %ret.0.i, %cxgbit_setup_cdev_np.exit ], [ %cond.i, %for.end27.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.if.then22_crit_edge

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.end20.thread
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i64, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i.i64:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %56 = ptrtoint ptr %np_context to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %np_context, align 64
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then.i.i64, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i.i ], [ -22, %if.then.i.i64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_accept_np(ptr noundef %np, ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %0 = ptrtoint ptr %np_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np_context, align 64
  %accept_comp = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 3
  %call32 = tail call i32 @wait_for_completion_interruptible(ptr noundef %accept_comp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not33 = icmp eq i32 %call32, 0
  br i1 %tobool.not33, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %np_thread_lock = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 9
  %np_thread_state = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 3
  %np_accept_lock = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 5
  %np_accept_list = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.then7.if.end_crit_edge, %if.end.lr.ph
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #10
  %2 = ptrtoint ptr %np_thread_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %np_thread_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #10
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %np_accept_lock) #10
  %4 = ptrtoint ptr %np_accept_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %np_accept_list, align 4
  %cmp.i.not = icmp eq ptr %5, %np_accept_list
  br i1 %cmp.i.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_accept_lock) #10
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %accept_comp) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7.if.end_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end9:                                          ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %5, i32 -652
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_del_init.exit_crit_edge

if.end9.list_del_init.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end9.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_accept_lock) #10
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %14 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %context, align 4
  %conn12 = getelementptr i8, ptr %5, i32 -320
  %15 = ptrtoint ptr %conn12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %conn, ptr %conn12, align 4
  %np_sockaddr.i = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %16 = ptrtoint ptr %np_sockaddr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %np_sockaddr.i, align 4
  %conv.i30 = zext i16 %17 to i32
  %login_family.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 11
  %18 = ptrtoint ptr %login_family.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i30, ptr %login_family.i, align 4
  %login_sockaddr.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %remote_addr.i = getelementptr i8, ptr %5, i32 -520
  %19 = call ptr @memcpy(ptr %login_sockaddr.i, ptr %remote_addr.i, i32 128)
  %local_sockaddr.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %local_addr.i = getelementptr i8, ptr %5, i32 -648
  %20 = call ptr @memcpy(ptr %local_sockaddr.i, ptr %local_addr.i, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_free_np(ptr nocapture noundef %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %0 = ptrtoint ptr %np_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np_context, align 64
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %state, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %4, null
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  br i1 %tobool.not, label %entry.for.cond.i34_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.for.cond.i34_crit_edge:                     ; preds = %entry
  br label %for.cond.i34

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %cdev.0.in.i = phi ptr [ %cdev.0.i, %for.body.i.for.cond.i_crit_edge ], [ @cdev_list_head, %entry.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %cdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %cdev.0.i = load ptr, ptr %cdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cdev.0.i, @cdev_list_head
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp2.i = icmp eq ptr %cdev.0.i, %7
  br i1 %cmp2.i, label %if.end8.critedge.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end8.critedge.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @__cxgbit_free_cdev_np(ptr noundef %cdev.0.i, ptr noundef %1) #10
  br label %if.end

for.cond.i34:                                     ; preds = %for.body.i36.for.cond.i34_crit_edge, %entry.for.cond.i34_crit_edge
  %cdev.0.in.i31 = phi ptr [ %cdev.0.i32, %for.body.i36.for.cond.i34_crit_edge ], [ @cdev_list_head, %entry.for.cond.i34_crit_edge ]
  %8 = ptrtoint ptr %cdev.0.in.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %cdev.0.i32 = load ptr, ptr %cdev.0.in.i31, align 4
  %cmp.not.i33 = icmp eq ptr %cdev.0.i32, @cdev_list_head
  br i1 %cmp.not.i33, label %for.cond.i34.if.end_crit_edge, label %for.body.i36

for.cond.i34.if.end_crit_edge:                    ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i36:                                     ; preds = %for.cond.i34
  %call.i35 = tail call fastcc i32 @__cxgbit_free_cdev_np(ptr noundef %cdev.0.i32, ptr noundef %1) #10
  %cmp1.i = icmp eq i32 %call.i35, -110
  br i1 %cmp1.i, label %for.body.i36.if.end_crit_edge, label %for.body.i36.for.cond.i34_crit_edge

for.body.i36.for.cond.i34_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i34

for.body.i36.if.end_crit_edge:                    ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body.i36.if.end_crit_edge, %for.cond.i34.if.end_crit_edge, %if.end8.critedge.i, %for.cond.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  %np_accept_lock = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %np_accept_lock) #10
  %np_accept_list = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %np_accept_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np_accept_list, align 4
  %cmp.not38 = icmp eq ptr %10, %np_accept_list
  br i1 %cmp.not38, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in39 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %csk.0 = getelementptr i8, ptr %.pn.in39, i32 -652
  %11 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in39, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.in39, ptr %.pn.in39, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in39, ptr %prev.i3.i, align 4
  tail call fastcc void @__cxgbit_free_conn(ptr noundef %csk.0)
  %cmp.not = icmp eq ptr %.pn, %np_accept_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_accept_lock) #10
  %20 = ptrtoint ptr %np_context to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %np_context, align 64
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_cnp.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cxgbit_put_cnp.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef %1) #10
  br label %cxgbit_put_cnp.exit

cxgbit_put_cnp.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cxgbit_free_conn(ptr noundef %csk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cxgbit_free_conn.__UNIQUE_ID_ddebug734, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cxgbit_free_conn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cxgbit_free_conn.__UNIQUE_ID_ddebug734, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state5 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %4 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state5, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %5, label %do.end21 [
    i32 3, label %sw.bb
    i32 5, label %sw.bb15
    i32 7, label %sw.epilog
  ]

sw.bb:                                            ; preds = %do.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %conn_state = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %conn_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %conn_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp = icmp eq i8 %8, 6
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %state5, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then8.cxgbit_send_halfclose.exit_crit_edge, label %if.end.i

if.then8.cxgbit_send_halfclose.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_send_halfclose.exit

if.end.i:                                         ; preds = %if.then8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i.i, label %cxgb_mk_close_con_req.exit.i, label %do.body3.i.i.i.i, !prof !282

do.body3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_close_con_req.exit.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %txq_idx.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %12 = ptrtoint ptr %txq_idx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %txq_idx.i, align 4
  %tid.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %14 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 32
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 32
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %20 = getelementptr inbounds i8, ptr %17, i32 20
  %21 = call ptr @memset(ptr %20, i32 0, i32 12)
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 83886088, ptr %17, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i, 2
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %wr_mid.i.i, align 4
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %wr_lo.i.i, align 8
  %or3.i.i = or i32 %15, 134217728
  %ot.i.i = getelementptr inbounds %struct.cpl_close_con_req, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %ot.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or3.i.i, ptr %ot.i.i, align 8
  %shl.i.i.i = shl i16 %13, 1
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %shl.i.i.i, ptr %queue_mapping1.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cb.i.i.i, align 8
  %arp_err_handler.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %arp_err_handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arp_err_handler.i.i.i, align 4
  store i8 2, ptr %cb.i.i.i, align 8
  %txq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %txq.i, ptr %call.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call.i.i, ptr %30, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i12.i = add i32 %35, 1
  store volatile i32 %add.i.i.i12.i, ptr %qlen.i.i.i.i, align 4
  tail call void @cxgbit_push_tx_frames(ptr noundef %csk) #10
  br label %cxgbit_send_halfclose.exit

cxgbit_send_halfclose.exit:                       ; preds = %cxgb_mk_close_con_req.exit.i, %if.then8.cxgbit_send_halfclose.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %36 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %state5, align 4
  tail call fastcc void @cxgbit_send_abort_req(ptr noundef %csk)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end29

sw.bb15:                                          ; preds = %do.end
  %37 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %state5, align 4
  %call.i.i47 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i48 = icmp eq ptr %call.i.i47, null
  br i1 %tobool.not.i48, label %sw.bb15.cxgbit_send_halfclose.exit75_crit_edge, label %if.end.i51

sw.bb15.cxgbit_send_halfclose.exit75_crit_edge:   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_send_halfclose.exit75

if.end.i51:                                       ; preds = %sw.bb15
  %data_len.i.i.i.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i.i.i.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i.i.i50 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.i.i.i50, label %cxgb_mk_close_con_req.exit.i74, label %do.body3.i.i.i.i52, !prof !282

do.body3.i.i.i.i52:                               ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_close_con_req.exit.i74:                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #12
  %txq_idx.i53 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %40 = ptrtoint ptr %txq_idx.i53 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %txq_idx.i53, align 4
  %tid.i54 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %42 = ptrtoint ptr %tid.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tid.i54, align 4
  %tail.i.i.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i.i55, align 8
  %add.ptr.i.i.i.i56 = getelementptr i8, ptr %45, i32 32
  store ptr %add.ptr.i.i.i.i56, ptr %tail.i.i.i.i.i55, align 8
  %len9.i.i.i.i57 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 6
  %46 = ptrtoint ptr %len9.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len9.i.i.i.i57, align 4
  %add.i.i.i.i58 = add i32 %47, 32
  store i32 %add.i.i.i.i58, ptr %len9.i.i.i.i57, align 4
  %48 = getelementptr inbounds i8, ptr %45, i32 20
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 83886088, ptr %45, align 8
  %shl.i.i59 = shl i32 %43, 8
  %or.i.i60 = or i32 %shl.i.i59, 2
  %wr_mid.i.i61 = getelementptr inbounds %struct.work_request_hdr, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %wr_mid.i.i61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i60, ptr %wr_mid.i.i61, align 4
  %wr_lo.i.i62 = getelementptr inbounds %struct.work_request_hdr, ptr %45, i32 0, i32 2
  %52 = ptrtoint ptr %wr_lo.i.i62 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %wr_lo.i.i62, align 8
  %or3.i.i63 = or i32 %43, 134217728
  %ot.i.i64 = getelementptr inbounds %struct.cpl_close_con_req, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %ot.i.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or3.i.i63, ptr %ot.i.i64, align 8
  %shl.i.i.i65 = shl i16 %41, 1
  %queue_mapping1.i.i.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 10
  %54 = ptrtoint ptr %queue_mapping1.i.i.i.i66 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %shl.i.i.i65, ptr %queue_mapping1.i.i.i.i66, align 8
  %cb.i.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 3
  %55 = ptrtoint ptr %cb.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cb.i.i.i67, align 8
  %arp_err_handler.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %arp_err_handler.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arp_err_handler.i.i.i68, align 4
  store i8 2, ptr %cb.i.i.i67, align 8
  %txq.i69 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %prev.i.i.i70 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i70, align 4
  %59 = ptrtoint ptr %call.i.i47 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %txq.i69, ptr %call.i.i47, align 8
  %prev10.i.i.i.i71 = getelementptr inbounds %struct.anon.51, ptr %call.i.i47, i32 0, i32 1
  %60 = ptrtoint ptr %prev10.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %prev10.i.i.i.i71, align 4
  store volatile ptr %call.i.i47, ptr %prev.i.i.i70, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call.i.i47, ptr %58, align 4
  %qlen.i.i.i.i72 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %qlen.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i.i.i.i72, align 4
  %add.i.i.i12.i73 = add i32 %63, 1
  store volatile i32 %add.i.i.i12.i73, ptr %qlen.i.i.i.i72, align 4
  tail call void @cxgbit_push_tx_frames(ptr noundef %csk) #10
  br label %cxgbit_send_halfclose.exit75

cxgbit_send_halfclose.exit75:                     ; preds = %cxgb_mk_close_con_req.exit.i74, %sw.bb15.cxgbit_send_halfclose.exit75_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end29

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, ptr noundef %csk, i32 noundef %5) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end29

sw.epilog:                                        ; preds = %do.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end29_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.if.end29_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end29

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %if.end29

if.end29:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end29_crit_edge, %do.end21, %cxgbit_send_halfclose.exit75, %if.else, %cxgbit_send_halfclose.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_abort_conn(ptr noundef %csk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_csk.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_csk.exit

cxgbit_get_csk.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %ret.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret.i, align 4
  %3 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wr_wait, align 4
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %lock_owner = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 19
  %4 = ptrtoint ptr %lock_owner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lock_owner, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cxgbit_get_csk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %backlog_fn = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %backlog_fn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__cxgbit_abort_conn, ptr %backlog_fn, align 4
  %backlogq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %backlogq, ptr %call.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %8, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %cxgbit_get_csk.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__cxgbit_abort_conn(ptr noundef %csk, ptr noundef %call.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %14 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csk, align 4
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %16 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tid, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.out.i.thread_crit_edge, label %if.end.i

if.end.out.i.thread_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 60000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %25, %if.end.i.i.i ], [ %23, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cxgbit_abort_conn, ptr noundef %retval.0.i.i.i, i32 noundef %17) #14
  br label %out.i.thread

out.i.thread:                                     ; preds = %pci_name.exit.i, %if.end.out.i.thread_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.end.out.i.thread_crit_edge ]
  %26 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %ret.i, align 4
  br label %do.end14.i

out.i:                                            ; preds = %if.end.i
  %27 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool10.not.i, label %out.i.cxgbit_wait_for_reply.exit_crit_edge, label %out.i.do.end14.i_crit_edge

out.i.do.end14.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

out.i.cxgbit_wait_for_reply.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_wait_for_reply.exit

do.end14.i:                                       ; preds = %out.i.do.end14.i_crit_edge, %out.i.thread
  %28 = phi i32 [ %.sink.i, %out.i.thread ], [ %.pr, %out.i.do.end14.i_crit_edge ]
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %15, i32 0, i32 1
  %29 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.pci_name.exit36.i_crit_edge

do.end14.i.pci_name.exit36.i_crit_edge:           ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit36.i

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %33 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i33.i, align 4
  br label %pci_name.exit36.i

pci_name.exit36.i:                                ; preds = %if.end.i.i34.i, %do.end14.i.pci_name.exit36.i_crit_edge
  %retval.0.i.i35.i = phi ptr [ %34, %if.end.i.i34.i ], [ %32, %do.end14.i.pci_name.exit36.i_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %28, i32 noundef %17) #14
  br label %cxgbit_wait_for_reply.exit

cxgbit_wait_for_reply.exit:                       ; preds = %pci_name.exit36.i, %out.i.cxgbit_wait_for_reply.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__cxgbit_abort_conn(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__kfree_skb(ptr noundef %skb) #10
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %no_abort

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state, align 4
  tail call fastcc void @cxgbit_send_abort_req(ptr noundef %csk)
  br label %return

no_abort:                                         ; preds = %entry
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  tail call void @complete(ptr noundef %wr_wait) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %no_abort
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.return_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %return

if.then.i.i:                                      ; preds = %no_abort
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %return

return:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.return_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_free_conn(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call fastcc void @__cxgbit_free_conn(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_cxgbit_free_csk(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -760
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cxgbit_free_csk.__UNIQUE_ID_ddebug736, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_cxgbit_free_csk, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %kref, i32 -440
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_cxgbit_free_csk.__UNIQUE_ID_ddebug736, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %local_addr = getelementptr i8, ptr %kref, i32 -756
  %2 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  br i1 %cmp, label %if.then6, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %sin6_addr = getelementptr i8, ptr %kref, i32 -748
  tail call void @cxgb4_clip_release(ptr noundef %9, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tids, align 4
  %tid = getelementptr i8, ptr %kref, i32 24
  %14 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid, align 4
  %16 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %local_addr, align 4
  tail call void @cxgb4_remove_tid(ptr noundef %13, i32 noundef 0, i32 noundef %15, i16 noundef zeroext %17) #10
  %dst = getelementptr i8, ptr %kref, i32 -420
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  tail call void @dst_release(ptr noundef %19) #10
  %l2t = getelementptr i8, ptr %kref, i32 -424
  %20 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %l2t, align 4
  tail call void @cxgb4_l2t_release(ptr noundef %21) #10
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.cxgbit_device, ptr %23, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %list = getelementptr i8, ptr %kref, i32 -416
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %kref, i32 -412
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %kref, i32 -412
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %txq.i = getelementptr i8, ptr %kref, i32 -352
  %32 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %txq.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %33, %txq.i
  %tobool.not.i13.i.i = icmp eq ptr %33, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %list_del.exit.__skb_queue_purge.exit.i_crit_edge, label %while.body.lr.ph.i.i

list_del.exit.__skb_queue_purge.exit.i_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

while.body.lr.ph.i.i:                             ; preds = %list_del.exit
  %qlen.i.i.i.i = getelementptr i8, ptr %kref, i32 -344
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %34 = phi ptr [ %33, %while.body.lr.ph.i.i ], [ %44, %while.body.i.i.while.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %34, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %prev17.i.i.i.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %40, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #10
  %43 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txq.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %44, %txq.i
  %tobool.not.i1.i.i = icmp eq ptr %44, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

__skb_queue_purge.exit.i:                         ; preds = %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, %list_del.exit.__skb_queue_purge.exit.i_crit_edge
  %rxq.i = getelementptr i8, ptr %kref, i32 -408
  %45 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxq.i, align 4
  %cmp.i.i2.i7.i = icmp eq ptr %46, %rxq.i
  %tobool.not.i13.i8.i = icmp eq ptr %46, null
  %tobool.not.i4.i9.i = or i1 %cmp.i.i2.i7.i, %tobool.not.i13.i8.i
  br i1 %tobool.not.i4.i9.i, label %__skb_queue_purge.exit.i.__skb_queue_purge.exit19.i_crit_edge, label %while.body.lr.ph.i11.i

__skb_queue_purge.exit.i.__skb_queue_purge.exit19.i_crit_edge: ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit19.i

while.body.lr.ph.i11.i:                           ; preds = %__skb_queue_purge.exit.i
  %qlen.i.i.i10.i = getelementptr i8, ptr %kref, i32 -400
  br label %while.body.i18.i

while.body.i18.i:                                 ; preds = %while.body.i18.i.while.body.i18.i_crit_edge, %while.body.lr.ph.i11.i
  %47 = phi ptr [ %46, %while.body.lr.ph.i11.i ], [ %57, %while.body.i18.i.while.body.i18.i_crit_edge ]
  %48 = ptrtoint ptr %qlen.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i.i.i10.i, align 4
  %sub.i.i.i12.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i12.i, ptr %qlen.i.i.i10.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 8
  %prev9.i.i.i13.i = getelementptr inbounds %struct.anon.51, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev9.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev9.i.i.i13.i, align 4
  store ptr null, ptr %prev9.i.i.i13.i, align 4
  store ptr null, ptr %47, align 8
  %prev17.i.i.i14.i = getelementptr inbounds %struct.anon.51, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %prev17.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %53, ptr %prev17.i.i.i14.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %51, ptr %53, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %47, i32 noundef 0) #10
  %56 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rxq.i, align 4
  %cmp.i.i.i15.i = icmp eq ptr %57, %rxq.i
  %tobool.not.i1.i16.i = icmp eq ptr %57, null
  %tobool.not.i.i17.i = or i1 %cmp.i.i.i15.i, %tobool.not.i1.i16.i
  br i1 %tobool.not.i.i17.i, label %while.body.i18.i.__skb_queue_purge.exit19.i_crit_edge, label %while.body.i18.i.while.body.i18.i_crit_edge

while.body.i18.i.while.body.i18.i_crit_edge:      ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i18.i

while.body.i18.i.__skb_queue_purge.exit19.i_crit_edge: ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit19.i

__skb_queue_purge.exit19.i:                       ; preds = %while.body.i18.i.__skb_queue_purge.exit19.i_crit_edge, %__skb_queue_purge.exit.i.__skb_queue_purge.exit19.i_crit_edge
  %backlogq.i = getelementptr i8, ptr %kref, i32 -240
  %58 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %backlogq.i, align 4
  %cmp.i.i2.i20.i = icmp eq ptr %59, %backlogq.i
  %tobool.not.i13.i21.i = icmp eq ptr %59, null
  %tobool.not.i4.i22.i = or i1 %cmp.i.i2.i20.i, %tobool.not.i13.i21.i
  br i1 %tobool.not.i4.i22.i, label %__skb_queue_purge.exit19.i.__skb_queue_purge.exit32.i_crit_edge, label %while.body.lr.ph.i24.i

__skb_queue_purge.exit19.i.__skb_queue_purge.exit32.i_crit_edge: ; preds = %__skb_queue_purge.exit19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit32.i

while.body.lr.ph.i24.i:                           ; preds = %__skb_queue_purge.exit19.i
  %qlen.i.i.i23.i = getelementptr i8, ptr %kref, i32 -232
  br label %while.body.i31.i

while.body.i31.i:                                 ; preds = %while.body.i31.i.while.body.i31.i_crit_edge, %while.body.lr.ph.i24.i
  %60 = phi ptr [ %59, %while.body.lr.ph.i24.i ], [ %70, %while.body.i31.i.while.body.i31.i_crit_edge ]
  %61 = ptrtoint ptr %qlen.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.i.i23.i, align 4
  %sub.i.i.i25.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i25.i, ptr %qlen.i.i.i23.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 8
  %prev9.i.i.i26.i = getelementptr inbounds %struct.anon.51, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev9.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev9.i.i.i26.i, align 4
  store ptr null, ptr %prev9.i.i.i26.i, align 4
  store ptr null, ptr %60, align 8
  %prev17.i.i.i27.i = getelementptr inbounds %struct.anon.51, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %prev17.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %prev17.i.i.i27.i, align 4
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %64, ptr %66, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %60, i32 noundef 0) #10
  %69 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %backlogq.i, align 4
  %cmp.i.i.i28.i = icmp eq ptr %70, %backlogq.i
  %tobool.not.i1.i29.i = icmp eq ptr %70, null
  %tobool.not.i.i30.i = or i1 %cmp.i.i.i28.i, %tobool.not.i1.i29.i
  br i1 %tobool.not.i.i30.i, label %while.body.i31.i.__skb_queue_purge.exit32.i_crit_edge, label %while.body.i31.i.while.body.i31.i_crit_edge

while.body.i31.i.while.body.i31.i_crit_edge:      ; preds = %while.body.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i31.i

while.body.i31.i.__skb_queue_purge.exit32.i_crit_edge: ; preds = %while.body.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit32.i

__skb_queue_purge.exit32.i:                       ; preds = %while.body.i31.i.__skb_queue_purge.exit32.i_crit_edge, %__skb_queue_purge.exit19.i.__skb_queue_purge.exit32.i_crit_edge
  %ppodq.i = getelementptr i8, ptr %kref, i32 -296
  %71 = ptrtoint ptr %ppodq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ppodq.i, align 4
  %cmp.i.i2.i33.i = icmp eq ptr %72, %ppodq.i
  %tobool.not.i13.i34.i = icmp eq ptr %72, null
  %tobool.not.i4.i35.i = or i1 %cmp.i.i2.i33.i, %tobool.not.i13.i34.i
  br i1 %tobool.not.i4.i35.i, label %__skb_queue_purge.exit32.i.__skb_queue_purge.exit45.i_crit_edge, label %while.body.lr.ph.i37.i

__skb_queue_purge.exit32.i.__skb_queue_purge.exit45.i_crit_edge: ; preds = %__skb_queue_purge.exit32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit45.i

while.body.lr.ph.i37.i:                           ; preds = %__skb_queue_purge.exit32.i
  %qlen.i.i.i36.i = getelementptr i8, ptr %kref, i32 -288
  br label %while.body.i44.i

while.body.i44.i:                                 ; preds = %while.body.i44.i.while.body.i44.i_crit_edge, %while.body.lr.ph.i37.i
  %73 = phi ptr [ %72, %while.body.lr.ph.i37.i ], [ %83, %while.body.i44.i.while.body.i44.i_crit_edge ]
  %74 = ptrtoint ptr %qlen.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i.i.i36.i, align 4
  %sub.i.i.i38.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i38.i, ptr %qlen.i.i.i36.i, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 8
  %prev9.i.i.i39.i = getelementptr inbounds %struct.anon.51, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev9.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev9.i.i.i39.i, align 4
  store ptr null, ptr %prev9.i.i.i39.i, align 4
  store ptr null, ptr %73, align 8
  %prev17.i.i.i40.i = getelementptr inbounds %struct.anon.51, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %prev17.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %79, ptr %prev17.i.i.i40.i, align 4
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %77, ptr %79, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %73, i32 noundef 0) #10
  %82 = ptrtoint ptr %ppodq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ppodq.i, align 4
  %cmp.i.i.i41.i = icmp eq ptr %83, %ppodq.i
  %tobool.not.i1.i42.i = icmp eq ptr %83, null
  %tobool.not.i.i43.i = or i1 %cmp.i.i.i41.i, %tobool.not.i1.i42.i
  br i1 %tobool.not.i.i43.i, label %while.body.i44.i.__skb_queue_purge.exit45.i_crit_edge, label %while.body.i44.i.while.body.i44.i_crit_edge

while.body.i44.i.while.body.i44.i_crit_edge:      ; preds = %while.body.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i44.i

while.body.i44.i.__skb_queue_purge.exit45.i_crit_edge: ; preds = %while.body.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit45.i

__skb_queue_purge.exit45.i:                       ; preds = %while.body.i44.i.__skb_queue_purge.exit45.i_crit_edge, %__skb_queue_purge.exit32.i.__skb_queue_purge.exit45.i_crit_edge
  %skbq.i = getelementptr i8, ptr %kref, i32 -184
  %84 = ptrtoint ptr %skbq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skbq.i, align 4
  %cmp.i.i2.i46.i = icmp eq ptr %85, %skbq.i
  %tobool.not.i13.i47.i = icmp eq ptr %85, null
  %tobool.not.i4.i48.i = or i1 %cmp.i.i2.i46.i, %tobool.not.i13.i47.i
  br i1 %tobool.not.i4.i48.i, label %__skb_queue_purge.exit45.i.__skb_queue_purge.exit58.i_crit_edge, label %while.body.lr.ph.i50.i

__skb_queue_purge.exit45.i.__skb_queue_purge.exit58.i_crit_edge: ; preds = %__skb_queue_purge.exit45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit58.i

while.body.lr.ph.i50.i:                           ; preds = %__skb_queue_purge.exit45.i
  %qlen.i.i.i49.i = getelementptr i8, ptr %kref, i32 -176
  br label %while.body.i57.i

while.body.i57.i:                                 ; preds = %while.body.i57.i.while.body.i57.i_crit_edge, %while.body.lr.ph.i50.i
  %86 = phi ptr [ %85, %while.body.lr.ph.i50.i ], [ %96, %while.body.i57.i.while.body.i57.i_crit_edge ]
  %87 = ptrtoint ptr %qlen.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qlen.i.i.i49.i, align 4
  %sub.i.i.i51.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i51.i, ptr %qlen.i.i.i49.i, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %86, align 8
  %prev9.i.i.i52.i = getelementptr inbounds %struct.anon.51, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %prev9.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev9.i.i.i52.i, align 4
  store ptr null, ptr %prev9.i.i.i52.i, align 4
  store ptr null, ptr %86, align 8
  %prev17.i.i.i53.i = getelementptr inbounds %struct.anon.51, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %prev17.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %92, ptr %prev17.i.i.i53.i, align 4
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %90, ptr %92, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %86, i32 noundef 0) #10
  %95 = ptrtoint ptr %skbq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %skbq.i, align 4
  %cmp.i.i.i54.i = icmp eq ptr %96, %skbq.i
  %tobool.not.i1.i55.i = icmp eq ptr %96, null
  %tobool.not.i.i56.i = or i1 %cmp.i.i.i54.i, %tobool.not.i1.i55.i
  br i1 %tobool.not.i.i56.i, label %while.body.i57.i.__skb_queue_purge.exit58.i_crit_edge, label %while.body.i57.i.while.body.i57.i_crit_edge

while.body.i57.i.while.body.i57.i_crit_edge:      ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i57.i

while.body.i57.i.__skb_queue_purge.exit58.i_crit_edge: ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit58.i

__skb_queue_purge.exit58.i:                       ; preds = %while.body.i57.i.__skb_queue_purge.exit58.i_crit_edge, %__skb_queue_purge.exit45.i.__skb_queue_purge.exit58.i_crit_edge
  %wr_pending_head.i.i = getelementptr i8, ptr %kref, i32 -128
  %97 = ptrtoint ptr %wr_pending_head.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr_pending_head.i.i, align 4
  %tobool.not.i59.i = icmp eq ptr %98, null
  br i1 %tobool.not.i59.i, label %__skb_queue_purge.exit58.i.cxgbit_free_skb.exit_crit_edge, label %__skb_queue_purge.exit58.i.while.body.i_crit_edge, !prof !288

__skb_queue_purge.exit58.i.while.body.i_crit_edge: ; preds = %__skb_queue_purge.exit58.i
  br label %while.body.i

__skb_queue_purge.exit58.i.cxgbit_free_skb.exit_crit_edge: ; preds = %__skb_queue_purge.exit58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_free_skb.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %__skb_queue_purge.exit58.i.while.body.i_crit_edge
  %99 = phi ptr [ %104, %while.body.i.while.body.i_crit_edge ], [ %98, %__skb_queue_purge.exit58.i.while.body.i_crit_edge ]
  %wr_next.i.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 8
  %100 = ptrtoint ptr %wr_next.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wr_next.i.i, align 8
  %102 = ptrtoint ptr %wr_pending_head.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %wr_pending_head.i.i, align 4
  store ptr null, ptr %wr_next.i.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %99, i32 noundef 0) #10
  %103 = ptrtoint ptr %wr_pending_head.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wr_pending_head.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i, label %while.body.i.cxgbit_free_skb.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !prof !288

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cxgbit_free_skb.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_free_skb.exit

cxgbit_free_skb.exit:                             ; preds = %while.body.i.cxgbit_free_skb.exit_crit_edge, %__skb_queue_purge.exit58.i.cxgbit_free_skb.exit_crit_edge
  %lro_hskb.i = getelementptr i8, ptr %kref, i32 -112
  %105 = ptrtoint ptr %lro_hskb.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lro_hskb.i, align 4
  tail call void @__kfree_skb(ptr noundef %106) #10
  %cnp = getelementptr i8, ptr %kref, i32 -432
  %107 = ptrtoint ptr %cnp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cnp, align 4
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %108, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %cxgbit_free_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_cnp.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cxgbit_put_cnp.exit

if.then.i.i:                                      ; preds = %cxgbit_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef %108) #10
  br label %cxgbit_put_cnp.exit

cxgbit_put_cnp.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgbit_put_cnp.exit_crit_edge
  %kref.i38 = getelementptr inbounds %struct.cxgbit_device, ptr %23, i32 0, i32 7
  %call.i.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i38, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i38, i32 1, i32 3, i32 1) #10
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i38, ptr %kref.i38, i32 1, ptr elementtype(i32) %kref.i38) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i.i41, label %if.then.i.i45, label %if.end5.i.i.i.i.i43

if.end5.i.i.i.i.i43:                              ; preds = %cxgbit_put_cnp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i43.cxgbit_put_cdev.exit_crit_edge, label %if.then10.i.i.i.i.i44, !prof !282

if.end5.i.i.i.i.i43.cxgbit_put_cdev.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_cdev.exit

if.then10.i.i.i.i.i44:                            ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i38, i32 noundef 3) #10
  br label %cxgbit_put_cdev.exit

if.then.i.i45:                                    ; preds = %cxgbit_put_cnp.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_cdev(ptr noundef %kref.i38) #10, !callees !286
  br label %cxgbit_put_cdev.exit

cxgbit_put_cdev.exit:                             ; preds = %if.then.i.i45, %if.then10.i.i.i.i.i44, %if.end5.i.i.i.i.i43.cxgbit_put_cdev.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clip_release(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_remove_tid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_l2t_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_ofld_send(ptr noundef %cdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @cxgb4_ofld_send(ptr noundef %5, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ %6, %if.end4 ], [ -5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_l2t_send(ptr noundef %cdev, ptr noundef %skb, ptr noundef %l2e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @cxgb4_l2t_send(ptr noundef %5, ptr noundef %skb, ptr noundef %l2e) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ %6, %if.end4 ], [ -5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_rx_data_ack(ptr noundef %csk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %cxgb_mk_rx_data_ack.exit, label %do.body3.i.i.i, !prof !282

do.body3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_rx_data_ack.exit:                         ; preds = %if.end
  %ctrlq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %2 = ptrtoint ptr %ctrlq_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ctrlq_idx, align 2
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 4
  %rx_credits = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 33
  %6 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_credits, align 4
  %or = or i32 %7, -536870912
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 32
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %11, 32
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %12 = getelementptr inbounds i8, ptr %9, i32 24
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 83886088, ptr %9, align 8
  %shl.i = shl i32 %5, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %wr_lo.i, align 8
  %or3.i = or i32 %5, 218103808
  %ot.i = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or3.i, ptr %ot.i, align 8
  %credit_dack4.i = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %credit_dack4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %credit_dack4.i, align 4
  %shl.i.i = shl i16 %3, 1
  %or.i.i = or i16 %shl.i.i, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %or.i.i, ptr %queue_mapping1.i.i.i, align 8
  store i32 0, ptr %rx_credits, align 4
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %lock_owner = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 19
  %20 = ptrtoint ptr %lock_owner to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lock_owner, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not = icmp eq i8 %21, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %cxgb_mk_rx_data_ack.exit
  call void @__sanitizer_cov_trace_pc() #12
  %backlog_fn = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %backlog_fn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cxgbit_send_rx_credits, ptr %backlog_fn, align 4
  %backlogq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %backlogq, ptr %call.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call.i, ptr %24, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i25 = add i32 %29, 1
  store volatile i32 %add.i.i.i25, ptr %qlen.i.i.i, align 4
  br label %cleanup.sink.split

if.end5:                                          ; preds = %cxgb_mk_rx_data_ack.exit
  %state.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef nonnull %call.i) #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end5
  %32 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csk, align 4
  %flags.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.end.i
  %ports.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %33, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ports.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call2.i.i = tail call i32 @cxgb4_ofld_send(ptr noundef %39, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.cleanup.sink.split_crit_edge

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3.i.i, %if.end.i.i.cleanup.sink.split_crit_edge, %if.then.i.i, %if.then.i, %if.then3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_send_rx_credits(ptr nocapture noundef readonly %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csk, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %return

if.end.i:                                         ; preds = %if.end
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2.i = tail call i32 @cxgb4_ofld_send(ptr noundef %9, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i.return_crit_edge, %if.then.i, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_send_tx_flowc_wr(ptr noundef %csk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %l2t = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %2 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l2t, align 4
  %vlan2 = getelementptr inbounds %struct.l2t_entry, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vlan2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan2, align 2
  %snd_wscale.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 46
  %6 = ptrtoint ptr %snd_wscale.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %snd_wscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %skbq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10
  %8 = ptrtoint ptr %skbq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skbq, align 4
  %cmp.i.i = icmp eq ptr %9, %skbq
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %9
  %tobool.not.i179 = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i179, label %entry.__skb_dequeue.exit_crit_edge, label %if.then.i

entry.__skb_dequeue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %12 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %spec.store.select.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %entry.__skb_dequeue.exit_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !282

do.body3.i.i:                                     ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

__skb_put_zero.exit:                              ; preds = %__skb_dequeue.exit
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 96
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %23, 96
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %24 = getelementptr inbounds i8, ptr %21, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %or = select i1 %tobool.not.i, i32 167772170, i32 167772171
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %21, align 4
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %27 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tid, align 4
  %shl6 = shl i32 %28, 8
  %or7 = or i32 %shl6, 6
  %flowid_len16 = getelementptr inbounds %struct.fw_flowc_wr, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or7, ptr %flowid_len16, align 4
  %mnemval = getelementptr inbounds %struct.fw_flowc_wr, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %mnemval to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mnemval, align 4
  %31 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csk, align 4
  %pf = getelementptr inbounds %struct.cxgbit_device, ptr %32, i32 0, i32 1, i32 30
  %33 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pf, align 4
  %shl10 = shl i32 %34, 8
  %val = getelementptr inbounds %struct.fw_flowc_wr, ptr %21, i32 1, i32 1
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl10, ptr %val, align 4
  %arrayidx14 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 2
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx14, align 4
  %tx_chan = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 30
  %37 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_chan, align 4
  %val18 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 2, i32 1
  %39 = ptrtoint ptr %val18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val18, align 4
  %arrayidx20 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 3
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %arrayidx20, align 4
  %41 = load i32, ptr %tx_chan, align 4
  %val25 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 3, i32 1
  %42 = ptrtoint ptr %val25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val25, align 4
  %arrayidx27 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 4
  %43 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %arrayidx27, align 4
  %rss_qid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %44 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rss_qid, align 2
  %conv = zext i16 %45 to i32
  %val31 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 4, i32 1
  %46 = ptrtoint ptr %val31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv, ptr %val31, align 4
  %arrayidx33 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 5
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %arrayidx33, align 4
  %snd_nxt = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 27
  %48 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_nxt, align 4
  %val37 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 5, i32 1
  %50 = ptrtoint ptr %val37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val37, align 4
  %arrayidx39 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 6
  %51 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 5, ptr %arrayidx39, align 4
  %rcv_nxt = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 28
  %52 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rcv_nxt, align 4
  %val43 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 6, i32 1
  %54 = ptrtoint ptr %val43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %val43, align 4
  %arrayidx45 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 7
  %55 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 6, ptr %arrayidx45, align 4
  %snd_win = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 34
  %56 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %snd_win, align 4
  %val49 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 7, i32 1
  %58 = ptrtoint ptr %val49 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val49, align 4
  %arrayidx51 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 8
  %59 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 7, ptr %arrayidx51, align 4
  %emss = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 37
  %60 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %emss, align 2
  %conv53 = zext i16 %61 to i32
  %val56 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 8, i32 1
  %62 = ptrtoint ptr %val56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv53, ptr %val56, align 4
  %arrayidx58 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 9
  %63 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %arrayidx58, align 4
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  %spec.select = select i1 %tobool.not, i32 16384, i32 65535
  %67 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 9, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.select, ptr %67, align 4
  %69 = ptrtoint ptr %snd_wscale.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %snd_wscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool67.not = icmp eq i8 %70, 0
  br i1 %tobool67.not, label %__skb_put_zero.exit.if.end78_crit_edge, label %if.then68

__skb_put_zero.exit.if.end78_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then68:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx70 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 10
  %71 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 14, ptr %arrayidx70, align 4
  %72 = ptrtoint ptr %snd_wscale.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %snd_wscale.i, align 4
  %conv73 = zext i8 %73 to i32
  %val77 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 10, i32 1
  %74 = ptrtoint ptr %val77 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv73, ptr %val77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then68, %__skb_put_zero.exit.if.end78_crit_edge
  %index.0 = phi i32 [ 10, %if.then68 ], [ 9, %__skb_put_zero.exit.if.end78_crit_edge ]
  %arrayidx81 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 0, i32 2, i32 %index.0
  %75 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 12, ptr %arrayidx81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %5)
  %cmp = icmp eq i16 %5, 4095
  br i1 %cmp, label %do.end, label %if.else92

do.end:                                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tid, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %77) #14
  br label %do.body99

if.else92:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %78 = lshr i16 %5, 13
  %79 = zext i16 %78 to i32
  br label %do.body99

do.body99:                                        ; preds = %if.else92, %do.end
  %.sink184 = phi i32 [ 0, %do.end ], [ %79, %if.else92 ]
  %80 = getelementptr %struct.fw_flowc_wr, ptr %21, i32 0, i32 2, i32 %index.0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink184, ptr %80, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_send_tx_flowc_wr.__UNIQUE_ID_ddebug752, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_send_tx_flowc_wr, %if.then105)) #10
          to label %do.end116 [label %if.then105], !srcloc !284

if.then105:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_chan, align 4
  %84 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rss_qid, align 2
  %conv108 = zext i16 %85 to i32
  %86 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %snd_nxt, align 4
  %88 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rcv_nxt, align 4
  %90 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %snd_win, align 4
  %92 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %emss, align 2
  %conv113 = zext i16 %93 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_send_tx_flowc_wr.__UNIQUE_ID_ddebug752, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %csk, i32 noundef %83, i32 noundef %conv108, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %conv113) #10
  br label %do.end116

do.end116:                                        ; preds = %if.then105, %do.body99
  %txq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %94 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %txq_idx, align 4
  %shl.i = shl i16 %95, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 10
  %96 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %97 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %csk, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i180 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i180, label %if.then.i181, label %if.end.i

if.then.i181:                                     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cxgbit_ofld_send.exit

if.end.i:                                         ; preds = %do.end116
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %98, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ports.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call2.i = tail call i32 @cxgb4_ofld_send(ptr noundef %104, ptr noundef %spec.store.select.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cxgbit_ofld_send.exit_crit_edge

if.end.i.cxgbit_ofld_send.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_ofld_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  br label %cxgbit_ofld_send.exit

cxgbit_ofld_send.exit:                            ; preds = %if.then3.i, %if.end.i.cxgbit_ofld_send.exit_crit_edge, %if.then.i181
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_setup_conn_digest(ptr noundef %csk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %submode = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 44
  %0 = ptrtoint ptr %submode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %submode, align 2
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !282

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 48
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %7, 48
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 44)
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 83886104, ptr %5, align 8
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %11 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tid, align 4
  %shl = shl i32 %12, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wr_lo, align 8
  %15 = load i32, ptr %tid, align 4
  %or10 = or i32 %15, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or10, ptr %ot, align 8
  %rss_qid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %17 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rss_qid, align 2
  %reply_ctrl = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %reply_ctrl to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %reply_ctrl, align 4
  %word_cookie = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %word_cookie to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %word_cookie, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 48, ptr %mask, align 8
  %or2061 = shl i8 %1, 4
  %22 = and i8 %or2061, 48
  %conv22 = zext i8 %22 to i64
  %val = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv22, ptr %val, align 8
  %ctrlq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %24 = ptrtoint ptr %ctrlq_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ctrlq_idx, align 2
  %shl.i = shl i16 %25, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %call24 = tail call fastcc i32 @cxgbit_send_tcb_skb(ptr noundef %csk, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %__skb_put_zero.exit.cleanup_crit_edge

__skb_put_zero.exit.cleanup_crit_edge:            ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %__skb_put_zero.exit
  %27 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csk, align 4
  %29 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tid, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %28, i32 0, i32 8
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end27.out.sink.split.i_crit_edge, label %if.end.i

if.end27.out.sink.split.i_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end.i:                                         ; preds = %if.end27
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %38, %if.end.i.i.i ], [ %36, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cxgbit_setup_conn_digest, ptr noundef %retval.0.i.i.i, i32 noundef %30) #14
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %pci_name.exit.i, %if.end27.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.end27.out.sink.split.i_crit_edge ]
  %ret7.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %ret7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %ret7.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end.i.out.i_crit_edge
  %ret9.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool10.not.i = icmp eq i32 %41, 0
  br i1 %tobool10.not.i, label %out.i.cxgbit_wait_for_reply.exit_crit_edge, label %do.end14.i

out.i.cxgbit_wait_for_reply.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_wait_for_reply.exit

do.end14.i:                                       ; preds = %out.i
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %28, i32 0, i32 1
  %42 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44, i32 3
  %44 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.pci_name.exit36.i_crit_edge

do.end14.i.pci_name.exit36.i_crit_edge:           ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit36.i

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %46 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i33.i, align 4
  br label %pci_name.exit36.i

pci_name.exit36.i:                                ; preds = %if.end.i.i34.i, %do.end14.i.pci_name.exit36.i_crit_edge
  %retval.0.i.i35.i = phi ptr [ %47, %if.end.i.i34.i ], [ %45, %do.end14.i.pci_name.exit36.i_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %41, i32 noundef %30) #14
  br label %cxgbit_wait_for_reply.exit

cxgbit_wait_for_reply.exit:                       ; preds = %pci_name.exit36.i, %out.i.cxgbit_wait_for_reply.exit_crit_edge
  %48 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool31.not = icmp ne i32 %49, 0
  %. = sext i1 %tobool31.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cxgbit_wait_for_reply.exit, %__skb_put_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -1, %__skb_put_zero.exit.cleanup_crit_edge ], [ %., %cxgbit_wait_for_reply.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_send_tcb_skb(ptr noundef %csk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !282

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %csk, i32 noundef %3, i32 noundef %5) #14
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %return

if.end:                                           ; preds = %entry
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_csk.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_csk.exit

cxgbit_get_csk.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_csk.exit_crit_edge
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %ret.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ret.i, align 4
  %9 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wr_wait, align 4
  %10 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csk, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cxgbit_get_csk.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cxgbit_ofld_send.exit

if.end.i:                                         ; preds = %cxgbit_get_csk.exit
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %11, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call2.i = tail call i32 @cxgb4_ofld_send(ptr noundef %17, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cxgbit_ofld_send.exit_crit_edge

if.end.i.cxgbit_ofld_send.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_ofld_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cxgbit_ofld_send.exit

cxgbit_ofld_send.exit:                            ; preds = %if.then3.i, %if.end.i.cxgbit_ofld_send.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %return

return:                                           ; preds = %cxgbit_ofld_send.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %cxgbit_ofld_send.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_setup_conn_pgidx(ptr noundef %csk, i32 noundef %pg_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !282

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %5, 48
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 44)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 83886104, ptr %3, align 8
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  %shl = shl i32 %10, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %wr_lo, align 8
  %13 = load i32, ptr %tid, align 4
  %or5 = or i32 %13, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or5, ptr %ot, align 8
  %rss_qid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %15 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rss_qid, align 2
  %reply_ctrl = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %reply_ctrl to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %reply_ctrl, align 4
  %word_cookie = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %word_cookie to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %word_cookie, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 768, ptr %mask, align 8
  %shl9 = shl i32 %pg_idx, 8
  %conv10 = zext i32 %shl9 to i64
  %val = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv10, ptr %val, align 8
  %ctrlq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %21 = ptrtoint ptr %ctrlq_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctrlq_idx, align 2
  %shl.i = shl i16 %22, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %call12 = tail call fastcc i32 @cxgbit_send_tcb_skb(ptr noundef %csk, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %__skb_put_zero.exit.cleanup_crit_edge

__skb_put_zero.exit.cleanup_crit_edge:            ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %__skb_put_zero.exit
  %24 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csk, align 4
  %26 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end15.out.sink.split.i_crit_edge, label %if.end.i

if.end15.out.sink.split.i_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end.i:                                         ; preds = %if.end15
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %35, %if.end.i.i.i ], [ %33, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cxgbit_setup_conn_pgidx, ptr noundef %retval.0.i.i.i, i32 noundef %27) #14
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %pci_name.exit.i, %if.end15.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.end15.out.sink.split.i_crit_edge ]
  %ret7.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %ret7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %ret7.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end.i.out.i_crit_edge
  %ret9.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not.i = icmp eq i32 %38, 0
  br i1 %tobool10.not.i, label %out.i.cxgbit_wait_for_reply.exit_crit_edge, label %do.end14.i

out.i.cxgbit_wait_for_reply.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_wait_for_reply.exit

do.end14.i:                                       ; preds = %out.i
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %25, i32 0, i32 1
  %39 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.pci_name.exit36.i_crit_edge

do.end14.i.pci_name.exit36.i_crit_edge:           ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit36.i

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %43 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i33.i, align 4
  br label %pci_name.exit36.i

pci_name.exit36.i:                                ; preds = %if.end.i.i34.i, %do.end14.i.pci_name.exit36.i_crit_edge
  %retval.0.i.i35.i = phi ptr [ %44, %if.end.i.i34.i ], [ %42, %do.end14.i.pci_name.exit36.i_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %38, i32 noundef %27) #14
  br label %cxgbit_wait_for_reply.exit

cxgbit_wait_for_reply.exit:                       ; preds = %pci_name.exit36.i, %out.i.cxgbit_wait_for_reply.exit_crit_edge
  %45 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not = icmp ne i32 %46, 0
  %. = sext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cxgbit_wait_for_reply.exit, %__skb_put_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -1, %__skb_put_zero.exit.cleanup_crit_edge ], [ %., %cxgbit_wait_for_reply.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_close_listsrv_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tids, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not.i = icmp ult i32 %and, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %9
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %cond.true.i, label %if.end.i.lookup_stid.exit_crit_edge

if.end.i.lookup_stid.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_stid.exit

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %17, i32 %stid.addr.0.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %lookup_stid.exit

lookup_stid.exit:                                 ; preds = %cond.true.i, %if.end.i.lookup_stid.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ null, %if.end.i.lookup_stid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_close_listsrv_rpl.__UNIQUE_ID_ddebug754, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_close_listsrv_rpl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.cpl_close_listsvr_rpl, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_close_listsrv_rpl.__UNIQUE_ID_ddebug754, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef %cond.i, i32 noundef %and, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lookup_stid.exit
  %tobool5.not = icmp eq ptr %cond.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %and) #14
  br label %rel_skb

if.end12:                                         ; preds = %do.end
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cond.i, i32 0, i32 3
  %status13 = getelementptr inbounds %struct.cpl_close_listsvr_rpl, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %status13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i = icmp eq i8 %23, 0
  %24 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cond.i, i32 0, i32 3, i32 1
  br i1 %cmp.i, label %if.end.thread.i, label %do.end.i

if.end.thread.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  br label %cxgbit_wake_up.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %23 to i32
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -5, ptr %24, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.45, i32 noundef %conv.i) #14
  br label %cxgbit_wake_up.exit

cxgbit_wake_up.exit:                              ; preds = %do.end.i, %if.end.thread.i
  tail call void @complete(ptr noundef %wr_wait) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %cond.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rel_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.rel_skb_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %rel_skb

if.then.i.i:                                      ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef nonnull %cond.i) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rel_skb_crit_edge, %do.end9
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_pass_open_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tids, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not.i = icmp ult i32 %and, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %9
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %cond.true.i, label %if.end.i.lookup_stid.exit_crit_edge

if.end.i.lookup_stid.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_stid.exit

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %17, i32 %stid.addr.0.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %lookup_stid.exit

lookup_stid.exit:                                 ; preds = %cond.true.i, %if.end.i.lookup_stid.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ null, %if.end.i.lookup_stid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_open_rpl.__UNIQUE_ID_ddebug753, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_open_rpl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.cpl_pass_open_rpl, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_open_rpl.__UNIQUE_ID_ddebug753, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.48, ptr noundef %cond.i, i32 noundef %and, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lookup_stid.exit
  %tobool5.not = icmp eq ptr %cond.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %and) #14
  br label %rel_skb

if.end12:                                         ; preds = %do.end
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cond.i, i32 0, i32 3
  %status13 = getelementptr inbounds %struct.cpl_pass_open_rpl, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %status13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i = icmp eq i8 %23, 0
  %24 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cond.i, i32 0, i32 3, i32 1
  br i1 %cmp.i, label %if.end.thread.i, label %do.end.i

if.end.thread.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  br label %cxgbit_wake_up.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %23 to i32
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -5, ptr %24, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #14
  br label %cxgbit_wake_up.exit

cxgbit_wake_up.exit:                              ; preds = %do.end.i, %if.end.thread.i
  tail call void @complete(ptr noundef %wr_wait) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %cond.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rel_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.rel_skb_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %rel_skb

if.then.i.i:                                      ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef nonnull %cond.i) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rel_skb_crit_edge, %do.end9
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_rx_cpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tids, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %8, label %entry.rel_skb_crit_edge [
    i8 -61, label %entry.sw.epilog_crit_edge
    i8 38, label %sw.bb5
    i8 50, label %sw.bb9
    i8 43, label %sw.bb13
    i8 45, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.rel_skb_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %entry.sw.epilog_crit_edge
  %cxgbit_abort_rpl_rss.sink = phi ptr [ @cxgbit_abort_rpl_rss, %sw.bb17 ], [ @cxgbit_abort_req_rss, %sw.bb13 ], [ @cxgbit_close_con_rpl, %sw.bb9 ], [ @cxgbit_peer_close, %sw.bb5 ], [ @cxgbit_fw4_ack, %entry.sw.epilog_crit_edge ]
  %ref.0.off0 = phi i1 [ true, %sw.bb17 ], [ true, %sw.bb13 ], [ true, %sw.bb9 ], [ true, %sw.bb5 ], [ false, %entry.sw.epilog_crit_edge ]
  %backlog_fn20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %backlog_fn20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cxgbit_abort_rpl_rss.sink, ptr %backlog_fn20, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %12
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %14)
  %cmp.i = icmp ult i32 %sub.i, %14
  br i1 %cmp.i, label %lookup_tid.exit, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %sw.epilog
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 128
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !288

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %and) #14
  br label %rel_skb

if.end:                                           ; preds = %lookup_tid.exit
  br i1 %ref.0.off0, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end
  %kref.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 20
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !288

if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then27
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cxgbit_get_csk.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cxgbit_get_csk.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_csk.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %cxgbit_get_csk.exit.i

cxgbit_get_csk.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cxgbit_get_csk.exit.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %lock_owner.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 19
  %21 = ptrtoint ptr %lock_owner.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lock_owner.i.i, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cxgbit_get_csk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %backlogq.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9
  %prev.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i, align 4
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %backlogq.i.i, ptr %skb, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %26 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %skb, ptr %24, align 4
  %qlen.i.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  br label %__cxgbit_process_rx_cpl.exit.i

if.end.i.i:                                       ; preds = %cxgbit_get_csk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %backlog_fn.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %backlog_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %backlog_fn.i.i, align 4
  tail call void %31(ptr noundef nonnull %18, ptr noundef %skb) #10
  br label %__cxgbit_process_rx_cpl.exit.i

__cxgbit_process_rx_cpl.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  %call.i.i.i.i.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %__cxgbit_process_rx_cpl.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %__cxgbit_process_rx_cpl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i.i) #10, !callees !286
  br label %cleanup

if.else:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %lock_owner.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 19
  %33 = ptrtoint ptr %lock_owner.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lock_owner.i, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %backlogq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %backlogq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %38 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %skb, ptr %36, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %18, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  br label %__cxgbit_process_rx_cpl.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %backlog_fn.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %backlog_fn.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %backlog_fn.i, align 4
  tail call void %43(ptr noundef nonnull %18, ptr noundef %skb) #10
  br label %__cxgbit_process_rx_cpl.exit

__cxgbit_process_rx_cpl.exit:                     ; preds = %if.end.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %cleanup

rel_skb:                                          ; preds = %do.end, %entry.rel_skb_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_skb, %__cxgbit_process_rx_cpl.exit, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_rx_data(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !288

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %and) #14
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cb.i, align 8
  %rxq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 6, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 6, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %rxq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %skb, ptr %16, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %waitq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_set_tcb_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.else, !prof !288

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %and) #14
  br label %rel_skb

if.else:                                          ; preds = %lookup_tid.exit
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %13, i32 0, i32 3
  %status = getelementptr inbounds %struct.cpl_set_tcb_rpl, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i11 = icmp eq i8 %15, 0
  %16 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %13, i32 0, i32 3, i32 1
  br i1 %cmp.i11, label %if.end.thread.i, label %do.end.i

if.end.thread.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  br label %cxgbit_wake_up.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %15 to i32
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -5, ptr %16, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.78, i32 noundef %conv.i) #14
  br label %cxgbit_wake_up.exit

cxgbit_wake_up.exit:                              ; preds = %do.end.i, %if.end.thread.i
  tail call void @complete(ptr noundef %wr_wait) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %13, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rel_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.rel_skb_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %rel_skb

if.then.i.i:                                      ; preds = %cxgbit_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %rel_skb

rel_skb:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rel_skb_crit_edge, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_pass_establish(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tids, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %tcp_opt1 = getelementptr inbounds %struct.cpl_pass_establish, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tcp_opt1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcp_opt1, align 2
  %snd_isn2 = getelementptr inbounds %struct.cpl_pass_establish, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %snd_isn2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_isn2, align 4
  %rcv_isn3 = getelementptr inbounds %struct.cpl_pass_establish, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rcv_isn3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rcv_isn3, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %13
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %15)
  %cmp.i = icmp ult i32 %sub.i, %15
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 128
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !288

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %and) #14
  br label %rel_skb

if.end:                                           ; preds = %lookup_tid.exit
  %cnp9 = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cnp9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cnp9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_establish.__UNIQUE_ID_ddebug755, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_establish, %if.then20)) #10
          to label %do.end23 [label %if.then20], !srcloc !284

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_establish.__UNIQUE_ID_ddebug755, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, ptr noundef nonnull %19, i32 noundef %and, ptr noundef %21) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %if.end
  %write_seq = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 32
  %22 = ptrtoint ptr %write_seq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %write_seq, align 4
  %snd_una = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 25
  %23 = ptrtoint ptr %snd_una to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %snd_una, align 4
  %snd_nxt = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 27
  %24 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %9, ptr %snd_nxt, align 4
  %rcv_nxt = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 28
  %25 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %rcv_nxt, align 4
  %26 = lshr i16 %7, 8
  %27 = trunc i16 %26 to i8
  %conv25 = and i8 %27, 15
  %snd_wscale = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 46
  %28 = ptrtoint ptr %snd_wscale to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv25, ptr %snd_wscale, align 4
  tail call fastcc void @cxgbit_set_emss(ptr noundef nonnull %19, i16 noundef zeroext %7)
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %state, align 4
  %np_accept_lock = getelementptr inbounds %struct.cxgbit_np, ptr %21, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %np_accept_lock) #10
  %accept_node = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 16
  %np_accept_list = getelementptr inbounds %struct.cxgbit_np, ptr %21, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.cxgbit_np, ptr %21, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %accept_node, ptr noundef %31, ptr noundef %np_accept_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end23.list_add_tail.exit_crit_edge

do.end23.list_add_tail.exit_crit_edge:            ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %accept_node, ptr %prev.i, align 4
  %33 = ptrtoint ptr %accept_node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %np_accept_list, ptr %accept_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %19, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %accept_node, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end23.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_accept_lock) #10
  %accept_comp = getelementptr inbounds %struct.cxgbit_np, ptr %21, i32 0, i32 3
  tail call void @complete(ptr noundef %accept_comp) #10
  br label %rel_skb

rel_skb:                                          ; preds = %list_add_tail.exit, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_pass_accept_req(ptr noundef %cdev, ptr noundef %skb) #0 align 64 {
entry:
  %local_ip = alloca [16 x i8], align 4
  %peer_ip = alloca [16 x i8], align 4
  %local_port = alloca i16, align 2
  %peer_port = alloca i16, align 2
  %iptype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tos_stid = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tos_stid, align 4
  %and = and i32 %3, 16777215
  %lldi = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and1 = and i32 %7, 16777215
  %tcpopt = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %tcpopt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tcpopt, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_ip) #10
  %10 = call ptr @memset(ptr %local_ip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %peer_ip) #10
  %11 = call ptr @memset(ptr %peer_ip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %local_port) #10
  %12 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %local_port, align 2, !annotation !290
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %peer_port) #10
  %13 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %peer_port, align 2, !annotation !290
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iptype) #10
  %14 = ptrtoint ptr %iptype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %iptype, align 4, !annotation !290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug747, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_accept_req, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug747, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef %cdev, i32 noundef %and, i32 noundef %and1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 23
  %15 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.end.if.else.i_crit_edge, label %land.lhs.true.i

do.end.if.else.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 22
  %17 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %18)
  %cmp.not.i = icmp ult i32 %and, %18
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %18
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %20
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %22
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %24, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %lookup_stid.exit, label %if.end.i.do.end10_crit_edge

if.end.i.do.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

lookup_stid.exit:                                 ; preds = %if.end.i
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %26, i32 %stid.addr.0.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %lookup_stid.exit.do.end10_crit_edge, label %if.end13

lookup_stid.exit.do.end10_crit_edge:              ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end10:                                         ; preds = %lookup_stid.exit.do.end10_crit_edge, %if.end.i.do.end10_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef %and) #14
  br label %rel_skb

if.end13:                                         ; preds = %lookup_stid.exit
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.not = icmp eq i32 %30, 1
  br i1 %cmp.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84) #14
  br label %reject

if.end20:                                         ; preds = %if.end13
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tid_base.i, align 4
  %sub.i305 = sub i32 %and1, %32
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i305, i32 %34)
  %cmp.i = icmp ult i32 %sub.i305, %34
  br i1 %cmp.i, label %lookup_tid.exit, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lookup_tid.exit:                                  ; preds = %if.end20
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 128
  %arrayidx.i306 = getelementptr ptr, ptr %36, i32 %sub.i305
  %37 = ptrtoint ptr %arrayidx.i306 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i306, align 4
  %tobool22.not = icmp eq ptr %38, null
  br i1 %tobool22.not, label %lookup_tid.exit.if.end29_crit_edge, label %do.end26

lookup_tid.exit.if.end29_crit_edge:               ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end26:                                         ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.84, i32 noundef %and1) #14
  br label %rel_skb

if.end29:                                         ; preds = %lookup_tid.exit.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %adapter_type = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 13
  %39 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %adapter_type, align 4
  %conv = zext i8 %40 to i32
  call void @cxgb_get_4tuple(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %iptype, ptr noundef nonnull %local_ip, ptr noundef nonnull %peer_ip, ptr noundef nonnull %local_port, ptr noundef nonnull %peer_port) #10
  %41 = ptrtoint ptr %iptype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iptype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp32 = icmp eq i32 %42, 4
  br i1 %cmp32, label %do.body35, label %do.body64

do.body35:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug748, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_accept_req, %if.then47)) #10
          to label %do.end55 [label %if.then47], !srcloc !284

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %local_port, align 2
  %conv50 = zext i16 %44 to i32
  %45 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %peer_port, align 2
  %conv51 = zext i16 %46 to i32
  %conv52 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug748, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.84, ptr noundef nonnull %28, i32 noundef %and1, ptr noundef nonnull %local_ip, ptr noundef nonnull %peer_ip, i32 noundef %conv50, i32 noundef %conv51, i32 noundef %conv52) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then47, %do.body35
  %47 = ptrtoint ptr %local_ip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %local_ip, align 4
  %49 = ptrtoint ptr %peer_ip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %peer_ip, align 4
  %51 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %local_port, align 2
  %53 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %peer_port, align 2
  %55 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tos_stid, align 4
  %shr60 = lshr i32 %56, 24
  %conv62 = trunc i32 %shr60 to i8
  %call63 = call ptr @cxgb_find_route(ptr noundef %lldi, ptr noundef nonnull @cxgbit_get_real_dev, i32 noundef %48, i32 noundef %50, i16 noundef zeroext %52, i16 noundef zeroext %54, i8 noundef zeroext %conv62) #10
  br label %if.end94

do.body64:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug749, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_accept_req, %if.then76)) #10
          to label %do.end84 [label %if.then76], !srcloc !284

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %local_port, align 2
  %conv79 = zext i16 %58 to i32
  %59 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %peer_port, align 2
  %conv80 = zext i16 %60 to i32
  %conv81 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug749, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.84, ptr noundef nonnull %28, i32 noundef %and1, ptr noundef nonnull %local_ip, ptr noundef nonnull %peer_ip, i32 noundef %conv79, i32 noundef %conv80, i32 noundef %conv81) #10
  br label %do.end84

do.end84:                                         ; preds = %if.then76, %do.body64
  %61 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %local_port, align 2
  %63 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %peer_port, align 2
  %65 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tos_stid, align 4
  %shr89 = lshr i32 %66, 24
  %conv91 = trunc i32 %shr89 to i8
  %sin6_scope_id = getelementptr inbounds %struct.cxgbit_sock_common, ptr %28, i32 0, i32 1, i32 0, i32 1, i32 20
  %67 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sin6_scope_id, align 4
  %call93 = call ptr @cxgb_find_route6(ptr noundef %lldi, ptr noundef nonnull @cxgbit_get_real_dev, ptr noundef nonnull %local_ip, ptr noundef nonnull %peer_ip, i16 noundef zeroext %62, i16 noundef zeroext %64, i8 noundef zeroext %conv91, i32 noundef %68) #10
  br label %if.end94

if.end94:                                         ; preds = %do.end84, %do.end55
  %dst.0 = phi ptr [ %call63, %do.end55 ], [ %call93, %do.end84 ]
  %tobool95.not = icmp eq ptr %dst.0, null
  br i1 %tobool95.not, label %do.end99, label %if.end102

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.84) #14
  br label %reject

if.end102:                                        ; preds = %if.end94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 2848, i32 noundef 844) #13
  %tobool104.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool104.not, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  call void @dst_release(ptr noundef nonnull %dst.0) #10
  br label %rel_skb

if.end106:                                        ; preds = %if.end102
  %70 = ptrtoint ptr %iptype to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iptype, align 4
  %72 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %local_port, align 2
  %call108 = call fastcc i32 @cxgbit_offload_init(ptr noundef nonnull %call7.i.i, i32 noundef %71, ptr noundef nonnull %peer_ip, i16 noundef zeroext %73, ptr noundef nonnull %dst.0, ptr noundef %cdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end116, label %do.end113

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.84) #14
  call void @dst_release(ptr noundef nonnull %dst.0) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %reject

if.end116:                                        ; preds = %if.end106
  %kref = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 20
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %74 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 1, ptr %kref, align 8
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %wr_wait, align 4
  %wait.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #10
  %accept_node = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 16
  %76 = ptrtoint ptr %accept_node to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %accept_node, ptr %accept_node, align 4
  %prev.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 16, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %accept_node, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool127.not = icmp eq i16 %9, 0
  br i1 %tobool127.not, label %if.end116.if.end138_crit_edge, label %land.lhs.true

if.end116.if.end138_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

land.lhs.true:                                    ; preds = %if.end116
  %conv126 = zext i16 %9 to i32
  %tstamp = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %1, i32 0, i32 7, i32 2
  %78 = ptrtoint ptr %tstamp to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %tstamp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool122.not = icmp sgt i8 %bf.load, -1
  %79 = ptrtoint ptr %iptype to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iptype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp118 = icmp eq i32 %80, 4
  %add = select i1 %cmp118, i32 40, i32 60
  %cond123 = select i1 %tobool122.not, i32 0, i32 12
  %mtu = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 31
  %81 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mtu, align 4
  %add124 = add nuw nsw i32 %cond123, %conv126
  %add130 = add nuw nsw i32 %add124, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %add130)
  %cmp131 = icmp ugt i32 %82, %add130
  br i1 %cmp131, label %if.then133, label %land.lhs.true.if.end138_crit_edge

land.lhs.true.if.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then133:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add130, ptr %mtu, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %land.lhs.true.if.end138_crit_edge, %if.end116.if.end138_crit_edge
  %state140 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %state140 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %state140, align 8
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %cdev, ptr %call7.i.i, align 8
  %cnp143 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %cnp143 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %28, ptr %cnp143, align 8
  %87 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tos_stid, align 4
  %shr145 = lshr i32 %88, 24
  %conv147 = trunc i32 %shr145 to i8
  %tos = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 42
  %89 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv147, ptr %tos, align 4
  %dst148 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 4
  %90 = ptrtoint ptr %dst148 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dst.0, ptr %dst148, align 4
  %tid149 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 26
  %91 = ptrtoint ptr %tid149 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and1, ptr %tid149, align 8
  %wr_cred = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 12
  %92 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %wr_cred, align 1
  %conv151 = zext i8 %93 to i32
  %sub = add nsw i32 %conv151, -2
  %wr_cred152 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 22
  %94 = ptrtoint ptr %wr_cred152 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub, ptr %wr_cred152, align 8
  %wr_max_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 24
  %95 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub, ptr %wr_max_cred, align 8
  %wr_una_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 23
  %96 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %wr_una_cred, align 4
  %97 = ptrtoint ptr %iptype to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iptype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp154 = icmp eq i32 %98, 4
  %local_addr158 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1
  br i1 %cmp154, label %if.then156, label %if.else166

if.then156:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %local_addr158 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 2, ptr %local_addr158, align 4
  %100 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %local_port, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr158, i32 0, i32 1
  %102 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %sin_port, align 2
  %103 = ptrtoint ptr %local_ip to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %local_ip, align 4
  %sin_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sin_addr, align 8
  %remote_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 2, ptr %remote_addr, align 4
  %107 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %peer_port, align 2
  %sin_port162 = getelementptr inbounds %struct.sockaddr_in, ptr %remote_addr, i32 0, i32 1
  %109 = ptrtoint ptr %sin_port162 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %sin_port162, align 2
  %110 = ptrtoint ptr %peer_ip to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %peer_ip, align 4
  %sin_addr164 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %112 = ptrtoint ptr %sin_addr164 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %sin_addr164, align 8
  br label %if.end183

if.else166:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %local_addr158 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 10, ptr %local_addr158, align 4
  %114 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %local_port, align 2
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr158, i32 0, i32 1
  %116 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %117 = call ptr @memcpy(ptr %sin6_addr, ptr %local_ip, i32 16)
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ports, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call174 = call i32 @cxgb4_clip_get(ptr noundef %121, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  %remote_addr176 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %remote_addr176 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 10, ptr %remote_addr176, align 4
  %123 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %peer_port, align 2
  %sin6_port178 = getelementptr inbounds %struct.sockaddr_in6, ptr %remote_addr176, i32 0, i32 1
  %125 = ptrtoint ptr %sin6_port178 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %sin6_port178, align 2
  %sin6_addr179 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 4
  %126 = call ptr @memcpy(ptr %sin6_addr179, ptr %peer_ip, i32 16)
  br label %if.end183

if.end183:                                        ; preds = %if.else166, %if.then156
  %rxq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 6, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %127 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %rxq, ptr %rxq, align 8
  %prev.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %rxq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 6, i32 1
  %129 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %qlen.i.i, align 8
  %txq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 7
  %lock.i309 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 7, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i309, ptr noundef nonnull @.str.108, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %130 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %txq, ptr %txq, align 8
  %prev.i.i310 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i.i310 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %txq, ptr %prev.i.i310, align 4
  %qlen.i.i311 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 7, i32 1
  %132 = ptrtoint ptr %qlen.i.i311 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %qlen.i.i311, align 8
  %ppodq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 8
  %lock.i312 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 8, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i312, ptr noundef nonnull @.str.108, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %133 = ptrtoint ptr %ppodq to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %ppodq, ptr %ppodq, align 8
  %prev.i.i313 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i313 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %ppodq, ptr %prev.i.i313, align 4
  %qlen.i.i314 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 8, i32 1
  %135 = ptrtoint ptr %qlen.i.i314 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %qlen.i.i314, align 8
  %backlogq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 9
  %lock.i315 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 9, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i315, ptr noundef nonnull @.str.108, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %136 = ptrtoint ptr %backlogq to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %backlogq, ptr %backlogq, align 8
  %prev.i.i316 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i316 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %backlogq, ptr %prev.i.i316, align 4
  %qlen.i.i317 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 9, i32 1
  %138 = ptrtoint ptr %qlen.i.i317 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %qlen.i.i317, align 8
  %skbq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 10
  %lock.i318 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 10, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i318, ptr noundef nonnull @.str.108, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %139 = ptrtoint ptr %skbq to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %skbq, ptr %skbq, align 8
  %prev.i.i319 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %prev.i.i319 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %skbq, ptr %prev.i.i319, align 4
  %qlen.i.i320 = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 10, i32 1
  %141 = ptrtoint ptr %qlen.i.i320 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %qlen.i.i320, align 8
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 12
  %142 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %wr_pending_tail.i, align 4
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 11
  %143 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %wr_pending_head.i, align 8
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.101, ptr noundef nonnull @cxgbit_pass_accept_req.__key, i16 noundef signext 3) #10
  %waitq = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 18
  call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.103, ptr noundef nonnull @cxgbit_pass_accept_req.__key.102) #10
  %lock_owner = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 19
  %144 = ptrtoint ptr %lock_owner to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %lock_owner, align 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 96, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i321 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i321, label %if.end183.out.i_crit_edge, label %if.end.i322

if.end183.out.i_crit_edge:                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i322:                                      ; preds = %if.end183
  %145 = ptrtoint ptr %prev.i.i319 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i319, align 4
  %147 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %skbq, ptr %call.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %146, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i319, align 4
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %call.i.i, ptr %146, align 4
  %150 = ptrtoint ptr %qlen.i.i320 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %qlen.i.i320, align 8
  %add.i.i.i.i = add i32 %151, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i320, align 8
  %call.i.1.i = call ptr @__alloc_skb(i32 noundef 96, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %if.end.i322.out.i_crit_edge, label %if.end.1.i

if.end.i322.out.i_crit_edge:                      ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.1.i:                                       ; preds = %if.end.i322
  %152 = ptrtoint ptr %prev.i.i319 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i319, align 4
  %154 = ptrtoint ptr %call.i.1.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %skbq, ptr %call.i.1.i, align 8
  %prev10.i.i.i.1.i = getelementptr inbounds %struct.anon.51, ptr %call.i.1.i, i32 0, i32 1
  %155 = ptrtoint ptr %prev10.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %prev10.i.i.i.1.i, align 4
  store volatile ptr %call.i.1.i, ptr %prev.i.i319, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %call.i.1.i, ptr %153, align 4
  %157 = ptrtoint ptr %qlen.i.i320 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %qlen.i.i320, align 8
  %add.i.i.i.1.i = add i32 %158, 1
  store volatile i32 %add.i.i.i.1.i, ptr %qlen.i.i320, align 8
  %call.i.2.i = call ptr @__alloc_skb(i32 noundef 96, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.2.i, label %if.end.1.i.out.i_crit_edge, label %if.end.2.i

if.end.1.i.out.i_crit_edge:                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %159 = ptrtoint ptr %prev.i.i319 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %prev.i.i319, align 4
  %161 = ptrtoint ptr %call.i.2.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %skbq, ptr %call.i.2.i, align 8
  %prev10.i.i.i.2.i = getelementptr inbounds %struct.anon.51, ptr %call.i.2.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev10.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %160, ptr %prev10.i.i.i.2.i, align 4
  store volatile ptr %call.i.2.i, ptr %prev.i.i319, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %call.i.2.i, ptr %160, align 4
  %164 = ptrtoint ptr %qlen.i.i320 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %qlen.i.i320, align 8
  %add.i.i.i.2.i = add i32 %165, 1
  store volatile i32 %add.i.i.i.2.i, ptr %qlen.i.i320, align 8
  %call.i25.i = call ptr @__alloc_skb(i32 noundef 52, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool5.not.i = icmp eq ptr %call.i25.i, null
  br i1 %tobool5.not.i, label %if.end.2.i.out.i_crit_edge, label %if.end194

if.end.2.i.out.i_crit_edge:                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.i:                                            ; preds = %if.end.2.i.out.i_crit_edge, %if.end.1.i.out.i_crit_edge, %if.end.i322.out.i_crit_edge, %if.end183.out.i_crit_edge
  %166 = ptrtoint ptr %skbq to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %skbq, align 8
  %cmp.i.i2.i.i = icmp eq ptr %167, %skbq
  %tobool.not.i13.i.i = icmp eq ptr %167, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %out.i.if.then193_crit_edge, label %out.i.while.body.i.i_crit_edge

out.i.while.body.i.i_crit_edge:                   ; preds = %out.i
  br label %while.body.i.i

out.i.if.then193_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %out.i.while.body.i.i_crit_edge
  %168 = phi ptr [ %178, %while.body.i.i.while.body.i.i_crit_edge ], [ %167, %out.i.while.body.i.i_crit_edge ]
  %169 = ptrtoint ptr %qlen.i.i320 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %qlen.i.i320, align 8
  %sub.i.i.i.i = add i32 %170, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i320, align 8
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %168, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %168, i32 0, i32 1
  %173 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %168, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %172, i32 0, i32 1
  %175 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %174, ptr %prev17.i.i.i.i, align 4
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %172, ptr %174, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %168, i32 noundef 0) #10
  %177 = ptrtoint ptr %skbq to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %skbq, align 8
  %cmp.i.i.i.i = icmp eq ptr %178, %skbq
  %tobool.not.i1.i.i = icmp eq ptr %178, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.if.then193_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.if.then193_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

if.then193:                                       ; preds = %while.body.i.i.if.then193_crit_edge, %out.i.if.then193_crit_edge
  call void @dst_release(ptr noundef nonnull %dst.0) #10
  call void @kfree(ptr noundef %call7.i.i) #10
  br label %rel_skb

if.end194:                                        ; preds = %if.end.2.i
  %data.i323 = getelementptr inbounds %struct.sk_buff, ptr %call.i25.i, i32 0, i32 19
  %179 = ptrtoint ptr %data.i323 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %data.i323, align 4
  %181 = call ptr @memset(ptr %180, i32 0, i32 52)
  %lro_hskb.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 15
  %182 = ptrtoint ptr %lro_hskb.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i25.i, ptr %lro_hskb.i, align 8
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %28, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %183 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %183, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end194.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

if.end194.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end194
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %184 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %184)
  %.not.i.i.i.i.i = icmp sgt i32 %184, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_cnp.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end194.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end194.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_cnp.exit

cxgbit_get_cnp.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge
  %kref.i325 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 7
  %call.i.i.i.i.i.i.i326 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i325, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %kref.i325, i32 1, i32 3, i32 1) #10
  %185 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i325, ptr %kref.i325, i32 1, ptr elementtype(i32) %kref.i325) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i327 = extractvalue { i32, i32, i32 } %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i327)
  %tobool1.not.i.i.i.i.i328 = icmp eq i32 %asmresult.i.i.i.i.i.i.i327, 0
  br i1 %tobool1.not.i.i.i.i.i328, label %cxgbit_get_cnp.exit.if.end15.sink.split.i.i.i.i.i333_crit_edge, label %if.else.i.i.i.i.i331, !prof !288

cxgbit_get_cnp.exit.if.end15.sink.split.i.i.i.i.i333_crit_edge: ; preds = %cxgbit_get_cnp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i333

if.else.i.i.i.i.i331:                             ; preds = %cxgbit_get_cnp.exit
  %add.i.i.i.i.i329 = add i32 %asmresult.i.i.i.i.i.i.i327, 1
  %186 = or i32 %add.i.i.i.i.i329, %asmresult.i.i.i.i.i.i.i327
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %186)
  %.not.i.i.i.i.i330 = icmp sgt i32 %186, -1
  br i1 %.not.i.i.i.i.i330, label %if.else.i.i.i.i.i331.cxgbit_get_cdev.exit_crit_edge, label %if.else.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i333_crit_edge, !prof !282

if.else.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i333_crit_edge: ; preds = %if.else.i.i.i.i.i331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i333

if.else.i.i.i.i.i331.cxgbit_get_cdev.exit_crit_edge: ; preds = %if.else.i.i.i.i.i331
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_cdev.exit

if.end15.sink.split.i.i.i.i.i333:                 ; preds = %if.else.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i333_crit_edge, %cxgbit_get_cnp.exit.if.end15.sink.split.i.i.i.i.i333_crit_edge
  %.sink.i.i.i.i.i332 = phi i32 [ 2, %cxgbit_get_cnp.exit.if.end15.sink.split.i.i.i.i.i333_crit_edge ], [ 1, %if.else.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i333_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i325, i32 noundef %.sink.i.i.i.i.i332) #10
  br label %cxgbit_get_cdev.exit

cxgbit_get_cdev.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i333, %if.else.i.i.i.i.i331.cxgbit_get_cdev.exit_crit_edge
  %cskq = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 5
  %lock195 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 5, i32 1
  call void @_raw_spin_lock(ptr noundef %lock195) #10
  %list = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 5
  %prev.i334 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 5, i32 0, i32 1
  %187 = ptrtoint ptr %prev.i334 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i334, align 4
  %call.i.i335 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %188, ptr noundef %cskq) #10
  br i1 %call.i.i335, label %if.end.i.i, label %cxgbit_get_cdev.exit.list_add_tail.exit_crit_edge

cxgbit_get_cdev.exit.list_add_tail.exit_crit_edge: ; preds = %cxgbit_get_cdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cxgbit_get_cdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %prev.i334 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %list, ptr %prev.i334, align 4
  %190 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %cskq, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %call7.i.i, i32 0, i32 5, i32 1
  %191 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev3.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %list, ptr %188, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cxgbit_get_cdev.exit.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock195) #10
  %local_addr201 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %call7.i.i, i32 0, i32 1
  %193 = ptrtoint ptr %local_addr201 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %local_addr201, align 4
  %195 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %5, align 128
  %197 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tid_base.i, align 4
  %sub.i337 = sub i32 %and1, %198
  %arrayidx.i338 = getelementptr ptr, ptr %196, i32 %sub.i337
  %199 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call7.i.i, ptr %arrayidx.i338, align 4
  %hash_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 8
  %200 = ptrtoint ptr %hash_base.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %hash_base.i, align 32
  %202 = add i32 %201, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %and1)
  %.not.i = icmp ult i32 %202, %and1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %194)
  %cmp2.i = icmp eq i16 %194, 10
  br i1 %.not.i, label %if.then.i339, label %if.else6.i

if.then.i339:                                     ; preds = %list_add_tail.exit
  %hash_tids_in_use.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 37
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hash_tids_in_use.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %hash_tids_in_use.i, i32 1, i32 3, i32 1) #10
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i340

if.then4.i:                                       ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #12
  %203 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 2, ptr elementtype(i32) %hash_tids_in_use.i) #10, !srcloc !291
  br label %cxgb4_insert_tid.exit

if.else.i340:                                     ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #12
  %204 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 1, ptr elementtype(i32) %hash_tids_in_use.i) #10, !srcloc !291
  br label %cxgb4_insert_tid.exit

if.else6.i:                                       ; preds = %list_add_tail.exit
  %tids_in_use.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 36
  %call.i.i26.i = call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %tids_in_use.i, i32 1, i32 3, i32 1) #10
  br i1 %cmp2.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 2, ptr elementtype(i32) %tids_in_use.i) #10, !srcloc !291
  br label %cxgb4_insert_tid.exit

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 1, ptr elementtype(i32) %tids_in_use.i) #10, !srcloc !291
  br label %cxgb4_insert_tid.exit

cxgb4_insert_tid.exit:                            ; preds = %if.else11.i, %if.then10.i, %if.else.i340, %if.then4.i
  %conns_in_use.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 38
  %call.i.i28.i = call zeroext i1 @__kasan_check_write(ptr noundef %conns_in_use.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %conns_in_use.i, i32 1, i32 3, i32 1) #10
  %207 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conns_in_use.i, ptr %conns_in_use.i, i32 1, ptr elementtype(i32) %conns_in_use.i) #10, !srcloc !291
  call fastcc void @cxgbit_pass_accept_rpl(ptr noundef nonnull %call7.i.i, ptr noundef %1)
  br label %rel_skb

reject:                                           ; preds = %do.end113, %do.end99, %do.end17
  %call.i.i341 = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i342 = icmp eq ptr %call.i.i341, null
  br i1 %tobool.not.i342, label %reject.rel_skb_crit_edge, label %if.end.i343

reject.rel_skb_crit_edge:                         ; preds = %reject
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.end.i343:                                      ; preds = %reject
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i341, i32 0, i32 7
  %208 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.i.not.i.i.i.i = icmp eq i32 %209, 0
  br i1 %tobool.i.not.i.i.i.i, label %cxgb_mk_tid_release.exit.i, label %do.body3.i.i.i.i, !prof !282

do.body3.i.i.i.i:                                 ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_tid_release.exit.i:                       ; preds = %if.end.i343
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i341, i32 0, i32 16
  %210 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %211, i32 32
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i341, i32 0, i32 6
  %212 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i344 = add i32 %213, 32
  store i32 %add.i.i.i.i344, ptr %len9.i.i.i.i, align 4
  %214 = getelementptr inbounds i8, ptr %211, i32 20
  %215 = call ptr @memset(ptr %214, i32 0, i32 12)
  %216 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 83886088, ptr %211, align 8
  %shl.i.i = shl nuw i32 %and1, 8
  %or.i.i = or i32 %shl.i.i, 2
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %211, i32 0, i32 1
  %217 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or.i.i, ptr %wr_mid.i.i, align 4
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %211, i32 0, i32 2
  %218 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 0, ptr %wr_lo.i.i, align 8
  %or3.i.i = or i32 %and1, 436207616
  %ot.i.i = getelementptr inbounds %struct.cpl_tid_release, ptr %211, i32 0, i32 1
  %219 = ptrtoint ptr %ot.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or3.i.i, ptr %ot.i.i, align 8
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i341, i32 0, i32 10
  %220 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1, ptr %queue_mapping1.i.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %221 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i345

if.then.i.i:                                      ; preds = %cxgb_mk_tid_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i341, i32 noundef 0) #10
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %rel_skb

if.end.i.i345:                                    ; preds = %cxgb_mk_tid_release.exit.i
  %ports.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %223 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ports.i.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %call2.i.i = call i32 @cxgb4_ofld_send(ptr noundef %226, ptr noundef nonnull %call.i.i341) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i345.rel_skb_crit_edge

if.end.i.i345.rel_skb_crit_edge:                  ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then3.i.i:                                     ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i341, i32 noundef 0) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.then3.i.i, %if.end.i.i345.rel_skb_crit_edge, %if.then.i.i, %reject.rel_skb_crit_edge, %cxgb4_insert_tid.exit, %if.then193, %if.then105, %do.end26, %do.end10
  call void @__kfree_skb(ptr noundef %skb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iptype) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %peer_port) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %local_port) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %peer_ip) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ip) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cxgbit_setup_cdev_np(ptr noundef %cdev, ptr noundef %cnp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1
  %0 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %local_addr, align 4
  %conv = zext i16 %1 to i32
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %call2 = tail call i32 @cxgb4_alloc_stid(ptr noundef %5, i32 noundef %conv, ptr noundef %cnp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tids, align 4
  tail call void @cxgb4_free_stid(ptr noundef %8, i32 noundef %call2, i32 noundef %conv) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %cnp to i32
  %shr.i.i = lshr i32 %9, 10
  %and.i.i = and i32 %shr.i.i, 31
  %cnp2.i = getelementptr inbounds %struct.np_info, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %cnp2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cnp, ptr %cnp2.i, align 4
  %stid3.i = getelementptr inbounds %struct.np_info, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %stid3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2, ptr %stid3.i, align 8
  %np_lock.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %np_lock.i) #10
  %arrayidx.i = getelementptr %struct.cxgbit_device, ptr %cdev, i32 0, i32 2, i32 %and.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp12 = icmp eq i16 %1, 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call fastcc i32 @cxgbit_create_server4(ptr noundef %cdev, i32 noundef %call2, ptr noundef %cnp)
  br label %if.end17

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call fastcc i32 @cxgbit_create_server6(ptr noundef %cdev, i32 noundef %call2, ptr noundef %cnp)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %ret.0 = phi i32 [ %call15, %if.then14 ], [ %call16, %if.else ]
  %15 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %ret.0, label %if.then22 [
    i32 0, label %if.end17.cleanup_crit_edge
    i32 -110, label %if.end17.if.end25_crit_edge
  ]

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tids, align 4
  tail call void @cxgb4_free_stid(ptr noundef %17, i32 noundef %call2, i32 noundef %conv) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end17.if.end25_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %np_lock.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end25
  %prev.0.i = phi ptr [ %arrayidx.i, %if.end25 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.0.i = load ptr, ptr %prev.0.i, align 4
  %tobool.not.i57 = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i57, label %for.cond.i.cxgbit_np_hash_del.exit_crit_edge, label %for.body.i

for.cond.i.cxgbit_np_hash_del.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_np_hash_del.exit

for.body.i:                                       ; preds = %for.cond.i
  %cnp1.i = getelementptr inbounds %struct.np_info, ptr %p.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %cnp1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cnp1.i, align 4
  %cmp.i = icmp eq ptr %20, %cnp
  br i1 %cmp.i, label %if.then.i58, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i58:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.0.i, align 4
  %23 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %prev.0.i, align 4
  tail call void @kfree(ptr noundef nonnull %p.0.i) #10
  br label %cxgbit_np_hash_del.exit

cxgbit_np_hash_del.exit:                          ; preds = %if.then.i58, %for.cond.i.cxgbit_np_hash_del.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cxgbit_np_hash_del.exit, %if.end17.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cxgbit_np_hash_del.exit ], [ -22, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_alloc_stid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_stid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_create_server4(ptr noundef %cdev, i32 noundef %stid, ptr noundef %cnp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_create_server4.__UNIQUE_ID_ddebug728, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_create_server4, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin_port, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_create_server4.__UNIQUE_ID_ddebug728, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %stid, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %cnp, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

do.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_cnp.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_cnp.exit

cxgbit_get_cnp.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3
  %ret.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ret.i, align 4
  %9 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wr_wait, align 4
  %ports5 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %ports5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %sin_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sin_addr, align 4
  %sin_port7 = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr, i32 0, i32 1
  %16 = ptrtoint ptr %sin_port7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sin_port7, align 2
  %rxq_ids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxq_ids, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %conv10 = zext i16 %21 to i32
  %call11 = tail call i32 @cxgb4_create_server(ptr noundef %13, i32 noundef %stid, i32 noundef %15, i16 noundef zeroext %17, i16 noundef zeroext 0, i32 noundef %conv10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %cxgbit_get_cnp.exit
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then13.out.i.thread_crit_edge, label %if.end.i

if.then13.out.i.thread_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i:                                         ; preds = %if.then13
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %24 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i.i ], [ %27, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i.i, i32 noundef 0) #14
  br label %out.i.thread

out.i.thread:                                     ; preds = %pci_name.exit.i, %if.then13.out.i.thread_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.then13.out.i.thread_crit_edge ]
  %30 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %ret.i, align 4
  br label %do.end14.i

out.i:                                            ; preds = %if.end.i
  %31 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool10.not.i, label %out.i.if.end34_crit_edge, label %out.i.do.end14.i_crit_edge

out.i.do.end14.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

out.i.if.end34_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end14.i:                                       ; preds = %out.i.do.end14.i_crit_edge, %out.i.thread
  %32 = phi i32 [ %.sink.i, %out.i.thread ], [ %.pr, %out.i.do.end14.i_crit_edge ]
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %33 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.if.end23_crit_edge

do.end14.i.if.end23_crit_edge:                    ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %37 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i33.i, align 4
  br label %if.end23

if.else:                                          ; preds = %cxgbit_get_cnp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp sgt i32 %call11, 0
  br i1 %cmp, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp19.not = icmp eq i32 %call11, 2
  br i1 %cmp19.not, label %if.then18.if.end34_crit_edge, label %if.then18.do.end28_crit_edge

if.then18.do.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.then18.if.end34_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else21:                                        ; preds = %if.else
  %call.i.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i55, label %if.end5.i.i.i.i.i.do.end28_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.do.end28_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %do.end28

if.then.i.i:                                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef %cnp) #10
  br label %do.end28

if.end23:                                         ; preds = %if.end.i.i34.i, %do.end14.i.if.end23_crit_edge
  %retval.0.i.i35.i = phi ptr [ %38, %if.end.i.i34.i ], [ %36, %do.end14.i.if.end23_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %32, i32 noundef 0) #14
  %40 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr65 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr65)
  %tobool24.not = icmp eq i32 %.pr65, 0
  br i1 %tobool24.not, label %if.end23.if.end34_crit_edge, label %if.end23.do.end28_crit_edge

if.end23.do.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end28:                                         ; preds = %if.end23.do.end28_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.end28_crit_edge, %if.then18.do.end28_crit_edge
  %ret.060 = phi i32 [ %.pr65, %if.end23.do.end28_crit_edge ], [ %call11, %if.then.i.i ], [ %call11, %if.then10.i.i.i.i.i ], [ %call11, %if.end5.i.i.i.i.i.do.end28_crit_edge ], [ -105, %if.then18.do.end28_crit_edge ]
  %41 = ptrtoint ptr %sin_port7 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sin_port7, align 2
  %conv32 = zext i16 %42 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %ret.060, i32 noundef %stid, ptr noundef %sin_addr, i32 noundef %conv32) #14
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end23.if.end34_crit_edge, %if.then18.if.end34_crit_edge, %out.i.if.end34_crit_edge
  %ret.061 = phi i32 [ %ret.060, %do.end28 ], [ 0, %if.end23.if.end34_crit_edge ], [ 0, %out.i.if.end34_crit_edge ], [ 0, %if.then18.if.end34_crit_edge ]
  ret i32 %ret.061
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_create_server6(ptr noundef %cdev, i32 noundef %stid, ptr noundef %cnp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_create_server6.__UNIQUE_ID_ddebug727, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_create_server6, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr, i32 0, i32 1
  %4 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin6_port, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_create_server6.__UNIQUE_ID_ddebug727, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %3, i32 noundef %stid, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sin6_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1, i32 0, i32 1, i32 4
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not, label %do.end.if.end22_crit_edge, label %if.then5

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then5:                                         ; preds = %do.end
  %ports7 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %ports7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call10 = tail call i32 @cxgb4_clip_get(ptr noundef %9, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then5.if.end22_crit_edge, label %do.end15

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end15:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %sin6_addr, i32 noundef %call10) #14
  br label %cleanup

if.end22:                                         ; preds = %if.then5.if.end22_crit_edge, %do.end.if.end22_crit_edge
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %cnp, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end22
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_cnp.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_cnp.exit

cxgbit_get_cnp.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3
  %ret.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ret.i, align 4
  %13 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wr_wait, align 4
  %ports25 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %ports25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports25, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %sin6_port28 = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr, i32 0, i32 1
  %18 = ptrtoint ptr %sin6_port28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sin6_port28, align 2
  %rxq_ids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxq_ids, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv31 = zext i16 %23 to i32
  %call32 = tail call i32 @cxgb4_create_server6(ptr noundef %17, i32 noundef %stid, ptr noundef %sin6_addr, i16 noundef zeroext %19, i32 noundef %conv31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %cxgbit_get_cnp.exit
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then34.out.i.thread_crit_edge, label %if.end.i

if.then34.out.i.thread_crit_edge:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i:                                         ; preds = %if.then34
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %26 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %31, %if.end.i.i.i ], [ %29, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i.i, i32 noundef 0) #14
  br label %out.i.thread

out.i.thread:                                     ; preds = %pci_name.exit.i, %if.then34.out.i.thread_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.then34.out.i.thread_crit_edge ]
  %32 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i, ptr %ret.i, align 4
  br label %do.end14.i

out.i:                                            ; preds = %if.end.i
  %33 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool10.not.i, label %out.i.cxgbit_wait_for_reply.exit_crit_edge, label %out.i.do.end14.i_crit_edge

out.i.do.end14.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

out.i.cxgbit_wait_for_reply.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_wait_for_reply.exit

do.end14.i:                                       ; preds = %out.i.do.end14.i_crit_edge, %out.i.thread
  %34 = phi i32 [ %.sink.i, %out.i.thread ], [ %.pr, %out.i.do.end14.i_crit_edge ]
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %35 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.pci_name.exit36.i_crit_edge

do.end14.i.pci_name.exit36.i_crit_edge:           ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit36.i

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %39 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i33.i, align 4
  br label %pci_name.exit36.i

pci_name.exit36.i:                                ; preds = %if.end.i.i34.i, %do.end14.i.pci_name.exit36.i_crit_edge
  %retval.0.i.i35.i = phi ptr [ %40, %if.end.i.i34.i ], [ %38, %do.end14.i.pci_name.exit36.i_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %34, i32 noundef 0) #14
  br label %cxgbit_wait_for_reply.exit

cxgbit_wait_for_reply.exit:                       ; preds = %pci_name.exit36.i, %out.i.cxgbit_wait_for_reply.exit_crit_edge
  %41 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret.i, align 4
  br label %if.end45

if.else:                                          ; preds = %cxgbit_get_cnp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp38 = icmp sgt i32 %call32, 0
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call32)
  %cmp41.not = icmp eq i32 %call32, 2
  br i1 %cmp41.not, label %if.then40.cleanup_crit_edge, label %if.then40.if.then50_crit_edge

if.then40.if.then50_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else43:                                        ; preds = %if.else
  %call.i.i.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i99 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i99, label %if.end5.i.i.i.i.i.if.end45_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.if.end45_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end45

if.then.i.i:                                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef %cnp) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end45_crit_edge, %cxgbit_wait_for_reply.exit
  %ret.0 = phi i32 [ %42, %cxgbit_wait_for_reply.exit ], [ %call32, %if.end5.i.i.i.i.i.if.end45_crit_edge ], [ %call32, %if.then10.i.i.i.i.i ], [ %call32, %if.then.i.i ]
  %44 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %ret.0, label %if.end45.if.then50_crit_edge [
    i32 0, label %if.end45.cleanup_crit_edge
    i32 -110, label %if.end45.do.end59_crit_edge
  ]

if.end45.do.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45.if.then50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then50:                                        ; preds = %if.end45.if.then50_crit_edge, %if.then40.if.then50_crit_edge
  %ret.0104 = phi i32 [ %ret.0, %if.end45.if.then50_crit_edge ], [ -105, %if.then40.if.then50_crit_edge ]
  %45 = ptrtoint ptr %ports25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ports25, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void @cxgb4_clip_release(ptr noundef %48, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then50, %if.end45.do.end59_crit_edge
  %ret.0103 = phi i32 [ %ret.0, %if.end45.do.end59_crit_edge ], [ %ret.0104, %if.then50 ]
  %49 = ptrtoint ptr %sin6_port28 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sin6_port28, align 2
  %conv65 = zext i16 %50 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %ret.0103, i32 noundef %stid, ptr noundef %sin6_addr, i32 noundef %conv65) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end45.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %do.end15
  %retval.0 = phi i32 [ -12, %do.end15 ], [ %ret.0, %if.end45.cleanup_crit_edge ], [ %ret.0103, %do.end59 ], [ 0, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_create_server(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_clip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_create_server6(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cxgbit_ipv6_netdev(ptr noundef %addr6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @cxgbit_ipv6_netdev.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cxgbit_ipv6_netdev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 279, ptr noundef nonnull @.str.27) #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %for.cond.preheader ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ndev.0 = getelementptr i8, ptr %.pn, i32 -40
  %call9 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %addr6, ptr noundef %ndev.0, i32 noundef 1) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.for.cond_crit_edge, label %if.end23

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end23:                                         ; preds = %for.body
  %priv_flags.i = getelementptr i8, ptr %.pn, i32 72
  %1 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ndev.0) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %and.i.i = and i64 %2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @vlan_dev_real_dev(ptr noundef %ndev.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %do.end.i, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.i ], [ %call3.i, %if.then2.i ], [ %ndev.0, %if.end.i.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cxgbit_get_real_dev(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ndev) #14
  br label %return

if.end:                                           ; preds = %entry
  %and.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call ptr @vlan_dev_real_dev(ptr noundef %ndev) #10
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call3, %if.then2 ], [ %ndev, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cxgbit_free_cdev_np(ptr noundef %cdev, ptr noundef %cnp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cnp to i32
  %shr.i.i = lshr i32 %0, 10
  %and.i.i = and i32 %shr.i.i, 31
  %arrayidx.i = getelementptr %struct.cxgbit_device, ptr %cdev, i32 0, i32 2, i32 %and.i.i
  %np_lock.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %np_lock.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %prev.0.i = phi ptr [ %arrayidx.i, %entry ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0.i = load ptr, ptr %prev.0.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cxgbit_np_hash_del.exit.thread, label %for.body.i

cxgbit_np_hash_del.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i) #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cnp1.i = getelementptr inbounds %struct.np_info, ptr %p.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %cnp1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cnp1.i, align 4
  %cmp.i = icmp eq ptr %3, %cnp
  br i1 %cmp.i, label %cxgbit_np_hash_del.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cxgbit_np_hash_del.exit:                          ; preds = %for.body.i
  %stid2.i = getelementptr inbounds %struct.np_info, ptr %p.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %stid2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stid2.i, align 4
  %6 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.0.i, align 4
  %8 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %prev.0.i, align 4
  tail call void @kfree(ptr noundef nonnull %p.0.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %np_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %cxgbit_np_hash_del.exit.cleanup_crit_edge, label %if.end

cxgbit_np_hash_del.exit.cleanup_crit_edge:        ; preds = %cxgbit_np_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cxgbit_np_hash_del.exit
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %np = getelementptr inbounds %struct.cxgbit_np, ptr %cnp, i32 0, i32 2
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %np_sockaddr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %np_sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp4 = icmp eq i16 %14, 10
  %kref.i = getelementptr inbounds %struct.cxgbit_np, ptr %cnp, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !287
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !288

if.end3.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !282

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_cnp.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cxgbit_get_cnp.exit

cxgbit_get_cnp.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgbit_get_cnp.exit_crit_edge
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3
  %ret.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ret.i, align 4
  %18 = ptrtoint ptr %wr_wait to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wr_wait, align 4
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %rxq_ids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxq_ids, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %conv10 = zext i16 %26 to i32
  %call12 = tail call i32 @cxgb4_remove_server(ptr noundef %22, i32 noundef %5, i32 noundef %conv10, i1 noundef zeroext %cmp4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp16.not = icmp eq i32 %call12, 2
  %cond = select i1 %cmp16.not, i32 0, i32 -105
  %ret.0 = select i1 %cmp13, i32 %cond, i32 %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %cxgbit_get_cnp.exit
  %call.i.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i71 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i71, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @kfree(ptr noundef %cnp) #10
  br label %cleanup

if.end21:                                         ; preds = %cxgbit_get_cnp.exit
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i72 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i72, label %if.end21.out.i.thread_crit_edge, label %if.end.i

if.end21.out.i.thread_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i:                                         ; preds = %if.end21
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_wait, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %out.i

do.end.i:                                         ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %30 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lldi.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %35, %if.end.i.i.i ], [ %33, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.__cxgbit_free_cdev_np, ptr noundef %retval.0.i.i.i, i32 noundef 0) #14
  br label %out.i.thread

out.i.thread:                                     ; preds = %pci_name.exit.i, %if.end21.out.i.thread_crit_edge
  %.sink.i = phi i32 [ -110, %pci_name.exit.i ], [ -5, %if.end21.out.i.thread_crit_edge ]
  %36 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %ret.i, align 4
  br label %do.end14.i

out.i:                                            ; preds = %if.end.i
  %37 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool10.not.i, label %out.i.if.end28_crit_edge, label %out.i.do.end14.i_crit_edge

out.i.do.end14.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

out.i.if.end28_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end14.i:                                       ; preds = %out.i.do.end14.i_crit_edge, %out.i.thread
  %38 = phi i32 [ %.sink.i, %out.i.thread ], [ %.pr, %out.i.do.end14.i_crit_edge ]
  %lldi16.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %39 = ptrtoint ptr %lldi16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lldi16.i, align 4
  %init_name.i.i31.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %do.end14.i.cxgbit_wait_for_reply.exit_crit_edge

do.end14.i.cxgbit_wait_for_reply.exit_crit_edge:  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_wait_for_reply.exit

if.end.i.i34.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %43 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i33.i, align 4
  br label %cxgbit_wait_for_reply.exit

cxgbit_wait_for_reply.exit:                       ; preds = %if.end.i.i34.i, %do.end14.i.cxgbit_wait_for_reply.exit_crit_edge
  %retval.0.i.i35.i = phi ptr [ %44, %if.end.i.i34.i ], [ %42, %do.end14.i.cxgbit_wait_for_reply.exit_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i35.i, i32 noundef %38, i32 noundef 0) #14
  %45 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr76 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %.pr76)
  %cmp25 = icmp eq i32 %.pr76, -110
  br i1 %cmp25, label %cxgbit_wait_for_reply.exit.cleanup_crit_edge, label %cxgbit_wait_for_reply.exit.if.end28_crit_edge

cxgbit_wait_for_reply.exit.if.end28_crit_edge:    ; preds = %cxgbit_wait_for_reply.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

cxgbit_wait_for_reply.exit.cleanup_crit_edge:     ; preds = %cxgbit_wait_for_reply.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %cxgbit_wait_for_reply.exit.if.end28_crit_edge, %out.i.if.end28_crit_edge
  br i1 %cmp4, label %land.lhs.true, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end28
  %46 = ptrtoint ptr %cnp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cnp, align 4
  %tobool33.not = icmp eq ptr %47, null
  br i1 %tobool33.not, label %land.lhs.true.if.end39_crit_edge, label %if.then34

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ports, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %sin6_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1, i32 0, i32 1, i32 4
  tail call void @cxgb4_clip_release(ptr noundef %51, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %land.lhs.true.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tids, align 4
  %local_addr42 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %cnp, i32 0, i32 1
  %54 = ptrtoint ptr %local_addr42 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %local_addr42, align 4
  %conv44 = zext i16 %55 to i32
  tail call void @cxgb4_free_stid(ptr noundef %53, i32 noundef %5, i32 noundef %conv44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %cxgbit_wait_for_reply.exit.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cxgbit_np_hash_del.exit.cleanup_crit_edge, %cxgbit_np_hash_del.exit.thread
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %cxgbit_np_hash_del.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -110, %cxgbit_wait_for_reply.exit.cleanup_crit_edge ], [ -22, %cxgbit_np_hash_del.exit.thread ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_remove_server(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_send_abort_req(ptr noundef %csk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_send_abort_req.__UNIQUE_ID_ddebug733, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_send_abort_req, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tid, align 4
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_send_abort_req.__UNIQUE_ID_ddebug733, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, ptr noundef %csk, i32 noundef %1, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 4
  %cmp.i.i2.i = icmp eq ptr %5, %txq
  %tobool.not.i13.i = icmp eq ptr %5, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

do.end.__skb_queue_purge.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %do.end
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i ], [ %16, %while.body.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #10
  %15 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txq, align 4
  %cmp.i.i.i = icmp eq ptr %16, %txq
  %tobool.not.i1.i = icmp eq ptr %16, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %do.end.__skb_queue_purge.exit_crit_edge
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %__skb_queue_purge.exit.if.end9_crit_edge

__skb_queue_purge.exit.if.end9_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @cxgbit_send_tx_flowc_wr(ptr noundef %csk)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %__skb_queue_purge.exit.if.end9_crit_edge
  %skbq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10
  %17 = ptrtoint ptr %skbq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skbq, align 4
  %cmp.i.i = icmp eq ptr %18, %skbq
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %18
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %if.end9.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end9.__skb_dequeue.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %21 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %spec.store.select.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end9.__skb_dequeue.exit_crit_edge
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i.i, label %cxgb_mk_abort_req.exit, label %do.body3.i.i.i, !prof !282

do.body3.i.i.i:                                   ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_abort_req.exit:                           ; preds = %__skb_dequeue.exit
  %29 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csk, align 4
  %txq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %31 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %txq_idx, align 4
  %tid11 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %33 = ptrtoint ptr %tid11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tid11, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 32
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %38, 32
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %39 = getelementptr inbounds i8, ptr %36, i32 20
  %40 = call ptr @memset(ptr %39, i32 0, i32 12)
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 83886096, ptr %36, align 8
  %shl.i = shl i32 %34, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %36, i32 0, i32 1
  %42 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %36, i32 0, i32 2
  %43 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %wr_lo.i, align 8
  %or3.i = or i32 %34, 167772160
  %ot.i = getelementptr inbounds %struct.cpl_abort_req, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or3.i, ptr %ot.i, align 8
  %shl.i.i = shl i16 %32, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %shl.i.i, ptr %queue_mapping1.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %30, ptr %cb.i.i, align 8
  %arp_err_handler.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %arp_err_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @cxgbit_abort_arp_failure, ptr %arp_err_handler.i.i, align 4
  %48 = load ptr, ptr %csk, align 4
  %l2t = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %49 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %l2t, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i1 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i1, label %if.then.i2, label %if.end.i

if.then.i2:                                       ; preds = %cxgb_mk_abort_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #14
  br label %cxgbit_l2t_send.exit

if.end.i:                                         ; preds = %cxgb_mk_abort_req.exit
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %48, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ports.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call2.i = tail call i32 @cxgb4_l2t_send(ptr noundef %56, ptr noundef %spec.store.select.i.i, ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cxgbit_l2t_send.exit_crit_edge

if.end.i.cxgbit_l2t_send.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_l2t_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  br label %cxgbit_l2t_send.exit

cxgbit_l2t_send.exit:                             ; preds = %if.then3.i, %if.end.i.cxgbit_l2t_send.exit_crit_edge, %if.then.i2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_abort_arp_failure(ptr noundef %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_abort_arp_failure.__UNIQUE_ID_ddebug732, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_abort_arp_failure, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_abort_arp_failure.__UNIQUE_ID_ddebug732, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef %handle) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd, align 1
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cxgbit_ofld_send.exit

if.end.i:                                         ; preds = %do.end
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call2.i = tail call i32 @cxgb4_ofld_send(ptr noundef %8, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cxgbit_ofld_send.exit_crit_edge

if.end.i.cxgbit_ofld_send.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_ofld_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cxgbit_ofld_send.exit

cxgbit_ofld_send.exit:                            ; preds = %if.then3.i, %if.end.i.cxgbit_ofld_send.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_push_tx_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_cxgbit_free_cdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_fw4_ack(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %credits1 = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %credits1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %credits1, align 4
  %conv = zext i8 %3 to i32
  %snd_una2 = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %snd_una2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_una2, align 4
  %wr_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 22
  %6 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wr_cred, align 4
  %add = add i32 %7, %conv
  store i32 %add, ptr %wr_cred, align 4
  %wr_una_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 23
  %8 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_una_cred, align 4
  %wr_max_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 24
  %10 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr_max_cred, align 4
  %sub = sub i32 %11, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp = icmp ugt i32 %9, %sub
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %wr_una_cred, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not144 = icmp eq i8 %3, 0
  br i1 %tobool.not144, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %credits.0145 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub39, %cleanup.while.body_crit_edge ]
  %13 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr_pending_head.i, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %do.end, label %if.end18, !prof !288

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %15 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tid, align 4
  %17 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr_cred, align 4
  %19 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wr_una_cred, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %csk, i32 noundef %16, i32 noundef %credits.0145, i32 noundef %18, i32 noundef %20) #14
  br label %while.end

if.end18:                                         ; preds = %while.body
  %21 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %credits.0145, i32 %23)
  %cmp19 = icmp ult i32 %credits.0145, %23
  br i1 %cmp19, label %do.end30, label %cleanup, !prof !288

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %tid32 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %24 = ptrtoint ptr %tid32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tid32, align 4
  %26 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wr_cred, align 4
  %28 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wr_una_cred, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %csk, i32 noundef %25, i32 noundef %credits.0145, i32 noundef %27, i32 noundef %29, i32 noundef %23) #14
  %sub36 = sub i32 %23, %credits.0145
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub36, ptr %21, align 8
  br label %while.end

cleanup:                                          ; preds = %if.end18
  %wr_next.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %wr_next.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr_next.i, align 8
  %33 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %wr_pending_head.i, align 4
  store ptr null, ptr %wr_next.i, align 8
  %sub39 = sub i32 %credits.0145, %23
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #10
  %tobool.not = icmp eq i32 %sub39, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end30, %do.end, %if.end.while.end_crit_edge
  %34 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wr_cred, align 4
  %36 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wr_max_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i = icmp ugt i32 %35, %37
  br i1 %cmp.i, label %do.end.i, label %while.cond.preheader.i, !prof !288

while.cond.preheader.i:                           ; preds = %while.end
  %wr_pending_head.i134 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 11
  %38 = ptrtoint ptr %wr_pending_head.i134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %skb.044.i = load ptr, ptr %wr_pending_head.i134, align 4
  %tobool4.not45.i = icmp eq ptr %skb.044.i, null
  br i1 %tobool4.not45.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %tid.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %39 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tid.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %csk, i32 noundef %40, i32 noundef %35, i32 noundef %37) #14
  br label %if.then48

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %skb.047.i = phi ptr [ %skb.0.i, %while.body.i.while.body.i_crit_edge ], [ %skb.044.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %credit.046.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb.047.i, i32 0, i32 15, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %add.i = add i32 %43, %credit.046.i
  %wr_next.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb.047.i, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %wr_next.i135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %skb.0.i = load ptr, ptr %wr_next.i135, align 4
  %tobool4.not.i = icmp eq ptr %skb.0.i, null
  br i1 %tobool4.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %credit.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add.i, %while.body.i.while.end.i_crit_edge ]
  %add6.i = add i32 %credit.0.lcssa.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %37)
  %cmp8.not.i = icmp eq i32 %add6.i, %37
  br i1 %cmp8.not.i, label %if.end49, label %do.end18.i, !prof !282

do.end18.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %tid20.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %45 = ptrtoint ptr %tid20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tid20.i, align 4
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %csk, i32 noundef %46, i32 noundef %35, i32 noundef %credit.0.lcssa.i, i32 noundef %37) #14
  br label %if.then48

if.then48:                                        ; preds = %do.end18.i, %do.end.i
  tail call fastcc void @cxgbit_queue_rx_skb(ptr noundef %csk, ptr noundef %skb)
  br label %cleanup81

if.end49:                                         ; preds = %while.end.i
  %seq_vld = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %seq_vld to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %seq_vld, align 1
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool51.not = icmp eq i8 %49, 0
  br i1 %tobool51.not, label %if.end49.if.end76_crit_edge, label %if.then52

if.end49.if.end76_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then52:                                        ; preds = %if.end49
  %snd_una53 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 25
  %50 = ptrtoint ptr %snd_una53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %snd_una53, align 4
  %sub.i = sub i32 %5, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i136 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i136, label %do.end64, label %if.end69, !prof !288

do.end64:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %tid66 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %52 = ptrtoint ptr %tid66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tid66, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %csk, i32 noundef %53, i32 noundef %5, i32 noundef %51) #14
  br label %rel_skb

if.end69:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %51)
  %cmp71.not = icmp eq i32 %5, %51
  br i1 %cmp71.not, label %if.end69.if.end76_crit_edge, label %if.then73

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %snd_una53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %5, ptr %snd_una53, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge, %if.end49.if.end76_crit_edge
  %qlen.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool78.not = icmp eq i32 %56, 0
  br i1 %tobool78.not, label %if.end76.rel_skb_crit_edge, label %if.then79

if.end76.rel_skb_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbit_push_tx_frames(ptr noundef %csk) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.then79, %if.end76.rel_skb_crit_edge, %do.end64
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup81

cleanup81:                                        ; preds = %rel_skb, %if.then48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_peer_close(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_peer_close.__UNIQUE_ID_ddebug756, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_peer_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tid, align 4
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_peer_close.__UNIQUE_ID_ddebug756, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, ptr noundef %csk, i32 noundef %1, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %5, label %do.end14 [
    i32 3, label %sw.bb
    i32 5, label %sw.bb7
    i32 6, label %sw.bb10
    i32 4, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %state4, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cb.i, align 8
  %rxq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rxq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %skb, ptr %10, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %waitq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %return

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %state4, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  %17 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %state4, align 4
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i.i:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %sw.epilog

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %5) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge, %sw.bb7, %do.end.sw.epilog_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_close_con_rpl(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_close_con_rpl.__UNIQUE_ID_ddebug757, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_close_con_rpl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tid, align 4
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_close_con_rpl.__UNIQUE_ID_ddebug757, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, ptr noundef %csk, i32 noundef %1, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %5, label %do.end12 [
    i32 5, label %sw.bb
    i32 6, label %sw.bb7
    i32 4, label %do.end.sw.epilog_crit_edge
    i32 7, label %do.end.sw.epilog_crit_edge25
  ]

do.end.sw.epilog_crit_edge25:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %state4, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  %8 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %state4, align 4
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i.i:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %sw.epilog

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %5) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge, %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge25
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_abort_req_rss(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_abort_req_rss.__UNIQUE_ID_ddebug758, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_abort_req_rss, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_abort_req_rss.__UNIQUE_ID_ddebug758, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.69, ptr noundef %csk, i32 noundef %and, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  %conv = zext i8 %7 to i32
  %status.off.i = add nsw i32 %conv, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.off.i)
  %switch.i = icmp ult i32 %status.off.i, 3
  br i1 %switch.i, label %do.end9, label %if.end14

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %and) #14
  br label %rel_skb

if.end14:                                         ; preds = %do.end
  %state16 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %8 = ptrtoint ptr %state16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state16, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %9, label %do.end30 [
    i32 2, label %if.end14.sw.bb_crit_edge
    i32 6, label %if.end14.sw.bb_crit_edge87
    i32 3, label %sw.bb19
    i32 5, label %sw.bb22
    i32 4, label %if.end14.sw.epilog_crit_edge
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end14.sw.bb_crit_edge87:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge87
  %11 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %state16, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %state16, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %state16, align 4
  %conn = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 4
  %tobool25.not = icmp eq ptr %15, null
  br label %sw.epilog

do.end30:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69, i32 noundef %9) #14
  %16 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %state16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end30, %sw.bb22, %sw.bb19, %sw.bb, %if.end14.sw.epilog_crit_edge
  %wakeup_thread.0.off0 = phi i1 [ false, %do.end30 ], [ false, %if.end14.sw.epilog_crit_edge ], [ true, %sw.bb19 ], [ false, %sw.bb ], [ false, %sw.bb22 ]
  %release.0.off0 = phi i1 [ false, %do.end30 ], [ false, %if.end14.sw.epilog_crit_edge ], [ false, %sw.bb19 ], [ true, %sw.bb ], [ %tobool25.not, %sw.bb22 ]
  %txq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %17 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txq, align 4
  %cmp.i.i2.i = icmp eq ptr %18, %txq
  %tobool.not.i13.i = icmp eq ptr %18, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %sw.epilog.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

sw.epilog.__skb_queue_purge.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %sw.epilog
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi ptr [ %18, %while.body.lr.ph.i ], [ %29, %while.body.i.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %19, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i.i.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #10
  %28 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txq, align 4
  %cmp.i.i.i = icmp eq ptr %29, %txq
  %tobool.not.i1.i = icmp eq ptr %29, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %sw.epilog.__skb_queue_purge.exit_crit_edge
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  %call38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %__skb_queue_purge.exit.if.end42_crit_edge

__skb_queue_purge.exit.if.end42_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 @cxgbit_send_tx_flowc_wr(ptr noundef %csk)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %__skb_queue_purge.exit.if.end42_crit_edge
  %skbq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10
  %30 = ptrtoint ptr %skbq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skbq, align 4
  %cmp.i.i = icmp eq ptr %31, %skbq
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %31
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %if.end42.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end42.__skb_dequeue.exit_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %34 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %spec.store.select.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %37, ptr %prev17.i.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %35, ptr %37, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end42.__skb_dequeue.exit_crit_edge
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i.i, label %cxgb_mk_abort_rpl.exit, label %do.body3.i.i.i, !prof !282

do.body3.i.i.i:                                   ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

cxgb_mk_abort_rpl.exit:                           ; preds = %__skb_dequeue.exit
  %txq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %42 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %txq_idx, align 4
  %tid44 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %44 = ptrtoint ptr %tid44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tid44, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 32
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %49, 32
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %50 = getelementptr inbounds i8, ptr %47, i32 20
  %51 = call ptr @memset(ptr %50, i32 0, i32 12)
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 83886096, ptr %47, align 8
  %shl.i = shl i32 %45, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %47, i32 0, i32 1
  %53 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %47, i32 0, i32 2
  %54 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %wr_lo.i, align 8
  %or3.i = or i32 %45, 184549376
  %ot.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or3.i, ptr %ot.i, align 8
  %cmd.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %47, i32 0, i32 4
  %56 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %cmd.i, align 1
  %shl.i.i = shl i16 %43, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %shl.i.i, ptr %queue_mapping1.i.i.i, align 8
  %58 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csk, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i83 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i83, label %if.then.i84, label %if.end.i

if.then.i84:                                      ; preds = %cxgb_mk_abort_rpl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cxgbit_ofld_send.exit

if.end.i:                                         ; preds = %cxgb_mk_abort_rpl.exit
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %59, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call2.i = tail call i32 @cxgb4_ofld_send(ptr noundef %65, ptr noundef %spec.store.select.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cxgbit_ofld_send.exit_crit_edge

if.end.i.cxgbit_ofld_send.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_ofld_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  br label %cxgbit_ofld_send.exit

cxgbit_ofld_send.exit:                            ; preds = %if.then3.i, %if.end.i.cxgbit_ofld_send.exit_crit_edge, %if.then.i84
  br i1 %wakeup_thread.0.off0, label %if.then48, label %if.end49

if.then48:                                        ; preds = %cxgbit_ofld_send.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %66 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %cb.i, align 8
  %rxq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i, align 4
  %69 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %rxq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %70 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %skb, ptr %68, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %73, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %waitq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.end49:                                         ; preds = %cxgbit_ofld_send.exit
  br i1 %release.0.off0, label %if.then51, label %if.end49.rel_skb_crit_edge

if.end49.rel_skb_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then51:                                        ; preds = %if.end49
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rel_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.rel_skb_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %rel_skb

if.then.i.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %rel_skb

rel_skb:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rel_skb_crit_edge, %if.end49.rel_skb_crit_edge, %do.end9
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_skb, %if.then48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_abort_rpl_rss(ptr noundef %csk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_abort_rpl_rss.__UNIQUE_ID_ddebug759, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_abort_rpl_rss, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid, align 4
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_abort_rpl_rss.__UNIQUE_ID_ddebug759, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.74, ptr noundef %csk, i32 noundef %3, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state5 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cond = icmp eq i32 %7, 4
  br i1 %cond, label %sw.bb, label %do.end16

sw.bb:                                            ; preds = %do.end
  %8 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %state5, align 4
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %sw.bb.if.end13_crit_edge, label %if.then11

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %sw.bb
  %wr_wait = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3
  %status = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  %14 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 3, i32 1
  br i1 %cmp.i, label %if.end.thread.i, label %do.end.i

if.end.thread.i:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  br label %cxgbit_wake_up.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %13 to i32
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -5, ptr %14, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.74, i32 noundef %conv.i) #14
  br label %cxgbit_wake_up.exit

cxgbit_wake_up.exit:                              ; preds = %do.end.i, %if.end.thread.i
  tail call void @complete(ptr noundef %wr_wait) #10
  br label %if.end13

if.end13:                                         ; preds = %cxgbit_wake_up.exit, %sw.bb.if.end13_crit_edge
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %sw.epilog

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %7) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_queue_rx_skb(ptr noundef %csk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cb, align 8
  %rxq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %prev.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rxq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %2, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %skb, ptr %2, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %waitq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_set_emss(ptr nocapture noundef %csk, i16 noundef zeroext %opt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %mtus = getelementptr inbounds %struct.cxgbit_device, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtus, align 4
  %conv = zext i16 %opt to i32
  %4 = lshr i32 %conv, 12
  %arrayidx = getelementptr i16, ptr %3, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %remote_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 2
  %7 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %remote_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp = icmp eq i16 %8, 2
  %cond.neg = select i1 %cmp, i16 -20, i16 -40
  %sub = add i16 %cond.neg, %6
  %sub5 = add i16 %sub, -20
  %emss = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 37
  %9 = ptrtoint ptr %emss to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %sub5, ptr %emss, align 2
  %mss = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 36
  %10 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sub5, ptr %mss, align 4
  %11 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %sub13 = add i16 %sub, -32
  %12 = select i1 %tobool.not, i16 %sub5, i16 %sub13
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %12)
  %cmp17 = icmp ugt i16 %12, 127
  %13 = and i1 %tobool.not, %cmp17
  br i1 %13, label %entry._crit_edge, label %14

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %17

14:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i16 @llvm.umax.i16(i16 %12, i16 128)
  %16 = ptrtoint ptr %emss to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %emss, align 2
  br label %17

17:                                               ; preds = %14, %entry._crit_edge
  %18 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %emss, align 2
  %conv23 = zext i16 %19 to i32
  %and24 = and i32 %conv23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %.do.body35_crit_edge, label %do.end

.do.body35_crit_edge:                             ; preds = %17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

do.end:                                           ; preds = %17
  call void @__sanitizer_cov_trace_pc() #12
  %conv31 = zext i16 %sub5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %4, i32 noundef %conv31, i32 noundef %conv23) #14
  br label %do.body35

do.body35:                                        ; preds = %do.end, %.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_set_emss.__UNIQUE_ID_ddebug735, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_set_emss, %if.then41)) #10
          to label %do.end50 [label %if.then41], !srcloc !284

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mss, align 4
  %conv46 = zext i16 %21 to i32
  %22 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %emss, align 2
  %conv48 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_set_emss.__UNIQUE_ID_ddebug735, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %4, i32 noundef %conv46, i32 noundef %conv48) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then41, %do.body35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb_get_4tuple(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb_find_route(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb_find_route6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_offload_init(ptr noundef %csk, i32 noundef %iptype, ptr noundef %peer_ip, i16 noundef zeroext %local_port, ptr noundef %dst, ptr nocapture noundef %cdev) unnamed_addr #0 align 64 {
entry:
  %caps.i = alloca i8, align 1
  %iscsi_dcb_app.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i202 = tail call ptr %3(ptr noundef %dst, ptr noundef null, ptr noundef %peer_ip) #10
  %cmp.i.i = icmp ugt ptr %call.i202, inttoptr (i32 -4096 to ptr)
  %tobool.not267 = icmp eq ptr %call.i202, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not267
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !268) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !278
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call.i202, i32 0, i32 12
  %8 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nud_state, align 8
  %10 = and i8 %9, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.then2, label %rcu_read_lock.exit.if.end4_crit_edge

rcu_read_lock.exit.if.end4_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %rcu_read_lock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i202, i32 0, i32 10
  %12 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i = icmp eq i32 %13, %11
  br i1 %cmp.not.i.i, label %if.then2.if.end.i.i_crit_edge, label %do.body5.i.i

if.then2.if.end.i.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %11, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %if.then2.if.end.i.i_crit_edge
  %15 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nud_state, align 8
  %17 = and i8 %16, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.if.end4_crit_edge

if.end.i.i.if.end4_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef nonnull %call.i202, ptr noundef null, i1 noundef zeroext true) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then11.i.i, %if.end.i.i.if.end4_crit_edge, %rcu_read_lock.exit.if.end4_crit_edge
  %dev = getelementptr inbounds %struct.neighbour, ptr %call.i202, i32 0, i32 25
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and5 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else49, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iptype)
  %cmp = icmp eq i32 %iptype, 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %22 = ptrtoint ptr %peer_ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %peer_ip, align 4
  %call.i203 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %23, i1 noundef zeroext false) #10
  %tobool.not.i204 = icmp eq ptr %call.i203, null
  br i1 %tobool.not.i204, label %if.then9.out_crit_edge, label %if.end.i

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.then9
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call.i203, i32 0, i32 15
  %24 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %25, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i205 = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i205, label %if.end.i.i207, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i203) #14
  br label %out

if.end.i.i207:                                    ; preds = %if.end.i
  %and.i.i.i = and i64 %25, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i207.if.end15_crit_edge, label %if.then2.i.i

if.end.i.i207.if.end15_crit_edge:                 ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2.i.i:                                     ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %call.i203) #10
  br label %if.end12

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call fastcc ptr @cxgbit_ipv6_netdev(ptr noundef %peer_ip)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2.i.i
  %ndev.0 = phi ptr [ %call11, %if.else ], [ %call3.i.i, %if.then2.i.i ]
  %tobool13.not = icmp eq ptr %ndev.0, null
  br i1 %tobool13.not, label %if.end12.out_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end.i.i207.if.end15_crit_edge
  %ndev.0258 = phi ptr [ %ndev.0, %if.end12.if.end15_crit_edge ], [ %call.i203, %if.end.i.i207.if.end15_crit_edge ]
  %l2t = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %l2t, align 4
  %call16 = tail call ptr @cxgb4_l2t_get(ptr noundef %27, ptr noundef nonnull %call.i202, ptr noundef nonnull %ndev.0258, i32 noundef 0) #10
  %l2t17 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %28 = ptrtoint ptr %l2t17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call16, ptr %l2t17, align 4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %if.end15.out_crit_edge, label %if.end21

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev.0258, i32 0, i32 20
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu, align 4
  %mtu22 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 31
  %31 = ptrtoint ptr %mtu22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mtu22, align 4
  %call23 = tail call i32 @cxgb4_port_chan(ptr noundef nonnull %ndev.0258) #10
  %tx_chan = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 30
  %32 = ptrtoint ptr %tx_chan to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call23, ptr %tx_chan, align 4
  %smt_idx = getelementptr i8, ptr %ndev.0258, i32 2966
  %33 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %smt_idx, align 2
  %conv25 = zext i8 %34 to i32
  %smac_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 29
  %35 = ptrtoint ptr %smac_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv25, ptr %smac_idx, align 4
  %ntxq = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 9
  %36 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ntxq, align 2
  %nchan = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 11
  %38 = ptrtoint ptr %nchan to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %nchan, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %div.rhs.trunc = zext i8 %bf.lshr to i16
  %div265 = udiv i16 %37, %div.rhs.trunc
  %call30 = tail call i32 @cxgb4_port_idx(ptr noundef nonnull %ndev.0258) #10
  %39 = trunc i32 %call30 to i16
  %conv31 = mul i16 %div265, %39
  %txq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %40 = ptrtoint ptr %txq_idx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv31, ptr %txq_idx, align 4
  %nrxq = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 8
  %41 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nrxq, align 4
  %43 = ptrtoint ptr %nchan to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load36 = load i8, ptr %nchan, align 2
  %bf.lshr37 = lshr i8 %bf.load36, 4
  %div39.rhs.trunc = zext i8 %bf.lshr37 to i16
  %div39266 = udiv i16 %42, %div39.rhs.trunc
  %div39.zext = zext i16 %div39266 to i32
  %call40 = tail call i32 @cxgb4_port_idx(ptr noundef nonnull %ndev.0258) #10
  %conv41 = trunc i32 %call40 to i16
  %ctrlq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %44 = ptrtoint ptr %ctrlq_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv41, ptr %ctrlq_idx, align 2
  %rxq_ids = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxq_ids, align 4
  %call43 = tail call i32 @cxgb4_port_idx(ptr noundef nonnull %ndev.0258) #10
  %mul44 = mul i32 %call43, %div39.zext
  %arrayidx = getelementptr i16, ptr %46, i32 %mul44
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 2
  %rss_qid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %49 = ptrtoint ptr %rss_qid to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %rss_qid, align 2
  %call45 = tail call i32 @cxgb4_port_idx(ptr noundef nonnull %ndev.0258) #10
  %conv46 = trunc i32 %call45 to i8
  %port_id47 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 43
  %50 = ptrtoint ptr %port_id47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv46, ptr %port_id47, align 1
  %speed.i = getelementptr i8, ptr %ndev.0258, i32 2352
  %51 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed.i, align 4
  %div.i = udiv i32 %52, 10000
  %conv.i = trunc i32 %div.i to i8
  %rcv_win.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i209 = icmp eq i8 %conv.i, 0
  %conv1.i = shl i32 %div.i, 18
  %mul.i = and i32 %conv1.i, 66846720
  %storemerge46.i = select i1 %tobool.not.i209, i32 262144, i32 %mul.i
  %53 = tail call i32 @llvm.umin.i32(i32 %storemerge46.i, i32 1047552) #10
  %54 = ptrtoint ptr %rcv_win.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rcv_win.i, align 4
  %snd_win.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 34
  %55 = tail call i32 @llvm.umin.i32(i32 %storemerge46.i, i32 524288) #10
  %56 = ptrtoint ptr %snd_win.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %snd_win.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_offload_init, %if.then25.i)) #10
          to label %out [label %if.then25.i], !srcloc !284

if.then25.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %snd_win.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %snd_win.i, align 4
  %59 = ptrtoint ptr %rcv_win.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rcv_win.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %58, i32 noundef %60) #10
  br label %out

if.else49:                                        ; preds = %if.end4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 15
  %61 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %62, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i210 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i210, label %if.end.i213, label %cxgbit_get_real_dev.exit.thread

cxgbit_get_real_dev.exit.thread:                  ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  %call.i211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %19) #14
  br label %out

if.end.i213:                                      ; preds = %if.else49
  %and.i.i212 = and i64 %62, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i212)
  %tobool.i.not.i = icmp eq i64 %and.i.i212, 0
  br i1 %tobool.i.not.i, label %if.end.i213.cxgbit_get_real_dev.exit_crit_edge, label %if.then2.i

if.end.i213.cxgbit_get_real_dev.exit_crit_edge:   ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_real_dev.exit

if.then2.i:                                       ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @vlan_dev_real_dev(ptr noundef %19) #10
  br label %cxgbit_get_real_dev.exit

cxgbit_get_real_dev.exit:                         ; preds = %if.then2.i, %if.end.i213.cxgbit_get_real_dev.exit_crit_edge
  %retval.0.i214 = phi ptr [ %call3.i, %if.then2.i ], [ %19, %if.end.i213.cxgbit_get_real_dev.exit_crit_edge ]
  %tobool52.not = icmp eq ptr %retval.0.i214, null
  br i1 %tobool52.not, label %cxgbit_get_real_dev.exit.out_crit_edge, label %if.end54

cxgbit_get_real_dev.exit.out_crit_edge:           ; preds = %cxgbit_get_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end54:                                         ; preds = %cxgbit_get_real_dev.exit
  %dcbnl_ops.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i214, i32 0, i32 139
  %63 = ptrtoint ptr %dcbnl_ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dcbnl_ops.i, align 16
  %getstate.i = getelementptr inbounds %struct.dcbnl_rtnl_ops, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %getstate.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %getstate.i, align 4
  %call.i215 = tail call zeroext i8 %66(ptr noundef nonnull %retval.0.i214) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i215)
  %tobool56.not = icmp eq i8 %call.i215, 0
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %caps.i) #10
  %67 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %caps.i, align 1, !annotation !290
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iscsi_dcb_app.i) #10
  %68 = getelementptr inbounds %struct.dcb_app, ptr %iscsi_dcb_app.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.dcb_app, ptr %iscsi_dcb_app.i, i32 0, i32 2
  %70 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %iscsi_dcb_app.i, align 2
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %68, align 1
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %local_port, ptr %69, align 2
  %73 = ptrtoint ptr %dcbnl_ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dcbnl_ops.i, align 16
  %getcap.i = getelementptr inbounds %struct.dcbnl_rtnl_ops, ptr %74, i32 0, i32 28
  %75 = ptrtoint ptr %getcap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %getcap.i, align 4
  %call.i217 = call zeroext i8 %76(ptr noundef nonnull %retval.0.i214, i32 noundef 9, ptr noundef nonnull %caps.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i217)
  %tobool.not.i218 = icmp eq i8 %call.i217, 0
  br i1 %tobool.not.i218, label %if.end.i221, label %if.then57.cxgbit_get_iscsi_dcb_priority.exit_crit_edge

if.then57.cxgbit_get_iscsi_dcb_priority.exit_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_get_iscsi_dcb_priority.exit

if.end.i221:                                      ; preds = %if.then57
  %77 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %caps.i, align 1
  %conv1.i219 = zext i8 %78 to i32
  %and.i220 = and i32 %conv1.i219, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool2.not.i = icmp eq i32 %and.i220, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i221
  %79 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %iscsi_dcb_app.i, align 2
  %call5.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef nonnull %retval.0.i214, ptr noundef nonnull %iscsi_dcb_app.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool7.not.i = icmp eq i8 %call5.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %do.end.thread39.i

do.end.thread39.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = call i8 @llvm.cttz.i8(i8 %call5.i, i1 true) #10, !range !292
  br label %84

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 4, ptr %iscsi_dcb_app.i, align 2
  %call10.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef nonnull %retval.0.i214, ptr noundef nonnull %iscsi_dcb_app.i) #10
  br label %do.end.i223

if.else.i:                                        ; preds = %if.end.i221
  %and14.i = and i32 %conv1.i219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.do.end.thread.i_crit_edge, label %if.then16.i

if.else.i.do.end.thread.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.thread.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %iscsi_dcb_app.i, align 2
  %call18.i = call zeroext i8 @dcb_getapp(ptr noundef nonnull %retval.0.i214, ptr noundef nonnull %iscsi_dcb_app.i) #10
  br label %do.end.i223

do.end.i223:                                      ; preds = %if.then16.i, %if.then8.i
  %ret.0.shrunk.i = phi i8 [ %call10.i, %if.then8.i ], [ %call18.i, %if.then16.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.0.shrunk.i)
  %tobool.not.i.i222 = icmp eq i8 %ret.0.shrunk.i, 0
  %83 = call i8 @llvm.cttz.i8(i8 %ret.0.shrunk.i, i1 true) #10, !range !292
  br i1 %tobool.not.i.i222, label %do.end.i223.do.end.thread.i_crit_edge, label %do.end.i223._crit_edge

do.end.i223._crit_edge:                           ; preds = %do.end.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %84

do.end.i223.do.end.thread.i_crit_edge:            ; preds = %do.end.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.thread.i

do.end.thread.i:                                  ; preds = %do.end.i223.do.end.thread.i_crit_edge, %if.else.i.do.end.thread.i_crit_edge
  br label %84

84:                                               ; preds = %do.end.thread.i, %do.end.i223._crit_edge, %do.end.thread39.i
  %85 = phi i8 [ 0, %do.end.thread.i ], [ %83, %do.end.i223._crit_edge ], [ %80, %do.end.thread39.i ]
  %retval.0.i.i = zext i8 %85 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %retval.0.i.i) #14
  br label %cxgbit_get_iscsi_dcb_priority.exit

cxgbit_get_iscsi_dcb_priority.exit:               ; preds = %84, %if.then57.cxgbit_get_iscsi_dcb_priority.exit_crit_edge
  %retval.0.i224 = phi i8 [ %85, %84 ], [ 0, %if.then57.cxgbit_get_iscsi_dcb_priority.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iscsi_dcb_app.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %caps.i) #10
  br label %if.end59

if.end59:                                         ; preds = %cxgbit_get_iscsi_dcb_priority.exit, %if.end54.if.end59_crit_edge
  %priority.0 = phi i8 [ %retval.0.i224, %cxgbit_get_iscsi_dcb_priority.exit ], [ 0, %if.end54.if.end59_crit_edge ]
  %dcb_priority = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 45
  %86 = ptrtoint ptr %dcb_priority to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %priority.0, ptr %dcb_priority, align 1
  %l2t61 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %l2t61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %l2t61, align 4
  %conv62 = zext i8 %priority.0 to i32
  %call63 = call ptr @cxgb4_l2t_get(ptr noundef %88, ptr noundef nonnull %call.i202, ptr noundef nonnull %retval.0.i214, i32 noundef %conv62) #10
  %l2t64 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %89 = ptrtoint ptr %l2t64 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call63, ptr %l2t64, align 4
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %if.end59.out_crit_edge, label %if.end68

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = call i32 @cxgb4_port_idx(ptr noundef nonnull %retval.0.i214) #10
  %90 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mtu.i, align 4
  %call.i226 = call i32 %93(ptr noundef %dst) #10
  %mtu72 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 31
  %94 = ptrtoint ptr %mtu72 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call.i226, ptr %mtu72, align 4
  %call73 = call i32 @cxgb4_port_chan(ptr noundef nonnull %retval.0.i214) #10
  %tx_chan74 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 30
  %95 = ptrtoint ptr %tx_chan74 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call73, ptr %tx_chan74, align 4
  %smt_idx76 = getelementptr i8, ptr %retval.0.i214, i32 2966
  %96 = ptrtoint ptr %smt_idx76 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %smt_idx76, align 2
  %conv77 = zext i8 %97 to i32
  %smac_idx78 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 29
  %98 = ptrtoint ptr %smac_idx78 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv77, ptr %smac_idx78, align 4
  %ntxq80 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 9
  %99 = ptrtoint ptr %ntxq80 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ntxq80, align 2
  %nports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 11
  %101 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load83 = load i8, ptr %nports, align 2
  %bf.clear = and i8 %bf.load83, 15
  %div85.rhs.trunc = zext i8 %bf.clear to i16
  %div85261 = udiv i16 %100, %div85.rhs.trunc
  %conv86 = and i32 %call69, 65535
  %arrayidx88 = getelementptr %struct.cxgbit_device, ptr %cdev, i32 0, i32 4, i32 %conv86
  %102 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx88, align 2
  %inc = add i8 %103, 1
  store i8 %inc, ptr %arrayidx88, align 2
  %rem.lhs.trunc = zext i8 %103 to i16
  %rem262 = urem i16 %rem.lhs.trunc, %div85261
  %104 = trunc i32 %call69 to i16
  %105 = mul i16 %div85261, %104
  %conv91 = add i16 %rem262, %105
  %txq_idx92 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %106 = ptrtoint ptr %txq_idx92 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv91, ptr %txq_idx92, align 4
  %call93 = call i32 @cxgb4_port_idx(ptr noundef nonnull %retval.0.i214) #10
  %conv94 = trunc i32 %call93 to i16
  %ctrlq_idx95 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %107 = ptrtoint ptr %ctrlq_idx95 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv94, ptr %ctrlq_idx95, align 2
  %nrxq97 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 8
  %108 = ptrtoint ptr %nrxq97 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %nrxq97, align 4
  %110 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load101 = load i8, ptr %nports, align 2
  %bf.clear102 = and i8 %bf.load101, 15
  %div104.rhs.trunc = zext i8 %bf.clear102 to i16
  %div104263 = udiv i16 %109, %div104.rhs.trunc
  %div104.zext = zext i16 %div104263 to i32
  %mul106 = mul i32 %call69, %div104.zext
  %arrayidx110 = getelementptr %struct.cxgbit_device, ptr %cdev, i32 0, i32 4, i32 %conv86, i32 1
  %111 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx110, align 1
  %inc111 = add i8 %112, 1
  store i8 %inc111, ptr %arrayidx110, align 1
  %rem113.lhs.trunc = zext i8 %112 to i16
  %rem113264 = urem i16 %rem113.lhs.trunc, %div104263
  %rem113.zext = zext i16 %rem113264 to i32
  %add114 = add i32 %mul106, %rem113.zext
  %rxq_ids117 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 6
  %113 = ptrtoint ptr %rxq_ids117 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rxq_ids117, align 4
  %idxprom118 = and i32 %add114, 65535
  %arrayidx119 = getelementptr i16, ptr %114, i32 %idxprom118
  %115 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx119, align 2
  %rss_qid120 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %117 = ptrtoint ptr %rss_qid120 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %rss_qid120, align 2
  %conv121 = trunc i32 %call69 to i8
  %port_id122 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 43
  %118 = ptrtoint ptr %port_id122 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv121, ptr %port_id122, align 1
  %speed.i229 = getelementptr i8, ptr %retval.0.i214, i32 2352
  %119 = ptrtoint ptr %speed.i229 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %speed.i229, align 4
  %div.i230 = udiv i32 %120, 10000
  %conv.i231 = trunc i32 %div.i230 to i8
  %rcv_win.i232 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i231)
  %tobool.not.i233 = icmp eq i8 %conv.i231, 0
  %conv1.i234 = shl i32 %div.i230, 18
  %mul.i235 = and i32 %conv1.i234, 66846720
  %storemerge46.i236 = select i1 %tobool.not.i233, i32 262144, i32 %mul.i235
  %121 = call i32 @llvm.umin.i32(i32 %storemerge46.i236, i32 1047552) #10
  %122 = ptrtoint ptr %rcv_win.i232 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %rcv_win.i232, align 4
  %snd_win.i237 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 34
  %123 = call i32 @llvm.umin.i32(i32 %storemerge46.i236, i32 524288) #10
  %124 = ptrtoint ptr %snd_win.i237 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %snd_win.i237, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_offload_init, %if.then25.i238)) #10
          to label %out [label %if.then25.i238], !srcloc !284

if.then25.i238:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %snd_win.i237 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %snd_win.i237, align 4
  %127 = ptrtoint ptr %rcv_win.i232 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rcv_win.i232, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %126, i32 noundef %128) #10
  br label %out

out:                                              ; preds = %if.then25.i238, %if.end68, %if.end59.out_crit_edge, %cxgbit_get_real_dev.exit.out_crit_edge, %cxgbit_get_real_dev.exit.thread, %if.then25.i, %if.end21, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %do.end.i.i, %if.then9.out_crit_edge
  %ret.0 = phi i32 [ -12, %if.end15.out_crit_edge ], [ -12, %if.end59.out_crit_edge ], [ -19, %if.end12.out_crit_edge ], [ -19, %cxgbit_get_real_dev.exit.out_crit_edge ], [ 0, %if.end21 ], [ 0, %if.then25.i ], [ -19, %cxgbit_get_real_dev.exit.thread ], [ 0, %if.end68 ], [ 0, %if.then25.i238 ], [ -19, %if.then9.out_crit_edge ], [ -19, %do.end.i.i ]
  %call.i241 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i241, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i244

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i244:                               ; preds = %out
  %call1.i242 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i242)
  %tobool.not.i243 = icmp eq i32 %call1.i242, 0
  br i1 %tobool.not.i243, label %land.lhs.true.i244.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i246

land.lhs.true.i244.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i246:                              ; preds = %land.lhs.true.i244
  %.b4.i245 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i245, label %land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge, label %if.then.i247

land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i247:                                     ; preds = %land.lhs.true2.i246
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i247, %land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i244.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !279
  %129 = call i32 @llvm.read_register.i32(metadata !268) #10
  %and.i.i.i.i.i248 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i.i248 to ptr
  %preempt_count.i.i.i.i249 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i.i.i.i249, align 4
  %sub.i.i.i = add i32 %132, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i249, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i202, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i251, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !282

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i251:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  call void @neigh_destroy(ptr noundef nonnull %call.i202) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i251, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i251 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_pass_accept_rpl(ptr noundef %csk, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %mtu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu_idx) #10
  %2 = ptrtoint ptr %mtu_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mtu_idx, align 4, !annotation !290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_pass_accept_rpl.__UNIQUE_ID_ddebug746, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_pass_accept_rpl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %3 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_pass_accept_rpl.__UNIQUE_ID_ddebug746, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, ptr noundef %csk, i32 noundef %4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !282

do.body3.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 48
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %11, 48
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %12 = getelementptr inbounds i8, ptr %9, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 44)
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 83886112, ptr %9, align 8
  %tid11 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %15 = ptrtoint ptr %tid11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tid11, align 4
  %shl = shl i32 %16, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %wr_lo, align 8
  %19 = load i32, ptr %tid11, align 4
  %or17 = or i32 %19, 33554432
  %ot = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or17, ptr %ot, align 8
  %21 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csk, align 4
  %mtus = getelementptr inbounds %struct.cxgbit_device, ptr %22, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mtus, align 4
  %mtu = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 31
  %25 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mtu, align 4
  %conv = trunc i32 %26 to i16
  %tstamp = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %tstamp to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %tstamp, align 1
  %remote_addr = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 2
  %28 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %remote_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %cmp.not = icmp eq i16 %29, 2
  %add.i = select i1 %cmp.not, i16 40, i16 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not.i = icmp sgt i8 %bf.load, -1
  %cond2.i = select i1 %tobool1.not.i, i16 0, i16 12
  %add3.i = add nuw nsw i16 %add.i, %cond2.i
  %sub.i = sub i16 %conv, %add3.i
  %call.i189 = call i32 @cxgb4_best_aligned_mtu(ptr noundef %24, i16 noundef zeroext %add3.i, i16 noundef zeroext %sub.i, i16 noundef zeroext 8, ptr noundef nonnull %mtu_idx) #10
  %rcv_win = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 35
  %30 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rcv_win, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %__skb_put_zero.exit
  %wscale.0.i = phi i32 [ 0, %__skb_put_zero.exit ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %wscale.0.i)
  %cmp.i = icmp ult i32 %wscale.0.i, 14
  %shl.i = shl nuw nsw i32 65535, %wscale.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %31)
  %cmp1.i = icmp ult i32 %shl.i, %31
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  %inc.i = add nuw nsw i32 %wscale.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %cxgb_compute_wscale.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cxgb_compute_wscale.exit:                         ; preds = %while.cond.i
  %shr = lshr i32 %31, 10
  %32 = call i32 @llvm.umin.i32(i32 %shr, i32 1023)
  %conv31 = zext i32 %wscale.0.i to i64
  %shl32 = shl nuw nsw i64 %conv31, 50
  %33 = ptrtoint ptr %mtu_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mtu_idx, align 4
  %conv34 = zext i32 %34 to i64
  %shl35 = shl i64 %conv34, 60
  %l2t = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %35 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %l2t, align 4
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idx, align 2
  %conv37 = zext i16 %38 to i64
  %shl38 = shl nuw nsw i64 %conv37, 36
  %tx_chan = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 30
  %39 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_chan, align 4
  %shl40 = shl i32 %40, 2
  %conv41 = zext i32 %shl40 to i64
  %smac_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 29
  %41 = ptrtoint ptr %smac_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %smac_idx, align 4
  %conv43 = zext i32 %42 to i64
  %shl44 = shl nuw nsw i64 %conv43, 28
  %tos = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 42
  %43 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tos, align 4
  %45 = lshr i8 %44, 2
  %46 = zext i8 %45 to i32
  %shl48 = shl nuw nsw i32 %46, 22
  %47 = zext i32 %shl48 to i64
  %shl52 = shl nuw nsw i32 %32, 12
  %conv53 = zext i32 %shl52 to i64
  %or33 = or i64 %shl32, %conv53
  %or36 = or i64 %or33, %shl35
  %or39 = or i64 %or36, %shl38
  %or42 = or i64 %or39, %conv41
  %or45 = or i64 %or42, %shl44
  %or51 = or i64 %or45, %47
  %or54 = or i64 %or51, 281474976711168
  %rss_qid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 39
  %48 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rss_qid, align 2
  %50 = or i16 %49, 1024
  %or57 = zext i16 %50 to i32
  %adapter_type = getelementptr inbounds %struct.cxgbit_device, ptr %1, i32 0, i32 1, i32 13
  %51 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %adapter_type, align 4
  %53 = and i8 %52, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %53)
  %cmp.i190.not = icmp eq i8 %53, 80
  %or62 = or i32 %or57, 1048576
  %spec.select = select i1 %cmp.i190.not, i32 %or57, i32 %or62
  %54 = ptrtoint ptr %tstamp to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load66 = load i8, ptr %tstamp, align 1
  %or70 = or i32 %spec.select, 536870912
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load66)
  %tobool68.not199 = icmp slt i8 %bf.load66, 0
  %opt2.1 = select i1 %tobool68.not199, i32 %or70, i32 %spec.select
  %55 = and i8 %bf.load66, 64
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 24
  %58 = or i32 %opt2.1, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wscale.0.i)
  %tobool79.not = icmp eq i32 %wscale.0.i, 0
  %or81 = or i32 %58, 268435456
  %opt2.3 = select i1 %tobool79.not, i32 %58, i32 %or81
  %hdr_len = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 3
  %59 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hdr_len, align 4
  %add.ptr = getelementptr %struct.cpl_pass_accept_req, ptr %req, i32 1
  %shr94 = lshr i32 %60, 24
  %shr88 = lshr i32 %60, 26
  %and = and i32 %shr88, 31
  %shr94.sink = select i1 %cmp.i190.not, i32 %and, i32 %shr94
  %.sink = select i1 %cmp.i190.not, i32 16, i32 14
  %add.ptr96 = getelementptr i8, ptr %add.ptr, i32 %shr94.sink
  %shr97 = lshr i32 %60, %.sink
  %and98 = and i32 %shr97, 1023
  %add.ptr99 = getelementptr i8, ptr %add.ptr96, i32 %and98
  %ece = getelementptr inbounds %struct.tcphdr, ptr %add.ptr99, i32 0, i32 4
  %61 = ptrtoint ptr %ece to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load101 = load i16, ptr %ece, align 4
  %62 = and i16 %bf.load101, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %62)
  %.not = icmp eq i16 %62, 192
  %or112 = or i32 %opt2.3, 134217728
  %opt2.4 = select i1 %.not, i32 %or112, i32 %opt2.3
  %call116 = call i32 @prandom_u32() #10
  %and117 = and i32 %call116, -8
  %sub118 = add i32 %and117, -1
  %iss = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %9, i32 0, i32 4
  %63 = ptrtoint ptr %iss to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub118, ptr %iss, align 8
  %or119 = or i32 %opt2.4, -2147188736
  %opt0120 = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %9, i32 0, i32 3
  %64 = ptrtoint ptr %opt0120 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %or54, ptr %opt0120, align 8
  %opt2121 = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %9, i32 0, i32 2
  %65 = ptrtoint ptr %opt2121 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or119, ptr %opt2121, align 4
  %ctrlq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 41
  %66 = ptrtoint ptr %ctrlq_idx to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ctrlq_idx, align 2
  %shl.i193 = shl i16 %67, 1
  %or.i = or i16 %shl.i193, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %68 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %69 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %csk, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @cxgbit_arp_failure_discard, ptr %arp_err_handler.i, align 4
  %71 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %csk, align 4
  %73 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %l2t, align 4
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %72, i32 0, i32 8
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i195 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i195, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cxgb_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end.i:                                         ; preds = %cxgb_compute_wscale.exit
  %ports.i = getelementptr inbounds %struct.cxgbit_device, ptr %72, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ports.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call2.i = call i32 @cxgb4_l2t_send(ptr noundef %80, ptr noundef nonnull %call.i, ptr noundef %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i196 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i196, label %if.then3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu_idx) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_l2t_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_chan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_arp_failure_discard(ptr noundef %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_arp_failure_discard.__UNIQUE_ID_ddebug731, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_arp_failure_discard, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_arp_failure_discard.__UNIQUE_ID_ddebug731, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111, ptr noundef %handle) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %handle, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !281
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !282

if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_csk.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cxgbit_put_csk.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !286
  br label %cxgbit_put_csk.exit

cxgbit_put_csk.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_best_aligned_mtu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !262, !263, !264, !266, !267}
!llvm.named.register.sp = !{!268}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !{ptr @cxgbit_setup_np.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 438, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cxgbit_setup_np.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 442, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.cxgbit_abort_conn, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 715, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 800, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @_cxgbit_free_csk.__UNIQUE_ID_ddebug736, !9, !"__UNIQUE_ID_ddebug736", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1004, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cxgbit_ofld_send._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cxgbit_ofld_send._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1035, i32 3}
!21 = !{ptr @cxgbit_l2t_send._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cxgbit_l2t_send._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1472, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cxgbit_send_tx_flowc_wr._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cxgbit_send_tx_flowc_wr._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1479, i32 2}
!30 = !{ptr @cxgbit_send_tx_flowc_wr.__UNIQUE_ID_ddebug752, !29, !"__UNIQUE_ID_ddebug752", i1 false, i1 false}
!31 = !{ptr @__func__.cxgbit_setup_conn_digest, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1538, i32 22}
!33 = !{ptr @__func__.cxgbit_setup_conn_pgidx, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1571, i32 22}
!35 = !{ptr @cxgbit_cplhandlers, !36, !"cxgbit_cplhandlers", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 2006, i32 24}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 203, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cxgbit_create_server4.__UNIQUE_ID_ddebug728, !41, !"__UNIQUE_ID_ddebug728", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 223, i32 3}
!46 = !{ptr @cxgbit_create_server4._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cxgbit_create_server4._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 152, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cxgbit_create_server6.__UNIQUE_ID_ddebug727, !49, !"__UNIQUE_ID_ddebug727", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 161, i32 4}
!54 = !{ptr @cxgbit_create_server6._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cxgbit_create_server6._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 187, i32 3}
!58 = !{ptr @cxgbit_create_server6._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cxgbit_create_server6._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 251, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cxgbit_get_real_dev._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cxgbit_get_real_dev._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 279, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__func__.__cxgbit_free_cdev_np, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 546, i32 16}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 694, i32 36}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 663, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cxgbit_send_abort_req.__UNIQUE_ID_ddebug733, !80, !"__UNIQUE_ID_ddebug733", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 653, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cxgbit_abort_arp_failure.__UNIQUE_ID_ddebug732, !84, !"__UNIQUE_ID_ddebug732", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 43, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cxgbit_wake_up._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @cxgbit_wake_up._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 62, i32 3}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cxgbit_wait_for_reply._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @cxgbit_wait_for_reply._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 68, i32 3}
!99 = !{ptr @cxgbit_wait_for_reply._entry.37, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cxgbit_wait_for_reply._entry_ptr.39, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 723, i32 2}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__cxgbit_free_conn.__UNIQUE_ID_ddebug734, !102, !"__UNIQUE_ID_ddebug734", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 745, i32 3}
!107 = !{ptr @__cxgbit_free_conn._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @__cxgbit_free_conn._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1494, i32 3}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cxgbit_send_tcb_skb._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @cxgbit_send_tcb_skb._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1608, i32 2}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cxgbit_close_listsrv_rpl.__UNIQUE_ID_ddebug754, !115, !"__UNIQUE_ID_ddebug754", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1612, i32 3}
!120 = !{ptr @cxgbit_close_listsrv_rpl._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @cxgbit_close_listsrv_rpl._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1586, i32 2}
!124 = !{ptr @cxgbit_pass_open_rpl.__UNIQUE_ID_ddebug753, !123, !"__UNIQUE_ID_ddebug753", i1 false, i1 false}
!125 = !{ptr @cxgbit_pass_open_rpl._entry, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1590, i32 3}
!127 = !{ptr @cxgbit_pass_open_rpl._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1992, i32 3}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cxgbit_rx_cpl._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @cxgbit_rx_cpl._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1850, i32 4}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cxgbit_fw4_ack._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @cxgbit_fw4_ack._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1858, i32 4}
!140 = !{ptr @cxgbit_fw4_ack._entry.53, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cxgbit_fw4_ack._entry_ptr.55, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1878, i32 4}
!144 = !{ptr @cxgbit_fw4_ack._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @cxgbit_fw4_ack._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1814, i32 3}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cxgbit_credit_err._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @cxgbit_credit_err._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1825, i32 3}
!153 = !{ptr @cxgbit_credit_err._entry.61, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cxgbit_credit_err._entry_ptr.63, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1673, i32 2}
!157 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cxgbit_peer_close.__UNIQUE_ID_ddebug756, !156, !"__UNIQUE_ID_ddebug756", i1 false, i1 false}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1692, i32 3}
!161 = !{ptr @cxgbit_peer_close._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @cxgbit_peer_close._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1701, i32 2}
!165 = !{ptr @cxgbit_close_con_rpl.__UNIQUE_ID_ddebug757, !164, !"__UNIQUE_ID_ddebug757", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1716, i32 3}
!168 = !{ptr @cxgbit_close_con_rpl._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @cxgbit_close_con_rpl._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1732, i32 2}
!172 = !{ptr @cxgbit_abort_req_rss.__UNIQUE_ID_ddebug758, !171, !"__UNIQUE_ID_ddebug758", i1 false, i1 false}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1736, i32 3}
!175 = !{ptr @cxgbit_abort_req_rss._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cxgbit_abort_req_rss._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1759, i32 3}
!179 = !{ptr @cxgbit_abort_req_rss._entry.71, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cxgbit_abort_req_rss._entry_ptr.73, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1789, i32 2}
!183 = !{ptr @cxgbit_abort_rpl_rss.__UNIQUE_ID_ddebug759, !182, !"__UNIQUE_ID_ddebug759", i1 false, i1 false}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1801, i32 3}
!186 = !{ptr @cxgbit_abort_rpl_rss._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @cxgbit_abort_rpl_rss._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1928, i32 3}
!190 = !{ptr @cxgbit_rx_data._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @cxgbit_rx_data._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1907, i32 3}
!194 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @cxgbit_set_tcb_rpl._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @cxgbit_set_tcb_rpl._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1636, i32 3}
!199 = !{ptr @cxgbit_pass_establish._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cxgbit_pass_establish._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1641, i32 2}
!203 = !{ptr @cxgbit_pass_establish.__UNIQUE_ID_ddebug755, !202, !"__UNIQUE_ID_ddebug755", i1 false, i1 false}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 771, i32 3}
!206 = !{ptr @.str.82, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @cxgbit_set_emss._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @cxgbit_set_emss._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 773, i32 2}
!211 = !{ptr @cxgbit_set_emss.__UNIQUE_ID_ddebug735, !210, !"__UNIQUE_ID_ddebug735", i1 false, i1 false}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1234, i32 2}
!214 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug747, !213, !"__UNIQUE_ID_ddebug747", i1 false, i1 false}
!216 = !{ptr @.str.86, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1239, i32 3}
!218 = !{ptr @cxgbit_pass_accept_req._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @cxgbit_pass_accept_req._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.88, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1245, i32 3}
!222 = !{ptr @cxgbit_pass_accept_req._entry.87, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @cxgbit_pass_accept_req._entry_ptr.89, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1252, i32 3}
!226 = !{ptr @cxgbit_pass_accept_req._entry.90, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @cxgbit_pass_accept_req._entry_ptr.92, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1262, i32 3}
!230 = !{ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug748, !229, !"__UNIQUE_ID_ddebug748", i1 false, i1 false}
!231 = !{ptr @.str.94, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1273, i32 3}
!233 = !{ptr @cxgbit_pass_accept_req.__UNIQUE_ID_ddebug749, !232, !"__UNIQUE_ID_ddebug749", i1 false, i1 false}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1286, i32 3}
!236 = !{ptr @cxgbit_pass_accept_req._entry.95, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @cxgbit_pass_accept_req._entry_ptr.97, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1300, i32 3}
!240 = !{ptr @cxgbit_pass_accept_req._entry.98, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cxgbit_pass_accept_req._entry_ptr.100, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @cxgbit_pass_accept_req.__key, !243, !"__key", i1 false, i1 false}
!243 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1362, i32 2}
!244 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @cxgbit_pass_accept_req.__key.102, !246, !"__key", i1 false, i1 false}
!246 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1363, i32 2}
!247 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 847, i32 2}
!250 = !{ptr @.str.105, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @cxgbit_set_tcp_window.__UNIQUE_ID_ddebug741, !249, !"__UNIQUE_ID_ddebug741", i1 false, i1 false}
!252 = !{ptr @.str.106, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 892, i32 2}
!254 = !{ptr @.str.107, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @cxgbit_get_iscsi_dcb_priority._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @cxgbit_get_iscsi_dcb_priority._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @skb_queue_head_init.__key, !258, !"__key", i1 false, i1 false}
!258 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!259 = !{ptr @.str.108, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 1143, i32 2}
!262 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @cxgbit_pass_accept_rpl.__UNIQUE_ID_ddebug746, !261, !"__UNIQUE_ID_ddebug746", i1 false, i1 false}
!264 = !{ptr @.str.111, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_cm.c", i32 643, i32 2}
!266 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @cxgbit_arp_failure_discard.__UNIQUE_ID_ddebug731, !265, !"__UNIQUE_ID_ddebug731", i1 false, i1 false}
!268 = !{!"sp"}
!269 = !{i32 1, !"wchar_size", i32 2}
!270 = !{i32 1, !"min_enum_size", i32 4}
!271 = !{i32 8, !"branch-target-enforcement", i32 0}
!272 = !{i32 8, !"sign-return-address", i32 0}
!273 = !{i32 8, !"sign-return-address-all", i32 0}
!274 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!275 = !{i32 7, !"uwtable", i32 1}
!276 = !{i32 7, !"frame-pointer", i32 2}
!277 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!278 = !{i64 2149402654}
!279 = !{i64 2149402920}
!280 = !{i64 2148476050}
!281 = !{i64 2148390490, i64 2148390522, i64 2148390551, i64 2148390585, i64 2148390616, i64 2148390639}
!282 = !{!"branch_weights", i32 2000, i32 1}
!283 = !{i64 2149352164}
!284 = !{i64 2148999872, i64 2148999877, i64 2148999890, i64 2148999934, i64 2148999968, i64 2148999989}
!285 = !{i64 2154607932, i64 2154608420, i64 2154607969, i64 2154608025, i64 2154608059, i64 2154608083, i64 2154608124, i64 2154608145, i64 2154608173, i64 2154608207}
!286 = !{ptr @_cxgbit_free_cdev, ptr @_cxgbit_free_cnp, ptr @_cxgbit_free_csk}
!287 = !{i64 2148388025, i64 2148388057, i64 2148388086, i64 2148388120, i64 2148388151, i64 2148388174}
!288 = !{!"branch_weights", i32 1, i32 2000}
!289 = !{i8 0, i8 2}
!290 = !{!"auto-init"}
!291 = !{i64 2148386495, i64 2148386521, i64 2148386550, i64 2148386584, i64 2148386615, i64 2148386638}
!292 = !{i8 0, i8 9}
