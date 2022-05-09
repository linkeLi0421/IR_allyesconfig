; ModuleID = '/llk/IR_all_yes/drivers/atm/idt77252.c_pt.bc'
source_filename = "../drivers/atm/idt77252.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.idt77252_dev = type { %struct.tsq_info, %struct.rsq_info, ptr, ptr, ptr, i32, [4 x ptr], %struct.mutex, %struct.spinlock, i32, i32, %struct.work_struct, i32, i32, i32, i32, [2 x i32], i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.spinlock, i32, [4 x %struct.sb_pool], ptr, ptr, i32, i32, i32, [16 x i8], ptr }
%struct.tsq_info = type { ptr, ptr, ptr, i32 }
%struct.rsq_info = type { ptr, ptr, ptr, i32 }
%struct.sb_pool = type { i32, [512 x ptr] }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
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
%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
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
%struct.tst_info = type { ptr, i32 }
%struct.tsq_entry = type { i32, i32 }
%struct.rsq_entry = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.139, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.139 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vc_map = type { i32, i32, i32, i8, i8, i8, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.134 }
%union.anon.134 = type { %struct.rx_pool }
%struct.rx_pool = type { %struct.sk_buff_head, i32 }
%struct.scq_info = type { ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.127, i8, %union.anon.129 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i8, i8 }
%union.anon.129 = type { %struct.anon.132 }
%struct.anon.132 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.133 }
%struct.anon.133 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.scqe = type { i32, i32, i32, i32 }
%struct.rate_estimator = type { %struct.timer_list, i32, i32, i64, i64, i32, i32, i32, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@idt77252_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @idt77252_pci_tbl, ptr @idt77252_init_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@idt77252_chain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@debug = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@idt77252_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"idt77252: finished cleanup-module().\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt77252_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/atm/idt77252.c\00", [41 x i8] zeroinitializer }, align 32
@idt77252_exit._entry_ptr = internal global ptr @idt77252_exit._entry, section ".printk_index", align 4
@__initcall__kmod_idt77252__464_3766_idt77252_init6 = internal global ptr @idt77252_init, section ".initcall6.init", align 4
@__exitcall_idt77252_exit = internal global ptr @idt77252_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file465 = internal constant [35 x i8] c"idt77252.file=drivers/atm/idt77252\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [21 x i8] c"idt77252.license=GPL\00", section ".modinfo", align 1
@__param_str_vpibits = internal constant [17 x i8] c"idt77252.vpibits\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@vpibits = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_vpibits = internal constant %struct.kernel_param { ptr @__param_str_vpibits, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @vpibits } }, section "__param", align 4
@__UNIQUE_ID_vpibitstype467 = internal constant [31 x i8] c"idt77252.parmtype=vpibits:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vpibits468 = internal constant [64 x i8] c"idt77252.parm=vpibits:number of VPI bits supported (0, 1, or 2)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"idt77252.debug\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype469 = internal constant [30 x i8] c"idt77252.parmtype=debug:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_debug470 = internal constant [61 x i8] c"idt77252.parm=debug:debug bitmap, see drivers/atm/idt77252.h\00", section ".modinfo", align 1
@__UNIQUE_ID_author471 = internal constant [47 x i8] c"idt77252.author=Eddie C. Dost <ecd@atecom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description472 = internal constant [45 x i8] c"idt77252.description=IDT77252 ABR SAR Driver\00", section ".modinfo", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idt77252\00", [23 x i8] zeroinitializer }, align 32
@idt77252_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4381, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@idt77252_init_one.last = internal global { ptr, [28 x i8] } { ptr @idt77252_chain, [28 x i8] zeroinitializer }, align 32
@idt77252_init_one.index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@idt77252_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 3598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"idt77252: can't enable PCI device at %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt77252_init_one\00", [46 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr = internal global ptr @idt77252_init_one._entry, section ".printk_index", align 4
@idt77252_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 3603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"idt77252: can't enable DMA for PCI device at %s\0A\00", [47 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.8 = internal global ptr @idt77252_init_one._entry.6, section ".printk_index", align 4
@idt77252_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 3609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"idt77252-%d: can't allocate private data\0A\00", [54 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.11 = internal global ptr @idt77252_init_one._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idt77252-%d\00", [20 x i8] zeroinitializer }, align 32
@idt77252_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&card->tqueue)\00", [63 x i8] zeroinitializer }, align 32
@idt77252_init_one.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&card->mutex\00", [19 x i8] zeroinitializer }, align 32
@idt77252_init_one.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&card->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@idt77252_init_one.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&card->tst_lock\00", [16 x i8] zeroinitializer }, align 32
@idt77252_init_one.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&card->tst_timer)\00", [45 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.2, i32 3632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: can't ioremap() membase\0A\00", [35 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.24 = internal global ptr @idt77252_init_one._entry.22, section ".printk_index", align 4
@idt77252_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.2, i32 3638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: preset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.27 = internal global ptr @idt77252_init_one._entry.25, section ".printk_index", align 4
@idt77252_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr @idt77252_dev_close, ptr @idt77252_open, ptr @idt77252_close, ptr null, ptr @idt77252_send, ptr null, ptr @idt77252_send_oam, ptr @idt77252_phy_put, ptr @idt77252_phy_get, ptr @idt77252_change_qos, ptr @idt77252_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.2, i32 3646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: can't register atm device\0A\00", [33 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.30 = internal global ptr @idt77252_init_one._entry.28, section ".printk_index", align 4
@idt77252_init_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.2, i32 3656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: can't init SUNI\0A\00", [43 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.33 = internal global ptr @idt77252_init_one._entry.31, section ".printk_index", align 4
@idt77252_init_one._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.2, i32 3667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: can't ioremap() FBQ%d\0A\00", [37 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.36 = internal global ptr @idt77252_init_one._entry.34, section ".printk_index", align 4
@idt77252_init_one._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.2, i32 3676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: ABR SAR (Rev %c): MEM %08lx SRAM %08lx [%u KB]\0A\00", [44 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.39 = internal global ptr @idt77252_init_one._entry.37, section ".printk_index", align 4
@idt77252_init_one._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.2, i32 3679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: init_card failed\0A\00", [42 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.42 = internal global ptr @idt77252_init_one._entry.40, section ".printk_index", align 4
@idt77252_init_one._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.2, i32 3692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: dev_open failed\0A\00", [43 x i8] zeroinitializer }, align 32
@idt77252_init_one._entry_ptr.45 = internal global ptr @idt77252_init_one._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@add_rx_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: SB POOL full\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_rx_skb\00", [21 x i8] zeroinitializer }, align 32
@add_rx_skb._entry_ptr = internal global ptr @add_rx_skb._entry, section ".printk_index", align 4
@add_rx_skb._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: FB QUEUE full\0A\00", [45 x i8] zeroinitializer }, align 32
@add_rx_skb._entry_ptr.50 = internal global ptr @add_rx_skb._entry.48, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@idt77252_sram_write_errors = internal global { i1, [31 x i8] } zeroinitializer, align 32
@write_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: ERROR: TST JMP section at %08lx written: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_sram\00", [21 x i8] zeroinitializer }, align 32
@write_sram._entry_ptr = internal global ptr @write_sram._entry, section ".printk_index", align 4
@idt77252_preset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 3532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Enable PCI master and memory access for SAR.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt77252_preset\00", [16 x i8] zeroinitializer }, align 32
@idt77252_preset._entry_ptr = internal global ptr @idt77252_preset._entry, section ".printk_index", align 4
@idt77252_preset._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 3534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: can't read PCI_COMMAND.\0A\00", [35 x i8] zeroinitializer }, align 32
@idt77252_preset._entry_ptr.59 = internal global ptr @idt77252_preset._entry.57, section ".printk_index", align 4
@idt77252_preset._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 3540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: PCI_COMMAND: %04x (?)\0A\00", [37 x i8] zeroinitializer }, align 32
@idt77252_preset._entry_ptr.62 = internal global ptr @idt77252_preset._entry.60, section ".printk_index", align 4
@idt77252_preset._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 3546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: can't write PCI_COMMAND.\0A\00", [34 x i8] zeroinitializer }, align 32
@idt77252_preset._entry_ptr.65 = internal global ptr @idt77252_preset._entry.63, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@idt77252_preset._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 3559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Software resetted.\0A\00", [40 x i8] zeroinitializer }, align 32
@idt77252_preset._entry_ptr.68 = internal global ptr @idt77252_preset._entry.66, section ".printk_index", align 4
@idt77252_dev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 3020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: closed IDT77252 ABR SAR.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"idt77252_dev_close\00", [45 x i8] zeroinitializer }, align 32
@idt77252_dev_close._entry_ptr = internal global ptr @idt77252_dev_close._entry, section ".printk_index", align 4
@close_card_oam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: closing a VC with pending rx buffers.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"close_card_oam\00", [17 x i8] zeroinitializer }, align 32
@close_card_oam._entry_ptr = internal global ptr @close_card_oam._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@idt77252_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unsupported VPI: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt77252_open\00", [18 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr = internal global ptr @idt77252_open._entry, section ".printk_index", align 4
@idt77252_open._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unsupported VCI: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.78 = internal global ptr @idt77252_open._entry.76, section ".printk_index", align 4
@idt77252_open._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 2408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: opening vpi.vci: %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.81 = internal global ptr @idt77252_open._entry.79, section ".printk_index", align 4
@idt77252_open._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 2416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Unsupported AAL: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.84 = internal global ptr @idt77252_open._entry.82, section ".printk_index", align 4
@idt77252_open._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: can't alloc vc in open()\0A\00", [34 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.87 = internal global ptr @idt77252_open._entry.85, section ".printk_index", align 4
@idt77252_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&card->vcs[index]->lock\00", [40 x i8] zeroinitializer }, align 32
@idt77252_open._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.75, ptr @.str.2, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: idt77252_open: vc = %d (%d.%d) %s/%s (max RX SDU: %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.91 = internal global ptr @idt77252_open._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@idt77252_open._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.2, i32 2454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s vci already in use.\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_open._entry_ptr.97 = internal global ptr @idt77252_open._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx and rx\00", [22 x i8] zeroinitializer }, align 32
@idt77252_init_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 2263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: can't get SCQ.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt77252_init_tx\00", [47 x i8] zeroinitializer }, align 32
@idt77252_init_tx._entry_ptr = internal global ptr @idt77252_init_tx._entry, section ".printk_index", align 4
@idt77252_init_tx._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no SCD available.\0A\00", [41 x i8] zeroinitializer }, align 32
@idt77252_init_tx._entry_ptr.103 = internal global ptr @idt77252_init_tx._entry.101, section ".printk_index", align 4
@idt77252_init_tx._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 2278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: class %d not supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@idt77252_init_tx._entry_ptr.106 = internal global ptr @idt77252_init_tx._entry.104, section ".printk_index", align 4
@alloc_scq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&scq->lock\00", [21 x i8] zeroinitializer }, align 32
@alloc_scq.__key.108 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&scq->skblock\00", [18 x i8] zeroinitializer }, align 32
@alloc_scq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"idt77252: SCQ: base 0x%p, next 0x%p, last 0x%p, paddr %08llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alloc_scq\00", [22 x i8] zeroinitializer }, align 32
@alloc_scq._entry_ptr = internal global ptr @alloc_scq._entry, section ".printk_index", align 4
@set_tct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: writing TCT at 0x%lx, SCD 0x%lx.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_tct\00", [24 x i8] zeroinitializer }, align 32
@set_tct._entry_ptr = internal global ptr @set_tct._entry, section ".printk_index", align 4
@set_tct._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_tct._entry_ptr.115 = internal global ptr @set_tct._entry.114, section ".printk_index", align 4
@idt77252_init_cbr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 2142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: trying to open a CBR VC with cell rate = 0\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt77252_init_cbr\00", [46 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr = internal global ptr @idt77252_init_cbr._entry, section ".printk_index", align 4
@idt77252_init_cbr._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: CBR target cell rate = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.120 = internal global ptr @idt77252_init_cbr._entry.118, section ".printk_index", align 4
@idt77252_init_cbr._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.2, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no CBR bandwidth free.\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.123 = internal global ptr @idt77252_init_cbr._entry.121, section ".printk_index", align 4
@idt77252_init_cbr._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.2, i32 2174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: selected CBR bandwidth < granularity.\0A\00", [53 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.126 = internal global ptr @idt77252_init_cbr._entry.124, section ".printk_index", align 4
@idt77252_init_cbr._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.2, i32 2179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: not enough CBR bandwidth free.\0A\00", [60 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.129 = internal global ptr @idt77252_init_cbr._entry.127, section ".printk_index", align 4
@idt77252_init_cbr._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.117, ptr @.str.2, i32 2191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: modify %d -> %d entries in TST.\0A\00", [59 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.132 = internal global ptr @idt77252_init_cbr._entry.130, section ".printk_index", align 4
@idt77252_init_cbr._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.117, ptr @.str.2, i32 2196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: setting %d entries in TST.\0A\00", [32 x i8] zeroinitializer }, align 32
@idt77252_init_cbr._entry_ptr.135 = internal global ptr @idt77252_init_cbr._entry.133, section ".printk_index", align 4
@__fill_tst._entry = internal constant %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1608, ptr null, ptr null }, align 1
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: No free TST entries found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__fill_tst\00", [21 x i8] zeroinitializer }, align 32
@__fill_tst._entry_ptr = internal global ptr @__fill_tst._entry, section ".printk_index", align 4
@__fill_tst._entry.138 = internal constant %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 1613, ptr null, ptr null }, align 1
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: conn %d: first TST entry at %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@__fill_tst._entry_ptr.140 = internal global ptr @__fill_tst._entry.138, section ".printk_index", align 4
@idt77252_init_est.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&est->timer)\00", [18 x i8] zeroinitializer }, align 32
@rate_to_log = internal constant { [512 x i8], [128 x i8] } { [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\09\0A\0B\0C\0E\0F\10\12\13\14\15\16\17\18\19\19\1A\1B\1C\1D\1F !\22$%&'())*+,-.0123467889:;<=>?@BCDEFGHIJKLMNNPQSTUVWXYZ[\\]^__abdefghijklmnooprstvwxyz{|}~\7F\80\80\81\83\84\85\87\88\89\8A\8B\8C\8D\8E\8F\90\90\91\92\93\95\96\97\99\9A\9B\9C\9D\9E\9F\A0\A0\A1\A2\A3\A4\A6\A7\A8\A9\AB\AC\AD\AE\AF\B0\B0\B1\B2\B3\B4\B5\B7\B8\B9\BA\BB\BD\BE\BF\C0\C0\C1\C2\C3\C4\C5\C6\C7\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D5\D7\D8\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E5\E6\E8\E9\EA\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F6\F7\F8\FA\FB\FC\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [128 x i8] zeroinitializer }, align 32
@idt77252_init_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 2368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: writing RCT at 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt77252_init_rx\00", [47 x i8] zeroinitializer }, align 32
@idt77252_init_rx._entry_ptr = internal global ptr @idt77252_init_rx._entry, section ".printk_index", align 4
@idt77252_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 2494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: idt77252_close: vc = %d (%d.%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt77252_close\00", [17 x i8] zeroinitializer }, align 32
@idt77252_close._entry_ptr = internal global ptr @idt77252_close._entry, section ".printk_index", align 4
@idt77252_close._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.145, ptr @.str.2, i32 2517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@idt77252_close._entry_ptr.147 = internal global ptr @idt77252_close._entry.146, section ".printk_index", align 4
@idt77252_close._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.145, ptr @.str.2, i32 2544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: SCQ drain timeout: %u used\0A\00", [62 x i8] zeroinitializer }, align 32
@idt77252_close._entry_ptr.150 = internal global ptr @idt77252_close._entry.148, section ".printk_index", align 4
@idt77252_send_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: NULL connection in send().\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt77252_send_skb\00", [46 x i8] zeroinitializer }, align 32
@idt77252_send_skb._entry_ptr = internal global ptr @idt77252_send_skb._entry, section ".printk_index", align 4
@idt77252_send_skb._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.2, i32 1952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Trying to transmit on a non-tx VC.\0A\00", [56 x i8] zeroinitializer }, align 32
@idt77252_send_skb._entry_ptr.155 = internal global ptr @idt77252_send_skb._entry.153, section ".printk_index", align 4
@idt77252_send_skb._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.152, ptr @.str.2, i32 1964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@idt77252_send_skb._entry_ptr.157 = internal global ptr @idt77252_send_skb._entry.156, section ".printk_index", align 4
@idt77252_send_skb._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.152, ptr @.str.2, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No scatter-gather yet.\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_send_skb._entry_ptr.160 = internal global ptr @idt77252_send_skb._entry.158, section ".printk_index", align 4
@queue_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid skb->len (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_skb\00", [22 x i8] zeroinitializer }, align 32
@queue_skb._entry_ptr = internal global ptr @queue_skb._entry, section ".printk_index", align 4
@queue_skb._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Sending %d bytes of data.\0A\00", [33 x i8] zeroinitializer }, align 32
@queue_skb._entry_ptr.165 = internal global ptr @queue_skb._entry.163, section ".printk_index", align 4
@queue_skb._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Trying to transmit on reserved VC\0A\00", [57 x i8] zeroinitializer }, align 32
@queue_skb._entry_ptr.168 = internal global ptr @queue_skb._entry.166, section ".printk_index", align 4
@queue_skb._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.162, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Traffic type not supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@queue_skb._entry_ptr.171 = internal global ptr @queue_skb._entry.169, section ".printk_index", align 4
@push_on_scq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: SCQ: next 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"push_on_scq\00", [20 x i8] zeroinitializer }, align 32
@push_on_scq._entry_ptr = internal global ptr @push_on_scq._entry, section ".printk_index", align 4
@push_on_scq._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d entries in SCQ used (push).\0A\00", [32 x i8] zeroinitializer }, align 32
@push_on_scq._entry_ptr.176 = internal global ptr @push_on_scq._entry.174, section ".printk_index", align 4
@push_on_scq._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: SCQ (after push %2d) head = 0x%x, next = 0x%p.\0A\00", [44 x i8] zeroinitializer }, align 32
@push_on_scq._entry_ptr.179 = internal global ptr @push_on_scq._entry.177, section ".printk_index", align 4
@push_on_scq._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Error pushing TBD for %d.%d\0A\00", [63 x i8] zeroinitializer }, align 32
@push_on_scq._entry_ptr.182 = internal global ptr @push_on_scq._entry.180, section ".printk_index", align 4
@idt77252_tx_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt77252_tx_dump\00", [47 x i8] zeroinitializer }, align 32
@idt77252_tx_dump._entry_ptr = internal global ptr @idt77252_tx_dump._entry, section ".printk_index", align 4
@idt77252_tx_dump._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Connection %d:\0A\00", [44 x i8] zeroinitializer }, align 32
@idt77252_tx_dump._entry_ptr.187 = internal global ptr @idt77252_tx_dump._entry.185, section ".printk_index", align 4
@dump_tct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: TCT %x:\00", [20 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_tct\00", [23 x i8] zeroinitializer }, align 32
@dump_tct._entry_ptr = internal global ptr @dump_tct._entry, section ".printk_index", align 4
@dump_tct._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %08x\00", [26 x i8] zeroinitializer }, align 32
@dump_tct._entry_ptr.192 = internal global ptr @dump_tct._entry.190, section ".printk_index", align 4
@dump_tct._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.189, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dump_tct._entry_ptr.195 = internal global ptr @dump_tct._entry.193, section ".printk_index", align 4
@idt77252_send_oam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.2, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Out of memory in send_oam().\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt77252_send_oam\00", [46 x i8] zeroinitializer }, align 32
@idt77252_send_oam._entry_ptr = internal global ptr @idt77252_send_oam._entry, section ".printk_index", align 4
@write_utility._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: No such device.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_utility\00", [18 x i8] zeroinitializer }, align 32
@write_utility._entry_ptr = internal global ptr @write_utility._entry, section ".printk_index", align 4
@read_utility._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.200, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_utility\00", [19 x i8] zeroinitializer }, align 32
@read_utility._entry_ptr = internal global ptr @read_utility._entry, section ".printk_index", align 4
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IDT77252 Interrupts:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TSIF:  %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TXICP: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TSQF:  %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TMROF: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PHYI:  %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FBQ3A: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FBQ2A: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSQF:  %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EPDU:  %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RAWCF: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FBQ1A: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FBQ0A: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSQAF: %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IDT77252 Transmit Connection Table:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  %4u: %u.%u: \00", [17 x i8] zeroinitializer }, align 32
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 3259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: SAR already initialized.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.2, i32 3268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Checking PCI retries.\0A\00", [37 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.221 = internal global ptr @init_card._entry.219, section ".printk_index", align 4
@init_card._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.2, i32 3270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: can't read PCI retry timeout.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.224 = internal global ptr @init_card._entry.222, section ".printk_index", align 4
@init_card._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.218, ptr @.str.2, i32 3276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: PCI retry timeout: %d, set to 0.\0A\00", [58 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.227 = internal global ptr @init_card._entry.225, section ".printk_index", align 4
@init_card._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.218, ptr @.str.2, i32 3279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: can't set PCI retry timeout.\0A\00", [62 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.230 = internal global ptr @init_card._entry.228, section ".printk_index", align 4
@init_card._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.218, ptr @.str.2, i32 3284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Checking PCI TRDY.\0A\00", [40 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.233 = internal global ptr @init_card._entry.231, section ".printk_index", align 4
@init_card._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.218, ptr @.str.2, i32 3286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: can't read PCI TRDY timeout.\0A\00", [62 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.236 = internal global ptr @init_card._entry.234, section ".printk_index", align 4
@init_card._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.218, ptr @.str.2, i32 3292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: PCI TRDY timeout: %d, set to 0.\0A\00", [59 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.239 = internal global ptr @init_card._entry.237, section ".printk_index", align 4
@init_card._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.218, ptr @.str.2, i32 3294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: can't set PCI TRDY timeout.\0A\00", [63 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.242 = internal global ptr @init_card._entry.240, section ".printk_index", align 4
@init_card._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.218, ptr @.str.2, i32 3301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: resetting timer overflow.\0A\00", [33 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.245 = internal global ptr @init_card._entry.243, section ".printk_index", align 4
@init_card._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.218, ptr @.str.2, i32 3304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Request IRQ ... \00", [43 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.248 = internal global ptr @init_card._entry.246, section ".printk_index", align 4
@init_card._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.218, ptr @.str.2, i32 3307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: can't allocate IRQ.\0A\00", [39 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.251 = internal global ptr @init_card._entry.249, section ".printk_index", align 4
@init_card._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.218, ptr @.str.2, i32 3311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"got %d.\0A\00", [23 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.254 = internal global ptr @init_card._entry.252, section ".printk_index", align 4
@init_card._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.218, ptr @.str.2, i32 3317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Initializing SRAM\0A\00", [41 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.257 = internal global ptr @init_card._entry.255, section ".printk_index", align 4
@init_card._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.218, ptr @.str.2, i32 3380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Setting VPI/VCI mask to zero.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.260 = internal global ptr @init_card._entry.258, section ".printk_index", align 4
@init_card._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.218, ptr @.str.2, i32 3392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: memory allocation failure.\0A\00", [32 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.263 = internal global ptr @init_card._entry.261, section ".printk_index", align 4
@init_card._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.218, ptr @.str.2, i32 3398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: raw cell handle is at 0x%p.\0A\00", [63 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.266 = internal global ptr @init_card._entry.264, section ".printk_index", align 4
@init_card._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.218, ptr @.str.2, i32 3401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: allocate %d byte for VC map.\0A\00", [62 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.269 = internal global ptr @init_card._entry.267, section ".printk_index", align 4
@init_card._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.218, ptr @.str.2, i32 3404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.271 = internal global ptr @init_card._entry.270, section ".printk_index", align 4
@init_card._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.218, ptr @.str.2, i32 3411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: allocate %d byte for SCD to VC mapping.\0A\00", [51 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.274 = internal global ptr @init_card._entry.272, section ".printk_index", align 4
@init_card._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.218, ptr @.str.2, i32 3414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.276 = internal global ptr @init_card._entry.275, section ".printk_index", align 4
@init_card._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.218, ptr @.str.2, i32 3421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: allocate %d byte for TST to VC mapping.\0A\00", [51 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.279 = internal global ptr @init_card._entry.277, section ".printk_index", align 4
@init_card._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.218, ptr @.str.2, i32 3424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.281 = internal global ptr @init_card._entry.280, section ".printk_index", align 4
@init_card._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.218, ptr @.str.2, i32 3434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No LT device defined.\0A\00", [37 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.284 = internal global ptr @init_card._entry.282, section ".printk_index", align 4
@init_card._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.218, ptr @.str.2, i32 3439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: LT had no IOCTL function defined.\0A\00", [57 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.287 = internal global ptr @init_card._entry.285, section ".printk_index", align 4
@init_card._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.218, ptr @.str.2, i32 3459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Linkrate on ATM line : %u bit/s, %u cell/s.\0A\00", [47 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.290 = internal global ptr @init_card._entry.288, section ".printk_index", align 4
@.str.291 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@init_card._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.218, ptr @.str.2, i32 3500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: ESI %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.294 = internal global ptr @init_card._entry.292, section ".printk_index", align 4
@init_card._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.218, ptr @.str.2, i32 3511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: IDT77252 ABR SAR initialization complete.\0A\00", [49 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.297 = internal global ptr @init_card._entry.295, section ".printk_index", align 4
@idt77252_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str.2, i32 2717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Re-entering irq_handler()\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"idt77252_interrupt\00", [45 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr = internal global ptr @idt77252_interrupt._entry, section ".printk_index", align 4
@idt77252_interrupt._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.299, ptr @.str.2, i32 2724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: TSIF\0A\00", [22 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.302 = internal global ptr @idt77252_interrupt._entry.300, section ".printk_index", align 4
@idt77252_interrupt._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.299, ptr @.str.2, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: TXICP\0A\00", [21 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.305 = internal global ptr @idt77252_interrupt._entry.303, section ".printk_index", align 4
@idt77252_interrupt._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.299, ptr @.str.2, i32 2736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: TSQF\0A\00", [22 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.308 = internal global ptr @idt77252_interrupt._entry.306, section ".printk_index", align 4
@idt77252_interrupt._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.299, ptr @.str.2, i32 2741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: TMROF\0A\00", [21 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.311 = internal global ptr @idt77252_interrupt._entry.309, section ".printk_index", align 4
@idt77252_interrupt._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.299, ptr @.str.2, i32 2747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: EPDU\0A\00", [22 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.314 = internal global ptr @idt77252_interrupt._entry.312, section ".printk_index", align 4
@idt77252_interrupt._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.299, ptr @.str.2, i32 2752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: RSQAF\0A\00", [21 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.317 = internal global ptr @idt77252_interrupt._entry.315, section ".printk_index", align 4
@idt77252_interrupt._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.299, ptr @.str.2, i32 2757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: RSQF\0A\00", [22 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.320 = internal global ptr @idt77252_interrupt._entry.318, section ".printk_index", align 4
@idt77252_interrupt._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.299, ptr @.str.2, i32 2762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: RAWCF\0A\00", [21 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.323 = internal global ptr @idt77252_interrupt._entry.321, section ".printk_index", align 4
@idt77252_interrupt._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.299, ptr @.str.2, i32 2768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: PHYI\00", [23 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.326 = internal global ptr @idt77252_interrupt._entry.324, section ".printk_index", align 4
@idt77252_interrupt._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.299, ptr @.str.2, i32 2779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: FBQA: %04x\0A\00", [16 x i8] zeroinitializer }, align 32
@idt77252_interrupt._entry_ptr.329 = internal global ptr @idt77252_interrupt._entry.327, section ".printk_index", align 4
@idt77252_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.331, ptr @.str.2, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"idt77252_tx: tsq  %p: base %p, next %p, last %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idt77252_tx\00", [20 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr = internal global ptr @idt77252_tx._entry, section ".printk_index", align 4
@idt77252_tx._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.331, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"idt77252_tx: tsqb %08x, tsqt %08x, tsqh %08x, \0A\00", [48 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.334 = internal global ptr @idt77252_tx._entry.332, section ".printk_index", align 4
@idt77252_tx._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.331, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tsqe: 0x%p [0x%08x 0x%08x]\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.337 = internal global ptr @idt77252_tx._entry.335, section ".printk_index", align 4
@idt77252_tx._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.331, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Timer RollOver detected.\0A\00", [34 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.340 = internal global ptr @idt77252_tx._entry.338, section ".printk_index", align 4
@idt77252_tx._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.331, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: could not find VC from conn %d\0A\00", [60 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.343 = internal global ptr @idt77252_tx._entry.341, section ".printk_index", align 4
@idt77252_tx._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.331, ptr @.str.2, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Connection %d IDLE.\0A\00", [39 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.346 = internal global ptr @idt77252_tx._entry.344, section ".printk_index", align 4
@idt77252_tx._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.331, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no VC at index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.349 = internal global ptr @idt77252_tx._entry.347, section ".printk_index", align 4
@idt77252_tx._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.331, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: TBD complete: out of range VPI.VCI %u.%u\0A\00", [50 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.352 = internal global ptr @idt77252_tx._entry.350, section ".printk_index", align 4
@idt77252_tx._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.331, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: TBD complete: no VC at VPI.VCI %u.%u\0A\00", [54 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.355 = internal global ptr @idt77252_tx._entry.353, section ".printk_index", align 4
@idt77252_tx._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.331, ptr @.str.2, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tsqe: %p: base %p, next %p, last %p\0A\00", [59 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.358 = internal global ptr @idt77252_tx._entry.356, section ".printk_index", align 4
@idt77252_tx._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.331, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"idt77252_tx-after writel%d: TSQ head = 0x%x, tail = 0x%x, next = 0x%p.\0A\00", [56 x i8] zeroinitializer }, align 32
@idt77252_tx._entry_ptr.361 = internal global ptr @idt77252_tx._entry.359, section ".printk_index", align 4
@drain_scq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.363, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: SCQ (before drain %2d) next = 0x%p.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drain_scq\00", [22 x i8] zeroinitializer }, align 32
@drain_scq._entry_ptr = internal global ptr @drain_scq._entry, section ".printk_index", align 4
@drain_scq._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.363, ptr @.str.2, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: freeing skb at %p.\0A\00", [40 x i8] zeroinitializer }, align 32
@drain_scq._entry_ptr.366 = internal global ptr @drain_scq._entry.364, section ".printk_index", align 4
@idt77252_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.368, ptr @.str.2, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: no entry in RSQ.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idt77252_rx\00", [20 x i8] zeroinitializer }, align 32
@idt77252_rx._entry_ptr = internal global ptr @idt77252_rx._entry, section ".printk_index", align 4
@dequeue_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.370, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: message about inactive connection.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dequeue_rx\00", [21 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr = internal global ptr @dequeue_rx._entry, section ".printk_index", align 4
@dequeue_rx._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.370, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: NULL skb in %s, rsqe: %08x %08x %08x %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.373 = internal global ptr @dequeue_rx._entry.371, section ".printk_index", align 4
@dequeue_rx._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.370, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: SDU for %d.%d received in buffer 0x%p (data 0x%p).\0A\00", [40 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.376 = internal global ptr @dequeue_rx._entry.374, section ".printk_index", align 4
@dequeue_rx._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.370, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: SDU received for out-of-range vc %u.%u\0A\00", [52 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.379 = internal global ptr @dequeue_rx._entry.377, section ".printk_index", align 4
@dequeue_rx._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.370, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: SDU received on non RX vc %u.%u\0A\00", [59 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.382 = internal global ptr @dequeue_rx._entry.380, section ".printk_index", align 4
@dequeue_rx._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.370, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Can't allocate buffers for aal0.\0A\00", [58 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.385 = internal global ptr @dequeue_rx._entry.383, section ".printk_index", align 4
@dequeue_rx._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.370, ptr @.str.2, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: atm_charge() dropped aal0 packets.\0A\00", [56 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.388 = internal global ptr @dequeue_rx._entry.386, section ".printk_index", align 4
@dequeue_rx._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.370, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unexpected AAL type in dequeue_rx(): %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.391 = internal global ptr @dequeue_rx._entry.389, section ".printk_index", align 4
@dequeue_rx._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.370, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: PDU has %d bytes.\0A\00", [41 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.394 = internal global ptr @dequeue_rx._entry.392, section ".printk_index", align 4
@dequeue_rx._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.370, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: AAL5 PDU size mismatch: %d != %d. (CDC: %08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.397 = internal global ptr @dequeue_rx._entry.395, section ".printk_index", align 4
@dequeue_rx._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.370, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: AAL5 CRC error.\0A\00", [43 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.400 = internal global ptr @dequeue_rx._entry.398, section ".printk_index", align 4
@dequeue_rx._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.370, ptr @.str.2, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Can't alloc RX skb.\0A\00", [39 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.403 = internal global ptr @dequeue_rx._entry.401, section ".printk_index", align 4
@idt77252_rx_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.404, ptr @.str.405, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: raw cell %x.%02x.%04x.%x.%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt77252_rx_raw\00", [16 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr = internal global ptr @idt77252_rx_raw._entry, section ".printk_index", align 4
@idt77252_rx_raw._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.407, ptr @.str.405, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.408 = internal global ptr @idt77252_rx_raw._entry.406, section ".printk_index", align 4
@idt77252_rx_raw._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.405, ptr @.str.2, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.410 = internal global ptr @idt77252_rx_raw._entry.409, section ".printk_index", align 4
@idt77252_rx_raw._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.405, ptr @.str.2, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.412 = internal global ptr @idt77252_rx_raw._entry.411, section ".printk_index", align 4
@idt77252_rx_raw._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.405, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.414 = internal global ptr @idt77252_rx_raw._entry.413, section ".printk_index", align 4
@idt77252_rx_raw._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.416, ptr @.str.405, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: raw cell for non AAL0 vc %u.%u\0A\00", [60 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.417 = internal global ptr @idt77252_rx_raw._entry.415, section ".printk_index", align 4
@idt77252_rx_raw._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.419, ptr @.str.405, ptr @.str.2, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Can't allocate buffers for AAL0.\0A\00", [58 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.420 = internal global ptr @idt77252_rx_raw._entry.418, section ".printk_index", align 4
@idt77252_rx_raw._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.405, ptr @.str.2, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: atm_charge() dropped AAL0 packets.\0A\00", [56 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.423 = internal global ptr @idt77252_rx_raw._entry.421, section ".printk_index", align 4
@idt77252_rx_raw._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.405, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: raw cell queue overrun\0A\00", [36 x i8] zeroinitializer }, align 32
@idt77252_rx_raw._entry_ptr.426 = internal global ptr @idt77252_rx_raw._entry.424, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@log_to_rate = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -1929236953, i32 -1925829103, i32 -1922159624, i32 -1918358577, i32 -1914426456, i32 -1910232190, i32 -1905906850, i32 -1901450436, i32 -1896731878, i32 -1891751174, i32 -1886770468, i32 -1881396546, i32 -1877464414, i32 -1874711929, i32 -1871697299, i32 -1868551596, i32 -1865274820, i32 -1861866971, i32 -1858328049, i32 -1854658573, i32 -1850726454, i32 -1846794333, i32 -1842600066, i32 -1838274726, i32 -1833687241, i32 -1828968682, i32 -1824119050, i32 -1819007272, i32 -1813764421, i32 -1809963362, i32 -1807079805, i32 -1804196246, i32 -1801050543, i32 -1797773767, i32 -1794349534, i32 -1790679540, i32 -1787010066, i32 -1783209018, i32 -1779145825, i32 -1774951559, i32 -1770626218, i32 -1766038733, i32 -1761320174, i32 -1756470541, i32 -1751227692, i32 -1745853769, i32 -1742576997, i32 -1739693440, i32 -1736547738, i32 -1733533106, i32 -1730125258, i32 -1726701025, i32 -1723162103, i32 -1719492631, i32 -1715560511, i32 -1711497318, i32 -1707303051, i32 -1702846639, i32 -1698390225, i32 -1693540594, i32 -1688690961, i32 -1683579183, i32 -1678205260, i32 -1675190632, i32 -1672176003, i32 -1669030301, i32 -1666015669, i32 -1662607821, i32 -1659052516, i32 -1655644665, i32 -1651844124, i32 -1648043076, i32 -1643979882, i32 -1639785615, i32 -1635329203, i32 -1630610645, i32 -1625892086, i32 -1620911381, i32 -1615668531, i32 -1610425680, i32 -1607542124, i32 -1604658566, i32 -1601643936, i32 -1598498232, i32 -1595090384, i32 -1591666150, i32 -1587996156, i32 -1584326689, i32 -1580394569, i32 -1576331375, i32 -1572006036, i32 -1567680695, i32 -1562962137, i32 -1558243577, i32 -1553131801, i32 -1547888951, i32 -1543039315, i32 -1540155759, i32 -1537272201, i32 -1534126499, i32 -1530980795, i32 -1527704018, i32 -1524034025, i32 -1520495102, i32 -1516694566, i32 -1512762446, i32 -1508699252, i32 -1504373912, i32 -1500048571, i32 -1495330013, i32 -1490480381, i32 -1485499676, i32 -1480256826, i32 -1475538263, i32 -1472654706, i32 -1469771148, i32 -1466625446, i32 -1463348670, i32 -1460071893, i32 -1456532972, i32 -1452863490, i32 -1449062443, i32 -1445261394, i32 -1441067128, i32 -1436741789, i32 -1432285375, i32 -1427566817, i32 -1422717185, i32 -1417736480, i32 -1412362558, i32 -1408168282, i32 -1405284725, i32 -1402139024, i32 -1399124393, i32 -1395847617, i32 -1392570840, i32 -1389031918, i32 -1385362439, i32 -1381561392, i32 -1377629271, i32 -1373435005, i32 -1369109665, i32 -1364522180, i32 -1359934693, i32 -1355085061, i32 -1349842212, i32 -1344730433, i32 -1340667229, i32 -1337783673, i32 -1334769043, i32 -1331623340, i32 -1328346564, i32 -1324938715, i32 -1321399793, i32 -1317730316, i32 -1313929269, i32 -1309997148, i32 -1305802881, i32 -1301477541, i32 -1296890056, i32 -1292171497, i32 -1287321865, i32 -1282210087, i32 -1276836165, i32 -1273166177, i32 -1270282620, i32 -1267267990, i32 -1264122287, i32 -1260845511, i32 -1257437662, i32 -1253767668, i32 -1250229265, i32 -1246428217, i32 -1242365024, i32 -1238170758, i32 -1233845417, i32 -1229257932, i32 -1224539373, i32 -1219558669, i32 -1214446891, i32 -1209204040, i32 -1205796196, i32 -1202781567, i32 -1199766937, i32 -1196621234, i32 -1193475529, i32 -1189936608, i32 -1186397686, i32 -1182596619, i32 -1178795551, i32 -1174601267, i32 -1170538053, i32 -1166081623, i32 -1161625192, i32 -1156644473, i32 -1151925896, i32 -1146420888, i32 -1141309094, i32 -1138294452, i32 -1135410881, i32 -1132265166, i32 -1128988379, i32 -1125842662, i32 -1122172658, i32 -1118633725, i32 -1114963719, i32 -1111162641, i32 -1106837275, i32 -1102774052, i32 -1098317613, i32 -1093992245, i32 -1088618302, i32 -1084161861, i32 -1078656845, i32 -1073545044, i32 -1070661467, i32 -1067646818, i32 -1064763240, i32 -1061617518, i32 -1058209652, i32 -1054539642, i32 -1051131775, i32 -1047461764, i32 -1043529609, i32 -1039335310, i32 -1034616723, i32 -1030684567, i32 -1026228123, i32 -1020329888, i32 -1016397731, i32 -1010761639, i32 -1005649835, i32 -1003159470, i32 -999489458, i32 -996605877, i32 -993329080, i32 -989921211, i32 -987430845, i32 -983367616, i32 -978911171, i32 -975634373, i32 -970391496, i32 -966590410, i32 -962396108, i32 -957939662, i32 -953221072, i32 -947978194, i32 -942211028, i32 -937754582, i32 -934346712, i32 -932380633, i32 -928448475, i32 -926220252, i32 -921501662, i32 -919011295, i32 -916258784], [256 x i8] zeroinitializer }, align 32
@init_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.427, ptr @.str.428, ptr @.str.2, i32 3208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: initialize rate table ...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_sram\00", [22 x i8] zeroinitializer }, align 32
@init_sram._entry_ptr = internal global ptr @init_sram._entry, section ".printk_index", align 4
@init_sram._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.430, ptr @.str.428, ptr @.str.2, i32 3212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: initialize TST ...\0A\00", [40 x i8] zeroinitializer }, align 32
@init_sram._entry_ptr.431 = internal global ptr @init_sram._entry.429, section ".printk_index", align 4
@init_sram._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.428, ptr @.str.2, i32 3232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: initialize ABRSTD ...\0A\00", [37 x i8] zeroinitializer }, align 32
@init_sram._entry_ptr.434 = internal global ptr @init_sram._entry.432, section ".printk_index", align 4
@init_sram._entry.435 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.436, ptr @.str.428, ptr @.str.2, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: initialize receive fifo ...\0A\00", [63 x i8] zeroinitializer }, align 32
@init_sram._entry_ptr.437 = internal global ptr @init_sram._entry.435, section ".printk_index", align 4
@init_sram._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.439, ptr @.str.428, ptr @.str.2, i32 3240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: SRAM initialization complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_sram._entry_ptr.440 = internal global ptr @init_sram._entry.438, section ".printk_index", align 4
@init_tsq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.441, ptr @.str.442, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: can't allocate TSQ.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_tsq\00", [23 x i8] zeroinitializer }, align 32
@init_tsq._entry_ptr = internal global ptr @init_tsq._entry, section ".printk_index", align 4
@init_rsq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.443, ptr @.str.444, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: can't allocate RSQ.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_rsq\00", [23 x i8] zeroinitializer }, align 32
@init_rsq._entry_ptr = internal global ptr @init_rsq._entry, section ".printk_index", align 4
@init_rsq._entry.445 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.446, ptr @.str.444, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: RSQ base at 0x%lx (0x%x).\0A\00", [33 x i8] zeroinitializer }, align 32
@init_rsq._entry_ptr.447 = internal global ptr @init_rsq._entry.445, section ".printk_index", align 4
@init_rsq._entry.448 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.449, ptr @.str.444, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: RSQ head = 0x%x, base = 0x%x, tail = 0x%x.\0A\00", [48 x i8] zeroinitializer }, align 32
@init_rsq._entry_ptr.450 = internal global ptr @init_rsq._entry.448, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@idt77252_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.451, ptr @.str.452, ptr @.str.2, i32 2961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: SAR not yet initialized.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt77252_dev_open\00", [46 x i8] zeroinitializer }, align 32
@idt77252_dev_open._entry_ptr = internal global ptr @idt77252_dev_open._entry, section ".printk_index", align 4
@idt77252_dev_open._entry.453 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.454, ptr @.str.452, ptr @.str.2, i32 2986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Error initializing OAM.\0A\00", [35 x i8] zeroinitializer }, align 32
@idt77252_dev_open._entry_ptr.455 = internal global ptr @idt77252_dev_open._entry.453, section ".printk_index", align 4
@idt77252_dev_open._entry.456 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.457, ptr @.str.452, ptr @.str.2, i32 2991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Error initializing UBR0.\0A\00", [34 x i8] zeroinitializer }, align 32
@idt77252_dev_open._entry_ptr.458 = internal global ptr @idt77252_dev_open._entry.456, section ".printk_index", align 4
@idt77252_dev_open._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.460, ptr @.str.452, ptr @.str.2, i32 2995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: opened IDT77252 ABR SAR.\0A\00", [34 x i8] zeroinitializer }, align 32
@idt77252_dev_open._entry_ptr.461 = internal global ptr @idt77252_dev_open._entry.459, section ".printk_index", align 4
@open_card_oam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.462, ptr @.str.463, ptr @.str.2, i32 2856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: can't alloc vc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_card_oam\00", [18 x i8] zeroinitializer }, align 32
@open_card_oam._entry_ptr = internal global ptr @open_card_oam._entry, section ".printk_index", align 4
@open_card_ubr0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.462, ptr @.str.464, ptr @.str.2, i32 2923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"open_card_ubr0\00", [17 x i8] zeroinitializer }, align 32
@open_card_ubr0._entry_ptr = internal global ptr @open_card_ubr0._entry, section ".printk_index", align 4
@open_card_ubr0._entry.465 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.464, ptr @.str.2, i32 2931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@open_card_ubr0._entry_ptr.466 = internal global ptr @open_card_ubr0._entry.465, section ".printk_index", align 4
@deinit_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.451, ptr @.str.467, ptr @.str.2, i32 3038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"deinit_card\00", [20 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr = internal global ptr @deinit_card._entry, section ".printk_index", align 4
@deinit_card._entry.468 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.469, ptr @.str.467, ptr @.str.2, i32 3041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"idt77252: deinitialize card %u\0A\00", [32 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr.470 = internal global ptr @deinit_card._entry.468, section ".printk_index", align 4
@deinit_card._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.472, ptr @.str.467, ptr @.str.2, i32 3075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Release RSQ ...\0A\00", [43 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr.473 = internal global ptr @deinit_card._entry.471, section ".printk_index", align 4
@deinit_card._entry.474 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.475, ptr @.str.467, ptr @.str.2, i32 3080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Release TSQ ...\0A\00", [43 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr.476 = internal global ptr @deinit_card._entry.474, section ".printk_index", align 4
@deinit_card._entry.477 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.478, ptr @.str.467, ptr @.str.2, i32 3084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idt77252: Release IRQ.\0A\00", [40 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr.479 = internal global ptr @deinit_card._entry.477, section ".printk_index", align 4
@deinit_card._entry.480 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.481, ptr @.str.467, ptr @.str.2, i32 3096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Card deinitialized.\0A\00", [39 x i8] zeroinitializer }, align 32
@deinit_card._entry_ptr.482 = internal global ptr @deinit_card._entry.480, section ".printk_index", align 4
@idt77252_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.483, ptr @.str.484, ptr @.str.2, i32 3739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: at %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt77252_init\00", [18 x i8] zeroinitializer }, align 32
@idt77252_init._entry_ptr = internal global ptr @idt77252_init._entry, section ".printk_index", align 4
@switch.table.push_rx_skb = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1792, i32 3840, i32 7936, i32 16128], [16 x i8] zeroinitializer }, align 32
@switch.table.idt77252_init_rx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 819200, i32 622592, i32 688128], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.485 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 5, i64 13]
@__sancov_gen_cov_switch_values.486 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.487 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.488 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.489 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.490 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.491 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 5, i64 13]
@__sancov_gen_cov_switch_values.492 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 13]
@__sancov_gen_cov_switch_values.493 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.494 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 13]
@___asan_gen_.495 = private unnamed_addr constant [16 x i8] c"idt77252_driver\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3729, i32 26 }
@___asan_gen_.498 = private unnamed_addr constant [15 x i8] c"idt77252_chain\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 151, i32 29 }
@___asan_gen_.501 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 73, i32 22 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3763, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [8 x i8] c"vpibits\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 60, i32 21 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3730, i32 11 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"idt77252_pci_tbl\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3721, i32 35 }
@___asan_gen_.525 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3588, i32 31 }
@___asan_gen_.528 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3589, i32 13 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3598, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3603, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3609, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3616, i32 22 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3618, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3623, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3624, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3625, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3627, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3632, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3638, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant [13 x i8] c"idt77252_ops\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 137, i32 32 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3646, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3656, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3667, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3673, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3679, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3692, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1852, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1862, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 326, i32 6 }
@___asan_gen_.657 = private unnamed_addr constant [27 x i8] c"idt77252_sram_write_errors\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 194, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3531, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3534, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3539, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3546, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3559, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3020, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2906, i32 5 }
@___asan_gen_.722 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1984, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2395, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2400, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2408, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2416, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2425, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2432, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2438, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2453, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2263, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2269, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2277, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 655, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 656, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 661, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1744, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1758, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2141, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2155, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2167, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2173, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2179, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2190, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2196, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1608, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1612, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2125, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [12 x i8] c"rate_to_log\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1568, i32 267, i32 22 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2368, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2493, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2516, i32 4 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2543, i32 5 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1946, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1952, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1964, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1971, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 841, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 845, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 874, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 909, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 710, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 768, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 770, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 778, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 553, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 568, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 539, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 541, i32 3 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 543, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2002, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 232, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 213, i32 3 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2631, i32 24 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2633, i32 24 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2635, i32 24 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2637, i32 24 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2639, i32 24 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2641, i32 24 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2643, i32 24 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2645, i32 24 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2647, i32 24 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2649, i32 24 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2651, i32 24 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2653, i32 24 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2655, i32 24 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2657, i32 24 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2659, i32 24 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2680, i32 19 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3259, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3268, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3270, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3275, i32 3 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3278, i32 4 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3284, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3286, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3291, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3294, i32 4 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3301, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3304, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3307, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3311, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3317, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3380, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3392, i32 3 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3397, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3401, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3404, i32 3 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3410, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3414, i32 3 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3420, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3424, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3434, i32 3 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3439, i32 3 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3458, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3495, i32 17 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3500, i32 3 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3511, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2717, i32 3 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2724, i32 3 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2729, i32 3 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2736, i32 3 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2741, i32 3 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2747, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2752, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2757, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2762, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2768, i32 3 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2779, i32 3 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1416, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1418, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1429, i32 3 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1435, i32 4 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1453, i32 5 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1458, i32 4 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1470, i32 5 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1488, i32 5 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1496, i32 5 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1514, i32 3 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1524, i32 2 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 797, i32 2 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 802, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1218, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1024, i32 3 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1031, i32 3 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1042, i32 2 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1046, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1054, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1075, i32 5 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1081, i32 5 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1108, i32 3 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1129, i32 3 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1132, i32 4 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1140, i32 4 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1150, i32 5 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1274, i32 4 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1281, i32 5 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1282, i32 4 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1287, i32 4 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1294, i32 4 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1302, i32 4 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1309, i32 4 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1316, i32 4 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1357, i32 5 }
@___asan_gen_.1567 = private unnamed_addr constant [12 x i8] c"log_to_rate\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant [33 x i8] c"../drivers/atm/idt77252_tables.h\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1568, i32 7, i32 21 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3208, i32 2 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3212, i32 2 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3232, i32 2 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3236, i32 2 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3240, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 1380, i32 3 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 978, i32 3 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 991, i32 2 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 994, i32 2 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2961, i32 3 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2986, i32 3 }
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2991, i32 3 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2995, i32 2 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2856, i32 5 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2923, i32 3 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 2931, i32 3 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3038, i32 3 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3041, i32 2 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3075, i32 3 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3080, i32 3 }
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3084, i32 2 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3096, i32 2 }
@___asan_gen_.1714 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1720 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1721 = private constant [26 x i8] c"../drivers/atm/idt77252.c\00", align 1
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1721, i32 3739, i32 2 }
@___asan_gen_.1723 = private unnamed_addr constant [25 x i8] c"switch.table.push_rx_skb\00", align 1
@___asan_gen_.1724 = private unnamed_addr constant [30 x i8] c"switch.table.idt77252_init_rx\00", align 1
@llvm.compiler.used = appending global [592 x ptr] [ptr @__UNIQUE_ID_author471, ptr @__UNIQUE_ID_debug470, ptr @__UNIQUE_ID_debugtype469, ptr @__UNIQUE_ID_description472, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__UNIQUE_ID_vpibits468, ptr @__UNIQUE_ID_vpibitstype467, ptr @__exitcall_idt77252_exit, ptr @__fill_tst._entry, ptr @__fill_tst._entry.138, ptr @__fill_tst._entry_ptr, ptr @__fill_tst._entry_ptr.140, ptr @__initcall__kmod_idt77252__464_3766_idt77252_init6, ptr @__param_debug, ptr @__param_vpibits, ptr @add_rx_skb._entry, ptr @add_rx_skb._entry.48, ptr @add_rx_skb._entry_ptr, ptr @add_rx_skb._entry_ptr.50, ptr @alloc_scq._entry, ptr @alloc_scq._entry_ptr, ptr @close_card_oam._entry, ptr @close_card_oam._entry_ptr, ptr @deinit_card._entry, ptr @deinit_card._entry.468, ptr @deinit_card._entry.471, ptr @deinit_card._entry.474, ptr @deinit_card._entry.477, ptr @deinit_card._entry.480, ptr @deinit_card._entry_ptr, ptr @deinit_card._entry_ptr.470, ptr @deinit_card._entry_ptr.473, ptr @deinit_card._entry_ptr.476, ptr @deinit_card._entry_ptr.479, ptr @deinit_card._entry_ptr.482, ptr @dequeue_rx._entry, ptr @dequeue_rx._entry.371, ptr @dequeue_rx._entry.374, ptr @dequeue_rx._entry.377, ptr @dequeue_rx._entry.380, ptr @dequeue_rx._entry.383, ptr @dequeue_rx._entry.386, ptr @dequeue_rx._entry.389, ptr @dequeue_rx._entry.392, ptr @dequeue_rx._entry.395, ptr @dequeue_rx._entry.398, ptr @dequeue_rx._entry.401, ptr @dequeue_rx._entry_ptr, ptr @dequeue_rx._entry_ptr.373, ptr @dequeue_rx._entry_ptr.376, ptr @dequeue_rx._entry_ptr.379, ptr @dequeue_rx._entry_ptr.382, ptr @dequeue_rx._entry_ptr.385, ptr @dequeue_rx._entry_ptr.388, ptr @dequeue_rx._entry_ptr.391, ptr @dequeue_rx._entry_ptr.394, ptr @dequeue_rx._entry_ptr.397, ptr @dequeue_rx._entry_ptr.400, ptr @dequeue_rx._entry_ptr.403, ptr @drain_scq._entry, ptr @drain_scq._entry.364, ptr @drain_scq._entry_ptr, ptr @drain_scq._entry_ptr.366, ptr @dump_tct._entry, ptr @dump_tct._entry.190, ptr @dump_tct._entry.193, ptr @dump_tct._entry_ptr, ptr @dump_tct._entry_ptr.192, ptr @dump_tct._entry_ptr.195, ptr @idt77252_close._entry, ptr @idt77252_close._entry.146, ptr @idt77252_close._entry.148, ptr @idt77252_close._entry_ptr, ptr @idt77252_close._entry_ptr.147, ptr @idt77252_close._entry_ptr.150, ptr @idt77252_dev_close._entry, ptr @idt77252_dev_close._entry_ptr, ptr @idt77252_dev_open._entry, ptr @idt77252_dev_open._entry.453, ptr @idt77252_dev_open._entry.456, ptr @idt77252_dev_open._entry.459, ptr @idt77252_dev_open._entry_ptr, ptr @idt77252_dev_open._entry_ptr.455, ptr @idt77252_dev_open._entry_ptr.458, ptr @idt77252_dev_open._entry_ptr.461, ptr @idt77252_exit, ptr @idt77252_exit._entry, ptr @idt77252_exit._entry_ptr, ptr @idt77252_init._entry, ptr @idt77252_init._entry_ptr, ptr @idt77252_init_cbr._entry, ptr @idt77252_init_cbr._entry.118, ptr @idt77252_init_cbr._entry.121, ptr @idt77252_init_cbr._entry.124, ptr @idt77252_init_cbr._entry.127, ptr @idt77252_init_cbr._entry.130, ptr @idt77252_init_cbr._entry.133, ptr @idt77252_init_cbr._entry_ptr, ptr @idt77252_init_cbr._entry_ptr.120, ptr @idt77252_init_cbr._entry_ptr.123, ptr @idt77252_init_cbr._entry_ptr.126, ptr @idt77252_init_cbr._entry_ptr.129, ptr @idt77252_init_cbr._entry_ptr.132, ptr @idt77252_init_cbr._entry_ptr.135, ptr @idt77252_init_one._entry, ptr @idt77252_init_one._entry.22, ptr @idt77252_init_one._entry.25, ptr @idt77252_init_one._entry.28, ptr @idt77252_init_one._entry.31, ptr @idt77252_init_one._entry.34, ptr @idt77252_init_one._entry.37, ptr @idt77252_init_one._entry.40, ptr @idt77252_init_one._entry.43, ptr @idt77252_init_one._entry.6, ptr @idt77252_init_one._entry.9, ptr @idt77252_init_one._entry_ptr, ptr @idt77252_init_one._entry_ptr.11, ptr @idt77252_init_one._entry_ptr.24, ptr @idt77252_init_one._entry_ptr.27, ptr @idt77252_init_one._entry_ptr.30, ptr @idt77252_init_one._entry_ptr.33, ptr @idt77252_init_one._entry_ptr.36, ptr @idt77252_init_one._entry_ptr.39, ptr @idt77252_init_one._entry_ptr.42, ptr @idt77252_init_one._entry_ptr.45, ptr @idt77252_init_one._entry_ptr.8, ptr @idt77252_init_rx._entry, ptr @idt77252_init_rx._entry_ptr, ptr @idt77252_init_tx._entry, ptr @idt77252_init_tx._entry.101, ptr @idt77252_init_tx._entry.104, ptr @idt77252_init_tx._entry_ptr, ptr @idt77252_init_tx._entry_ptr.103, ptr @idt77252_init_tx._entry_ptr.106, ptr @idt77252_interrupt._entry, ptr @idt77252_interrupt._entry.300, ptr @idt77252_interrupt._entry.303, ptr @idt77252_interrupt._entry.306, ptr @idt77252_interrupt._entry.309, ptr @idt77252_interrupt._entry.312, ptr @idt77252_interrupt._entry.315, ptr @idt77252_interrupt._entry.318, ptr @idt77252_interrupt._entry.321, ptr @idt77252_interrupt._entry.324, ptr @idt77252_interrupt._entry.327, ptr @idt77252_interrupt._entry_ptr, ptr @idt77252_interrupt._entry_ptr.302, ptr @idt77252_interrupt._entry_ptr.305, ptr @idt77252_interrupt._entry_ptr.308, ptr @idt77252_interrupt._entry_ptr.311, ptr @idt77252_interrupt._entry_ptr.314, ptr @idt77252_interrupt._entry_ptr.317, ptr @idt77252_interrupt._entry_ptr.320, ptr @idt77252_interrupt._entry_ptr.323, ptr @idt77252_interrupt._entry_ptr.326, ptr @idt77252_interrupt._entry_ptr.329, ptr @idt77252_open._entry, ptr @idt77252_open._entry.76, ptr @idt77252_open._entry.79, ptr @idt77252_open._entry.82, ptr @idt77252_open._entry.85, ptr @idt77252_open._entry.89, ptr @idt77252_open._entry.95, ptr @idt77252_open._entry_ptr, ptr @idt77252_open._entry_ptr.78, ptr @idt77252_open._entry_ptr.81, ptr @idt77252_open._entry_ptr.84, ptr @idt77252_open._entry_ptr.87, ptr @idt77252_open._entry_ptr.91, ptr @idt77252_open._entry_ptr.97, ptr @idt77252_preset._entry, ptr @idt77252_preset._entry.57, ptr @idt77252_preset._entry.60, ptr @idt77252_preset._entry.63, ptr @idt77252_preset._entry.66, ptr @idt77252_preset._entry_ptr, ptr @idt77252_preset._entry_ptr.59, ptr @idt77252_preset._entry_ptr.62, ptr @idt77252_preset._entry_ptr.65, ptr @idt77252_preset._entry_ptr.68, ptr @idt77252_rx._entry, ptr @idt77252_rx._entry_ptr, ptr @idt77252_rx_raw._entry, ptr @idt77252_rx_raw._entry.406, ptr @idt77252_rx_raw._entry.409, ptr @idt77252_rx_raw._entry.411, ptr @idt77252_rx_raw._entry.413, ptr @idt77252_rx_raw._entry.415, ptr @idt77252_rx_raw._entry.418, ptr @idt77252_rx_raw._entry.421, ptr @idt77252_rx_raw._entry.424, ptr @idt77252_rx_raw._entry_ptr, ptr @idt77252_rx_raw._entry_ptr.408, ptr @idt77252_rx_raw._entry_ptr.410, ptr @idt77252_rx_raw._entry_ptr.412, ptr @idt77252_rx_raw._entry_ptr.414, ptr @idt77252_rx_raw._entry_ptr.417, ptr @idt77252_rx_raw._entry_ptr.420, ptr @idt77252_rx_raw._entry_ptr.423, ptr @idt77252_rx_raw._entry_ptr.426, ptr @idt77252_send_oam._entry, ptr @idt77252_send_oam._entry_ptr, ptr @idt77252_send_skb._entry, ptr @idt77252_send_skb._entry.153, ptr @idt77252_send_skb._entry.156, ptr @idt77252_send_skb._entry.158, ptr @idt77252_send_skb._entry_ptr, ptr @idt77252_send_skb._entry_ptr.155, ptr @idt77252_send_skb._entry_ptr.157, ptr @idt77252_send_skb._entry_ptr.160, ptr @idt77252_tx._entry, ptr @idt77252_tx._entry.332, ptr @idt77252_tx._entry.335, ptr @idt77252_tx._entry.338, ptr @idt77252_tx._entry.341, ptr @idt77252_tx._entry.344, ptr @idt77252_tx._entry.347, ptr @idt77252_tx._entry.350, ptr @idt77252_tx._entry.353, ptr @idt77252_tx._entry.356, ptr @idt77252_tx._entry.359, ptr @idt77252_tx._entry_ptr, ptr @idt77252_tx._entry_ptr.334, ptr @idt77252_tx._entry_ptr.337, ptr @idt77252_tx._entry_ptr.340, ptr @idt77252_tx._entry_ptr.343, ptr @idt77252_tx._entry_ptr.346, ptr @idt77252_tx._entry_ptr.349, ptr @idt77252_tx._entry_ptr.352, ptr @idt77252_tx._entry_ptr.355, ptr @idt77252_tx._entry_ptr.358, ptr @idt77252_tx._entry_ptr.361, ptr @idt77252_tx_dump._entry, ptr @idt77252_tx_dump._entry.185, ptr @idt77252_tx_dump._entry_ptr, ptr @idt77252_tx_dump._entry_ptr.187, ptr @init_card._entry, ptr @init_card._entry.219, ptr @init_card._entry.222, ptr @init_card._entry.225, ptr @init_card._entry.228, ptr @init_card._entry.231, ptr @init_card._entry.234, ptr @init_card._entry.237, ptr @init_card._entry.240, ptr @init_card._entry.243, ptr @init_card._entry.246, ptr @init_card._entry.249, ptr @init_card._entry.252, ptr @init_card._entry.255, ptr @init_card._entry.258, ptr @init_card._entry.261, ptr @init_card._entry.264, ptr @init_card._entry.267, ptr @init_card._entry.270, ptr @init_card._entry.272, ptr @init_card._entry.275, ptr @init_card._entry.277, ptr @init_card._entry.280, ptr @init_card._entry.282, ptr @init_card._entry.285, ptr @init_card._entry.288, ptr @init_card._entry.292, ptr @init_card._entry.295, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.221, ptr @init_card._entry_ptr.224, ptr @init_card._entry_ptr.227, ptr @init_card._entry_ptr.230, ptr @init_card._entry_ptr.233, ptr @init_card._entry_ptr.236, ptr @init_card._entry_ptr.239, ptr @init_card._entry_ptr.242, ptr @init_card._entry_ptr.245, ptr @init_card._entry_ptr.248, ptr @init_card._entry_ptr.251, ptr @init_card._entry_ptr.254, ptr @init_card._entry_ptr.257, ptr @init_card._entry_ptr.260, ptr @init_card._entry_ptr.263, ptr @init_card._entry_ptr.266, ptr @init_card._entry_ptr.269, ptr @init_card._entry_ptr.271, ptr @init_card._entry_ptr.274, ptr @init_card._entry_ptr.276, ptr @init_card._entry_ptr.279, ptr @init_card._entry_ptr.281, ptr @init_card._entry_ptr.284, ptr @init_card._entry_ptr.287, ptr @init_card._entry_ptr.290, ptr @init_card._entry_ptr.294, ptr @init_card._entry_ptr.297, ptr @init_rsq._entry, ptr @init_rsq._entry.445, ptr @init_rsq._entry.448, ptr @init_rsq._entry_ptr, ptr @init_rsq._entry_ptr.447, ptr @init_rsq._entry_ptr.450, ptr @init_sram._entry, ptr @init_sram._entry.429, ptr @init_sram._entry.432, ptr @init_sram._entry.435, ptr @init_sram._entry.438, ptr @init_sram._entry_ptr, ptr @init_sram._entry_ptr.431, ptr @init_sram._entry_ptr.434, ptr @init_sram._entry_ptr.437, ptr @init_sram._entry_ptr.440, ptr @init_tsq._entry, ptr @init_tsq._entry_ptr, ptr @open_card_oam._entry, ptr @open_card_oam._entry_ptr, ptr @open_card_ubr0._entry, ptr @open_card_ubr0._entry.465, ptr @open_card_ubr0._entry_ptr, ptr @open_card_ubr0._entry_ptr.466, ptr @push_on_scq._entry, ptr @push_on_scq._entry.174, ptr @push_on_scq._entry.177, ptr @push_on_scq._entry.180, ptr @push_on_scq._entry_ptr, ptr @push_on_scq._entry_ptr.176, ptr @push_on_scq._entry_ptr.179, ptr @push_on_scq._entry_ptr.182, ptr @queue_skb._entry, ptr @queue_skb._entry.163, ptr @queue_skb._entry.166, ptr @queue_skb._entry.169, ptr @queue_skb._entry_ptr, ptr @queue_skb._entry_ptr.165, ptr @queue_skb._entry_ptr.168, ptr @queue_skb._entry_ptr.171, ptr @read_utility._entry, ptr @read_utility._entry_ptr, ptr @set_tct._entry, ptr @set_tct._entry.114, ptr @set_tct._entry_ptr, ptr @set_tct._entry_ptr.115, ptr @write_sram._entry, ptr @write_sram._entry_ptr, ptr @write_utility._entry, ptr @write_utility._entry_ptr, ptr @idt77252_driver, ptr @idt77252_chain, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vpibits, ptr @.str.3, ptr @idt77252_pci_tbl, ptr @idt77252_init_one.last, ptr @idt77252_init_one.index, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @idt77252_init_one.__key, ptr @.str.13, ptr @idt77252_init_one.__key.14, ptr @.str.15, ptr @idt77252_init_one.__key.16, ptr @.str.17, ptr @idt77252_init_one.__key.18, ptr @.str.19, ptr @idt77252_init_one.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @idt77252_ops, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @idt77252_sram_write_errors, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @skb_queue_head_init.__key, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @idt77252_open.__key, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @alloc_scq.__key, ptr @.str.107, ptr @alloc_scq.__key.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @idt77252_init_est.__key, ptr @.str.141, ptr @rate_to_log, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.273, ptr @.str.278, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.291, ptr @.str.293, ptr @.str.296, ptr @.str.298, ptr @.str.299, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.325, ptr @.str.328, ptr @.str.330, ptr @.str.331, ptr @.str.333, ptr @.str.336, ptr @.str.339, ptr @.str.342, ptr @.str.345, ptr @.str.348, ptr @.str.351, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.362, ptr @.str.363, ptr @.str.365, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.381, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.396, ptr @.str.399, ptr @.str.402, ptr @.str.404, ptr @.str.405, ptr @.str.407, ptr @.str.416, ptr @.str.419, ptr @.str.422, ptr @.str.425, ptr @log_to_rate, ptr @.str.427, ptr @.str.428, ptr @.str.430, ptr @.str.433, ptr @.str.436, ptr @.str.439, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.446, ptr @.str.449, ptr @.str.451, ptr @.str.452, ptr @.str.454, ptr @.str.457, ptr @.str.460, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.467, ptr @.str.469, ptr @.str.472, ptr @.str.475, ptr @.str.478, ptr @.str.481, ptr @.str.483, ptr @.str.484, ptr @switch.table.push_rx_skb, ptr @switch.table.idt77252_init_rx], section "llvm.metadata"
@0 = internal global [412 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_chain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpibits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.last to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_one._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_rx_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_rx_skb._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_sram_write_errors to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_preset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_preset._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_preset._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_preset._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_preset._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_dev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_card_oam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_open._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_tx._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_tx._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_scq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_scq.__key.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_scq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tct._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_cbr._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_est.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_to_log to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_close._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_close._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_send_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_send_skb._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_send_skb._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_send_skb._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_skb._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_skb._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_skb._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_on_scq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_on_scq._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_on_scq._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_on_scq._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx_dump._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tct._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tct._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_send_oam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_utility._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_utility._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_interrupt._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_tx._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drain_scq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drain_scq._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_rx_raw._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_to_rate to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sram._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sram._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sram._entry.435 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sram._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tsq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rsq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rsq._entry.445 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rsq._entry.448 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_dev_open._entry.453 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_dev_open._entry.456 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_dev_open._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_card_oam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_card_ubr0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_card_ubr0._entry.465 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry.468 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry.474 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry.477 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinit_card._entry.480 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77252_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.push_rx_skb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.idt77252_init_rx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @idt77252_driver) #13
  %0 = load ptr, ptr @idt77252_chain, align 4
  %tobool.not18 = icmp eq ptr %0, null
  br i1 %tobool.not18, label %entry.do.body_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %12, %if.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %atmdev = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atmdev, align 4
  %next = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  store ptr %5, ptr @idt77252_chain, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %stop = getelementptr inbounds %struct.atmphy_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %9(ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call fastcc void @deinit_card(ptr noundef nonnull %1)
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  tail call void @pci_disable_device(ptr noundef %11) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  %12 = load ptr, ptr @idt77252_chain, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %13 = load i32, ptr @debug, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deinit_card(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %do.body2

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body2:                                         ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body2.do.body13_crit_edge, label %do.end7

do.body2.do.body13_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

do.end7:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 44
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.469, i32 noundef %5) #16
  br label %do.body13

do.body13:                                        ; preds = %do.end7, %do.body2.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !817
  tail call void @arm_heavy_mb() #13
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !818
  %atmdev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 3
  %8 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atmdev, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %do.body13.if.end19_crit_edge, label %if.then17

do.body13.if.end19_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @atm_dev_deregister(ptr noundef nonnull %9) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body13.if.end19_crit_edge
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  br label %for.body22

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %if.end19
  %j.0177 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body22_crit_edge ]
  %arrayidx24 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 0, i32 1, i32 %j.0177
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %11, null
  br i1 %tobool25.not, label %for.body22.for.inc_crit_edge, label %if.then26

for.body22.for.inc_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then26:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %paddr = getelementptr %struct.sk_buff, ptr %11, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %paddr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %paddr, align 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %sub.ptr.sub, i32 noundef 2, i32 noundef 0) #13
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx24, align 4
  tail call void @consume_skb(ptr noundef nonnull %11) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body22.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0177, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.for.body22.1_crit_edge, label %for.inc.for.body22_crit_edge

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22

for.inc.for.body22.1_crit_edge:                   ; preds = %for.inc
  br label %for.body22.1

for.body22.1:                                     ; preds = %for.inc.1.for.body22.1_crit_edge, %for.inc.for.body22.1_crit_edge
  %j.0177.1 = phi i32 [ %inc.1, %for.inc.1.for.body22.1_crit_edge ], [ 0, %for.inc.for.body22.1_crit_edge ]
  %arrayidx24.1 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 1, i32 1, i32 %j.0177.1
  %21 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx24.1, align 4
  %tobool25.not.1 = icmp eq ptr %22, null
  br i1 %tobool25.not.1, label %for.body22.1.for.inc.1_crit_edge, label %if.then26.1

for.body22.1.for.inc.1_crit_edge:                 ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then26.1:                                      ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %paddr.1 = getelementptr %struct.sk_buff, ptr %22, i32 0, i32 3, i32 28
  %25 = ptrtoint ptr %paddr.1 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %paddr.1, align 1
  %end.i.1 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.1, align 4
  %data.1 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %29 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.1, align 4
  %sub.ptr.lhs.cast.1 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.1 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.1 = sub i32 %sub.ptr.lhs.cast.1, %sub.ptr.rhs.cast.1
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.1, i32 noundef %26, i32 noundef %sub.ptr.sub.1, i32 noundef 2, i32 noundef 0) #13
  %31 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx24.1, align 4
  tail call void @consume_skb(ptr noundef nonnull %22) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then26.1, %for.body22.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.0177.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 512
  br i1 %exitcond.1.not, label %for.inc.1.for.body22.2_crit_edge, label %for.inc.1.for.body22.1_crit_edge

for.inc.1.for.body22.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.1

for.inc.1.for.body22.2_crit_edge:                 ; preds = %for.inc.1
  br label %for.body22.2

for.body22.2:                                     ; preds = %for.inc.2.for.body22.2_crit_edge, %for.inc.1.for.body22.2_crit_edge
  %j.0177.2 = phi i32 [ %inc.2, %for.inc.2.for.body22.2_crit_edge ], [ 0, %for.inc.1.for.body22.2_crit_edge ]
  %arrayidx24.2 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 2, i32 1, i32 %j.0177.2
  %32 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24.2, align 4
  %tobool25.not.2 = icmp eq ptr %33, null
  br i1 %tobool25.not.2, label %for.body22.2.for.inc.2_crit_edge, label %if.then26.2

for.body22.2.for.inc.2_crit_edge:                 ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then26.2:                                      ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcidev, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %paddr.2 = getelementptr %struct.sk_buff, ptr %33, i32 0, i32 3, i32 28
  %36 = ptrtoint ptr %paddr.2 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %paddr.2, align 1
  %end.i.2 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.2, align 4
  %data.2 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %40 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.2, align 4
  %sub.ptr.lhs.cast.2 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.2 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.2 = sub i32 %sub.ptr.lhs.cast.2, %sub.ptr.rhs.cast.2
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.2, i32 noundef %37, i32 noundef %sub.ptr.sub.2, i32 noundef 2, i32 noundef 0) #13
  %42 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx24.2, align 4
  tail call void @consume_skb(ptr noundef nonnull %33) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then26.2, %for.body22.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.0177.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 512
  br i1 %exitcond.2.not, label %for.inc.2.for.body22.3_crit_edge, label %for.inc.2.for.body22.2_crit_edge

for.inc.2.for.body22.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.2

for.inc.2.for.body22.3_crit_edge:                 ; preds = %for.inc.2
  br label %for.body22.3

for.body22.3:                                     ; preds = %for.inc.3.for.body22.3_crit_edge, %for.inc.2.for.body22.3_crit_edge
  %j.0177.3 = phi i32 [ %inc.3, %for.inc.3.for.body22.3_crit_edge ], [ 0, %for.inc.2.for.body22.3_crit_edge ]
  %arrayidx24.3 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 3, i32 1, i32 %j.0177.3
  %43 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx24.3, align 4
  %tobool25.not.3 = icmp eq ptr %44, null
  br i1 %tobool25.not.3, label %for.body22.3.for.inc.3_crit_edge, label %if.then26.3

for.body22.3.for.inc.3_crit_edge:                 ; preds = %for.body22.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then26.3:                                      ; preds = %for.body22.3
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev, align 4
  %dev.3 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %paddr.3 = getelementptr %struct.sk_buff, ptr %44, i32 0, i32 3, i32 28
  %47 = ptrtoint ptr %paddr.3 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %paddr.3, align 1
  %end.i.3 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.3, align 4
  %data.3 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 19
  %51 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.3, align 4
  %sub.ptr.lhs.cast.3 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.3 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.3 = sub i32 %sub.ptr.lhs.cast.3, %sub.ptr.rhs.cast.3
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.3, i32 noundef %48, i32 noundef %sub.ptr.sub.3, i32 noundef 2, i32 noundef 0) #13
  %53 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx24.3, align 4
  tail call void @consume_skb(ptr noundef nonnull %44) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then26.3, %for.body22.3.for.inc.3_crit_edge
  %inc.3 = add nuw nsw i32 %j.0177.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 512
  br i1 %exitcond.3.not, label %for.inc35.3, label %for.inc.3.for.body22.3_crit_edge

for.inc.3.for.body22.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.3

for.inc35.3:                                      ; preds = %for.inc.3
  %soft_tst = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 35
  %54 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soft_tst, align 4
  tail call void @vfree(ptr noundef %55) #13
  %scd2vc = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 34
  %56 = ptrtoint ptr %scd2vc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scd2vc, align 4
  tail call void @vfree(ptr noundef %57) #13
  %vcs = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %58 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vcs, align 4
  tail call void @vfree(ptr noundef %59) #13
  %raw_cell_hnd = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 42
  %60 = ptrtoint ptr %raw_cell_hnd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %raw_cell_hnd, align 4
  %tobool38.not = icmp eq ptr %61, null
  br i1 %tobool38.not, label %for.inc35.3.if.end43_crit_edge, label %if.then39

for.inc35.3.if.end43_crit_edge:                   ; preds = %for.inc35.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then39:                                        ; preds = %for.inc35.3
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcidev, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %raw_cell_paddr = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 43
  %64 = ptrtoint ptr %raw_cell_paddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %raw_cell_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev41, i32 noundef 8, ptr noundef nonnull %61, i32 noundef %65, i32 noundef 0) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.inc35.3.if.end43_crit_edge
  %rsq = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 1
  %66 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rsq, align 4
  %tobool44.not = icmp eq ptr %67, null
  br i1 %tobool44.not, label %if.end43.if.end60_crit_edge, label %do.body46

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

do.body46:                                        ; preds = %if.end43
  %68 = load i32, ptr @debug, align 4
  %and47 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end59_crit_edge, label %do.end52

do.body46.do.end59_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  %name54 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.472, ptr noundef %name54) #16
  br label %do.end59

do.end59:                                         ; preds = %do.end52, %do.body46.do.end59_crit_edge
  %69 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcidev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rsq, align 4
  %paddr.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %72, i32 noundef %74, i32 noundef 0) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %if.end43.if.end60_crit_edge
  %75 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card, align 4
  %tobool62.not = icmp eq ptr %76, null
  br i1 %tobool62.not, label %if.end60.do.body79_crit_edge, label %do.body64

if.end60.do.body79_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body79

do.body64:                                        ; preds = %if.end60
  %77 = load i32, ptr @debug, align 4
  %and65 = and i32 %77, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.do.end77_crit_edge, label %do.end70

do.body64.do.end77_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end77

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  %name72 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.475, ptr noundef %name72) #16
  br label %do.end77

do.end77:                                         ; preds = %do.end70, %do.body64.do.end77_crit_edge
  %78 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcidev, align 4
  %dev.i175 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card, align 4
  %paddr.i176 = getelementptr inbounds %struct.tsq_info, ptr %card, i32 0, i32 3
  %82 = ptrtoint ptr %paddr.i176 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %paddr.i176, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i175, i32 noundef 8192, ptr noundef %81, i32 noundef %83, i32 noundef 0) #13
  br label %do.body79

do.body79:                                        ; preds = %do.end77, %if.end60.do.body79_crit_edge
  %84 = load i32, ptr @debug, align 4
  %and80 = and i32 %84, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.end90_crit_edge, label %do.end85

do.body79.do.end90_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end90

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.478) #16
  br label %do.end90

do.end90:                                         ; preds = %do.end85, %do.body79.do.end90_crit_edge
  %85 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcidev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %call92 = tail call ptr @free_irq(i32 noundef %88, ptr noundef %card) #13
  %arrayidx96 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 6, i32 0
  %89 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %90, null
  br i1 %tobool97.not, label %do.end90.for.inc102_crit_edge, label %if.then98

do.end90.for.inc102_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

if.then98:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %90) #13
  br label %for.inc102

for.inc102:                                       ; preds = %if.then98, %do.end90.for.inc102_crit_edge
  %arrayidx96.1 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 6, i32 1
  %91 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx96.1, align 4
  %tobool97.not.1 = icmp eq ptr %92, null
  br i1 %tobool97.not.1, label %for.inc102.for.inc102.1_crit_edge, label %if.then98.1

for.inc102.for.inc102.1_crit_edge:                ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102.1

if.then98.1:                                      ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %92) #13
  br label %for.inc102.1

for.inc102.1:                                     ; preds = %if.then98.1, %for.inc102.for.inc102.1_crit_edge
  %arrayidx96.2 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 6, i32 2
  %93 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx96.2, align 4
  %tobool97.not.2 = icmp eq ptr %94, null
  br i1 %tobool97.not.2, label %for.inc102.1.for.inc102.2_crit_edge, label %if.then98.2

for.inc102.1.for.inc102.2_crit_edge:              ; preds = %for.inc102.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102.2

if.then98.2:                                      ; preds = %for.inc102.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %94) #13
  br label %for.inc102.2

for.inc102.2:                                     ; preds = %if.then98.2, %for.inc102.1.for.inc102.2_crit_edge
  %arrayidx96.3 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 6, i32 3
  %95 = ptrtoint ptr %arrayidx96.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx96.3, align 4
  %tobool97.not.3 = icmp eq ptr %96, null
  br i1 %tobool97.not.3, label %for.inc102.2.for.inc102.3_crit_edge, label %if.then98.3

for.inc102.2.for.inc102.3_crit_edge:              ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102.3

if.then98.3:                                      ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %96) #13
  br label %for.inc102.3

for.inc102.3:                                     ; preds = %if.then98.3, %for.inc102.2.for.inc102.3_crit_edge
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %tobool106.not = icmp eq ptr %98, null
  br i1 %tobool106.not, label %for.inc102.3.if.end109_crit_edge, label %if.then107

for.inc102.3.if.end109_crit_edge:                 ; preds = %for.inc102.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then107:                                       ; preds = %for.inc102.3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %98) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.inc102.3.if.end109_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  %99 = load i32, ptr @debug, align 4
  %and112 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end109.cleanup_crit_edge, label %if.end109.cleanup.sink.split_crit_edge

if.end109.cleanup.sink.split_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end109.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.481.sink = phi ptr [ @.str.451, %entry.cleanup.sink.split_crit_edge ], [ @.str.481, %if.end109.cleanup.sink.split_crit_edge ]
  %name119 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.481.sink, ptr noundef %name119) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end109.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.483, ptr noundef nonnull @.str.484, ptr noundef nonnull @idt77252_init) #16
  %call4 = tail call i32 @__pci_register_driver(ptr noundef nonnull @idt77252_driver, ptr noundef null, ptr noundef nonnull @.str.3) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_init_one(ptr noundef %pcidev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %pci_command.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pcidev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev3, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  %init_name.i.i256 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i256 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i256, align 8
  %tobool.not.i.i257 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i257, label %if.end.i.i259, label %do.end9.pci_name.exit261_crit_edge

do.end9.pci_name.exit261_crit_edge:               ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit261

if.end.i.i259:                                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  br label %pci_name.exit261

pci_name.exit261:                                 ; preds = %if.end.i.i259, %do.end9.pci_name.exit261_crit_edge
  %retval.0.i.i260 = phi ptr [ %7, %if.end.i.i259 ], [ %5, %do.end9.pci_name.exit261_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i260) #16
  br label %err_out_disable_pdev

if.end13:                                         ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev3, i64 noundef 4294967295) #13
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8760, i32 noundef 3520, i32 noundef 2) #17
  %tobool15.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %8 = load i32, ptr @idt77252_init_one.index, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %8) #16
  br label %err_out_disable_pdev

if.end22:                                         ; preds = %if.end13
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 12
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision, align 4
  %conv = zext i8 %10 to i32
  %revision23 = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 45
  %11 = ptrtoint ptr %revision23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %revision23, align 32
  %12 = load i32, ptr @idt77252_init_one.index, align 4
  %index = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 44
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %index, align 4
  %pcidev24 = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %pcidev24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pcidev, ptr %pcidev24, align 32
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 46
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.12, i32 noundef %12)
  %tqueue = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %tqueue, i32 noundef 0) #13
  %15 = ptrtoint ptr %tqueue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %tqueue, align 16
  %lockdep_map = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @idt77252_init_one.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry31 = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry31, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @idt77252_softint, ptr %func, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 8
  %arrayidx36 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 2
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx36, align 8
  %mutex = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @idt77252_init_one.__key.14) #13
  %cmd_lock = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @idt77252_init_one.__key.16, i16 noundef signext 3) #13
  %tst_lock = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %tst_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @idt77252_init_one.__key.18, i16 noundef signext 3) #13
  %tst_timer = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %tst_timer, ptr noundef nonnull @tst_timer, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @idt77252_init_one.__key.20) #13
  %call52 = tail call ptr @ioremap(i32 noundef %20, i32 noundef 1024) #13
  %membase53 = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %membase53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call52, ptr %membase53, align 8
  %tobool55.not = icmp eq ptr %call52, null
  br i1 %tobool55.not, label %do.end59, label %if.end64

do.end59:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #16
  br label %err_out_free_card

if.end64:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_command.i) #13
  %24 = ptrtoint ptr %pci_command.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %pci_command.i, align 2, !annotation !819
  %25 = load i32, ptr @debug, align 4
  %and.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end64.do.end3.i_crit_edge, label %do.end.i

if.end64.do.end3.i_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %call.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end64.do.end3.i_crit_edge
  %26 = ptrtoint ptr %pcidev24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev24, align 32
  %call4.i = call i32 @pci_read_config_word(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %pci_command.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end14.i, label %do.end9.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #16
  br label %do.end70

if.end14.i:                                       ; preds = %do.end3.i
  %28 = ptrtoint ptr %pci_command.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pci_command.i, align 2
  %conv.i = zext i16 %29 to i32
  %and15.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.end20.i, label %if.end26.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %conv.i) #16
  br label %do.end70

if.end26.i:                                       ; preds = %if.end14.i
  %or.i = or i16 %29, 6
  %30 = ptrtoint ptr %pci_command.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or.i, ptr %pci_command.i, align 2
  %31 = ptrtoint ptr %pcidev24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev24, align 32
  %call30.i = call i32 @pci_write_config_word(ptr noundef %32, i32 noundef 4, i16 noundef zeroext %or.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %do.body41.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name) #16
  br label %do.end70

do.body41.i:                                      ; preds = %if.end26.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !820
  call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %membase53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase53, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #13, !srcloc !818
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !821
  call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %membase53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase53, align 8
  %add.ptr48.i = getelementptr i8, ptr %37, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 0) #13, !srcloc !818
  %38 = load i32, ptr @debug, align 4
  %and50.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body41.i.if.end75_crit_edge, label %do.end55.i

do.body41.i.if.end75_crit_edge:                   ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

do.end55.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name) #16
  br label %if.end75

do.end70:                                         ; preds = %do.end35.i, %do.end20.i, %do.end9.i
  call fastcc void @deinit_card(ptr noundef nonnull %call1.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_command.i) #13
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name) #16
  br label %err_out_iounmap

if.end75:                                         ; preds = %do.end55.i, %do.body41.i.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_command.i) #13
  %call77 = call ptr @atm_dev_register(ptr noundef nonnull @.str.3, ptr noundef %dev3, ptr noundef nonnull @idt77252_ops, i32 noundef -1, ptr noundef null) #13
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %do.end82, label %if.end87

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #16
  br label %err_out_iounmap

if.end87:                                         ; preds = %if.end75
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %call77, i32 0, i32 4
  %39 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i.i, ptr %dev_data, align 8
  %atmdev = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %atmdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call77, ptr %atmdev, align 4
  %call88 = call i32 @suni_init(ptr noundef nonnull %call77) #13
  %phy = getelementptr inbounds %struct.atm_dev, ptr %call77, i32 0, i32 1
  %41 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy, align 4
  %tobool89.not = icmp eq ptr %42, null
  br i1 %tobool89.not, label %do.end93, label %if.end98

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name) #16
  br label %err_out_deinit_card

if.end98:                                         ; preds = %if.end87
  %call99 = call fastcc i32 @probe_sram(ptr noundef nonnull %call1.i.i.i)
  %sramsize = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 20
  %43 = ptrtoint ptr %sramsize to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call99, ptr %sramsize, align 4
  %or101 = or i32 %22, 2097152
  %call102 = call ptr @ioremap(i32 noundef %or101, i32 noundef 4) #13
  %arrayidx103 = getelementptr %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 6, i32 0
  %44 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call102, ptr %arrayidx103, align 16
  %tobool106.not = icmp eq ptr %call102, null
  br i1 %tobool106.not, label %if.end98.do.end110_crit_edge, label %for.inc

if.end98.do.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

do.end110:                                        ; preds = %for.inc.2.do.end110_crit_edge, %for.inc.1.do.end110_crit_edge, %for.inc.do.end110_crit_edge, %if.end98.do.end110_crit_edge
  %i.0266.lcssa = phi i32 [ 0, %if.end98.do.end110_crit_edge ], [ 1, %for.inc.do.end110_crit_edge ], [ 2, %for.inc.1.do.end110_crit_edge ], [ 3, %for.inc.2.do.end110_crit_edge ]
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %i.0266.lcssa) #16
  br label %err_out_deinit_card

for.inc:                                          ; preds = %if.end98
  %or101.1 = or i32 %22, 2359296
  %call102.1 = call ptr @ioremap(i32 noundef %or101.1, i32 noundef 4) #13
  %arrayidx103.1 = getelementptr %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call102.1, ptr %arrayidx103.1, align 4
  %tobool106.not.1 = icmp eq ptr %call102.1, null
  br i1 %tobool106.not.1, label %for.inc.do.end110_crit_edge, label %for.inc.1

for.inc.do.end110_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

for.inc.1:                                        ; preds = %for.inc
  %or101.2 = or i32 %22, 2621440
  %call102.2 = call ptr @ioremap(i32 noundef %or101.2, i32 noundef 4) #13
  %arrayidx103.2 = getelementptr %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call102.2, ptr %arrayidx103.2, align 8
  %tobool106.not.2 = icmp eq ptr %call102.2, null
  br i1 %tobool106.not.2, label %for.inc.1.do.end110_crit_edge, label %for.inc.2

for.inc.1.do.end110_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

for.inc.2:                                        ; preds = %for.inc.1
  %or101.3 = or i32 %22, 2883584
  %call102.3 = call ptr @ioremap(i32 noundef %or101.3, i32 noundef 4) #13
  %arrayidx103.3 = getelementptr %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call102.3, ptr %arrayidx103.3, align 4
  %tobool106.not.3 = icmp eq ptr %call102.3, null
  br i1 %tobool106.not.3, label %for.inc.2.do.end110_crit_edge, label %for.inc.3

for.inc.2.do.end110_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

for.inc.3:                                        ; preds = %for.inc.2
  %48 = ptrtoint ptr %revision23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %revision23, align 32
  %50 = add i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %50)
  %51 = icmp ult i32 %50, 23
  %sub = add i32 %49, 64
  %cond = select i1 %51, i32 %sub, i32 63
  %52 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sramsize, align 4
  %div255 = lshr i32 %53, 10
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %cond, i32 noundef %20, i32 noundef %22, i32 noundef %div255) #16
  %call131 = call fastcc i32 @init_card(ptr noundef nonnull %call77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end141, label %do.end136

do.end136:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name) #16
  br label %err_out_deinit_card

if.end141:                                        ; preds = %for.inc.3
  %vpibits = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 28
  %54 = ptrtoint ptr %vpibits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vpibits, align 4
  %conv142 = trunc i32 %55 to i8
  %ci_range = getelementptr inbounds %struct.atm_dev, ptr %call77, i32 0, i32 10
  %56 = ptrtoint ptr %ci_range to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv142, ptr %ci_range, align 2
  %vcibits = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 29
  %57 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vcibits, align 128
  %conv143 = trunc i32 %58 to i8
  %vci_bits = getelementptr inbounds %struct.atm_dev, ptr %call77, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %vci_bits to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv143, ptr %vci_bits, align 1
  %link_pcr = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 32
  %60 = ptrtoint ptr %link_pcr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %link_pcr, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %call77, i32 0, i32 13
  %62 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %link_rate, align 4
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool147.not = icmp eq ptr %66, null
  br i1 %tobool147.not, label %if.end141.if.end152_crit_edge, label %if.then148

if.end141.if.end152_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then148:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  %call151 = call i32 %66(ptr noundef nonnull %call77) #13
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %if.end141.if.end152_crit_edge
  %call153 = call fastcc i32 @idt77252_dev_open(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end163, label %do.end158

do.end158:                                        ; preds = %if.end152
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #16
  %67 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy, align 4
  %stop = getelementptr inbounds %struct.atmphy_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stop, align 4
  %tobool166.not = icmp eq ptr %70, null
  br i1 %tobool166.not, label %do.end158.err_out_deinit_card_crit_edge, label %if.then167

do.end158.err_out_deinit_card_crit_edge:          ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_deinit_card

if.end163:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %71 = load ptr, ptr @idt77252_init_one.last, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call1.i.i.i, ptr %71, align 4
  %next = getelementptr inbounds %struct.idt77252_dev, ptr %call1.i.i.i, i32 0, i32 47
  store ptr %next, ptr @idt77252_init_one.last, align 4
  %73 = load i32, ptr @idt77252_init_one.index, align 4
  %inc164 = add i32 %73, 1
  store i32 %inc164, ptr @idt77252_init_one.index, align 4
  br label %cleanup

if.then167:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #15
  %call170 = call i32 %70(ptr noundef nonnull %call77) #13
  br label %err_out_deinit_card

err_out_deinit_card:                              ; preds = %if.then167, %do.end158.err_out_deinit_card_crit_edge, %do.end136, %do.end110, %do.end93
  call fastcc void @deinit_card(ptr noundef nonnull %call1.i.i.i)
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_deinit_card, %do.end82, %do.end70
  %74 = ptrtoint ptr %membase53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase53, align 8
  call void @iounmap(ptr noundef %75) #13
  br label %err_out_free_card

err_out_free_card:                                ; preds = %err_out_iounmap, %do.end59
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #13
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %err_out_free_card, %do.end19, %pci_name.exit261
  %err.3 = phi i32 [ %call.i, %pci_name.exit261 ], [ -5, %err_out_free_card ], [ -12, %do.end19 ]
  call void @pci_disable_device(ptr noundef %pcidev) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_pdev, %if.end163, %pci_name.exit
  %retval.0 = phi i32 [ %call, %pci_name.exit ], [ %err.3, %err_out_disable_pdev ], [ 0, %if.end163 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_softint(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -208
  %membase = getelementptr i8, ptr %work, i32 -168
  br label %for.cond

for.cond:                                         ; preds = %if.end18.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #13, !srcloc !822
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !823
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.not = icmp eq i32 %4, 0
  br i1 %cmp.not.not, label %if.then, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1792, i32 noundef 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %done.1 = phi i32 [ 0, %if.then ], [ 1, %for.cond.if.end_crit_edge ]
  %5 = and i32 %3, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 3840, i32 noundef 32)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %done.2 = phi i32 [ 0, %if.then7 ], [ %done.1, %if.end.if.end8_crit_edge ]
  %6 = and i32 %3, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %if.then12, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 7936, i32 noundef 32)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %done.3 = phi i32 [ 0, %if.then12 ], [ %done.2, %if.end8.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %3)
  %cmp16 = icmp ult i32 %3, 536870912
  br i1 %cmp16, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 16128, i32 noundef 32)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %done.4 = phi i32 [ 0, %if.then17 ], [ %done.3, %if.end13.if.end18_crit_edge ]
  %tobool.not = icmp eq i32 %done.4, 0
  br i1 %tobool.not, label %if.end18.for.cond_crit_edge, label %do.body

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !824
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !825
  %10 = or i32 %9, 1073741824
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %10) #13, !srcloc !818
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tst_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -416
  %tst_lock = getelementptr i8, ptr %t, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tst_lock) #13
  %tst = getelementptr i8, ptr %t, i32 -148
  %tst_index = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %tst_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tst_index, align 4
  %arrayidx = getelementptr [2 x i32], ptr %tst, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %1, 1
  %arrayidx8 = getelementptr [2 x i32], ptr %tst, i32 0, i32 %xor
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8, align 4
  %tst_state = getelementptr i8, ptr %t, i32 92
  %6 = ptrtoint ptr %tst_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tst_state, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %if.then

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then:                                          ; preds = %entry
  %tst_size = getelementptr i8, ptr %t, i32 -52
  %9 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tst_size, align 4
  %membase = getelementptr i8, ptr %t, i32 -376
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 184
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #13, !srcloc !822
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !826
  %shr = lshr i32 %14, 2
  %xor14 = xor i32 %shr, %5
  %15 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tst_size, align 4
  %neg = sub i32 0, %16
  %and = and i32 %xor14, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end, label %if.then.out.sink.split_crit_edge

if.then.out.sink.split_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.end:                                           ; preds = %if.then
  %add = add i32 %3, -2
  %sub = add i32 %add, %10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tst_state) #13
  %17 = ptrtoint ptr %tst_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tst_index, align 4
  %xor23 = xor i32 %18, 1
  store i32 %xor23, ptr %tst_index, align 4
  %shl = shl i32 %3, 2
  %or = or i32 %shl, 1610612736
  tail call fastcc void @write_sram(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %or)
  %19 = ptrtoint ptr %tst_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tst_index, align 4
  %arrayidx26 = getelementptr [2 x i32], ptr %tst, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26, align 4
  %xor29 = xor i32 %20, 1
  %arrayidx30 = getelementptr [2 x i32], ptr %tst, i32 0, i32 %xor29
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %25 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp33143.not = icmp eq i32 %26, 2
  br i1 %cmp33143.not, label %if.end.if.end49_crit_edge, label %for.body.lr.ph

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.body.lr.ph:                                   ; preds = %if.end
  %soft_tst = getelementptr i8, ptr %t, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soft_tst, align 4
  %tste = getelementptr %struct.tst_info, ptr %28, i32 %e.0144, i32 1
  %29 = ptrtoint ptr %tste to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tste, align 4
  %and36 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %if.then38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %add39 = add i32 %e.0144, %24
  %and43 = and i32 %30, 1612709887
  tail call fastcc void @write_sram(ptr noundef %add.ptr, i32 noundef %add39, i32 noundef %and43)
  %31 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soft_tst, align 4
  %tste46 = getelementptr %struct.tst_info, ptr %32, i32 %e.0144, i32 1
  %33 = ptrtoint ptr %tste46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tste46, align 4
  %and47 = and i32 %34, -16777217
  store i32 %and47, ptr %tste46, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %e.0144, 1
  %35 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tst_size, align 4
  %sub32 = add i32 %36, -2
  %cmp33 = icmp ult i32 %inc, %sub32
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.if.end49_crit_edge

for.inc.if.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end49:                                         ; preds = %for.inc.if.end49_crit_edge, %if.end.if.end49_crit_edge, %entry.if.end49_crit_edge
  %idle.0 = phi i32 [ %5, %entry.if.end49_crit_edge ], [ %24, %if.end.if.end49_crit_edge ], [ %24, %for.inc.if.end49_crit_edge ]
  %base.0 = phi i32 [ %3, %entry.if.end49_crit_edge ], [ %22, %if.end.if.end49_crit_edge ], [ %22, %for.inc.if.end49_crit_edge ]
  %call51 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %tst_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.out_crit_edge, label %for.cond54.preheader

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond54.preheader:                             ; preds = %if.end49
  %tst_size55 = getelementptr i8, ptr %t, i32 -52
  %37 = ptrtoint ptr %tst_size55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tst_size55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp57147.not = icmp eq i32 %38, 2
  br i1 %cmp57147.not, label %for.cond54.preheader.for.end82_crit_edge, label %for.body59.lr.ph

for.cond54.preheader.for.end82_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end82

for.body59.lr.ph:                                 ; preds = %for.cond54.preheader
  %soft_tst60 = getelementptr i8, ptr %t, i32 -8
  br label %for.body59

for.body59:                                       ; preds = %for.inc80.for.body59_crit_edge, %for.body59.lr.ph
  %e.1148 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc81, %for.inc80.for.body59_crit_edge ]
  %39 = ptrtoint ptr %soft_tst60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soft_tst60, align 4
  %tste62 = getelementptr %struct.tst_info, ptr %40, i32 %e.1148, i32 1
  %41 = ptrtoint ptr %tste62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tste62, align 4
  %and63 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.body59.for.inc80_crit_edge, label %if.then65

for.body59.for.inc80_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc80

if.then65:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  %add66 = add i32 %e.1148, %idle.0
  %and70 = and i32 %42, 1612709887
  tail call fastcc void @write_sram(ptr noundef %add.ptr, i32 noundef %add66, i32 noundef %and70)
  %43 = ptrtoint ptr %soft_tst60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soft_tst60, align 4
  %tste73 = getelementptr %struct.tst_info, ptr %44, i32 %e.1148, i32 1
  %45 = ptrtoint ptr %tste73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tste73, align 4
  %and74 = and i32 %46, -33554433
  store i32 %and74, ptr %tste73, align 4
  %47 = load ptr, ptr %soft_tst60, align 4
  %tste77 = getelementptr %struct.tst_info, ptr %47, i32 %e.1148, i32 1
  %48 = ptrtoint ptr %tste77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tste77, align 4
  %or78 = or i32 %49, 16777216
  store i32 %or78, ptr %tste77, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %if.then65, %for.body59.for.inc80_crit_edge
  %inc81 = add nuw i32 %e.1148, 1
  %50 = ptrtoint ptr %tst_size55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tst_size55, align 4
  %sub56 = add i32 %51, -2
  %cmp57 = icmp ult i32 %inc81, %sub56
  br i1 %cmp57, label %for.inc80.for.body59_crit_edge, label %for.end82.loopexit

for.inc80.for.body59_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body59

for.end82.loopexit:                               ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = add i32 %51, -2
  br label %for.end82

for.end82:                                        ; preds = %for.end82.loopexit, %for.cond54.preheader.for.end82_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end82.loopexit ], [ 0, %for.cond54.preheader.for.end82_crit_edge ]
  %sub85 = add i32 %.lcssa, %base.0
  tail call fastcc void @write_sram(ptr noundef %add.ptr, i32 noundef %sub85, i32 noundef 0)
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tst_state) #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.end82, %if.then.out.sink.split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add88 = add i32 %52, 1
  %call89 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add88) #13
  br label %out

out:                                              ; preds = %out.sink.split, %if.end49.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tst_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suni_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_sram(ptr nocapture noundef readonly %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !827
  tail call void @arm_heavy_mb() #13
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !828
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 64) #13, !srcloc !818
  br label %do.body6

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %entry
  %addr.033 = phi i32 [ 16384, %entry ], [ %add, %for.inc.do.body6_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !829
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -272716322) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !830
  tail call void @arm_heavy_mb() #13
  %shl = shl nuw nsw i32 %addr.033, 2
  %or = or i32 %shl, 1073741824
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !831
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 80) #13, !srcloc !818
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %for.inc, label %do.body6.for.end_crit_edge

do.body6.for.end_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %do.body6
  %add = add nuw nsw i32 %addr.033, 16384
  %cmp = icmp ult i32 %addr.033, 507904
  br i1 %cmp, label %for.inc.do.body6_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body6.for.end_crit_edge
  %addr.0.lcssa = phi i32 [ 524288, %for.inc.for.end_crit_edge ], [ %addr.033, %do.body6.for.end_crit_edge ]
  %mul = shl nuw nsw i32 %addr.0.lcssa, 2
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_card(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  %tname = alloca [10 x i8], align 1
  %pci_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %pcidev1 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %tname) #13
  %4 = call ptr @memset(ptr %tname, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_byte) #13
  %5 = ptrtoint ptr %pci_byte to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %pci_byte, align 1, !annotation !819
  %flags = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #16
  br label %cleanup

do.body4:                                         ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.do.end14_crit_edge, label %do.end9

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %name) #16
  br label %do.end14

do.end14:                                         ; preds = %do.end9, %do.body4.do.end14_crit_edge
  %call15 = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 64, ptr noundef nonnull %pci_byte) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  %name21 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name21) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end24:                                         ; preds = %do.end14
  %10 = ptrtoint ptr %pci_byte to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_byte, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp25.not = icmp eq i8 %11, 0
  br i1 %cmp25.not, label %if.end24.do.body56_crit_edge, label %do.body28

if.end24.do.body56_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

do.body28:                                        ; preds = %if.end24
  %12 = load i32, ptr @debug, align 4
  %and29 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %name36 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name36, i32 noundef %conv) #16
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %call43 = call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 64, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %do.end42.do.body56_crit_edge, label %do.end49

do.end42.do.body56_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

do.end49:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  %name51 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef %name51) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

do.body56:                                        ; preds = %do.end42.do.body56_crit_edge, %if.end24.do.body56_crit_edge
  %13 = load i32, ptr @debug, align 4
  %and57 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.end69_crit_edge, label %do.end62

do.body56.do.end69_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %name64 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name64) #16
  br label %do.end69

do.end69:                                         ; preds = %do.end62, %do.body56.do.end69_crit_edge
  %call70 = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 65, ptr noundef nonnull %pci_byte) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end81, label %do.end76

do.end76:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #15
  %name78 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name78) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end81:                                         ; preds = %do.end69
  %14 = ptrtoint ptr %pci_byte to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pci_byte, align 1
  %conv82 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp83.not = icmp eq i8 %15, 0
  br i1 %cmp83.not, label %if.end81.if.end113_crit_edge, label %do.body86

if.end81.if.end113_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

do.body86:                                        ; preds = %if.end81
  %16 = load i32, ptr @debug, align 4
  %and87 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.do.end100_crit_edge, label %do.end92

do.body86.do.end100_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end100

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #15
  %name94 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef %name94, i32 noundef %conv82) #16
  br label %do.end100

do.end100:                                        ; preds = %do.end92, %do.body86.do.end100_crit_edge
  %call101 = call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 65, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %do.end100.if.end113_crit_edge, label %do.end107

do.end100.if.end113_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

do.end107:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #15
  %name109 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %name109) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end113:                                        ; preds = %do.end100.if.end113_crit_edge, %if.end81.if.end113_crit_edge
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 24
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !822
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !833
  %20 = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool118.not = icmp eq i32 %20, 0
  br i1 %tobool118.not, label %if.end113.do.body133_crit_edge, label %do.end122

if.end113.do.body133_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body133

do.end122:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  %name124 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %name124) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !834
  call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr131 = getelementptr i8, ptr %22, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 524288) #13, !srcloc !818
  br label %do.body133

do.body133:                                       ; preds = %do.end122, %if.end113.do.body133_crit_edge
  %23 = load i32, ptr @debug, align 4
  %and134 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.do.end146_crit_edge, label %do.end139

do.body133.do.end146_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end146

do.end139:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #15
  %name141 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %name141) #16
  br label %do.end146

do.end146:                                        ; preds = %do.end139, %do.body133.do.end146_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %name147 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call.i = call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @idt77252_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %name147, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp150.not = icmp eq i32 %call.i, 0
  br i1 %cmp150.not, label %do.body161, label %do.end155

do.end155:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #15
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

do.body161:                                       ; preds = %do.end146
  %26 = load i32, ptr @debug, align 4
  %and162 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %do.body161.do.body174_crit_edge, label %do.end167

do.body161.do.body174_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body174

do.end167:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, i32 noundef %28) #16
  br label %do.body174

do.body174:                                       ; preds = %do.end167, %do.body161.do.body174_crit_edge
  %29 = load i32, ptr @debug, align 4
  %and175 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.do.end187_crit_edge, label %do.end180

do.body174.do.end187_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end187

do.end180:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #15
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, ptr noundef %name147) #16
  br label %do.end187

do.end187:                                        ; preds = %do.end180, %do.body174.do.end187_crit_edge
  %sramsize = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sramsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %31)
  %cmp188 = icmp eq i32 %31, 524288
  %. = select i1 %cmp188, i32 276824064, i32 277020672
  %32 = load i32, ptr @vpibits, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %sw.bb194 [
    i32 0, label %do.end187.do.body200_crit_edge
    i32 8, label %sw.bb198
    i32 2, label %sw.bb196
  ]

do.end187.do.body200_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body200

sw.bb194:                                         ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  %or195 = or i32 %., 262144
  br label %do.body200

sw.bb196:                                         ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  %or197 = or i32 %., 524288
  br label %do.body200

sw.bb198:                                         ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  %or199 = or i32 %., 786432
  br label %do.body200

do.body200:                                       ; preds = %sw.bb198, %sw.bb196, %sw.bb194, %do.end187.do.body200_crit_edge
  %conf.1 = phi i32 [ %or195, %sw.bb194 ], [ %or197, %sw.bb196 ], [ %or199, %sw.bb198 ], [ %., %do.end187.do.body200_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !835
  call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr206 = getelementptr i8, ptr %35, i32 20
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr206) #13, !srcloc !822
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !836
  %or210 = or i32 %37, %conf.1
  %38 = call i32 @llvm.bswap.i32(i32 %or210)
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr212 = getelementptr i8, ptr %40, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 %38) #13, !srcloc !818
  %41 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sramsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp437.not.i = icmp eq i32 %42, 0
  br i1 %cmp437.not.i, label %do.body200.if.else.i_crit_edge, label %do.body200.for.body.i_crit_edge

do.body200.for.body.i_crit_edge:                  ; preds = %do.body200
  br label %for.body.i

do.body200.if.else.i_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body200.for.body.i_crit_edge
  %i.0438.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body200.for.body.i_crit_edge ]
  %shr.i625 = ashr exact i32 %i.0438.i, 2
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %shr.i625, i32 noundef 0) #13
  %add.i = add i32 %i.0438.i, 4
  %43 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sramsize, align 4
  %cmp.i = icmp ult i32 %add.i, %44
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %44)
  %cmp2.i = icmp eq i32 %44, 524288
  br i1 %cmp2.i, label %for.end.i.if.end.i_crit_edge, label %for.end.i.if.else.i_crit_edge

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.else.i:                                        ; preds = %for.end.i.if.else.i_crit_edge, %do.body200.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.end.i.if.end.i_crit_edge
  %.sink477.i = phi i32 [ 512, %if.else.i ], [ 1024, %for.end.i.if.end.i_crit_edge ]
  %.sink476.i = phi i32 [ 4096, %if.else.i ], [ 8192, %for.end.i.if.end.i_crit_edge ]
  %.sink474.i = phi i32 [ 26624, %if.else.i ], [ 81920, %for.end.i.if.end.i_crit_edge ]
  %.sink473.i = phi i32 [ 10240, %if.else.i ], [ 16384, %for.end.i.if.end.i_crit_edge ]
  %.sink467.i = phi i32 [ 512, %if.else.i ], [ 1365, %for.end.i.if.end.i_crit_edge ]
  %.sink466.i = phi i32 [ 16384, %if.else.i ], [ 32768, %for.end.i.if.end.i_crit_edge ]
  %.sink465.i = phi i32 [ 20480, %if.else.i ], [ 49152, %for.end.i.if.end.i_crit_edge ]
  %.sink464.i = phi i32 [ 4096, %if.else.i ], [ 16384, %for.end.i.if.end.i_crit_edge ]
  %.sink463.i = phi i32 [ 24576, %if.else.i ], [ 65536, %for.end.i.if.end.i_crit_edge ]
  %.sink462.i = phi i32 [ 16777216, %if.else.i ], [ 67108864, %for.end.i.if.end.i_crit_edge ]
  %.sink461.i = phi i32 [ 28672, %if.else.i ], [ 98304, %for.end.i.if.end.i_crit_edge ]
  %.sink.i = phi i32 [ 50331648, %if.else.i ], [ 100663296, %for.end.i.if.end.i_crit_edge ]
  %tct_base19.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %tct_base19.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tct_base19.i, align 4
  %tct_size24.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %tct_size24.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink477.i, ptr %tct_size24.i, align 4
  %rct_base25.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %rct_base25.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink476.i, ptr %rct_base25.i, align 4
  %rct_size30.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 22
  %48 = ptrtoint ptr %rct_size30.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink477.i, ptr %rct_size30.i, align 4
  %rt_base31.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %rt_base31.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink474.i, ptr %rt_base31.i, align 4
  %scd_base32.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %scd_base32.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink473.i, ptr %scd_base32.i, align 4
  %51 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 23
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink467.i, ptr %51, align 4
  %53 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink466.i, ptr %53, align 4
  %55 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 16, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink465.i, ptr %55, align 4
  %57 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 24
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink464.i, ptr %57, align 4
  %59 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 17
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink463.i, ptr %59, align 4
  %61 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 26
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink462.i, ptr %61, align 4
  %63 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 18
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink461.i, ptr %63, align 4
  %65 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 27
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %65, align 4
  br label %for.body54.i

for.cond72.preheader.i:                           ; preds = %for.body54.i
  %67 = ptrtoint ptr %rct_size30.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rct_size30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp74441.not.i = icmp eq i32 %68, 0
  br i1 %cmp74441.not.i, label %for.cond72.preheader.i.do.body.i_crit_edge, label %for.cond72.preheader.i.for.body75.i_crit_edge

for.cond72.preheader.i.for.body75.i_crit_edge:    ; preds = %for.cond72.preheader.i
  br label %for.body75.i

for.cond72.preheader.i.do.body.i_crit_edge:       ; preds = %for.cond72.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body54.i:                                     ; preds = %for.body54.i.for.body54.i_crit_edge, %if.end.i
  %i.1440.i = phi i32 [ %inc.i, %for.body54.i.for.body54.i_crit_edge ], [ 0, %if.end.i ]
  %mul.i = shl i32 %i.1440.i, 3
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %mul.i, i32 noundef 0) #13
  %add57.i = or i32 %mul.i, 1
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add57.i, i32 noundef 0) #13
  %add59.i = or i32 %mul.i, 2
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add59.i, i32 noundef 0) #13
  %add61.i = or i32 %mul.i, 3
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add61.i, i32 noundef 0) #13
  %add63.i = or i32 %mul.i, 4
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add63.i, i32 noundef 0) #13
  %add65.i = or i32 %mul.i, 5
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add65.i, i32 noundef 0) #13
  %add67.i = or i32 %mul.i, 6
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add67.i, i32 noundef 0) #13
  %add69.i = or i32 %mul.i, 7
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add69.i, i32 noundef 0) #13
  %inc.i = add nuw i32 %i.1440.i, 1
  %69 = ptrtoint ptr %tct_size24.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tct_size24.i, align 4
  %cmp53.i = icmp ult i32 %inc.i, %70
  br i1 %cmp53.i, label %for.body54.i.for.body54.i_crit_edge, label %for.cond72.preheader.i

for.body54.i.for.body54.i_crit_edge:              ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.i

for.body75.i:                                     ; preds = %for.body75.i.for.body75.i_crit_edge, %for.cond72.preheader.i.for.body75.i_crit_edge
  %i.2442.i = phi i32 [ %inc92.i, %for.body75.i.for.body75.i_crit_edge ], [ 0, %for.cond72.preheader.i.for.body75.i_crit_edge ]
  %71 = ptrtoint ptr %rct_base25.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rct_base25.i, align 4
  %mul77.i = shl i32 %i.2442.i, 2
  %add78.i = add i32 %72, %mul77.i
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add78.i, i32 noundef 32768) #13
  %73 = ptrtoint ptr %rct_base25.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rct_base25.i, align 4
  %add81.i = or i32 %mul77.i, 1
  %add82.i = add i32 %add81.i, %74
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add82.i, i32 noundef 0) #13
  %75 = ptrtoint ptr %rct_base25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rct_base25.i, align 4
  %add85.i = or i32 %mul77.i, 2
  %add86.i = add i32 %add85.i, %76
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add86.i, i32 noundef 0) #13
  %77 = ptrtoint ptr %rct_base25.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rct_base25.i, align 4
  %add89.i = or i32 %mul77.i, 3
  %add90.i = add i32 %add89.i, %78
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add90.i, i32 noundef -1) #13
  %inc92.i = add nuw i32 %i.2442.i, 1
  %79 = ptrtoint ptr %rct_size30.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rct_size30.i, align 4
  %cmp74.i = icmp ult i32 %inc92.i, %80
  br i1 %cmp74.i, label %for.body75.i.for.body75.i_crit_edge, label %for.body75.i.do.body.i_crit_edge

for.body75.i.do.body.i_crit_edge:                 ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body75.i.for.body75.i_crit_edge:              ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75.i

do.body.i:                                        ; preds = %for.body75.i.do.body.i_crit_edge, %for.cond72.preheader.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !837
  call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 620757056) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !838
  call void @arm_heavy_mb() #13
  %83 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase, align 4
  %add.ptr98.i = getelementptr i8, ptr %84, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 1342177312) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !839
  call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %add.ptr103.i = getelementptr i8, ptr %86, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i, i32 -1526726640) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !840
  call void @arm_heavy_mb() #13
  %87 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase, align 4
  %add.ptr108.i = getelementptr i8, ptr %88, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i, i32 1342242832) #13, !srcloc !818
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.body111.i.for.body111.i_crit_edge, %do.body.i
  %i.3443.i = phi i32 [ 0, %do.body.i ], [ %inc116.i, %for.body111.i.for.body111.i_crit_edge ]
  %89 = ptrtoint ptr %rt_base31.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rt_base31.i, align 4
  %add113.i = add i32 %90, %i.3443.i
  %arrayidx114.i = getelementptr [256 x i32], ptr @log_to_rate, i32 0, i32 %i.3443.i
  %91 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx114.i, align 4
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add113.i, i32 noundef %92) #13
  %inc116.i = add nuw nsw i32 %i.3443.i, 1
  %exitcond.not.i = icmp eq i32 %inc116.i, 256
  br i1 %exitcond.not.i, label %for.body111.i.for.body120.i_crit_edge, label %for.body111.i.for.body111.i_crit_edge

for.body111.i.for.body111.i_crit_edge:            ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111.i

for.body111.i.for.body120.i_crit_edge:            ; preds = %for.body111.i
  br label %for.body120.i

for.body120.i:                                    ; preds = %for.body120.i.for.body120.i_crit_edge, %for.body111.i.for.body120.i_crit_edge
  %i.4444.i = phi i32 [ %inc145.i, %for.body120.i.for.body120.i_crit_edge ], [ 0, %for.body111.i.for.body120.i_crit_edge ]
  %shl.i = shl i32 %i.4444.i, 2
  %arrayidx122.i = getelementptr [512 x i8], ptr @rate_to_log, i32 0, i32 %shl.i
  %93 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx122.i, align 1
  %conv.i = zext i8 %94 to i32
  %add125.i = or i32 %shl.i, 1
  %arrayidx126.i = getelementptr [512 x i8], ptr @rate_to_log, i32 0, i32 %add125.i
  %95 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx126.i, align 1
  %conv127.i = zext i8 %96 to i32
  %shl128.i = shl nuw nsw i32 %conv127.i, 8
  %or.i = or i32 %shl128.i, %conv.i
  %add130.i = or i32 %shl.i, 2
  %arrayidx131.i = getelementptr [512 x i8], ptr @rate_to_log, i32 0, i32 %add130.i
  %97 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx131.i, align 1
  %conv132.i = zext i8 %98 to i32
  %shl133.i = shl nuw nsw i32 %conv132.i, 16
  %or134.i = or i32 %or.i, %shl133.i
  %add136.i = or i32 %shl.i, 3
  %arrayidx137.i = getelementptr [512 x i8], ptr @rate_to_log, i32 0, i32 %add136.i
  %99 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx137.i, align 1
  %conv138.i = zext i8 %100 to i32
  %shl139.i = shl nuw i32 %conv138.i, 24
  %or140.i = or i32 %or134.i, %shl139.i
  %101 = ptrtoint ptr %rt_base31.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rt_base31.i, align 4
  %add142.i = add nuw nsw i32 %i.4444.i, 256
  %add143.i = add i32 %add142.i, %102
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %add143.i, i32 noundef %or140.i) #13
  %inc145.i = add nuw nsw i32 %i.4444.i, 1
  %exitcond460.not.i = icmp eq i32 %inc145.i, 128
  br i1 %exitcond460.not.i, label %do.body147.i, label %for.body120.i.for.body120.i_crit_edge

for.body120.i.for.body120.i_crit_edge:            ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body120.i

do.body147.i:                                     ; preds = %for.body120.i
  %103 = load i32, ptr @debug, align 4
  %and.i = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body147.i.do.body156.i_crit_edge, label %do.end151.i

do.body147.i.do.body156.i_crit_edge:              ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body156.i

do.end151.i:                                      ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.427, ptr noundef %name147) #16
  br label %do.body156.i

do.body156.i:                                     ; preds = %do.end151.i, %do.body147.i.do.body156.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !841
  call void @arm_heavy_mb() #13
  %104 = ptrtoint ptr %rt_base31.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rt_base31.i, align 4
  %shl160.i = shl i32 %105, 2
  %106 = call i32 @llvm.bswap.i32(i32 %shl160.i) #13
  %107 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase, align 4
  %add.ptr162.i = getelementptr i8, ptr %108, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162.i, i32 %106) #13, !srcloc !818
  %109 = load i32, ptr @debug, align 4
  %and164.i = and i32 %109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %do.body156.i.do.end176.i_crit_edge, label %do.end169.i

do.body156.i.do.end176.i_crit_edge:               ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end176.i

do.end169.i:                                      ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #15
  %call173.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.430, ptr noundef %name147) #16
  br label %do.end176.i

do.end176.i:                                      ; preds = %do.end169.i, %do.body156.i.do.end176.i_crit_edge
  %110 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %57, align 4
  %sub178.i = add i32 %111, -2
  %tst_free.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 25
  %112 = ptrtoint ptr %tst_free.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub178.i, ptr %tst_free.i, align 4
  %113 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %53, align 4
  %sub186446.i = add i32 %sub178.i, %114
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %sub186446.i)
  %cmp187447.i = icmp ult i32 %114, %sub186446.i
  br i1 %cmp187447.i, label %do.end176.i.for.body189.i_crit_edge, label %do.end176.i.for.end192.i_crit_edge

do.end176.i.for.end192.i_crit_edge:               ; preds = %do.end176.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192.i

do.end176.i.for.body189.i_crit_edge:              ; preds = %do.end176.i
  br label %for.body189.i

for.body189.i:                                    ; preds = %for.body189.i.for.body189.i_crit_edge, %do.end176.i.for.body189.i_crit_edge
  %i.5448.i = phi i32 [ %inc191.i, %for.body189.i.for.body189.i_crit_edge ], [ %114, %do.end176.i.for.body189.i_crit_edge ]
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %i.5448.i, i32 noundef 1073741824) #13
  %inc191.i = add nuw i32 %i.5448.i, 1
  %115 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %53, align 4
  %117 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %57, align 4
  %add185.i = add i32 %116, -2
  %sub186.i = add i32 %add185.i, %118
  %cmp187.i = icmp ult i32 %inc191.i, %sub186.i
  br i1 %cmp187.i, label %for.body189.i.for.body189.i_crit_edge, label %for.body189.i.for.end192.i_crit_edge

for.body189.i.for.end192.i_crit_edge:             ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192.i

for.body189.i.for.body189.i_crit_edge:            ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body189.i

for.end192.i:                                     ; preds = %for.body189.i.for.end192.i_crit_edge, %do.end176.i.for.end192.i_crit_edge
  %i.5.lcssa.i = phi i32 [ %114, %do.end176.i.for.end192.i_crit_edge ], [ %inc191.i, %for.body189.i.for.end192.i_crit_edge ]
  %.lcssa435.i = phi i32 [ %114, %do.end176.i.for.end192.i_crit_edge ], [ %116, %for.body189.i.for.end192.i_crit_edge ]
  %inc193.i = add i32 %i.5.lcssa.i, 1
  %shl196.i = shl i32 %.lcssa435.i, 2
  %or197.i = or i32 %shl196.i, 1610612736
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %i.5.lcssa.i, i32 noundef %or197.i) #13
  store i1 true, ptr @idt77252_sram_write_errors, align 4
  %119 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %55, align 4
  %shl201.i = shl i32 %120, 2
  %or202.i = or i32 %shl201.i, 1610612736
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %inc193.i, i32 noundef %or202.i) #13
  store i1 false, ptr @idt77252_sram_write_errors, align 4
  %121 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %55, align 4
  %123 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %57, align 4
  %add209451.i = add i32 %122, -2
  %sub210452.i = add i32 %add209451.i, %124
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %sub210452.i)
  %cmp211453.i = icmp ult i32 %122, %sub210452.i
  br i1 %cmp211453.i, label %for.end192.i.for.body213.i_crit_edge, label %for.end192.i.for.end216.i_crit_edge

for.end192.i.for.end216.i_crit_edge:              ; preds = %for.end192.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end216.i

for.end192.i.for.body213.i_crit_edge:             ; preds = %for.end192.i
  br label %for.body213.i

for.body213.i:                                    ; preds = %for.body213.i.for.body213.i_crit_edge, %for.end192.i.for.body213.i_crit_edge
  %i.6454.i = phi i32 [ %inc215.i, %for.body213.i.for.body213.i_crit_edge ], [ %122, %for.end192.i.for.body213.i_crit_edge ]
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %i.6454.i, i32 noundef 1073741824) #13
  %inc215.i = add nuw i32 %i.6454.i, 1
  %125 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %55, align 4
  %127 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %57, align 4
  %add209.i = add i32 %126, -2
  %sub210.i = add i32 %add209.i, %128
  %cmp211.i = icmp ult i32 %inc215.i, %sub210.i
  br i1 %cmp211.i, label %for.body213.i.for.body213.i_crit_edge, label %for.body213.i.for.end216.i_crit_edge

for.body213.i.for.end216.i_crit_edge:             ; preds = %for.body213.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end216.i

for.body213.i.for.body213.i_crit_edge:            ; preds = %for.body213.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body213.i

for.end216.i:                                     ; preds = %for.body213.i.for.end216.i_crit_edge, %for.end192.i.for.end216.i_crit_edge
  %i.6.lcssa.i = phi i32 [ %122, %for.end192.i.for.end216.i_crit_edge ], [ %inc215.i, %for.body213.i.for.end216.i_crit_edge ]
  %.lcssa.i = phi i32 [ %122, %for.end192.i.for.end216.i_crit_edge ], [ %126, %for.body213.i.for.end216.i_crit_edge ]
  %inc217.i = add i32 %i.6.lcssa.i, 1
  %shl220.i = shl i32 %.lcssa.i, 2
  %or221.i = or i32 %shl220.i, 1610612736
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %i.6.lcssa.i, i32 noundef %or221.i) #13
  store i1 true, ptr @idt77252_sram_write_errors, align 4
  %129 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %53, align 4
  %shl225.i = shl i32 %130, 2
  %or226.i = or i32 %shl225.i, 1610612736
  call fastcc void @write_sram(ptr noundef %1, i32 noundef %inc217.i, i32 noundef %or226.i) #13
  store i1 false, ptr @idt77252_sram_write_errors, align 4
  %tst_index.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 36
  %131 = ptrtoint ptr %tst_index.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %tst_index.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !842
  call void @arm_heavy_mb() #13
  %132 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %53, align 4
  %shl232.i = shl i32 %133, 2
  %134 = call i32 @llvm.bswap.i32(i32 %shl232.i) #13
  %135 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %membase, align 4
  %add.ptr234.i = getelementptr i8, ptr %136, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234.i, i32 %134) #13, !srcloc !818
  %137 = load i32, ptr @debug, align 4
  %and236.i = and i32 %137, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236.i)
  %tobool237.not.i = icmp eq i32 %and236.i, 0
  br i1 %tobool237.not.i, label %for.end216.i.do.body249.i_crit_edge, label %do.end241.i

for.end216.i.do.body249.i_crit_edge:              ; preds = %for.end216.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body249.i

do.end241.i:                                      ; preds = %for.end216.i
  call void @__sanitizer_cov_trace_pc() #15
  %call245.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, ptr noundef %name147) #16
  br label %do.body249.i

do.body249.i:                                     ; preds = %do.end241.i, %for.end216.i.do.body249.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !843
  call void @arm_heavy_mb() #13
  %138 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %61, align 4
  %140 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %59, align 4
  %shl254.i = shl i32 %141, 2
  %or255.i = or i32 %shl254.i, %139
  %142 = call i32 @llvm.bswap.i32(i32 %or255.i) #13
  %143 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase, align 4
  %add.ptr257.i = getelementptr i8, ptr %144, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257.i, i32 %142) #13, !srcloc !818
  %145 = load i32, ptr @debug, align 4
  %and259.i = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259.i)
  %tobool260.not.i = icmp eq i32 %and259.i, 0
  br i1 %tobool260.not.i, label %do.body249.i.do.body272.i_crit_edge, label %do.end264.i

do.body249.i.do.body272.i_crit_edge:              ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body272.i

do.end264.i:                                      ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #15
  %call268.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, ptr noundef %name147) #16
  br label %do.body272.i

do.body272.i:                                     ; preds = %do.end264.i, %do.body249.i.do.body272.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  call void @arm_heavy_mb() #13
  %146 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %65, align 4
  %148 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %63, align 4
  %shl277.i = shl i32 %149, 2
  %or278.i = or i32 %shl277.i, %147
  %150 = call i32 @llvm.bswap.i32(i32 %or278.i) #13
  %151 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase, align 4
  %add.ptr280.i = getelementptr i8, ptr %152, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280.i, i32 %150) #13, !srcloc !818
  %153 = load i32, ptr @debug, align 4
  %and282.i = and i32 %153, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %do.body272.i.init_sram.exit_crit_edge, label %do.end287.i

do.body272.i.init_sram.exit_crit_edge:            ; preds = %do.body272.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_sram.exit

do.end287.i:                                      ; preds = %do.body272.i
  call void @__sanitizer_cov_trace_pc() #15
  %call291.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.439, ptr noundef %name147) #16
  br label %init_sram.exit

init_sram.exit:                                   ; preds = %do.end287.i, %do.body272.i.init_sram.exit_crit_edge
  %154 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcidev1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  %paddr.i = getelementptr inbounds %struct.tsq_info, ptr %1, i32 0, i32 3
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #13
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i.i, ptr %1, align 4
  %cmp.i627 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i627, label %if.then216, label %if.end.i629

if.end.i629:                                      ; preds = %init_sram.exit
  %add.ptr7.i = getelementptr %struct.tsq_entry, ptr %call.i.i, i32 1023
  %last.i = getelementptr inbounds %struct.tsq_info, ptr %1, i32 0, i32 2
  %157 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %add.ptr7.i, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.tsq_info, ptr %1, i32 0, i32 1
  %158 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr7.i, ptr %next.i, align 4
  %cmp16.not49.i = icmp ugt ptr %call.i.i, %add.ptr7.i
  br i1 %cmp16.not49.i, label %if.end.i629.if.end217_crit_edge, label %if.end.i629.for.body.i630_crit_edge

if.end.i629.for.body.i630_crit_edge:              ; preds = %if.end.i629
  br label %for.body.i630

if.end.i629.if.end217_crit_edge:                  ; preds = %if.end.i629
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

for.body.i630:                                    ; preds = %for.body.i630.for.body.i630_crit_edge, %if.end.i629.for.body.i630_crit_edge
  %tsqe.050.i = phi ptr [ %incdec.ptr.i, %for.body.i630.for.body.i630_crit_edge ], [ %call.i.i, %if.end.i629.for.body.i630_crit_edge ]
  %word_2.i = getelementptr inbounds %struct.tsq_entry, ptr %tsqe.050.i, i32 0, i32 1
  %159 = ptrtoint ptr %word_2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 128, ptr %word_2.i, align 4
  %incdec.ptr.i = getelementptr %struct.tsq_entry, ptr %tsqe.050.i, i32 1
  %160 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %last.i, align 4
  %cmp16.not.i = icmp ugt ptr %incdec.ptr.i, %161
  br i1 %cmp16.not.i, label %for.body.i630.if.end217_crit_edge, label %for.body.i630.for.body.i630_crit_edge

for.body.i630.for.body.i630_crit_edge:            ; preds = %for.body.i630
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i630

for.body.i630.if.end217_crit_edge:                ; preds = %for.body.i630
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

if.then216:                                       ; preds = %init_sram.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.441, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end217:                                        ; preds = %for.body.i630.if.end217_crit_edge, %if.end.i629.if.end217_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !845
  call void @arm_heavy_mb() #13
  %162 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %paddr.i, align 4
  %164 = call i32 @llvm.bswap.i32(i32 %163) #13
  %165 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase, align 4
  %add.ptr22.i = getelementptr i8, ptr %166, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %164) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !846
  call void @arm_heavy_mb() #13
  %167 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %next.i, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %172 = ptrtoint ptr %171 to i32
  %sub.i = sub i32 %169, %172
  %173 = call i32 @llvm.bswap.i32(i32 %sub.i) #13
  %174 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %membase, align 4
  %add.ptr31.i = getelementptr i8, ptr %175, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %173) #13, !srcloc !818
  %176 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pcidev1, align 4
  %dev.i633 = getelementptr inbounds %struct.pci_dev, ptr %177, i32 0, i32 44
  %rsq.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 1
  %paddr.i634 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 1, i32 3
  %call.i.i635 = call ptr @dma_alloc_attrs(ptr noundef %dev.i633, i32 noundef 8192, ptr noundef %paddr.i634, i32 noundef 3264, i32 noundef 0) #13
  %178 = ptrtoint ptr %rsq.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call.i.i635, ptr %rsq.i, align 4
  %cmp.i636 = icmp eq ptr %call.i.i635, null
  br i1 %cmp.i636, label %if.then221, label %if.end.i643

if.end.i643:                                      ; preds = %if.end217
  %add.ptr7.i640 = getelementptr %struct.rsq_entry, ptr %call.i.i635, i32 511
  %last.i641 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 1, i32 2
  %179 = ptrtoint ptr %last.i641 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %add.ptr7.i640, ptr %last.i641, align 4
  %next.i642 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %next.i642 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr7.i640, ptr %next.i642, align 4
  %cmp16.not110.i = icmp ugt ptr %call.i.i635, %add.ptr7.i640
  br i1 %cmp16.not110.i, label %if.end.i643.do.body17.i652_crit_edge, label %if.end.i643.for.body.i646_crit_edge

if.end.i643.for.body.i646_crit_edge:              ; preds = %if.end.i643
  br label %for.body.i646

if.end.i643.do.body17.i652_crit_edge:             ; preds = %if.end.i643
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17.i652

for.body.i646:                                    ; preds = %for.body.i646.for.body.i646_crit_edge, %if.end.i643.for.body.i646_crit_edge
  %rsqe.0111.i = phi ptr [ %incdec.ptr.i644, %for.body.i646.for.body.i646_crit_edge ], [ %call.i.i635, %if.end.i643.for.body.i646_crit_edge ]
  %word_4.i = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.0111.i, i32 0, i32 3
  %181 = ptrtoint ptr %word_4.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %word_4.i, align 4
  %incdec.ptr.i644 = getelementptr %struct.rsq_entry, ptr %rsqe.0111.i, i32 1
  %182 = ptrtoint ptr %last.i641 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %last.i641, align 4
  %cmp16.not.i645 = icmp ugt ptr %incdec.ptr.i644, %183
  br i1 %cmp16.not.i645, label %for.body.i646.do.body17.i652_crit_edge, label %for.body.i646.for.body.i646_crit_edge

for.body.i646.for.body.i646_crit_edge:            ; preds = %for.body.i646
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i646

for.body.i646.do.body17.i652_crit_edge:           ; preds = %for.body.i646
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17.i652

do.body17.i652:                                   ; preds = %for.body.i646.do.body17.i652_crit_edge, %if.end.i643.do.body17.i652_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !847
  call void @arm_heavy_mb() #13
  %184 = ptrtoint ptr %last.i641 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %last.i641, align 4
  %186 = ptrtoint ptr %185 to i32
  %187 = ptrtoint ptr %rsq.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rsq.i, align 4
  %189 = ptrtoint ptr %188 to i32
  %sub.i647 = sub i32 %186, %189
  %190 = call i32 @llvm.bswap.i32(i32 %sub.i647) #13
  %191 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %membase, align 4
  %add.ptr24.i = getelementptr i8, ptr %192, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %190) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !848
  call void @arm_heavy_mb() #13
  %193 = ptrtoint ptr %paddr.i634 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %paddr.i634, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194) #13
  %196 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %membase, align 4
  %add.ptr31.i649 = getelementptr i8, ptr %197, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i649, i32 %195) #13, !srcloc !818
  %198 = load i32, ptr @debug, align 4
  %and.i650 = and i32 %198, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i650)
  %tobool.not.i651 = icmp eq i32 %and.i650, 0
  br i1 %tobool.not.i651, label %do.body17.i652.do.body51.i_crit_edge, label %do.end36.i

do.body17.i652.do.body51.i_crit_edge:             ; preds = %do.body17.i652
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51.i

do.end36.i:                                       ; preds = %do.body17.i652
  call void @__sanitizer_cov_trace_pc() #15
  %199 = ptrtoint ptr %rsq.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rsq.i, align 4
  %201 = ptrtoint ptr %200 to i32
  %202 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %membase, align 4
  %add.ptr43.i = getelementptr i8, ptr %203, i32 28
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #13, !srcloc !822
  %205 = call i32 @llvm.bswap.i32(i32 %204) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !849
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.446, ptr noundef %name147, i32 noundef %201, i32 noundef %205) #16
  br label %do.body51.i

do.body51.i:                                      ; preds = %do.end36.i, %do.body17.i652.do.body51.i_crit_edge
  %206 = load i32, ptr @debug, align 4
  %and52.i = and i32 %206, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %do.body51.i.if.end222_crit_edge, label %do.end57.i

do.body51.i.if.end222_crit_edge:                  ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end222

do.end57.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  %207 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %membase, align 4
  %add.ptr64.i = getelementptr i8, ptr %208, i32 36
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #13, !srcloc !822
  %210 = call i32 @llvm.bswap.i32(i32 %209) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !850
  %211 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %membase, align 4
  %add.ptr71.i = getelementptr i8, ptr %212, i32 28
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #13, !srcloc !822
  %214 = call i32 @llvm.bswap.i32(i32 %213) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !851
  %215 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %membase, align 4
  %add.ptr78.i = getelementptr i8, ptr %216, i32 32
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #13, !srcloc !822
  %218 = call i32 @llvm.bswap.i32(i32 %217) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !852
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.449, ptr noundef %name147, i32 noundef %210, i32 noundef %214, i32 noundef %218) #16
  br label %if.end222

if.then221:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.443, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end222:                                        ; preds = %do.end57.i, %do.body51.i.if.end222_crit_edge
  %219 = load i32, ptr @vpibits, align 4
  %vpibits = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 28
  %220 = ptrtoint ptr %vpibits to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %vpibits, align 4
  %221 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sramsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %222)
  %cmp224 = icmp eq i32 %222, 524288
  %spec.select = select i1 %cmp224, i32 10, i32 9
  %sub230.sink = sub i32 %spec.select, %219
  %223 = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 29
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %sub230.sink, ptr %223, align 4
  %vcimask = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 30
  %225 = ptrtoint ptr %vcimask to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %vcimask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %219)
  %cmp234661.not = icmp eq i32 %spec.select, %219
  br i1 %cmp234661.not, label %if.end222.do.body238_crit_edge, label %for.body.lr.ph

if.end222.do.body238_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body238

for.body.lr.ph:                                   ; preds = %if.end222
  %226 = ptrtoint ptr %vcimask to i32
  call void @__asan_load4_noabort(i32 %226)
  %vcimask.promoted = load i32, ptr %vcimask, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %223, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %229 = phi i32 [ %vcimask.promoted, %for.body.lr.ph ], [ %or237, %for.body.for.body_crit_edge ]
  %i.0663 = phi i32 [ 1, %for.body.lr.ph ], [ %shl, %for.body.for.body_crit_edge ]
  %k.0662 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %or237 = or i32 %229, %i.0663
  %shl = shl i32 %i.0663, 1
  %inc = add nuw i32 %k.0662, 1
  %cmp234 = icmp ult i32 %inc, %228
  br i1 %cmp234, label %for.body.for.body_crit_edge, label %for.cond.do.body238_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.do.body238_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %230 = ptrtoint ptr %vcimask to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or237, ptr %vcimask, align 4
  br label %do.body238

do.body238:                                       ; preds = %for.cond.do.body238_crit_edge, %if.end222.do.body238_crit_edge
  %231 = load i32, ptr @debug, align 4
  %and239 = and i32 %231, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body238.do.body252_crit_edge, label %do.end244

do.body238.do.body252_crit_edge:                  ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body252

do.end244:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #15
  %call248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef %name147) #16
  br label %do.body252

do.body252:                                       ; preds = %do.end244, %do.body238.do.body252_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !853
  call void @arm_heavy_mb() #13
  %232 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %membase, align 4
  %add.ptr256 = getelementptr i8, ptr %233, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr256, i32 0) #13, !srcloc !818
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !854
  call void @arm_heavy_mb() #13
  %234 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %membase, align 4
  %add.ptr261 = getelementptr i8, ptr %235, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr261, i32 0) #13, !srcloc !818
  %236 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pcidev1, align 4
  %dev263 = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  %raw_cell_paddr = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 43
  %call.i654 = call ptr @dma_alloc_attrs(ptr noundef %dev263, i32 noundef 8, ptr noundef %raw_cell_paddr, i32 noundef 3264, i32 noundef 0) #13
  %raw_cell_hnd = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 42
  %238 = ptrtoint ptr %raw_cell_hnd to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call.i654, ptr %raw_cell_hnd, align 4
  %tobool266.not = icmp eq ptr %call.i654, null
  br i1 %tobool266.not, label %do.end270, label %do.body276

do.end270:                                        ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #15
  %call274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

do.body276:                                       ; preds = %do.body252
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !855
  call void @arm_heavy_mb() #13
  %239 = ptrtoint ptr %raw_cell_paddr to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %raw_cell_paddr, align 4
  %241 = call i32 @llvm.bswap.i32(i32 %240)
  %242 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %membase, align 4
  %add.ptr281 = getelementptr i8, ptr %243, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 %241) #13, !srcloc !818
  %244 = load i32, ptr @debug, align 4
  %and283 = and i32 %244, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %do.body276.do.end296_crit_edge, label %do.end288

do.body276.do.end296_crit_edge:                   ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end296

do.end288:                                        ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #15
  %245 = ptrtoint ptr %raw_cell_hnd to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %raw_cell_hnd, align 4
  %call293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, ptr noundef %name147, ptr noundef %246) #16
  br label %do.end296

do.end296:                                        ; preds = %do.end288, %do.body276.do.end296_crit_edge
  %247 = ptrtoint ptr %tct_size24.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %tct_size24.i, align 4
  %mul = shl i32 %248, 2
  %249 = load i32, ptr @debug, align 4
  %and298 = and i32 %249, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.end296.do.end310_crit_edge, label %do.end303

do.end296.do.end310_crit_edge:                    ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end310

do.end303:                                        ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #15
  %call307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef %name147, i32 noundef %mul) #16
  br label %do.end310

do.end310:                                        ; preds = %do.end303, %do.end296.do.end310_crit_edge
  %call311 = call noalias ptr @vzalloc(i32 noundef %mul) #17
  %vcs = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 33
  %250 = ptrtoint ptr %vcs to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call311, ptr %vcs, align 4
  %tobool313.not = icmp eq ptr %call311, null
  br i1 %tobool313.not, label %do.end317, label %if.end322

do.end317:                                        ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #15
  %call321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end322:                                        ; preds = %do.end310
  %251 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %51, align 4
  %mul323 = shl i32 %252, 2
  %253 = load i32, ptr @debug, align 4
  %and325 = and i32 %253, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.end322.do.end337_crit_edge, label %do.end330

if.end322.do.end337_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end337

do.end330:                                        ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  %call334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef %name147, i32 noundef %mul323) #16
  br label %do.end337

do.end337:                                        ; preds = %do.end330, %if.end322.do.end337_crit_edge
  %call338 = call noalias ptr @vzalloc(i32 noundef %mul323) #17
  %scd2vc = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 34
  %254 = ptrtoint ptr %scd2vc to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call338, ptr %scd2vc, align 4
  %tobool340.not = icmp eq ptr %call338, null
  br i1 %tobool340.not, label %do.end344, label %if.end349

do.end344:                                        ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #15
  %call348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end349:                                        ; preds = %do.end337
  %255 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %57, align 4
  %sub350 = shl i32 %256, 3
  %mul351 = add i32 %sub350, -16
  %257 = load i32, ptr @debug, align 4
  %and353 = and i32 %257, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353)
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %if.end349.do.end365_crit_edge, label %do.end358

if.end349.do.end365_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end365

do.end358:                                        ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  %call362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef %name147, i32 noundef %mul351) #16
  br label %do.end365

do.end365:                                        ; preds = %do.end358, %if.end349.do.end365_crit_edge
  %call366 = call noalias ptr @vmalloc(i32 noundef %mul351) #17
  %soft_tst = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 35
  %258 = ptrtoint ptr %soft_tst to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call366, ptr %soft_tst, align 4
  %tobool368.not = icmp eq ptr %call366, null
  br i1 %tobool368.not, label %do.end372, label %for.cond378.preheader

for.cond378.preheader:                            ; preds = %do.end365
  %259 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %260)
  %cmp381665.not = icmp eq i32 %260, 2
  br i1 %cmp381665.not, label %for.cond378.preheader.for.end389_crit_edge, label %for.cond378.preheader.for.body383_crit_edge

for.cond378.preheader.for.body383_crit_edge:      ; preds = %for.cond378.preheader
  br label %for.body383

for.cond378.preheader.for.end389_crit_edge:       ; preds = %for.cond378.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end389

do.end372:                                        ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #15
  %call376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

for.body383:                                      ; preds = %for.body383.for.body383_crit_edge, %for.cond378.preheader.for.body383_crit_edge
  %i.1666 = phi i32 [ %inc388, %for.body383.for.body383_crit_edge ], [ 0, %for.cond378.preheader.for.body383_crit_edge ]
  %261 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %soft_tst, align 4
  %tste = getelementptr %struct.tst_info, ptr %262, i32 %i.1666, i32 1
  %263 = ptrtoint ptr %tste to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 1073741824, ptr %tste, align 4
  %264 = load ptr, ptr %soft_tst, align 4
  %arrayidx386 = getelementptr %struct.tst_info, ptr %264, i32 %i.1666
  %265 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %arrayidx386, align 4
  %inc388 = add nuw i32 %i.1666, 1
  %266 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %57, align 4
  %sub380 = add i32 %267, -2
  %cmp381 = icmp ult i32 %inc388, %sub380
  br i1 %cmp381, label %for.body383.for.body383_crit_edge, label %for.body383.for.end389_crit_edge

for.body383.for.end389_crit_edge:                 ; preds = %for.body383
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end389

for.body383.for.body383_crit_edge:                ; preds = %for.body383
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body383

for.end389:                                       ; preds = %for.body383.for.end389_crit_edge, %for.cond378.preheader.for.end389_crit_edge
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %268 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %phy, align 4
  %cmp390 = icmp eq ptr %269, null
  br i1 %cmp390, label %do.end395, label %if.end400

do.end395:                                        ; preds = %for.end389
  call void @__sanitizer_cov_trace_pc() #15
  %call399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end400:                                        ; preds = %for.end389
  %ioctl = getelementptr inbounds %struct.atmphy_ops, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ioctl, align 4
  %cmp402 = icmp eq ptr %271, null
  br i1 %cmp402, label %do.end407, label %if.end412

do.end407:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #15
  %call411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef %name147) #16
  call fastcc void @deinit_card(ptr noundef %1)
  br label %cleanup

if.end412:                                        ; preds = %if.end400
  %link_pcr = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 32
  %272 = ptrtoint ptr %link_pcr to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 353207, ptr %link_pcr, align 4
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef %name147, i32 noundef 149760000, i32 noundef 353207) #16
  %273 = ptrtoint ptr %link_pcr to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %link_pcr, align 4
  %utopia_pcr = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 31
  %275 = ptrtoint ptr %utopia_pcr to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %utopia_pcr, align 4
  call fastcc void @fill_tst(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %index = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 44
  %276 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %index, align 4
  %call445 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tname, ptr noundef nonnull @.str.291, i32 noundef %277)
  %call447 = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %tname) #13
  %tobool448.not = icmp eq ptr %call447, null
  br i1 %tobool448.not, label %if.end412.do.body462_crit_edge, label %if.then449

if.end412.do.body462_crit_edge:                   ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body462

if.then449:                                       ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #15
  %atmdev = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 3
  %278 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %atmdev, align 4
  %esi = getelementptr inbounds %struct.atm_dev, ptr %279, i32 0, i32 9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call447, i32 0, i32 86
  %280 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev_addr, align 64
  %282 = call ptr @memcpy(ptr %esi, ptr %281, i32 6)
  call fastcc void @dev_put(ptr noundef nonnull %call447)
  %283 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %atmdev, align 4
  %esi458 = getelementptr inbounds %struct.atm_dev, ptr %284, i32 0, i32 9
  %call460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef %name147, ptr noundef %esi458) #16
  br label %do.body462

do.body462:                                       ; preds = %if.then449, %if.end412.do.body462_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !856
  call void @arm_heavy_mb() #13
  %285 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %membase, align 4
  %add.ptr466 = getelementptr i8, ptr %286, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr466, i32 -65536) #13, !srcloc !818
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  %287 = load i32, ptr @debug, align 4
  %and469 = and i32 %287, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469)
  %tobool470.not = icmp eq i32 %and469, 0
  br i1 %tobool470.not, label %do.body462.cleanup_crit_edge, label %do.end474

do.body462.cleanup_crit_edge:                     ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end474:                                        ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #15
  %call478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, ptr noundef %name147) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end474, %do.body462.cleanup_crit_edge, %do.end407, %do.end395, %do.end372, %do.end344, %do.end317, %do.end270, %if.then221, %if.then216, %do.end155, %do.end107, %do.end76, %do.end49, %do.end19, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end19 ], [ -1, %do.end49 ], [ -1, %do.end76 ], [ -1, %do.end107 ], [ -1, %do.end155 ], [ -1, %if.then216 ], [ -1, %if.then221 ], [ -1, %do.end395 ], [ -1, %do.end407 ], [ -1, %do.end372 ], [ -1, %do.end344 ], [ -1, %do.end317 ], [ -1, %do.end270 ], [ 0, %do.end474 ], [ 0, %do.body462.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_byte) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %tname) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt77252_dev_open(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.451, ptr noundef %name) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !857
  tail call void @arm_heavy_mb() #13
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !858
  %6 = or i32 %5, -73662432
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #13, !srcloc !818
  %vpibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 28
  %9 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp57.not.i = icmp eq i32 %10, 31
  br i1 %cmp57.not.i, label %if.end.if.end21_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end
  %vcibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 29
  %vcimask.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 30
  %vcs.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %rct_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 13
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %waitfor_idle.exit.1.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %vpi.058.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc26.i, %waitfor_idle.exit.1.i.for.cond1.preheader.i_crit_edge ]
  %11 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vcibits.i, align 4
  %13 = ptrtoint ptr %vcimask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vcimask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 148) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.cond1.preheader.i.do.end16_crit_edge, label %if.end.i

for.cond1.preheader.i.do.end16_crit_edge:         ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

if.end.i:                                         ; preds = %for.cond1.preheader.i
  %shl4.i = shl i32 %vpi.058.i, %12
  %and.i = and i32 %14, 3
  %or.i = or i32 %and.i, %shl4.i
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %17 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vcs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %or.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %rcv.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i, i32 0, i32 14
  %lock.i.i.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %20 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rcv.i, ptr %rcv.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rcv.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %qlen.i.i.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 1
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %len.i.i, align 8
  %24 = ptrtoint ptr %rct_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rct_base.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i.i.i, align 8
  %shl8.i = shl i32 %27, 2
  %add.i = add i32 %shl8.i, %25
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i, i32 noundef 2850816) #13
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !859
  tail call void @arm_heavy_mb() #13
  %shl22.i = shl i32 %add.i, 2
  %or23.i = or i32 %shl22.i, 537395200
  %28 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #13
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #13, !srcloc !818
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %34 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not11.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not11.i.i, label %if.end.i.waitfor_idle.exit.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.waitfor_idle.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %36, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %38 = and i32 %37, 131072
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.waitfor_idle.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.waitfor_idle.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

waitfor_idle.exit.i:                              ; preds = %while.body.i.i.waitfor_idle.exit.i_crit_edge, %if.end.i.waitfor_idle.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call14.i) #13
  %39 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vcibits.i, align 4
  %41 = ptrtoint ptr %vcimask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vcimask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 148) #18
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %waitfor_idle.exit.i.do.end16_crit_edge, label %if.end.1.i

waitfor_idle.exit.i.do.end16_crit_edge:           ; preds = %waitfor_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

if.end.1.i:                                       ; preds = %waitfor_idle.exit.i
  %shl4.1.i = shl i32 %vpi.058.i, %40
  %and.1.i = and i32 %42, 4
  %or.1.i = or i32 %and.1.i, %shl4.1.i
  %44 = ptrtoint ptr %call7.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.1.i, ptr %call7.i.i.1.i, align 8
  %45 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vcs.i, align 4
  %arrayidx.1.i = getelementptr ptr, ptr %46, i32 %or.1.i
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.1.i, ptr %arrayidx.1.i, align 4
  %rcv.1.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.1.i, i32 0, i32 14
  %lock.i.i.1.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.1.i, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.1.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %48 = ptrtoint ptr %rcv.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rcv.1.i, ptr %rcv.1.i, align 8
  %prev.i.i.i.1.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.1.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rcv.1.i, ptr %prev.i.i.i.1.i, align 4
  %qlen.i.i.i.1.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.1.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %qlen.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %qlen.i.i.i.1.i, align 8
  %len.i.1.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.1.i, i32 0, i32 14, i32 0, i32 1
  %51 = ptrtoint ptr %len.i.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %len.i.1.i, align 8
  %52 = ptrtoint ptr %rct_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rct_base.i, align 4
  %54 = ptrtoint ptr %call7.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call7.i.i.1.i, align 8
  %shl8.1.i = shl i32 %55, 2
  %add.1.i = add i32 %shl8.1.i, %53
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.1.i, i32 noundef 2850816) #13
  %call14.1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !859
  tail call void @arm_heavy_mb() #13
  %shl22.1.i = shl i32 %add.1.i, 2
  %or23.1.i = or i32 %shl22.1.i, 537395200
  %56 = tail call i32 @llvm.bswap.i32(i32 %or23.1.i) #13
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase, align 4
  %add.ptr.1.i = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %56) #13, !srcloc !818
  %59 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %60, i32 24
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %62 = and i32 %61, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not11.i.1.i = icmp eq i32 %62, 0
  br i1 %tobool.not11.i.1.i, label %if.end.1.i.waitfor_idle.exit.1.i_crit_edge, label %if.end.1.i.while.body.i.1.i_crit_edge

if.end.1.i.while.body.i.1.i_crit_edge:            ; preds = %if.end.1.i
  br label %while.body.i.1.i

if.end.1.i.waitfor_idle.exit.1.i_crit_edge:       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.1.i

while.body.i.1.i:                                 ; preds = %while.body.i.1.i.while.body.i.1.i_crit_edge, %if.end.1.i.while.body.i.1.i_crit_edge
  %63 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase, align 4
  %add.ptr5.i.1.i = getelementptr i8, ptr %64, i32 24
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.1.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %66 = and i32 %65, 131072
  %tobool.not.i.1.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.1.i, label %while.body.i.1.i.waitfor_idle.exit.1.i_crit_edge, label %while.body.i.1.i.while.body.i.1.i_crit_edge

while.body.i.1.i.while.body.i.1.i_crit_edge:      ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.1.i

while.body.i.1.i.waitfor_idle.exit.1.i_crit_edge: ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.1.i

waitfor_idle.exit.1.i:                            ; preds = %while.body.i.1.i.waitfor_idle.exit.1.i_crit_edge, %if.end.1.i.waitfor_idle.exit.1.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call14.1.i) #13
  %inc26.i = add nuw nsw i32 %vpi.058.i, 1
  %67 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vpibits.i, align 4
  %shl.i = shl nuw i32 1, %68
  %cmp.i = icmp slt i32 %inc26.i, %shl.i
  br i1 %cmp.i, label %waitfor_idle.exit.1.i.for.cond1.preheader.i_crit_edge, label %waitfor_idle.exit.1.i.if.end21_crit_edge

waitfor_idle.exit.1.i.if.end21_crit_edge:         ; preds = %waitfor_idle.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

waitfor_idle.exit.1.i.for.cond1.preheader.i_crit_edge: ; preds = %waitfor_idle.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

do.end16:                                         ; preds = %waitfor_idle.exit.i.do.end16_crit_edge, %for.cond1.preheader.i.do.end16_crit_edge
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462, ptr noundef %name.i) #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.454, ptr noundef %name.i) #16
  br label %cleanup

if.end21:                                         ; preds = %waitfor_idle.exit.1.i.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 148) #18
  %tobool.not.i56 = icmp eq ptr %call7.i.i.i55, null
  br i1 %tobool.not.i56, label %if.end21.do.end27_crit_edge, label %if.end.i60

if.end21.do.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

if.end.i60:                                       ; preds = %if.end21
  %vcs.i59 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %70 = ptrtoint ptr %vcs.i59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vcs.i59, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i55, ptr %71, align 4
  %class.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i55, i32 0, i32 2
  %73 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %class.i, align 8
  %call3.i = tail call fastcc ptr @alloc_scq(ptr noundef %card) #13
  %scq.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i55, i32 0, i32 11
  %74 = ptrtoint ptr %scq.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call3.i, ptr %scq.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i60.do.end27_crit_edge, label %do.body33

if.end.i60.do.end27_crit_edge:                    ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

do.end27:                                         ; preds = %if.end.i60.do.end27_crit_edge, %if.end21.do.end27_crit_edge
  %.str.99.sink = phi ptr [ @.str.462, %if.end21.do.end27_crit_edge ], [ @.str.99, %if.end.i60.do.end27_crit_edge ]
  %name11.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.99.sink, ptr noundef %name11.i) #16
  %name29 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.457, ptr noundef %name29) #16
  br label %cleanup

do.body33:                                        ; preds = %if.end.i60
  %scd2vc.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 34
  %75 = ptrtoint ptr %scd2vc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scd2vc.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i55, ptr %76, align 4
  %scd_index.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i55, i32 0, i32 13
  %78 = ptrtoint ptr %scd_index.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %scd_index.i, align 4
  %scd_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 15
  %79 = ptrtoint ptr %scd_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %scd_base.i, align 4
  %81 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %scq.i, align 4
  %scd.i = getelementptr inbounds %struct.scq_info, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %scd.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %scd.i, align 4
  %84 = load ptr, ptr %scq.i, align 4
  %scd.i.i = getelementptr inbounds %struct.scq_info, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %scd.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %scd.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.scq_info, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %paddr.i.i, align 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %86, i32 noundef %88) #13
  %89 = ptrtoint ptr %scd.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %scd.i.i, align 4
  %add.i.i = add i32 %90, 1
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i.i, i32 noundef 0) #13
  %91 = ptrtoint ptr %scd.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %scd.i.i, align 4
  %add3.i.i = add i32 %92, 2
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add3.i.i, i32 noundef -1) #13
  %93 = ptrtoint ptr %scd.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %scd.i.i, align 4
  %add5.i.i = add i32 %94, 3
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add5.i.i, i32 noundef 0) #13
  %tct_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 12
  %95 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tct_base.i, align 4
  %97 = ptrtoint ptr %scd_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %scd_base.i, align 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %96, i32 noundef %98) #13
  %99 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tct_base.i, align 4
  %add21.i = add i32 %100, 1
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add21.i, i32 noundef 0) #13
  %101 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tct_base.i, align 4
  %add23.i = add i32 %102, 2
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add23.i, i32 noundef 0) #13
  %103 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tct_base.i, align 4
  %add25.i = add i32 %104, 3
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add25.i, i32 noundef 0) #13
  %105 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tct_base.i, align 4
  %add27.i = add i32 %106, 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add27.i, i32 noundef 0) #13
  %107 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tct_base.i, align 4
  %add29.i = add i32 %108, 5
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add29.i, i32 noundef 0) #13
  %109 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tct_base.i, align 4
  %add31.i = add i32 %110, 6
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add31.i, i32 noundef 0) #13
  %111 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tct_base.i, align 4
  %add33.i = add i32 %112, 7
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add33.i, i32 noundef -2147483648) #13
  %flags.i = getelementptr inbounds %struct.vc_map, ptr %call7.i.i.i55, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !862
  tail call void @arm_heavy_mb() #13
  %113 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase, align 4
  %add.ptr.i62 = getelementptr i8, ptr %114, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 1) #13, !srcloc !818
  %115 = load i32, ptr @debug, align 4
  %and = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body33.cleanup_crit_edge, label %do.end38

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %name40 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.460, ptr noundef %name40) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.body33.cleanup_crit_edge, %do.end27, %do.end16, %do.end
  %retval.0 = phi i32 [ -1, %do.end16 ], [ -1, %do.end27 ], [ -1, %do.end ], [ 0, %do.end38 ], [ 0, %do.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_rx_skb(ptr noundef %card, i32 noundef %queue, i32 noundef %size, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %queue
  %add7.i = shl i32 %queue, 16
  %shl.i = add i32 %add7.i, 65536
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %dma_map_single_attrs.exit.while.cond_crit_edge, %entry
  %count.addr.0 = phi i32 [ %count, %entry ], [ %dec, %dma_map_single_attrs.exit.while.cond_crit_edge ]
  %dec = add i32 %count.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %size, i32 noundef 2592) #13
  %tobool1.not = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %while.body
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %index.0.i = phi i32 [ %1, %if.end ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %queue, i32 1, i32 %index.0.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end6, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %add.i = add i32 %index.0.i, 1
  %and.i = and i32 %add.i, 511
  %cmp.i = icmp eq i32 %and.i, %1
  br i1 %cmp.i, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #16
  br label %outfree

if.end6:                                          ; preds = %while.cond.i
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx3.i, align 4
  %or.i = or i32 %index.0.i, %shl.i
  %pool8.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %5 = ptrtoint ptr %pool8.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %or.i, ptr %pool8.i, align 1
  %add9.i = add i32 %index.0.i, 1
  %and10.i = and i32 %add9.i, 511
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and10.i, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !863

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %10, i32 noundef %sub.ptr.sub) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %sub.ptr.rhs.cast, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i55 = and i32 %sub.ptr.rhs.cast, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i55, i32 noundef %sub.ptr.sub, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i56 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %paddr10 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %18 = ptrtoint ptr %paddr10 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %retval.0.i56, ptr %paddr10, align 1
  %call11 = tail call fastcc i32 @push_rx_skb(ptr noundef %card, ptr noundef nonnull %call.i.i, i32 noundef %queue)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %dma_map_single_attrs.exit.while.cond_crit_edge, label %do.end16

dma_map_single_attrs.exit.while.cond_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.end16:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pool8.i.le = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %data.le = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %end.i.le = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %paddr10.le = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #16
  %19 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %paddr10.le to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %paddr10.le, align 1
  %23 = ptrtoint ptr %end.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.le, align 4
  %25 = ptrtoint ptr %data.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.le, align 4
  %sub.ptr.lhs.cast28 = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast29 = ptrtoint ptr %26 to i32
  %sub.ptr.sub30 = sub i32 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %22, i32 noundef %sub.ptr.sub30, i32 noundef 2, i32 noundef 0) #13
  %27 = ptrtoint ptr %pool8.i.le to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %pool8.i.le, align 1
  %shr = lshr i32 %28, 16
  %sub = add nsw i32 %shr, -1
  %and = and i32 %28, 65535
  %arrayidx35 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %sub, i32 1, i32 %and
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx35, align 4
  br label %outfree

outfree:                                          ; preds = %do.end16, %do.end
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %outfree, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_rx_skb(ptr noundef %card, ptr noundef %skb, i32 noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %data, align 4
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %5 = icmp ult i32 %queue, 4
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.push_rx_skb, i32 0, i32 %queue
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %switch.load) #13
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #13, !srcloc !822
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !864
  %shl.i = shl nuw nsw i32 %queue, 2
  %add.i = add nuw nsw i32 %shl.i, 16
  %shr.i = lshr i32 %10, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp.i.not = icmp eq i32 %shr.i, 15
  br i1 %cmp.i.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = add i32 %14, -64
  %sub = and i32 %15, -64
  %arrayidx = getelementptr i8, ptr %12, i32 %sub
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %arrayidx, align 1
  %pool = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %17 = ptrtoint ptr %pool to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pool, align 1
  %paddr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %19 = ptrtoint ptr %paddr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %paddr, align 1
  %cmd_lock = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !865
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx21 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 6, i32 %queue
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !866
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %20)
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #13, !srcloc !818
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_sram(ptr noundef %card, i32 noundef %addr, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @idt77252_sram_write_errors, align 4
  br i1 %.b, label %entry.do.body21_crit_edge, label %land.lhs.true

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

land.lhs.true:                                    ; preds = %entry
  %tst = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 16
  %0 = ptrtoint ptr %tst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tst, align 4
  %tst_size = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 24
  %2 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tst_size, align 4
  %add = add i32 %3, %1
  %sub = add i32 %add, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %addr)
  %cmp1 = icmp ult i32 %sub, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp7 = icmp ugt i32 %add, %addr
  %or.cond = and i1 %cmp7, %cmp1
  br i1 %or.cond, label %land.lhs.true.do.end_crit_edge, label %lor.lhs.false

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  %add11 = add i32 %5, %3
  %sub12 = add i32 %add11, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %addr)
  %cmp13 = icmp ult i32 %sub12, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %addr)
  %cmp19 = icmp ugt i32 %add11, %addr
  %or.cond58 = and i1 %cmp19, %cmp13
  br i1 %or.cond58, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name, i32 noundef %addr, i32 noundef %value) #16
  br label %do.body21

do.body21:                                        ; preds = %do.end, %lor.lhs.false.do.body21_crit_edge, %entry.do.body21_crit_edge
  %cmd_lock = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !867
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %value)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !868
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %addr, 2
  %or = or i32 %shl, 1073741824
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr37 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %9) #13, !srcloc !818
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %15 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not11.i = icmp eq i32 %15, 0
  br i1 %tobool.not11.i, label %do.body21.waitfor_idle.exit_crit_edge, label %do.body21.while.body.i_crit_edge

do.body21.while.body.i_crit_edge:                 ; preds = %do.body21
  br label %while.body.i

do.body21.waitfor_idle.exit_crit_edge:            ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body21.while.body.i_crit_edge
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %19 = and i32 %18, 131072
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %while.body.i.waitfor_idle.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.waitfor_idle.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

waitfor_idle.exit:                                ; preds = %while.body.i.waitfor_idle.exit_crit_edge, %do.body21.waitfor_idle.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call25) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_dev_close(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %vpibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vpibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp53.not.i = icmp eq i32 %3, 31
  br i1 %cmp53.not.i, label %entry.close_card_oam.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

entry.close_card_oam.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_card_oam.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  %vcibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 29
  %vcimask.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 30
  %vcs.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 33
  %rct_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 13
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 8
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc32.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %vpi.054.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc33.i, %for.inc32.i.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %vci.051.i = phi i32 [ 3, %for.cond1.preheader.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %4 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcibits.i, align 4
  %shl4.i = shl i32 %vpi.054.i, %5
  %6 = ptrtoint ptr %vcimask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcimask.i, align 4
  %and.i = and i32 %7, %vci.051.i
  %or.i = or i32 %and.i, %shl4.i
  %8 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %or.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %rct_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rct_base.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %mul.i = shl i32 %15, 2
  %add.i = add i32 %mul.i, %13
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !869
  tail call void @arm_heavy_mb() #13
  %shl14.i = shl i32 %add.i, 2
  %or15.i = or i32 %shl14.i, 536870912
  %16 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #13
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #13, !srcloc !818
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %22 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not11.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not11.i.i, label %for.body3.i.waitfor_idle.exit.i_crit_edge, label %for.body3.i.while.body.i.i_crit_edge

for.body3.i.while.body.i.i_crit_edge:             ; preds = %for.body3.i
  br label %while.body.i.i

for.body3.i.waitfor_idle.exit.i_crit_edge:        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body3.i.while.body.i.i_crit_edge
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %26 = and i32 %25, 131072
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.waitfor_idle.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.waitfor_idle.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

waitfor_idle.exit.i:                              ; preds = %while.body.i.i.waitfor_idle.exit.i_crit_edge, %for.body3.i.waitfor_idle.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call8.i) #13
  %rcv.i = getelementptr inbounds %struct.vc_map, ptr %11, i32 0, i32 14
  %qlen.i.i = getelementptr inbounds %struct.vc_map, ptr %11, i32 0, i32 14, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp18.not.i = icmp eq i32 %28, 0
  br i1 %cmp18.not.i, label %waitfor_idle.exit.i.for.inc.i_crit_edge, label %do.body20.i

waitfor_idle.exit.i.for.inc.i_crit_edge:          ; preds = %waitfor_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body20.i:                                      ; preds = %waitfor_idle.exit.i
  %29 = load i32, ptr @debug, align 4
  %and21.i = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool.not.i, label %do.body20.i.do.end29.i_crit_edge, label %do.end25.i

do.body20.i.do.end29.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29.i

do.end25.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i) #16
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end25.i, %do.body20.i.do.end29.i_crit_edge
  %30 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i.i = icmp eq ptr %31, %rcv.i
  br i1 %cmp.not10.i.i, label %do.end29.i.recycle_rx_pool_skb.exit.i_crit_edge, label %do.end29.i.for.body.i.i_crit_edge

do.end29.i.for.body.i.i_crit_edge:                ; preds = %do.end29.i
  br label %for.body.i.i

do.end29.i.recycle_rx_pool_skb.exit.i_crit_edge:  ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end29.i.for.body.i.i_crit_edge
  %skb.011.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %31, %do.end29.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %skb.011.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.0.i.i = load ptr, ptr %skb.011.i.i, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %1, ptr noundef %skb.011.i.i) #13
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %rcv.i
  br i1 %cmp.not.i.i, label %for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit.i

recycle_rx_pool_skb.exit.i:                       ; preds = %for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge, %do.end29.i.recycle_rx_pool_skb.exit.i_crit_edge
  %lock.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %11, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %33 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %11, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rcv.i, ptr %prev.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qlen.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.vc_map, ptr %11, i32 0, i32 14, i32 0, i32 1
  %36 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %len.i.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %recycle_rx_pool_skb.exit.i, %waitfor_idle.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %vci.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc32.i, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i

for.inc32.i:                                      ; preds = %for.inc.i
  %inc33.i = add nuw nsw i32 %vpi.054.i, 1
  %37 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vpibits.i, align 4
  %shl.i = shl nuw i32 1, %38
  %cmp.i = icmp slt i32 %inc33.i, %shl.i
  br i1 %cmp.i, label %for.inc32.i.for.cond1.preheader.i_crit_edge, label %for.inc32.i.close_card_oam.exit_crit_edge

for.inc32.i.close_card_oam.exit_crit_edge:        ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_card_oam.exit

for.inc32.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

close_card_oam.exit:                              ; preds = %for.inc32.i.close_card_oam.exit_crit_edge, %entry.close_card_oam.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !870
  tail call void @arm_heavy_mb() #13
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 20
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !871
  %42 = and i32 %41, 98828255
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %42) #13, !srcloc !818
  %45 = load i32, ptr @debug, align 4
  %and5 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %close_card_oam.exit.do.end12_crit_edge, label %do.end8

close_card_oam.exit.do.end12_crit_edge:           ; preds = %close_card_oam.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end8:                                          ; preds = %close_card_oam.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 46
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %close_card_oam.exit.do.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_open(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %4 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci2, align 8
  %vpi3 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %6 = ptrtoint ptr %vpi3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vpi3, align 4
  %conv = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %7)
  %cmp = icmp eq i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp5 = icmp eq i32 %5, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vpibits = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 28
  %8 = ptrtoint ptr %vpibits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vpibits, align 4
  %shl = shl nuw i32 1, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp8.not = icmp sgt i32 %shl, %conv
  br i1 %cmp8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, i32 noundef %conv) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %vcibits = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcibits, align 4
  %shl13 = shl nuw i32 1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shl13)
  %cmp14.not = icmp slt i32 %5, %shl13
  br i1 %cmp14.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %name21 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name21, i32 noundef %5) #16
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  %mutex = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %12 = load i32, ptr @debug, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end24.do.end37_crit_edge, label %do.end29

if.end24.do.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %name31 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name31, i32 noundef %conv, i32 noundef %5) #16
  br label %do.end37

do.end37:                                         ; preds = %do.end29, %if.end24.do.end37_crit_edge
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aal, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.485)
  switch i8 %14, label %do.end41 [
    i8 13, label %do.end37.sw.epilog_crit_edge
    i8 1, label %do.end37.sw.epilog_crit_edge284
    i8 5, label %do.end37.sw.epilog_crit_edge285
  ]

do.end37.sw.epilog_crit_edge285:                  ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end37.sw.epilog_crit_edge284:                  ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end37.sw.epilog_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end41:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %conv38 = zext i8 %14 to i32
  %name43 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name43, i32 noundef %conv38) #16
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

sw.epilog:                                        ; preds = %do.end37.sw.epilog_crit_edge, %do.end37.sw.epilog_crit_edge284, %do.end37.sw.epilog_crit_edge285
  %16 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vcibits, align 4
  %shl52 = shl i32 %conv, %17
  %vcimask = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 30
  %18 = ptrtoint ptr %vcimask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vcimask, align 4
  %and53 = and i32 %19, %5
  %or = or i32 %and53, %shl52
  %vcs = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 33
  %20 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vcs, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %or
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool54.not = icmp eq ptr %23, null
  br i1 %tobool54.not, label %if.then55, label %sw.epilog.if.end84_crit_edge

sw.epilog.if.end84_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then55:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 148) #18
  %25 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vcs, align 4
  %arrayidx58 = getelementptr ptr, ptr %26, i32 %or
  %27 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %arrayidx58, align 4
  %28 = load ptr, ptr %vcs, align 4
  %arrayidx60 = getelementptr ptr, ptr %28, i32 %or
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %30, null
  br i1 %tobool61.not, label %do.end65, label %if.end71

do.end65:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %name67 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name67) #16
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end71:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %card74 = getelementptr inbounds %struct.vc_map, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %card74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %card74, align 4
  %32 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vcs, align 4
  %arrayidx76 = getelementptr ptr, ptr %33, i32 %or
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx76, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %35, align 4
  %37 = load ptr, ptr %vcs, align 4
  %arrayidx80 = getelementptr ptr, ptr %37, i32 %or
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx80, align 4
  %lock = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.88, ptr noundef nonnull @idt77252_open.__key, i16 noundef signext 3) #13
  br label %if.end84

if.end84:                                         ; preds = %if.end71, %sw.epilog.if.end84_crit_edge
  %40 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vcs, align 4
  %arrayidx86 = getelementptr ptr, ptr %41, i32 %or
  %42 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx86, align 4
  %dev_data87 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %44 = ptrtoint ptr %dev_data87 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %dev_data87, align 8
  %45 = load i32, ptr @debug, align 4
  %and89 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end84.do.end117_crit_edge, label %do.end94

if.end84.do.end117_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end117

do.end94:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %name96 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %48 = ptrtoint ptr %vpi3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vpi3, align 4
  %conv100 = sext i16 %49 to i32
  %50 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vci2, align 8
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp104.not = icmp eq i8 %53, 0
  %cond = select i1 %cmp104.not, ptr @.str.93, ptr @.str.92
  %54 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp109.not = icmp eq i8 %55, 0
  %cond111 = select i1 %cmp109.not, ptr @.str.93, ptr @.str.94
  %max_sdu = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1, i32 5
  %56 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_sdu, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name96, i32 noundef %47, i32 noundef %conv100, i32 noundef %51, ptr noundef nonnull %cond, ptr noundef nonnull %cond111, i32 noundef %57) #16
  br label %do.end117

do.end117:                                        ; preds = %do.end94, %if.end84.do.end117_crit_edge
  %58 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp122.not = icmp eq i8 %59, 0
  br i1 %cmp122.not, label %do.end117.if.end128_crit_edge, label %land.lhs.true

do.end117.if.end128_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

land.lhs.true:                                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #15
  %flags124 = getelementptr inbounds %struct.vc_map, ptr %43, i32 0, i32 1
  %60 = ptrtoint ptr %flags124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags124, align 4
  %and1.i = and i32 %61, 1
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true, %do.end117.if.end128_crit_edge
  %inuse.0 = phi i32 [ 0, %do.end117.if.end128_crit_edge ], [ %and1.i, %land.lhs.true ]
  %rxtp130 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %rxtp130 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rxtp130, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp133.not = icmp eq i8 %63, 0
  br i1 %cmp133.not, label %if.end128.if.end140_crit_edge, label %land.lhs.true135

if.end128.if.end140_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

land.lhs.true135:                                 ; preds = %if.end128
  %flags136 = getelementptr inbounds %struct.vc_map, ptr %43, i32 0, i32 1
  %64 = ptrtoint ptr %flags136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags136, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool138.not = icmp eq i32 %66, 0
  br i1 %tobool138.not, label %land.lhs.true135.if.end140_crit_edge, label %do.end145

land.lhs.true135.if.end140_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true135.if.end140_crit_edge, %if.end128.if.end140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inuse.0)
  %tobool141.not = icmp eq i32 %inuse.0, 0
  br i1 %tobool141.not, label %if.end157, label %if.end140..thread_crit_edge

if.end140..thread_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

do.end145:                                        ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inuse.0)
  %cmp151 = icmp eq i32 %inuse.0, 0
  %spec.select = select i1 %cmp151, ptr @.str.92, ptr @.str.98
  br label %.thread

.thread:                                          ; preds = %do.end145, %if.end140..thread_crit_edge
  %67 = phi ptr [ %spec.select, %do.end145 ], [ @.str.94, %if.end140..thread_crit_edge ]
  %name147278282 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name147278282, ptr noundef nonnull %67) #16
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end157:                                        ; preds = %if.end140
  br i1 %cmp122.not, label %if.end157.if.end171_crit_edge, label %if.then164

if.end157.if.end171_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then164:                                       ; preds = %if.end157
  %call166 = tail call fastcc i32 @idt77252_init_tx(ptr noundef %3, ptr noundef %43, ptr noundef %vcc, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then164.if.end171_crit_edge, label %if.then168

if.then164.if.end171_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then168:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end171:                                        ; preds = %if.then164.if.end171_crit_edge, %if.end157.if.end171_crit_edge
  %68 = ptrtoint ptr %rxtp130 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rxtp130, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp176.not = icmp eq i8 %69, 0
  br i1 %cmp176.not, label %if.end171.if.end185_crit_edge, label %if.then178

if.end171.if.end185_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then178:                                       ; preds = %if.end171
  %call180 = tail call fastcc i32 @idt77252_init_rx(ptr noundef %3, ptr noundef %43, ptr noundef %vcc, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then178.if.end185_crit_edge, label %if.then182

if.then178.if.end185_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then182:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end185:                                        ; preds = %if.then178.if.end185_crit_edge, %if.end171.if.end185_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %if.then182, %if.then168, %.thread, %do.end65, %do.end41, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ -93, %do.end41 ], [ -98, %.thread ], [ %call166, %if.then168 ], [ %call180, %if.then182 ], [ 0, %if.end185 ], [ -12, %do.end65 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_close(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data2, align 8
  %mutex = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %9 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vpi, align 4
  %conv = sext i16 %10 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %11 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vci, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %name, i32 noundef %8, i32 noundef %conv, i32 noundef %12) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags6 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags6) #13
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %do.end5.done_crit_edge, label %do.body11

do.end5.done_crit_edge:                           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

do.body11:                                        ; preds = %do.end5
  %lock = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 7
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %flags21 = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags21) #13
  %rx_vcc = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %rx_vcc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rx_vcc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #13
  %vci23 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %16 = ptrtoint ptr %vci23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vci23, align 8
  %.off = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body11.done_crit_edge, label %if.end30

do.body11.done_crit_edge:                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end30:                                         ; preds = %do.body11
  %rct_base = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 13
  %18 = ptrtoint ptr %rct_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rct_base, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  %mul = shl i32 %21, 2
  %add = add i32 %mul, %19
  %cmd_lock = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 8
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !872
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %add, 2
  %or = or i32 %shl, 536870912
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #13, !srcloc !818
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %28 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not11.i = icmp eq i32 %28, 0
  br i1 %tobool.not11.i, label %if.end30.waitfor_idle.exit_crit_edge, label %if.end30.while.body.i_crit_edge

if.end30.while.body.i_crit_edge:                  ; preds = %if.end30
  br label %while.body.i

if.end30.waitfor_idle.exit_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end30.while.body.i_crit_edge
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %32 = and i32 %31, 131072
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %while.body.i.waitfor_idle.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.waitfor_idle.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

waitfor_idle.exit:                                ; preds = %while.body.i.waitfor_idle.exit_crit_edge, %if.end30.waitfor_idle.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call40) #13
  %rcv = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 14
  %qlen.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp50.not = icmp eq i32 %34, 0
  br i1 %cmp50.not, label %waitfor_idle.exit.done_crit_edge, label %do.body53

waitfor_idle.exit.done_crit_edge:                 ; preds = %waitfor_idle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

do.body53:                                        ; preds = %waitfor_idle.exit
  %35 = load i32, ptr @debug, align 4
  %and54 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.end66_crit_edge, label %do.end59

do.body53.do.end66_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %name61 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name61) #16
  br label %do.end66

do.end66:                                         ; preds = %do.end59, %do.body53.do.end66_crit_edge
  %36 = ptrtoint ptr %rcv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rcv, align 4
  %cmp.not10.i = icmp eq ptr %37, %rcv
  br i1 %cmp.not10.i, label %do.end66.recycle_rx_pool_skb.exit_crit_edge, label %do.end66.for.body.i_crit_edge

do.end66.for.body.i_crit_edge:                    ; preds = %do.end66
  br label %for.body.i

do.end66.recycle_rx_pool_skb.exit_crit_edge:      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end66.for.body.i_crit_edge
  %skb.011.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %37, %do.end66.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %skb.011.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.0.i = load ptr, ptr %skb.011.i, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %3, ptr noundef %skb.011.i) #13
  %cmp.not.i = icmp eq ptr %tmp.0.i, %rcv
  br i1 %cmp.not.i, label %for.body.i.recycle_rx_pool_skb.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.recycle_rx_pool_skb.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit

recycle_rx_pool_skb.exit:                         ; preds = %for.body.i.recycle_rx_pool_skb.exit_crit_edge, %do.end66.recycle_rx_pool_skb.exit_crit_edge
  %lock.i.i.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %39 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rcv, ptr %rcv, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rcv, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %qlen.i, align 4
  %len.i.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 14, i32 0, i32 1
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %len.i.i, align 4
  br label %done

done:                                             ; preds = %recycle_rx_pool_skb.exit, %waitfor_idle.exit.done_crit_edge, %do.body11.done_crit_edge, %do.end5.done_crit_edge
  %43 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp73.not = icmp eq i8 %44, 0
  br i1 %cmp73.not, label %done.if.end135_crit_edge, label %do.body77

done.if.end135_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

do.body77:                                        ; preds = %done
  %lock83 = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 7
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock83) #13
  %flags90 = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags90) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags90) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags90) #13
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 8
  %45 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %tx_vcc, align 4
  %estimator = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 12
  %46 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %estimator, align 4
  %tobool93.not = icmp eq ptr %47, null
  br i1 %tobool93.not, label %do.body77.if.end99_crit_edge, label %if.then94

do.body77.if.end99_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then94:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  %call96 = tail call i32 @del_timer(ptr noundef nonnull %47) #13
  %48 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %estimator, align 4
  tail call void @kfree(ptr noundef %49) #13
  %50 = ptrtoint ptr %estimator to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %estimator, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %do.body77.if.end99_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock83, i32 noundef %call85) #13
  %scq = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end99
  %timeout.0 = phi i32 [ 5000, %if.end99 ], [ %call104, %while.body.while.cond_crit_edge ]
  %51 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scq, align 4
  %used = getelementptr inbounds %struct.scq_info, ptr %52, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %used, i32 noundef 4) #13
  %53 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp102 = icmp sgt i32 %54, 0
  br i1 %cmp102, label %while.body, label %while.cond.do.body118_crit_edge

while.cond.do.body118_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body118

while.body:                                       ; preds = %while.cond
  %call104 = tail call i32 @msleep_interruptible(i32 noundef %timeout.0) #13
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end109, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.end109:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %name111 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %55 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scq, align 4
  %used114 = getelementptr inbounds %struct.scq_info, ptr %56, i32 0, i32 5
  %call.i.i193 = tail call zeroext i1 @__kasan_check_read(ptr noundef %used114, i32 noundef 4) #13
  %57 = ptrtoint ptr %used114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %used114, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name111, i32 noundef %58) #16
  br label %do.body118

do.body118:                                       ; preds = %do.end109, %while.cond.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !873
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %5, align 4
  %or122 = or i32 %60, 83886080
  %61 = tail call i32 @llvm.bswap.i32(i32 %or122)
  %membase123 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %membase123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase123, align 4
  %add.ptr124 = getelementptr i8, ptr %63, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %61) #13, !srcloc !818
  %class = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 2
  %64 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp127 = icmp eq i32 %65, 4
  br i1 %cmp127, label %if.then129, label %do.body118.if.end133_crit_edge

do.body118.if.end133_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then129:                                       ; preds = %do.body118
  %tst_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 38
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tst_lock.i) #13
  %tst_index.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 36
  %66 = ptrtoint ptr %tst_index.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tst_index.i.i, align 4
  %xor.i.i = xor i32 %67, 1
  %arrayidx.i.i = getelementptr %struct.idt77252_dev, ptr %3, i32 0, i32 16, i32 %xor.i.i
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %tst_size.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 24
  %70 = ptrtoint ptr %tst_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tst_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp2.not.i.i = icmp eq i32 %71, 2
  br i1 %cmp2.not.i.i, label %if.then129.__clear_tst.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then129.__clear_tst.exit.i_crit_edge:          ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %__clear_tst.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then129
  %soft_tst.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 35
  %pprev.i.i.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 37, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %e.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %72 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %soft_tst.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.tst_info, ptr %73, i32 %e.03.i.i
  %74 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx1.i.i, align 4
  %cmp3.i.i = icmp eq ptr %75, %5
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %76 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx1.i.i, align 4
  %77 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soft_tst.i.i, align 4
  %tste.i.i = getelementptr %struct.tst_info, ptr %78, i32 %e.03.i.i, i32 1
  %79 = ptrtoint ptr %tste.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1073741824, ptr %tste.i.i, align 4
  %80 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.not.i.i, label %if.else.i.i, label %if.then.i.i.for.inc.sink.split.i.i_crit_edge

if.then.i.i.for.inc.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i = add i32 %e.03.i.i, %69
  tail call fastcc void @write_sram(ptr noundef %3, i32 noundef %add.i.i, i32 noundef 1073741824) #13
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.else.i.i, %if.then.i.i.for.inc.sink.split.i.i_crit_edge
  %.sink5.i.i = phi i32 [ 16777216, %if.else.i.i ], [ 33554432, %if.then.i.i.for.inc.sink.split.i.i_crit_edge ]
  %82 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soft_tst.i.i, align 4
  %tste12.i.i = getelementptr %struct.tst_info, ptr %83, i32 %e.03.i.i, i32 1
  %84 = ptrtoint ptr %tste12.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tste12.i.i, align 4
  %or16.i.i = or i32 %85, %.sink5.i.i
  store i32 %or16.i.i, ptr %tste12.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %e.03.i.i, 1
  %86 = ptrtoint ptr %tst_size.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tst_size.i.i, align 4
  %sub.i.i = add i32 %87, -2
  %cmp.i.i = icmp ult i32 %inc.i.i, %sub.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.__clear_tst.exit.i_crit_edge

for.inc.i.i.__clear_tst.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__clear_tst.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

__clear_tst.exit.i:                               ; preds = %for.inc.i.i.__clear_tst.exit.i_crit_edge, %if.then129.__clear_tst.exit.i_crit_edge
  %tst_state.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 39
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tst_state.i) #13
  %pprev.i.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 37, i32 0, i32 1
  %88 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.not.i, label %if.then.i, label %__clear_tst.exit.i.clear_tst.exit_crit_edge

__clear_tst.exit.i.clear_tst.exit_crit_edge:      ; preds = %__clear_tst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_tst.exit

if.then.i:                                        ; preds = %__clear_tst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tst_timer.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %90, 1
  %call8.i = tail call i32 @mod_timer(ptr noundef %tst_timer.i, i32 noundef %add.i) #13
  br label %clear_tst.exit

clear_tst.exit:                                   ; preds = %if.then.i, %__clear_tst.exit.i.clear_tst.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tst_lock.i, i32 noundef %call2.i) #13
  %ntste = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 6
  %91 = ptrtoint ptr %ntste to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ntste, align 4
  %tst_free = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 25
  %93 = ptrtoint ptr %tst_free to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tst_free, align 4
  %add131 = add i32 %94, %92
  store i32 %add131, ptr %tst_free, align 4
  store i32 0, ptr %ntste, align 4
  br label %if.end133

if.end133:                                        ; preds = %clear_tst.exit, %do.body118.if.end133_crit_edge
  %scd2vc = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 34
  %95 = ptrtoint ptr %scd2vc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %scd2vc, align 4
  %scd_index = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 13
  %97 = ptrtoint ptr %scd_index to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %scd_index, align 4
  %arrayidx = getelementptr ptr, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %arrayidx, align 4
  %100 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %scq, align 4
  tail call fastcc void @free_scq(ptr noundef %3, ptr noundef %101)
  br label %if.end135

if.end135:                                        ; preds = %if.end133, %done.if.end135_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_send(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @idt77252_send_skb(ptr noundef %vcc, ptr noundef %skb, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_send_oam(ptr noundef %vcc, ptr nocapture noundef readonly %cell, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %call.i.i14 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 64, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call.i.i14, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name) #16
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #13, !srcloc !874
  br label %cleanup

if.end:                                           ; preds = %entry
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i.i14, i32 0, i32 20
  %7 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %8, ptr elementtype(i32) %sk_wmem_alloc) #13, !srcloc !875
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !876

if.end.if.end15.sink.split.i.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end
  %add.i.i = add i32 %asmresult.i.i.i.i, %8
  %10 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !863

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %if.end.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #13
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i14, i32 noundef 52) #13
  %11 = call ptr @memcpy(ptr %call.i, ptr %cell, i32 52)
  %call5 = tail call fastcc i32 @idt77252_send_skb(ptr noundef %vcc, ptr noundef nonnull %call.i.i14, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %refcount_add.exit, %do.end
  %retval.0 = phi i32 [ %call5, %refcount_add.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_phy_put(ptr nocapture noundef readonly %dev, i8 noundef zeroext %value, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #16
  br label %write_utility.exit

do.body2.i:                                       ; preds = %entry
  %and = and i32 %addr, 511
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 8
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !877
  tail call void @arm_heavy_mb() #13
  %conv13.i = zext i8 %value to i32
  %2 = shl nuw i32 %conv13.i, 24
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #13, !srcloc !818
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !878
  tail call void @arm_heavy_mb() #13
  %add.i = add nuw nsw i32 %and, -1879047936
  %5 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %5) #13, !srcloc !818
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %11 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not11.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not11.i.i, label %do.body2.i.waitfor_idle.exit.i_crit_edge, label %do.body2.i.while.body.i.i_crit_edge

do.body2.i.while.body.i.i_crit_edge:              ; preds = %do.body2.i
  br label %while.body.i.i

do.body2.i.waitfor_idle.exit.i_crit_edge:         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.body2.i.while.body.i.i_crit_edge
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %15 = and i32 %14, 131072
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.waitfor_idle.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.waitfor_idle.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

waitfor_idle.exit.i:                              ; preds = %while.body.i.i.waitfor_idle.exit.i_crit_edge, %do.body2.i.waitfor_idle.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call5.i) #13
  br label %write_utility.exit

write_utility.exit:                               ; preds = %waitfor_idle.exit.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @idt77252_phy_get(ptr nocapture noundef readonly %dev, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #16
  br label %read_utility.exit

do.body2.i:                                       ; preds = %entry
  %and = and i32 %addr, 511
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 8
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !879
  tail call void @arm_heavy_mb() #13
  %add.i1 = add nuw nsw i32 %and, -2147483392
  %2 = tail call i32 @llvm.bswap.i32(i32 %add.i1) #13
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !818
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not11.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not11.i.i, label %do.body2.i.waitfor_idle.exit.i_crit_edge, label %do.body2.i.while.body.i.i_crit_edge

do.body2.i.while.body.i.i_crit_edge:              ; preds = %do.body2.i
  br label %while.body.i.i

do.body2.i.waitfor_idle.exit.i_crit_edge:         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.body2.i.while.body.i.i_crit_edge
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %12 = and i32 %11, 131072
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.waitfor_idle.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.waitfor_idle.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit.i

waitfor_idle.exit.i:                              ; preds = %while.body.i.i.waitfor_idle.exit.i_crit_edge, %do.body2.i.waitfor_idle.exit.i_crit_edge
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !822
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !880
  %conv18.i = trunc i32 %16 to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call5.i) #13
  br label %read_utility.exit

read_utility.exit:                                ; preds = %waitfor_idle.exit.i, %do.end.i
  %retval.0.i = phi i8 [ %conv18.i, %waitfor_idle.exit.i ], [ -1, %do.end.i ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_change_qos(ptr noundef %vcc, ptr noundef %qos, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data2, align 8
  %mutex = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %6 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %entry
  %flags4 = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags4, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc i32 @idt77252_init_tx(ptr noundef %3, ptr noundef %5, ptr noundef %vcc, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end30_crit_edge, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then5.if.end30_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.else:                                          ; preds = %if.then
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.486)
  switch i8 %7, label %if.else.if.end30_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb16
    i8 3, label %if.else.out_crit_edge
    i8 4, label %if.else.out_crit_edge82
  ]

if.else.out_crit_edge82:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

sw.bb:                                            ; preds = %if.else
  %call12 = tail call fastcc i32 @idt77252_init_cbr(ptr noundef %3, ptr noundef %5, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.bb.if.end30_crit_edge, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb.if.end30_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

sw.bb16:                                          ; preds = %if.else
  tail call fastcc void @idt77252_init_ubr(ptr noundef %3, ptr noundef %5, ptr noundef %qos)
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags4, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %do.body, label %sw.bb16.if.end30_crit_edge

sw.bb16.if.end30_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

do.body:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !881
  tail call void @arm_heavy_mb() #13
  %lacr = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %lacr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lacr, align 1
  %conv25 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv25, 16
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %or = or i32 %17, %shl
  %or26 = or i32 %or, 33554432
  %18 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #13, !srcloc !818
  br label %if.end30

if.end30:                                         ; preds = %do.body, %sw.bb16.if.end30_crit_edge, %sw.bb.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then5.if.end30_crit_edge, %entry.if.end30_crit_edge
  %rxtp = getelementptr inbounds %struct.atm_qos, ptr %qos, i32 0, i32 1
  %21 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rxtp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp33.not = icmp eq i8 %22, 0
  br i1 %cmp33.not, label %if.end30.if.end43_crit_edge, label %land.lhs.true

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end30
  %flags35 = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags35, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not = icmp eq i32 %25, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then38:                                        ; preds = %land.lhs.true
  %call39 = tail call fastcc i32 @idt77252_init_rx(ptr noundef %3, ptr noundef %5, ptr noundef %vcc, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.out_crit_edge

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %qos44 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %26 = call ptr @memcpy(ptr %qos44, ptr %qos, i32 84)
  %flags45 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags45) #13
  br label %out

out:                                              ; preds = %if.end43, %if.then38.out_crit_edge, %sw.bb.out_crit_edge, %if.else.out_crit_edge, %if.else.out_crit_edge82, %if.then5.out_crit_edge
  %error.2 = phi i32 [ 0, %if.end43 ], [ %call39, %if.then38.out_crit_edge ], [ %call12, %sw.bb.out_crit_edge ], [ %call6, %if.then5.out_crit_edge ], [ -95, %if.else.out_crit_edge ], [ -95, %if.else.out_crit_edge82 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %error.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_proc_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr noundef %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.487)
  switch i32 %conv, label %if.end94 [
    i32 0, label %if.then
    i32 1, label %if.then3
    i32 2, label %if.then8
    i32 3, label %if.then15
    i32 4, label %if.then22
    i32 5, label %if.then29
    i32 6, label %if.then36
    i32 7, label %if.then43
    i32 8, label %if.then50
    i32 9, label %if.then57
    i32 10, label %if.then64
    i32 11, label %if.then71
    i32 12, label %if.then78
    i32 13, label %if.then85
    i32 14, label %if.then92
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = call ptr @memcpy(ptr %page, ptr @.str.201, i32 22)
  br label %cleanup129

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.202, i32 noundef %7)
  br label %cleanup129

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 14
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.203, i32 noundef %9)
  br label %cleanup129

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 12
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.204, i32 noundef %11)
  br label %cleanup129

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx24 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 11
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx24, align 4
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.205, i32 noundef %13)
  br label %cleanup129

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx31 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 10
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.206, i32 noundef %15)
  br label %cleanup129

if.then36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx38 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 8
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx38, align 4
  %call39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.207, i32 noundef %17)
  br label %cleanup129

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx45 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 7
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx45, align 4
  %call46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.208, i32 noundef %19)
  br label %cleanup129

if.then50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx52 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 6
  %20 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx52, align 4
  %call53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.209, i32 noundef %21)
  br label %cleanup129

if.then57:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx59 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 5
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx59, align 4
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.210, i32 noundef %23)
  br label %cleanup129

if.then64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx66 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 4
  %24 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx66, align 4
  %call67 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.211, i32 noundef %25)
  br label %cleanup129

if.then71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx73 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 3
  %26 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx73, align 4
  %call74 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.212, i32 noundef %27)
  br label %cleanup129

if.then78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx80 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx80, align 4
  %call81 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.213, i32 noundef %29)
  br label %cleanup129

if.then85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx87 = getelementptr %struct.idt77252_dev, ptr %1, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx87, align 4
  %call88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.214, i32 noundef %31)
  br label %cleanup129

if.then92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %32 = call ptr @memcpy(ptr %page, ptr @.str.215, i32 37)
  br label %cleanup129

if.end94:                                         ; preds = %entry
  %tct_size = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %tct_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tct_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp205.not = icmp eq i32 %34, 0
  br i1 %cmp205.not, label %if.end94.cleanup129_crit_edge, label %for.body.lr.ph

if.end94.cleanup129_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup129

for.body.lr.ph:                                   ; preds = %if.end94
  %dec90 = add i32 %conv, -15
  %vcs = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 33
  %35 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vcs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc126.for.body_crit_edge, %for.body.lr.ph
  %left.0208 = phi i32 [ %dec90, %for.body.lr.ph ], [ %left.1.ph, %for.inc126.for.body_crit_edge ]
  %i.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %inc127, %for.inc126.for.body_crit_edge ]
  %arrayidx96 = getelementptr ptr, ptr %36, i32 %i.0206
  %37 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %38, null
  br i1 %tobool97.not, label %for.body.for.inc126_crit_edge, label %if.end99

for.body.for.inc126_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc126

if.end99:                                         ; preds = %for.body
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_vcc, align 4
  %tobool100.not = icmp eq ptr %40, null
  br i1 %tobool100.not, label %if.end99.for.inc126_crit_edge, label %if.end106

if.end99.for.inc126_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc126

if.end106:                                        ; preds = %if.end99
  %dec107 = add i32 %left.0208, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0208)
  %tobool108.not = icmp eq i32 %left.0208, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.for.inc126_crit_edge

if.end106.for.inc126_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc126

if.end110:                                        ; preds = %if.end106
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vpi, align 4
  %conv111 = sext i16 %42 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vci, align 8
  %call112 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.216, i32 noundef %i.0206, i32 noundef %conv111, i32 noundef %44)
  %add.ptr = getelementptr i8, ptr %page, i32 %call112
  %tct_base = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %tct_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tct_base, align 4
  %mul = shl i32 %i.0206, 3
  %add = add i32 %46, %mul
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 8
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %1, i32 0, i32 4
  br label %for.body116

for.body116:                                      ; preds = %read_sram.exit.for.body116_crit_edge, %if.end110
  %p.0210 = phi ptr [ %add.ptr, %if.end110 ], [ %add.ptr120, %read_sram.exit.for.body116_crit_edge ]
  %i.1209 = phi i32 [ 0, %if.end110 ], [ %inc, %read_sram.exit.for.body116_crit_edge ]
  %add117 = add i32 %add, %i.1209
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !882
  tail call void @arm_heavy_mb() #13
  %shl.i = shl i32 %add117, 2
  %or.i = or i32 %shl.i, 1342177280
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %47) #13, !srcloc !818
  %50 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %53 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not11.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not11.i.i, label %for.body116.read_sram.exit_crit_edge, label %for.body116.while.body.i.i_crit_edge

for.body116.while.body.i.i_crit_edge:             ; preds = %for.body116
  br label %while.body.i.i

for.body116.read_sram.exit_crit_edge:             ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body116.while.body.i.i_crit_edge
  %54 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %55, i32 24
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %57 = and i32 %56, 131072
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.read_sram.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.read_sram.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit

read_sram.exit:                                   ; preds = %while.body.i.i.read_sram.exit_crit_edge, %for.body116.read_sram.exit_crit_edge
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #13, !srcloc !822
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !883
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #13
  %call119 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0210, ptr noundef nonnull @.str.191, i32 noundef %61)
  %add.ptr120 = getelementptr i8, ptr %p.0210, i32 %call119
  %inc = add nuw nsw i32 %i.1209, 1
  %exitcond212.not = icmp eq i32 %inc, 8
  br i1 %exitcond212.not, label %cleanup, label %read_sram.exit.for.body116_crit_edge

read_sram.exit.for.body116_crit_edge:             ; preds = %read_sram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body116

cleanup:                                          ; preds = %read_sram.exit
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 2560, ptr %add.ptr120, align 1
  %add.ptr122 = getelementptr i8, ptr %add.ptr120, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr122 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup129

for.inc126:                                       ; preds = %if.end106.for.inc126_crit_edge, %if.end99.for.inc126_crit_edge, %for.body.for.inc126_crit_edge
  %left.1.ph = phi i32 [ %dec107, %if.end106.for.inc126_crit_edge ], [ %left.0208, %if.end99.for.inc126_crit_edge ], [ %left.0208, %for.body.for.inc126_crit_edge ]
  %inc127 = add nuw i32 %i.0206, 1
  %exitcond.not = icmp eq i32 %inc127, %34
  br i1 %exitcond.not, label %for.inc126.cleanup129_crit_edge, label %for.inc126.for.body_crit_edge

for.inc126.for.body_crit_edge:                    ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc126.cleanup129_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup129

cleanup129:                                       ; preds = %for.inc126.cleanup129_crit_edge, %cleanup, %if.end94.cleanup129_crit_edge, %if.then92, %if.then85, %if.then78, %if.then71, %if.then64, %if.then57, %if.then50, %if.then43, %if.then36, %if.then29, %if.then22, %if.then15, %if.then8, %if.then3, %if.then
  %retval.2 = phi i32 [ %sub.ptr.sub, %cleanup ], [ 36, %if.then92 ], [ %call88, %if.then85 ], [ %call81, %if.then78 ], [ %call74, %if.then71 ], [ %call67, %if.then64 ], [ %call60, %if.then57 ], [ %call53, %if.then50 ], [ %call46, %if.then43 ], [ %call39, %if.then36 ], [ %call32, %if.then29 ], [ %call25, %if.then22 ], [ %call18, %if.then15 ], [ %call11, %if.then8 ], [ %call4, %if.then3 ], [ 21, %if.then ], [ 0, %if.end94.cleanup129_crit_edge ], [ 0, %for.inc126.cleanup129_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pool, align 1
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %paddr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %paddr, align 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %5, i32 noundef %sub.ptr.sub, i32 noundef 2) #13
  %shr = lshr i32 %1, 16
  %sub = add nsw i32 %shr, -1
  %call4 = tail call fastcc i32 @push_rx_skb(ptr noundef %card, ptr noundef %skb, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %paddr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %paddr, align 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast13 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast14 = ptrtoint ptr %17 to i32
  %sub.ptr.sub15 = sub i32 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  tail call void @dma_unmap_page_attrs(ptr noundef %dev6, i32 noundef %13, i32 noundef %sub.ptr.sub15, i32 noundef 2, i32 noundef 0) #13
  %18 = ptrtoint ptr %pool to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %pool, align 1
  %shr.i = lshr i32 %19, 16
  %sub.i = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %if.then.sb_pool_remove.exit_crit_edge, label %if.end.i

if.then.sb_pool_remove.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_remove.exit

if.end.i:                                         ; preds = %if.then
  %and.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i)
  %cmp1.i = icmp ugt i32 %and.i, 511
  br i1 %cmp1.i, label %if.end.i.sb_pool_remove.exit_crit_edge, label %if.end3.i

if.end.i.sb_pool_remove.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_remove.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %sub.i, i32 1, i32 %and.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx5.i, align 4
  br label %sb_pool_remove.exit

sb_pool_remove.exit:                              ; preds = %if.end3.i, %if.end.i.sb_pool_remove.exit_crit_edge, %if.then.sb_pool_remove.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %if.end

if.end:                                           ; preds = %sb_pool_remove.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt77252_init_tx(ptr noundef %card, ptr noundef %vc, ptr noundef %vcc, ptr noundef %qos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qos, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.488)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb1 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %class2 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 2
  %5 = ptrtoint ptr %class2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %class2, align 4
  %class4 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 2
  %call5 = tail call fastcc ptr @alloc_scq(ptr noundef %card)
  %scq = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 11
  %6 = ptrtoint ptr %scq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %scq, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name) #16
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog
  %scd_size.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 23
  %7 = ptrtoint ptr %scd_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scd_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not.i = icmp eq i32 %8, 0
  br i1 %cmp13.not.i, label %if.end10.get_free_scd.exit_crit_edge, label %for.body.lr.ph.i

if.end10.get_free_scd.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_free_scd.exit

for.body.lr.ph.i:                                 ; preds = %if.end10
  %scd2vc.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 34
  %9 = ptrtoint ptr %scd2vc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scd2vc.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.014.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.le = getelementptr ptr, ptr %10, i32 %i.014.i
  %13 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vc, ptr %arrayidx.i.le, align 4
  %scd_index.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 13
  %14 = ptrtoint ptr %scd_index.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.014.i, ptr %scd_index.i, align 4
  %scd_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 15
  %15 = ptrtoint ptr %scd_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scd_base.i, align 4
  %mul.i = mul i32 %i.014.i, 12
  %add.i = add i32 %16, %mul.i
  br label %get_free_scd.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.get_free_scd.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.get_free_scd.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_free_scd.exit

get_free_scd.exit:                                ; preds = %for.inc.i.get_free_scd.exit_crit_edge, %if.then.i, %if.end10.get_free_scd.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %if.end10.get_free_scd.exit_crit_edge ], [ 0, %for.inc.i.get_free_scd.exit_crit_edge ]
  %17 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scq, align 4
  %scd = getelementptr inbounds %struct.scq_info, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %scd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %scd, align 4
  %20 = load ptr, ptr %scq, align 4
  %scd14 = getelementptr inbounds %struct.scq_info, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %scd14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scd14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %do.end19, label %if.end25

do.end19:                                         ; preds = %get_free_scd.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name21 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name21) #16
  %23 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scq, align 4
  tail call fastcc void @free_scq(ptr noundef %card, ptr noundef %24)
  br label %cleanup

if.end25:                                         ; preds = %get_free_scd.exit
  %paddr.i = getelementptr inbounds %struct.scq_info, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %paddr.i, align 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %22, i32 noundef %26) #13
  %27 = ptrtoint ptr %scd14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scd14, align 4
  %add.i119 = add i32 %28, 1
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i119, i32 noundef 0) #13
  %29 = ptrtoint ptr %scd14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scd14, align 4
  %add3.i = add i32 %30, 2
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add3.i, i32 noundef -1) #13
  %31 = ptrtoint ptr %scd14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scd14, align 4
  %add5.i = add i32 %32, 3
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add5.i, i32 noundef 0) #13
  %tct_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 12
  %33 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tct_base.i, align 4
  %35 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vc, align 4
  %mul.i120 = shl i32 %36, 3
  %add.i121 = add i32 %mul.i120, %34
  %37 = ptrtoint ptr %class4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %class4, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.489)
  switch i32 %38, label %do.end33 [
    i32 4, label %do.body.i
    i32 1, label %do.body15.i
  ]

do.body.i:                                        ; preds = %if.end25
  %40 = load i32, ptr @debug, align 4
  %and.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i122 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i122, label %do.body.i.do.end3.i_crit_edge, label %do.end.i

do.body.i.do.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %41 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scq, align 4
  %scd.i123 = getelementptr inbounds %struct.scq_info, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %scd.i123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scd.i123, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name.i, i32 noundef %add.i121, i32 noundef %44) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body.i.do.end3.i_crit_edge
  %45 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scq, align 4
  %scd6.i = getelementptr inbounds %struct.scq_info, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %scd6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scd6.i, align 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i121, i32 noundef %48) #13
  %add7.i = add i32 %add.i121, 1
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add7.i, i32 noundef 0) #13
  %add8.i = add i32 %add.i121, 2
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add8.i, i32 noundef 0) #13
  %add9.i = add i32 %add.i121, 3
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add9.i, i32 noundef 0) #13
  %add10.i = add i32 %add.i121, 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add10.i, i32 noundef 0) #13
  %add11.i = add i32 %add.i121, 5
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add11.i, i32 noundef 0) #13
  br label %if.end42

do.body15.i:                                      ; preds = %if.end25
  %49 = load i32, ptr @debug, align 4
  %and16.i = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.do.end30.i_crit_edge, label %do.end21.i

do.body15.i.do.end30.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #15
  %name23.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %50 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scq, align 4
  %scd26.i = getelementptr inbounds %struct.scq_info, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %scd26.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scd26.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name23.i, i32 noundef %add.i121, i32 noundef %53) #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i, %do.body15.i.do.end30.i_crit_edge
  %54 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scq, align 4
  %scd33.i = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %scd33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scd33.i, align 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i121, i32 noundef %57) #13
  %add35.i = add i32 %add.i121, 1
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add35.i, i32 noundef 0) #13
  %add36.i = add i32 %add.i121, 2
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add36.i, i32 noundef 16384) #13
  %add37.i = add i32 %add.i121, 3
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add37.i, i32 noundef -1073741824) #13
  %add38.i = add i32 %add.i121, 4
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add38.i, i32 noundef 0) #13
  %add39.i = add i32 %add.i121, 5
  %init_er.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 3
  %58 = ptrtoint ptr %init_er.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %init_er.i, align 4
  %conv.i = zext i8 %59 to i32
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add39.i, i32 noundef %conv.i) #13
  br label %if.end42

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %name35 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %60 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %qos, align 4
  %conv39 = zext i8 %61 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name35, i32 noundef %conv39) #16
  %scd2vc = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 34
  %62 = ptrtoint ptr %scd2vc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scd2vc, align 4
  %scd_index = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 13
  %64 = ptrtoint ptr %scd_index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scd_index, align 4
  %arrayidx = getelementptr ptr, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scq, align 4
  tail call fastcc void @free_scq(ptr noundef %card, ptr noundef %68)
  br label %cleanup

if.end42:                                         ; preds = %do.end30.i, %do.end3.i
  %.sink.i = phi i32 [ 0, %do.end3.i ], [ -2147483648, %do.end30.i ]
  %add12.i = add i32 %add.i121, 6
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add12.i, i32 noundef 0) #13
  %add13.i = add i32 %add.i121, 7
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add13.i, i32 noundef %.sink.i) #13
  %69 = ptrtoint ptr %class4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %class4, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.490)
  switch i32 %70, label %if.end42.sw.epilog67_crit_edge [
    i32 4, label %sw.bb44
    i32 1, label %sw.bb57
  ]

if.end42.sw.epilog67_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog67

sw.bb44:                                          ; preds = %if.end42
  %call45 = tail call fastcc i32 @idt77252_init_cbr(ptr noundef %card, ptr noundef %vc, ptr noundef %qos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  %scd2vc48 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 34
  %72 = ptrtoint ptr %scd2vc48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scd2vc48, align 4
  %scd_index49 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 13
  %74 = ptrtoint ptr %scd_index49 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %scd_index49, align 4
  %arrayidx50 = getelementptr ptr, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx50, align 4
  %77 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scq, align 4
  tail call fastcc void @free_scq(ptr noundef %card, ptr noundef %78)
  br label %cleanup

if.end52:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !884
  tail call void @arm_heavy_mb() #13
  %79 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vc, align 4
  %or = or i32 %80, 16777216
  %81 = tail call i32 @llvm.bswap.i32(i32 %or)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %82 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %83, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %81) #13, !srcloc !818
  br label %sw.epilog67

sw.bb57:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @idt77252_init_ubr(ptr noundef %card, ptr noundef %vc, ptr noundef %qos)
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %sw.bb57, %if.end52, %if.end42.sw.epilog67_crit_edge
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 8
  %84 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %vcc, ptr %tx_vcc, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog67, %if.then47, %do.end33, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end19 ], [ -93, %do.end33 ], [ 0, %sw.epilog67 ], [ %call45, %if.then47 ], [ -12, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt77252_init_rx(ptr noundef %card, ptr noundef %vc, ptr noundef %vcc, ptr nocapture noundef readonly %qos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_vcc = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 9
  %3 = ptrtoint ptr %rx_vcc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vcc, ptr %rx_vcc, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags1) #13
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %4 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci, align 8
  %.off = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rcv = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 14
  %lock.i.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %6 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rcv, ptr %rcv, align 4
  %prev.i.i.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rcv, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 14, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i.i, align 4
  %len.i = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 14, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %len.i, align 4
  %aal = getelementptr inbounds %struct.atm_qos, ptr %qos, i32 0, i32 2
  %10 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aal, align 4
  %conv = zext i8 %11 to i32
  %12 = add nsw i32 %conv, -1
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %switch.lookup, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.idt77252_init_rx, i32 0, i32 %13
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end6.sw.epilog_crit_edge
  %rcte.0 = phi i32 [ 753664, %if.end6.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp18.not = icmp eq i8 %11, 5
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %or21 = or i32 %rcte.0, 2097152
  br label %if.end45

if.else:                                          ; preds = %sw.epilog
  %max_sdu = getelementptr inbounds %struct.atm_qos, ptr %qos, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_sdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7936, i32 %17)
  %cmp22 = icmp sgt i32 %17, 7936
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %or25 = or i32 %rcte.0, 6291456
  br label %if.end45

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %17)
  %cmp29 = icmp sgt i32 %17, 3840
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  %or32 = or i32 %rcte.0, 4194304
  br label %if.end45

if.else33:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %17)
  %cmp36 = icmp sgt i32 %17, 1792
  %or39 = or i32 %rcte.0, 2097152
  %spec.select = select i1 %cmp36, i32 %or39, i32 %rcte.0
  br label %if.end45

if.end45:                                         ; preds = %if.else33, %if.then31, %if.then24, %if.then20
  %rcte.1 = phi i32 [ %or21, %if.then20 ], [ %or25, %if.then24 ], [ %or32, %if.then31 ], [ %spec.select, %if.else33 ]
  %rct_base = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 13
  %18 = ptrtoint ptr %rct_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rct_base, align 4
  %20 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vc, align 4
  %shl = shl i32 %21, 2
  %add = add i32 %shl, %19
  %22 = load i32, ptr @debug, align 4
  %and = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end45.do.end52_crit_edge, label %do.end

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name, i32 noundef %add) #16
  br label %do.end52

do.end52:                                         ; preds = %do.end, %if.end45.do.end52_crit_edge
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add, i32 noundef %rcte.1)
  %cmd_lock = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !885
  tail call void @arm_heavy_mb() #13
  %shl67 = shl i32 %add, 2
  %or68 = or i32 %shl67, 537395200
  %23 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #13, !srcloc !818
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %29 = and i32 %28, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not11.i = icmp eq i32 %29, 0
  br i1 %tobool.not11.i, label %do.end52.waitfor_idle.exit_crit_edge, label %do.end52.while.body.i_crit_edge

do.end52.while.body.i_crit_edge:                  ; preds = %do.end52
  br label %while.body.i

do.end52.waitfor_idle.exit_crit_edge:             ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end52.while.body.i_crit_edge
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %31, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %33 = and i32 %32, 131072
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %while.body.i.waitfor_idle.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.waitfor_idle.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %waitfor_idle.exit

waitfor_idle.exit:                                ; preds = %while.body.i.waitfor_idle.exit_crit_edge, %do.end52.waitfor_idle.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call59) #13
  br label %cleanup

cleanup:                                          ; preds = %waitfor_idle.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %waitfor_idle.exit ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_scq(ptr nocapture noundef readonly %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 228) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  %1 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %paddr = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %paddr, i32 noundef 3264, i32 noundef 0) #13
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %next, align 4
  %add.ptr = getelementptr %struct.scqe, ptr %call.i, i32 63
  %last = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %last, align 8
  %used = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used, i32 noundef 4) #13
  %6 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %used, align 4
  %lock = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.107, ptr noundef nonnull @alloc_scq.__key, i16 noundef signext 3) #13
  %skblock = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %skblock, ptr noundef nonnull @.str.109, ptr noundef nonnull @alloc_scq.__key.108, i16 noundef signext 3) #13
  %transmit = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %7 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %transmit, ptr %transmit, align 4
  %prev.i.i = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %transmit, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i, align 4
  %pending = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 10
  %lock.i1 = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i1, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %10 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pending, ptr %pending, align 4
  %prev.i.i2 = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending, ptr %prev.i.i2, align 8
  %qlen.i.i3 = getelementptr inbounds %struct.scq_info, ptr %call7.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %qlen.i.i3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i3, align 4
  %13 = load i32, ptr @debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end4.cleanup_crit_edge, label %do.end17

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end17:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  %18 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %last, align 8
  %20 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr, align 4
  %conv = zext i32 %21 to i64
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %15, ptr noundef %17, ptr noundef %19, i64 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.end17 ], [ %call7.i.i, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_scq(ptr nocapture noundef readonly %card, ptr noundef %scq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scq, align 4
  %paddr = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 3
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %3, i32 noundef %5, i32 noundef 0) #13
  %transmit = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 9
  %call51 = tail call ptr @skb_dequeue(ptr noundef %transmit) #13
  %tobool.not52 = icmp eq ptr %call51, null
  br i1 %tobool.not52, label %entry.while.cond9.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond9.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %if.end.while.cond9.preheader_crit_edge, %entry.while.cond9.preheader_crit_edge
  %pending = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 10
  %call1054 = tail call ptr @skb_dequeue(ptr noundef %pending) #13
  %tobool11.not55 = icmp eq ptr %call1054, null
  br i1 %tobool11.not55, label %while.cond9.preheader.while.end29_crit_edge, label %while.cond9.preheader.while.body12_crit_edge

while.cond9.preheader.while.body12_crit_edge:     ; preds = %while.cond9.preheader
  br label %while.body12

while.cond9.preheader.while.end29_crit_edge:      ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end29

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call53 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call51, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call53, i32 0, i32 3
  %paddr3 = getelementptr %struct.sk_buff, ptr %call53, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %paddr3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %paddr3, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call53, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #13
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pop, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %15(ptr noundef %13, ptr noundef nonnull %call53) #13
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %call53) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %transmit) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.cond9.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.cond9.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond9.preheader

while.body12:                                     ; preds = %if.end28.while.body12_crit_edge, %while.cond9.preheader.while.body12_crit_edge
  %call1056 = phi ptr [ %call10, %if.end28.while.body12_crit_edge ], [ %call1054, %while.cond9.preheader.while.body12_crit_edge ]
  %16 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %cb15 = getelementptr inbounds %struct.sk_buff, ptr %call1056, i32 0, i32 3
  %paddr18 = getelementptr %struct.sk_buff, ptr %call1056, i32 0, i32 3, i32 28
  %18 = ptrtoint ptr %paddr18 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %paddr18, align 1
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %call1056, i32 0, i32 6
  %20 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len19, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev14, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #13
  %22 = ptrtoint ptr %cb15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb15, align 8
  %pop23 = getelementptr inbounds %struct.atm_vcc, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %pop23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pop23, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %25(ptr noundef %23, ptr noundef nonnull %call1056) #13
  br label %if.end28

if.else27:                                        ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %call1056) #13
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then25
  %call10 = tail call ptr @skb_dequeue(ptr noundef %pending) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end28.while.end29_crit_edge, label %if.end28.while.body12_crit_edge

if.end28.while.body12_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body12

if.end28.while.end29_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end29

while.end29:                                      ; preds = %if.end28.while.end29_crit_edge, %while.cond9.preheader.while.end29_crit_edge
  tail call void @kfree(ptr noundef %scq) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt77252_init_cbr(ptr noundef %card, ptr noundef %vc, ptr noundef %qos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %max_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %qos, i32 0, i32 1
  %0 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pcr = getelementptr inbounds %struct.atm_trafprm, ptr %qos, i32 0, i32 2
  %2 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %min_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %qos, i32 0, i32 3
  %4 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %do.end, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tst_free6 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 25
  %6 = ptrtoint ptr %tst_free6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tst_free6, align 4
  %flags = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ntste = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 6
  %10 = ptrtoint ptr %ntste to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntste, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %tst_used.0 = phi i32 [ %11, %if.then8 ], [ 0, %if.end.if.end9_crit_edge ]
  %add = add i32 %tst_used.0, %7
  %call11 = tail call i32 @atm_pcr_goal(ptr noundef %qos) #13
  %12 = tail call i32 @llvm.abs.i32(i32 %call11, i1 false)
  %13 = load i32, ptr @debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end9.do.end25_crit_edge, label %do.end18

if.end9.do.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %name20 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name20, i32 noundef %12) #16
  br label %do.end25

do.end25:                                         ; preds = %do.end18, %if.end9.do.end25_crit_edge
  %tst_size = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 24
  %14 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tst_size, align 4
  %sub26 = add i32 %15, -2
  %mul = mul i32 %sub26, %12
  %utopia_pcr = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 31
  %16 = ptrtoint ptr %utopia_pcr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %utopia_pcr, align 4
  %mul.frozen = freeze i32 %mul
  %.frozen = freeze i32 %17
  %div = udiv i32 %mul.frozen, %.frozen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp28 = icmp sgt i32 %call11, 0
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  %18 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %mul.frozen, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp30.not = icmp ne i32 %rem.decomposed, 0
  %inc = zext i1 %cmp30.not to i32
  %spec.select = add i32 %div, %inc
  br label %if.end47

if.else:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp33 = icmp eq i32 %call11, 0
  br i1 %cmp33, label %if.then34, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp36 = icmp slt i32 %add, 1
  br i1 %cmp36, label %do.end40, label %if.then34.if.end68_crit_edge

if.then34.if.end68_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %name42 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name42) #16
  br label %cleanup

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %if.then29
  %tst_entries.0 = phi i32 [ %div, %if.else.if.end47_crit_edge ], [ %spec.select, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tst_entries.0)
  %cmp48 = icmp eq i32 %tst_entries.0, 0
  br i1 %cmp48, label %do.end52, label %if.end57

do.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %name54 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name54) #16
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %tst_entries.0)
  %cmp59 = icmp slt i32 %add, %tst_entries.0
  br i1 %cmp59, label %do.end63, label %if.end57.if.end68_crit_edge

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %name65 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name65) #16
  br label %cleanup

if.end68:                                         ; preds = %if.end57.if.end68_crit_edge, %if.then34.if.end68_crit_edge
  %tst_entries.01217 = phi i32 [ %tst_entries.0, %if.end57.if.end68_crit_edge ], [ %add, %if.then34.if.end68_crit_edge ]
  %ntste69 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 6
  %19 = ptrtoint ptr %ntste69 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tst_entries.01217, ptr %ntste69, align 4
  %sub70 = sub i32 %add, %tst_entries.01217
  %20 = ptrtoint ptr %tst_free6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub70, ptr %tst_free6, align 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %and1.i1 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1)
  %tobool74.not = icmp eq i32 %and1.i1, 0
  br i1 %tobool74.not, label %do.body95, label %if.then75

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_cmp4(i32 %tst_used.0, i32 %tst_entries.01217)
  %cmp76 = icmp eq i32 %tst_used.0, %tst_entries.01217
  br i1 %cmp76, label %if.then75.cleanup_crit_edge, label %do.body79

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body79:                                        ; preds = %if.then75
  %23 = load i32, ptr @debug, align 4
  %and80 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.end92_crit_edge, label %do.end85

do.body79.do.end92_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  %name87 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name87, i32 noundef %tst_used.0, i32 noundef %tst_entries.01217) #16
  br label %do.end92

do.end92:                                         ; preds = %do.end85, %do.body79.do.end92_crit_edge
  %tst_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 38
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tst_lock.i) #13
  %tst_index.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 36
  %24 = ptrtoint ptr %tst_index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tst_index.i.i, align 4
  %xor.i.i = xor i32 %25, 1
  %arrayidx.i.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 16, i32 %xor.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.not.i.i = icmp eq i32 %29, 2
  br i1 %cmp2.not.i.i, label %do.end92.__clear_tst.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.end92.__clear_tst.exit.i_crit_edge:            ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %__clear_tst.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end92
  %soft_tst.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 35
  %pprev.i.i.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %e.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soft_tst.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.tst_info, ptr %31, i32 %e.03.i.i
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i.i, align 4
  %cmp3.i.i = icmp eq ptr %33, %vc
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %34 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx1.i.i, align 4
  %35 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soft_tst.i.i, align 4
  %tste.i.i = getelementptr %struct.tst_info, ptr %36, i32 %e.03.i.i, i32 1
  %37 = ptrtoint ptr %tste.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1073741824, ptr %tste.i.i, align 4
  %38 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.not.i.i, label %if.else.i.i, label %if.then.i.i.for.inc.sink.split.i.i_crit_edge

if.then.i.i.for.inc.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i = add i32 %e.03.i.i, %27
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add.i.i, i32 noundef 1073741824) #13
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.else.i.i, %if.then.i.i.for.inc.sink.split.i.i_crit_edge
  %.sink5.i.i = phi i32 [ 16777216, %if.else.i.i ], [ 33554432, %if.then.i.i.for.inc.sink.split.i.i_crit_edge ]
  %40 = ptrtoint ptr %soft_tst.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soft_tst.i.i, align 4
  %tste12.i.i = getelementptr %struct.tst_info, ptr %41, i32 %e.03.i.i, i32 1
  %42 = ptrtoint ptr %tste12.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tste12.i.i, align 4
  %or16.i.i = or i32 %43, %.sink5.i.i
  store i32 %or16.i.i, ptr %tste12.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %e.03.i.i, 1
  %44 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tst_size, align 4
  %sub.i.i = add i32 %45, -2
  %cmp.i.i = icmp ult i32 %inc.i.i, %sub.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.__clear_tst.exit.i_crit_edge

for.inc.i.i.__clear_tst.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__clear_tst.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

__clear_tst.exit.i:                               ; preds = %for.inc.i.i.__clear_tst.exit.i_crit_edge, %do.end92.__clear_tst.exit.i_crit_edge
  tail call fastcc void @__fill_tst(ptr noundef %card, ptr noundef %vc, i32 noundef %tst_entries.01217, i32 noundef 536870912) #13
  %tst_state.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 39
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tst_state.i) #13
  %pprev.i.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37, i32 0, i32 1
  %46 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.not.i, label %if.then.i, label %__clear_tst.exit.i.change_tst.exit_crit_edge

__clear_tst.exit.i.change_tst.exit_crit_edge:     ; preds = %__clear_tst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %change_tst.exit

if.then.i:                                        ; preds = %__clear_tst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tst_timer.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %48, 1
  %call9.i = tail call i32 @mod_timer(ptr noundef %tst_timer.i, i32 noundef %add.i) #13
  br label %change_tst.exit

change_tst.exit:                                  ; preds = %if.then.i, %__clear_tst.exit.i.change_tst.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tst_lock.i, i32 noundef %call2.i) #13
  br label %cleanup

do.body95:                                        ; preds = %if.end68
  %49 = load i32, ptr @debug, align 4
  %and96 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body95.do.end108_crit_edge, label %do.end101

do.body95.do.end108_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end108

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  %name103 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name103, i32 noundef %tst_entries.01217) #16
  br label %do.end108

do.end108:                                        ; preds = %do.end101, %do.body95.do.end108_crit_edge
  %tst_lock.i2 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 38
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tst_lock.i2) #13
  tail call fastcc void @__fill_tst(ptr noundef %card, ptr noundef %vc, i32 noundef %tst_entries.01217, i32 noundef 536870912) #13
  %tst_state.i4 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 39
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tst_state.i4) #13
  %pprev.i.i.i5 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37, i32 0, i32 1
  %50 = ptrtoint ptr %pprev.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %pprev.i.i.i5, align 4
  %tobool.not.i.i.not.i6 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.not.i6, label %if.then.i9, label %do.end108.fill_tst.exit_crit_edge

do.end108.fill_tst.exit_crit_edge:                ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %fill_tst.exit

if.then.i9:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #15
  %tst_timer.i7 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.i8 = add i32 %52, 1
  %call8.i = tail call i32 @mod_timer(ptr noundef %tst_timer.i7, i32 noundef %add.i8) #13
  br label %fill_tst.exit

fill_tst.exit:                                    ; preds = %if.then.i9, %do.end108.fill_tst.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tst_lock.i2, i32 noundef %call2.i3) #13
  br label %cleanup

cleanup:                                          ; preds = %fill_tst.exit, %change_tst.exit, %if.then75.cleanup_crit_edge, %do.end63, %do.end52, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end52 ], [ -63, %do.end63 ], [ 0, %change_tst.exit ], [ 0, %fill_tst.exit ], [ -63, %do.end40 ], [ 0, %if.then75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt77252_init_ubr(ptr nocapture noundef readonly %card, ptr noundef %vc, ptr noundef %qos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %estimator = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 12
  %0 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %estimator, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.then9

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %estimator to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %estimator, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  %call10 = tail call i32 @del_timer_sync(ptr noundef nonnull %1) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.thread
  %call12 = tail call i32 @atm_pcr_goal(ptr noundef %qos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %link_pcr = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 32
  %3 = ptrtoint ptr %link_pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_pcr, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %tcr.0 = phi i32 [ %4, %if.then15 ], [ %call12, %if.end11.if.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.idt77252_init_est.exit_crit_edge, label %if.end.i

if.end16.idt77252_init_est.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %idt77252_init_est.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.abs.i32(i32 %tcr.0, i1 false) #13
  %maxcps.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %maxcps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %maxcps.i, align 8
  %cps.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %cps.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %cps.i, align 4
  %shl.i = shl i32 %6, 5
  %avcps.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %avcps.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %avcps.i, align 8
  %vc3.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %vc3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vc, ptr %vc3.i, align 4
  %interval.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %interval.i, align 8
  %ewma_log.i = getelementptr inbounds %struct.rate_estimator, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ewma_log.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %ewma_log.i, align 4
  tail call void @init_timer_key(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @idt77252_est_timer, i32 noundef 0, ptr noundef nonnull @.str.141, ptr noundef nonnull @idt77252_init_est.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interval.i, align 8
  %shl6.i = shl i32 25, %15
  %add.i = add i32 %shl6.i, %13
  %call7.i = tail call i32 @mod_timer(ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i) #13
  br label %idt77252_init_est.exit

idt77252_init_est.exit:                           ; preds = %if.end.i, %if.end16.idt77252_init_est.exit_crit_edge
  %16 = ptrtoint ptr %estimator to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %estimator, align 4
  %class = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 2
  %17 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %class, align 4
  %call19 = tail call fastcc zeroext i8 @idt77252_rate_logindex(i32 noundef %tcr.0)
  %init_er = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 3
  %18 = ptrtoint ptr %init_er to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call19, ptr %init_er, align 4
  %lacr = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 4
  %19 = ptrtoint ptr %lacr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call19, ptr %lacr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcr.0)
  %cmp21 = icmp slt i32 %tcr.0, 0
  %spec.select = select i1 %cmp21, i8 %call19, i8 -1
  %20 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_pcr_goal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_tst(ptr noundef %card, ptr noundef %vc, i32 noundef %n, i32 noundef %opc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tst_lock = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tst_lock) #13
  tail call fastcc void @__fill_tst(ptr noundef %card, ptr noundef %vc, i32 noundef %n, i32 noundef %opc)
  %tst_state = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 39
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tst_state) #13
  %pprev.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tst_timer = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  %call8 = tail call i32 @mod_timer(ptr noundef %tst_timer, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tst_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fill_tst(ptr noundef %card, ptr noundef %vc, i32 noundef %n, i32 noundef %opc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tst_size = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tst_size, align 4
  %sub = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3.not = icmp eq i32 %sub, 0
  br i1 %cmp3.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %soft_tst = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 35
  %2 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_tst, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tst_info, ptr %3, i32 %e.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %do.body6, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %e.04, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name) #16
  br label %cleanup

do.body6:                                         ; preds = %for.body
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6.do.end18_crit_edge, label %do.end10

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end10:                                         ; preds = %do.body6
  %name12 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %tobool14.not = icmp eq ptr %vc, null
  br i1 %tobool14.not, label %do.end10.cond.end_crit_edge, label %cond.true

do.end10.cond.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end10.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end10.cond.end_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name12, i32 noundef %cond, i32 noundef %e.04) #16
  br label %do.end18

do.end18:                                         ; preds = %cond.end, %do.body6.do.end18_crit_edge
  %and19 = and i32 %opc, 1610612736
  %tobool20.not = icmp eq ptr %vc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opc)
  %cmp21.not = icmp eq i32 %opc, 0
  %or.cond = or i1 %tobool20.not, %cmp21.not
  br i1 %or.cond, label %do.end18.if.end24_crit_edge, label %if.then22

do.end18.if.end24_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vc, align 4
  %or = or i32 %10, %opc
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.end18.if.end24_crit_edge
  %data.0 = phi i32 [ %or, %if.then22 ], [ %and19, %do.end18.if.end24_crit_edge ]
  %tst_index = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 36
  %11 = ptrtoint ptr %tst_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tst_index, align 4
  %xor = xor i32 %12, 1
  %arrayidx25 = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 16, i32 %xor
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp265 = icmp sgt i32 %n, 0
  br i1 %cmp265, label %while.body.lr.ph, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end24
  %.vc = select i1 %tobool20.not, ptr inttoptr (i32 -1 to ptr), ptr %vc
  %pprev.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 37, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %while.body.lr.ph
  %cl.010 = phi i32 [ %sub, %while.body.lr.ph ], [ %add65, %if.end60.while.body_crit_edge ]
  %r.09 = phi i32 [ %n, %while.body.lr.ph ], [ %r.1, %if.end60.while.body_crit_edge ]
  %e.16 = phi i32 [ %e.04, %while.body.lr.ph ], [ %spec.store.select, %if.end60.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cl.010, i32 %sub)
  %cmp27.not = icmp ult i32 %cl.010, %sub
  br i1 %cmp27.not, label %while.body.if.end60_crit_edge, label %land.lhs.true28

while.body.if.end60_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

land.lhs.true28:                                  ; preds = %while.body
  %15 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soft_tst, align 4
  %arrayidx30 = getelementptr %struct.tst_info, ptr %16, i32 %e.16
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx30, align 4
  %cmp32 = icmp eq ptr %18, null
  br i1 %cmp32, label %if.then33, label %land.lhs.true28.if.end60_crit_edge

land.lhs.true28.if.end60_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then33:                                        ; preds = %land.lhs.true28
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.vc, ptr %arrayidx30, align 4
  %20 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soft_tst, align 4
  %tste = getelementptr %struct.tst_info, ptr %21, i32 %e.16, i32 1
  %22 = ptrtoint ptr %tste to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %data.0, ptr %tste, align 4
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.not, label %if.else52, label %if.then33.if.end57_crit_edge

if.then33.if.end57_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.else52:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %e.16, %14
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %add, i32 noundef %data.0)
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.then33.if.end57_crit_edge
  %.sink13 = phi i32 [ 16777216, %if.else52 ], [ 33554432, %if.then33.if.end57_crit_edge ]
  %25 = ptrtoint ptr %soft_tst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soft_tst, align 4
  %tste55 = getelementptr %struct.tst_info, ptr %26, i32 %e.16, i32 1
  %27 = ptrtoint ptr %tste55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tste55, align 4
  %or56 = or i32 %28, %.sink13
  store i32 %or56, ptr %tste55, align 4
  %29 = ptrtoint ptr %tst_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tst_size, align 4
  %sub59 = sub i32 %cl.010, %30
  %dec = add nsw i32 %r.09, -1
  br label %if.end60

if.end60:                                         ; preds = %if.end57, %land.lhs.true28.if.end60_crit_edge, %while.body.if.end60_crit_edge
  %r.1 = phi i32 [ %dec, %if.end57 ], [ %r.09, %land.lhs.true28.if.end60_crit_edge ], [ %r.09, %while.body.if.end60_crit_edge ]
  %cl.1 = phi i32 [ %sub59, %if.end57 ], [ %cl.010, %land.lhs.true28.if.end60_crit_edge ], [ %cl.010, %while.body.if.end60_crit_edge ]
  %inc61 = add i32 %e.16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc61, i32 %sub)
  %cmp62 = icmp eq i32 %inc61, %sub
  %spec.store.select = select i1 %cmp62, i32 0, i32 %inc61
  %add65 = add i32 %cl.1, %n
  %cmp26 = icmp sgt i32 %r.1, 0
  br i1 %cmp26, label %if.end60.while.body_crit_edge, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %if.end60.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @idt77252_rate_logindex(i32 noundef %pcr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %pcr, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcr)
  %cmp.i = icmp eq i32 %pcr, 0
  br i1 %cmp.i, label %entry.idt77252_int_to_atmfp.exit_crit_edge, label %if.end.i

entry.idt77252_int_to_atmfp.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %idt77252_int_to_atmfp.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %0)
  %tobool.not.i.i = icmp ult i32 %0, 65536
  %shr.i.i = lshr i32 %0, 16
  %x.addr.0.i.i = select i1 %tobool.not.i.i, i32 %0, i32 %shr.i.i
  %r.0.i.i = select i1 %tobool.not.i.i, i32 1, i32 17
  %and3.i.i = and i32 %x.addr.0.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %shr6.i.i = lshr i32 %x.addr.0.i.i, 8
  %add7.i.i = or i32 %r.0.i.i, 8
  %x.addr.1.i.i = select i1 %tobool4.not.i.i, i32 %x.addr.0.i.i, i32 %shr6.i.i
  %r.1.i.i = select i1 %tobool4.not.i.i, i32 %r.0.i.i, i32 %add7.i.i
  %and9.i.i = and i32 %x.addr.1.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %shr12.i.i = lshr i32 %x.addr.1.i.i, 4
  %add13.i.i = or i32 %r.1.i.i, 4
  %x.addr.2.i.i = select i1 %tobool10.not.i.i, i32 %x.addr.1.i.i, i32 %shr12.i.i
  %r.2.i.i = select i1 %tobool10.not.i.i, i32 %r.1.i.i, i32 %add13.i.i
  %and15.i.i = and i32 %x.addr.2.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %shr18.i.i = lshr i32 %x.addr.2.i.i, 2
  %add19.i.i = or i32 %r.2.i.i, 2
  %x.addr.3.i.i = select i1 %tobool16.not.i.i, i32 %x.addr.2.i.i, i32 %shr18.i.i
  %r.3.i.i = select i1 %tobool16.not.i.i, i32 %r.2.i.i, i32 %add19.i.i
  %and21.i.i = lshr i32 %x.addr.3.i.i, 1
  %and21.lobit.i.i = and i32 %and21.i.i, 1
  %r.4.i.i = add i32 %r.3.i.i, 65535
  %conv.i = add i32 %r.4.i.i, %and21.lobit.i.i
  %conv1.i = and i32 %conv.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv1.i)
  %cmp2.i = icmp ult i32 %conv1.i, 9
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %sub6.i = add i32 %shl.neg.i, %0
  %sub8.i = sub nuw nsw i32 9, %conv1.i
  %shl9.i = shl i32 %sub6.i, %sub8.i
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv1.i)
  %cmp12.i = icmp eq i32 %conv1.i, 9
  br i1 %cmp12.i, label %if.then14.i, label %if.else19.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub17.i = add i32 %0, -512
  br label %if.end27.i

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl21.neg.i = shl nsw i32 -1, %conv1.i
  %sub22.i = add i32 %shl21.neg.i, %0
  %sub24.i = add nsw i32 %conv1.i, -9
  %shr.i = lshr i32 %sub22.i, %sub24.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else19.i, %if.then14.i, %if.then4.i
  %m.0.in.i = phi i32 [ %shl9.i, %if.then4.i ], [ %sub17.i, %if.then14.i ], [ %shr.i, %if.else19.i ]
  %shl29.i = shl nuw nsw i32 %conv1.i, 9
  %or.i = or i32 %m.0.in.i, %shl29.i
  %1 = trunc i32 %or.i to i16
  %conv32.i = lshr i16 %1, 5
  %phi.bo = or i16 %conv32.i, 512
  br label %idt77252_int_to_atmfp.exit

idt77252_int_to_atmfp.exit:                       ; preds = %if.end27.i, %entry.idt77252_int_to_atmfp.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo, %if.end27.i ], [ 0, %entry.idt77252_int_to_atmfp.exit_crit_edge ]
  %pcr.lobit = lshr i32 %pcr, 31
  %2 = trunc i32 %pcr.lobit to i16
  %.not = xor i16 %2, 1
  %and.pn.in.in = add nuw nsw i16 %retval.0.i, %.not
  %and.pn.in = and i16 %and.pn.in.in, 511
  %and.pn = zext i16 %and.pn.in to i32
  %retval.0.in = getelementptr [512 x i8], ptr @rate_to_log, i32 0, i32 %and.pn
  %3 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %retval.0 = load i8, ptr %retval.0.in, align 1
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77252_est_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vc1 = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc1, align 4
  %card2 = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card2, align 4
  %lock = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %estimator = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %estimator, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %cells = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 3
  %6 = ptrtoint ptr %cells to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cells, align 8
  %last_cells = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 4
  %8 = ptrtoint ptr %last_cells to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_cells, align 8
  %sub = sub i64 %7, %9
  %conv8 = trunc i64 %sub to i32
  %interval = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 8
  %sub9 = sub i32 7, %11
  %shl = shl i32 %conv8, %sub9
  store i64 %7, ptr %last_cells, align 8
  %avcps = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 5
  %12 = ptrtoint ptr %avcps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avcps, align 8
  %sub11 = sub i32 %shl, %13
  %ewma_log = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ewma_log, align 4
  %shr = ashr i32 %sub11, %15
  %add = add i32 %shr, %13
  store i32 %add, ptr %avcps, align 8
  %add14 = add i32 %add, 31
  %shr15 = ashr i32 %add14, 5
  %cps16 = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 6
  %16 = ptrtoint ptr %cps16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr15, ptr %cps16, align 4
  %maxcps = getelementptr inbounds %struct.rate_estimator, ptr %t, i32 0, i32 7
  %17 = ptrtoint ptr %maxcps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxcps, align 8
  %shr18 = lshr i32 %18, 4
  %19 = tail call i32 @llvm.umax.i32(i32 %shr15, i32 %shr18)
  %call25 = tail call fastcc zeroext i8 @idt77252_rate_logindex(i32 noundef %19)
  %max_er = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %max_er to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_er, align 2
  %22 = tail call i8 @llvm.umin.i8(i8 %call25, i8 %21)
  %lacr34 = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %lacr34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lacr34, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp36.not = icmp eq i8 %22, %24
  br i1 %cmp36.not, label %if.end.if.end48_crit_edge, label %if.then38

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %lacr34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %lacr34, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !886
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %lacr34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lacr34, align 1
  %conv44 = zext i8 %27 to i32
  %shl45 = shl nuw nsw i32 %conv44, 16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %or = or i32 %29, %shl45
  %or46 = or i32 %or, 33554432
  %30 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %30) #13, !srcloc !818
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %if.end.if.end48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %interval, align 8
  %shl50 = shl i32 25, %35
  %add51 = add i32 %shl50, %33
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %36 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add51, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #13
  br label %out

out:                                              ; preds = %if.end48, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt77252_send_skb(ptr noundef %vcc, ptr noundef %skb, i32 noundef %oam) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data2, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name) #16
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end7, label %if.end14

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name9 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name9) #16
  %stats12 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %11 = ptrtoint ptr %stats12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats12, align 8
  %tx_err13 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %12, i32 0, i32 1
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err13, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err13, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err13, ptr %tx_err13, i32 1, ptr elementtype(i32) %tx_err13) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aal, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.491)
  switch i8 %15, label %do.end17 [
    i8 13, label %if.end14.sw.epilog_crit_edge
    i8 1, label %if.end14.sw.epilog_crit_edge90
    i8 5, label %if.end14.sw.epilog_crit_edge91
  ]

if.end14.sw.epilog_crit_edge91:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end14.sw.epilog_crit_edge90:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %15 to i32
  %name19 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name19, i32 noundef %conv) #16
  %stats25 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %17 = ptrtoint ptr %stats25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats25, align 8
  %tx_err26 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %18, i32 0, i32 1
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err26, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err26, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err26, ptr %tx_err26, i32 1, ptr elementtype(i32) %tx_err26) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end14.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge90, %if.end14.sw.epilog_crit_edge91
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp29.not = icmp eq i8 %23, 0
  br i1 %cmp29.not, label %if.end41, label %do.end34

do.end34:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %name36 = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name36) #16
  %stats39 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %24 = ptrtoint ptr %stats39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats39, align 8
  %tx_err40 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %25, i32 0, i32 1
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err40, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err40, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err40, ptr %tx_err40, i32 1, ptr elementtype(i32) %tx_err40) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

if.end41:                                         ; preds = %sw.epilog
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vcc, ptr %cb, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %do.end.i, label %do.body2.i

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %name.i, i32 noundef 0) #16
  br label %if.then46

do.body2.i:                                       ; preds = %if.end41
  %30 = load i32, ptr @debug, align 4
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i.do.end14.i_crit_edge, label %do.end6.i

do.body2.i.do.end14.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14.i

do.end6.i:                                        ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %name8.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name8.i, i32 noundef %29) #16
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end6.i, %do.body2.i.do.end14.i_crit_edge
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv.i = zext i8 %36 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx21.i = getelementptr i8, ptr %34, i32 1
  %37 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %38 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 16
  %or.i = or i32 %shl23.i, %shl.i
  %arrayidx25.i = getelementptr i8, ptr %34, i32 2
  %39 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %40 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 8
  %or28.i = or i32 %or.i, %shl27.i
  %arrayidx30.i = getelementptr i8, ptr %34, i32 3
  %41 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %42 to i32
  %or33.i = or i32 %or28.i, %conv31.i
  %pcidev.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %call.i.i80 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #13
  br i1 %call.i.i80, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %do.end14.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !863

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %50, %if.end.i.i.i ], [ %48, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %34, i32 noundef %46) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %34 to i32
  %sub.i.i = add i32 %52, 1073741824
  %shr.i207.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %51, i32 %shr.i207.i
  %and.i.i = and i32 %52, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %46, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %paddr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %53 = ptrtoint ptr %paddr.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %retval.0.i.i, ptr %paddr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oam)
  %tobool40.not.i = icmp eq i32 %oam, 0
  br i1 %tobool40.not.i, label %if.end57.i, label %if.then41.i

if.then41.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %55)
  %cmp43.not.i = icmp eq i32 %55, 52
  br i1 %cmp43.not.i, label %if.end46.i, label %if.then41.i.errout.i_crit_edge

if.then41.i.errout.i_crit_edge:                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout.i

if.end46.i:                                       ; preds = %if.then41.i
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1342177328, ptr %add.ptr.i, align 4
  %add.i = add i32 %retval.0.i.i, 4
  %word_2.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %57 = ptrtoint ptr %word_2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %word_2.i, align 4
  %word_3.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %58 = ptrtoint ptr %word_3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %word_3.i, align 4
  %word_4.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %59 = ptrtoint ptr %word_4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or33.i, ptr %word_4.i, align 4
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags, align 4
  %62 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool53.not.i = icmp eq i32 %62, 0
  br i1 %tobool53.not.i, label %if.end46.i.do.body116.i_crit_edge, label %if.then54.i

if.end46.i.do.body116.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body116.i

if.then54.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  %vcs.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 33
  %63 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vcs.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  br label %do.body116.i

if.end57.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags, align 4
  %69 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool60.not.i = icmp eq i32 %69, 0
  br i1 %tobool60.not.i, label %if.end69.i, label %if.end57.i.errout.sink.split.i_crit_edge

if.end57.i.errout.sink.split.i_crit_edge:         ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout.sink.split.i

if.end69.i:                                       ; preds = %if.end57.i
  %aal70.i = getelementptr inbounds %struct.atm_vcc, ptr %32, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %aal70.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %aal70.i, align 8
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.492)
  switch i8 %71, label %if.end69.i.errout.sink.split.i_crit_edge [
    i8 13, label %if.end69.i.sw.bb.i_crit_edge
    i8 3, label %if.end69.i.sw.bb.i_crit_edge92
    i8 5, label %sw.bb91.i
  ]

if.end69.i.sw.bb.i_crit_edge92:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end69.i.sw.bb.i_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end69.i.errout.sink.split.i_crit_edge:         ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout.sink.split.i

sw.bb.i:                                          ; preds = %if.end69.i.sw.bb.i_crit_edge, %if.end69.i.sw.bb.i_crit_edge92
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %74)
  %cmp73.i = icmp ugt i32 %74, 52
  br i1 %cmp73.i, label %sw.bb.i.errout.i_crit_edge, label %if.end76.i

sw.bb.i.errout.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout.i

if.end76.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %71)
  %cmp77.i = icmp eq i8 %71, 13
  %..i = select i1 %cmp77.i, i32 1073741872, i32 1140850736
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %..i, ptr %add.ptr.i, align 4
  %add87.i = add i32 %retval.0.i.i, 4
  %word_288.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %76 = ptrtoint ptr %word_288.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add87.i, ptr %word_288.i, align 4
  %word_389.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %77 = ptrtoint ptr %word_389.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %word_389.i, align 4
  %word_490.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %78 = ptrtoint ptr %word_490.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or33.i, ptr %word_490.i, align 4
  br label %do.body116.i

sw.bb91.i:                                        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  %or93.i = or i32 %80, 1207959552
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or93.i, ptr %add.ptr.i, align 4
  %word_299.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %82 = ptrtoint ptr %word_299.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i, ptr %word_299.i, align 4
  %word_3101.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %83 = ptrtoint ptr %word_3101.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %word_3101.i, align 4
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %32, i32 0, i32 2
  %84 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vpi.i, align 4
  %conv102204.i = zext i16 %85 to i32
  %shl103.i = shl i32 %conv102204.i, 20
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %32, i32 0, i32 3
  %86 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vci.i, align 8
  %shl104.i = shl i32 %87, 4
  %or105.i = or i32 %shl103.i, %shl104.i
  %word_4106.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %word_4106.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or105.i, ptr %word_4106.i, align 4
  br label %do.body116.i

do.body116.i:                                     ; preds = %sw.bb91.i, %if.end76.i, %if.then54.i, %if.end46.i.do.body116.i_crit_edge
  %vc.addr.0.i = phi ptr [ %66, %if.then54.i ], [ %5, %if.end46.i.do.body116.i_crit_edge ], [ %5, %sw.bb91.i ], [ %5, %if.end76.i ]
  %scq.i = getelementptr inbounds %struct.vc_map, ptr %vc.addr.0.i, i32 0, i32 11
  %89 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scq.i, align 4
  %skblock.i = getelementptr inbounds %struct.scq_info, ptr %90, i32 0, i32 8
  %call121.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %skblock.i) #13
  %91 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %scq.i, align 4
  %pending.i = getelementptr inbounds %struct.scq_info, ptr %92, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %pending.i, ptr noundef %skb) #13
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body116.i
  %93 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %scq.i, align 4
  %pending128.i = getelementptr inbounds %struct.scq_info, ptr %94, i32 0, i32 10
  %call129.i = tail call ptr @skb_dequeue(ptr noundef %pending128.i) #13
  %tobool130.not.i = icmp eq ptr %call129.i, null
  br i1 %tobool130.not.i, label %while.cond.i.queue_skb.exit_crit_edge, label %while.body.i

while.cond.i.queue_skb.exit_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %queue_skb.exit

while.body.i:                                     ; preds = %while.cond.i
  %call131.i = tail call fastcc i32 @push_on_scq(ptr noundef %3, ptr noundef %vc.addr.0.i, ptr noundef nonnull %call129.i) #13
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.then133.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.then133.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %scq.i, align 4
  %pending135.i = getelementptr inbounds %struct.scq_info, ptr %96, i32 0, i32 10
  tail call void @skb_queue_head(ptr noundef %pending135.i, ptr noundef nonnull %call129.i) #13
  br label %queue_skb.exit

errout.sink.split.i:                              ; preds = %if.end69.i.errout.sink.split.i_crit_edge, %if.end57.i.errout.sink.split.i_crit_edge
  %.str.170.sink.i = phi ptr [ @.str.167, %if.end57.i.errout.sink.split.i_crit_edge ], [ @.str.170, %if.end69.i.errout.sink.split.i_crit_edge ]
  %error.0.ph.i = phi i32 [ -22, %if.end57.i.errout.sink.split.i_crit_edge ], [ -93, %if.end69.i.errout.sink.split.i_crit_edge ]
  %name112.i = getelementptr inbounds %struct.idt77252_dev, ptr %3, i32 0, i32 46
  %call114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.170.sink.i, ptr noundef %name112.i) #16
  br label %errout.i

errout.i:                                         ; preds = %errout.sink.split.i, %sw.bb.i.errout.i_crit_edge, %if.then41.i.errout.i_crit_edge
  %error.0.i = phi i32 [ -22, %if.then41.i.errout.i_crit_edge ], [ -22, %sw.bb.i.errout.i_crit_edge ], [ %error.0.ph.i, %errout.sink.split.i ]
  %97 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcidev.i, align 4
  %dev140.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %paddr.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %paddr.i, align 1
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev140.i, i32 noundef %100, i32 noundef %102, i32 noundef 1, i32 noundef 0) #13
  br label %if.then46

queue_skb.exit:                                   ; preds = %if.then133.i, %while.cond.i.queue_skb.exit_crit_edge
  %103 = ptrtoint ptr %scq.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scq.i, align 4
  %skblock138.i = getelementptr inbounds %struct.scq_info, ptr %104, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %skblock138.i, i32 noundef %call121.i) #13
  br label %cleanup

if.then46:                                        ; preds = %errout.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %error.0.i, %errout.i ], [ -22, %do.end.i ]
  %stats47 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %105 = ptrtoint ptr %stats47 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %stats47, align 8
  %tx_err48 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %106, i32 0, i32 1
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err48, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_err48, i32 1, i32 3, i32 1) #13
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err48, ptr %tx_err48, i32 1, ptr elementtype(i32) %tx_err48) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %queue_skb.exit, %do.end34, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ -22, %do.end34 ], [ %retval.0.i.ph, %if.then46 ], [ -22, %do.end7 ], [ 0, %queue_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_on_scq(ptr noundef %card, ptr noundef %vc, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scq1 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 11
  %0 = ptrtoint ptr %scq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scq1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %next = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name, ptr noundef %4) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %used = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %used, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %used, ptr %used, i32 1, ptr elementtype(i32) %used) #13, !srcloc !874
  %call.i.i221 = tail call zeroext i1 @__kasan_check_read(ptr noundef %used, i32 noundef 4) #13
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %7)
  %cmp = icmp sgt i32 %7, 63
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end4
  %call.i.i222 = tail call zeroext i1 @__kasan_check_write(ptr noundef %used, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %used, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %used, ptr %used, i32 1, ptr elementtype(i32) %used) #13, !srcloc !887
  %trans_start140 = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %trans_start140 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trans_start140, align 4
  %add141 = add i32 %10, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub142 = sub i32 %add141, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub142)
  %cmp143 = icmp slt i32 %sub142, 0
  br i1 %cmp143, label %do.end148, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %transmit = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 9
  tail call void @skb_queue_tail(ptr noundef %transmit, ptr noundef %skb) #13
  %lock = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 7
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %estimator = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 12
  %12 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %estimator, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end9.if.end50_crit_edge, label %if.then21

if.end9.if.end50_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then21:                                        ; preds = %if.end9
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 8
  %14 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_vcc, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add = add i32 %17, 47
  %div = udiv i32 %add, 48
  %conv23 = zext i32 %div to i64
  %cells = getelementptr inbounds %struct.rate_estimator, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %cells to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cells, align 8
  %add25 = add i64 %19, %conv23
  store i64 %add25, ptr %cells, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #13
  %20 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 21
  %22 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_sndbuf, align 4
  %shr = ashr i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shr)
  %cmp27 = icmp ugt i32 %21, %shr
  br i1 %cmp27, label %if.then29, label %if.then21.if.end50_crit_edge

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then29:                                        ; preds = %if.then21
  %24 = ptrtoint ptr %estimator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %estimator, align 4
  %maxcps = getelementptr inbounds %struct.rate_estimator, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %maxcps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxcps, align 8
  %cps32 = getelementptr inbounds %struct.rate_estimator, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %cps32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cps32, align 4
  %shl = shl i32 %27, 5
  %29 = load ptr, ptr %estimator, align 4
  %avcps = getelementptr inbounds %struct.rate_estimator, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %avcps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %avcps, align 8
  %lacr = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 4
  %31 = ptrtoint ptr %lacr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lacr, align 1
  %init_er = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 3
  %33 = ptrtoint ptr %init_er to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %init_er, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp36 = icmp ult i8 %32, %34
  br i1 %cmp36, label %if.then38, label %if.then29.if.end50_crit_edge

if.then29.if.end50_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then38:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %lacr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %lacr, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !888
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %lacr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %lacr, align 1
  %conv45 = zext i8 %37 to i32
  %shl46 = shl nuw nsw i32 %conv45, 16
  %38 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc, align 4
  %or = or i32 %39, %shl46
  %or47 = or i32 %or, 33554432
  %40 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %40) #13, !srcloc !818
  br label %if.end50

if.end50:                                         ; preds = %if.then38, %if.then29.if.end50_crit_edge, %if.then21.if.end50_crit_edge, %if.end9.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #13
  %add.ptr53 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %lock62 = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 4
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock62) #13
  %43 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr53, align 4
  %or70 = or i32 %44, 570425344
  %45 = tail call i32 @llvm.bswap.i32(i32 %or70)
  %next71 = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %next71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next71, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %47, align 4
  %word_2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %49 = ptrtoint ptr %word_2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %word_2, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %next71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %next71, align 4
  %word_274 = getelementptr inbounds %struct.scqe, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %word_274 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %word_274, align 4
  %word_3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %55 = ptrtoint ptr %word_3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %word_3, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %next71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %next71, align 4
  %word_376 = getelementptr inbounds %struct.scqe, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %word_376 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %word_376, align 4
  %word_4 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %61 = ptrtoint ptr %word_4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %word_4, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %next71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %next71, align 4
  %word_478 = getelementptr inbounds %struct.scqe, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %word_478 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %word_478, align 4
  %67 = load ptr, ptr %next71, align 4
  %last = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %last, align 4
  %cmp80 = icmp eq ptr %67, %69
  br i1 %cmp80, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  br label %if.end85

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr %struct.scqe, ptr %67, i32 1
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then82
  %storemerge = phi ptr [ %incdec.ptr, %if.else ], [ %71, %if.then82 ]
  %72 = ptrtoint ptr %next71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %storemerge, ptr %next71, align 4
  %scd = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %scd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scd, align 4
  %paddr = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %paddr, align 4
  %77 = ptrtoint ptr %storemerge to i32
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  %sub = add i32 %76, %77
  %add88 = sub i32 %sub, %80
  tail call fastcc void @write_sram(ptr noundef %card, i32 noundef %74, i32 noundef %add88)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock62, i32 noundef %call64) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %trans_start = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %trans_start to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %trans_start, align 4
  %flags90 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 1
  %call91 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags90) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end85.do.body106_crit_edge, label %do.body94

if.end85.do.body106_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body106

do.body94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !889
  tail call void @arm_heavy_mb() #13
  %lacr97 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 4
  %83 = ptrtoint ptr %lacr97 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %lacr97, align 1
  %conv98 = zext i8 %84 to i32
  %shl99 = shl nuw nsw i32 %conv98, 16
  %85 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vc, align 4
  %or100 = or i32 %86, %shl99
  %or102 = or i32 %or100, 50331648
  %87 = tail call i32 @llvm.bswap.i32(i32 %or102)
  %membase103 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %88 = ptrtoint ptr %membase103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase103, align 4
  %add.ptr104 = getelementptr i8, ptr %89, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %87) #13, !srcloc !818
  br label %do.body106

do.body106:                                       ; preds = %do.body94, %if.end85.do.body106_crit_edge
  %90 = load i32, ptr @debug, align 4
  %and107 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.body120_crit_edge, label %do.end112

do.body106.do.body120_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body120

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i223 = tail call zeroext i1 @__kasan_check_read(ptr noundef %used, i32 noundef 4) #13
  %91 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %used, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %92) #16
  br label %do.body120

do.body120:                                       ; preds = %do.end112, %do.body106.do.body120_crit_edge
  %93 = load i32, ptr @debug, align 4
  %and121 = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %do.body120.cleanup_crit_edge, label %do.end126

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end126:                                        ; preds = %do.body120
  %name128 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call.i.i224 = tail call zeroext i1 @__kasan_check_read(ptr noundef %used, i32 noundef 4) #13
  %94 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %used, align 4
  %96 = ptrtoint ptr %scd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scd, align 4
  %cmd_lock.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !882
  tail call void @arm_heavy_mb() #13
  %add133 = shl i32 %97, 2
  %shl.i = add i32 %add133, 4
  %or.i = or i32 %shl.i, 1342177280
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %99 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %100, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %98) #13, !srcloc !818
  %101 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %102, i32 24
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %104 = and i32 %103, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not11.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not11.i.i, label %do.end126.read_sram.exit_crit_edge, label %do.end126.while.body.i.i_crit_edge

do.end126.while.body.i.i_crit_edge:               ; preds = %do.end126
  br label %while.body.i.i

do.end126.read_sram.exit_crit_edge:               ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end126.while.body.i.i_crit_edge
  %105 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %106, i32 24
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %108 = and i32 %107, 131072
  %tobool.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.read_sram.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.read_sram.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit

read_sram.exit:                                   ; preds = %while.body.i.i.read_sram.exit_crit_edge, %do.end126.read_sram.exit_crit_edge
  %109 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i, align 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #13, !srcloc !822
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !883
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #13
  %113 = ptrtoint ptr %next71 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next71, align 4
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name128, i32 noundef %95, i32 noundef %112, ptr noundef %114) #16
  br label %cleanup

do.end148:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %name150 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %tx_vcc152 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 8
  %115 = ptrtoint ptr %tx_vcc152 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_vcc152, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %vpi, align 4
  %conv153 = sext i16 %118 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %116, i32 0, i32 3
  %119 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vci, align 8
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %name150, i32 noundef %conv153, i32 noundef %120) #16
  tail call fastcc void @idt77252_tx_dump(ptr noundef %card)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %122 = ptrtoint ptr %trans_start140 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %trans_start140, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end148, %read_sram.exit, %do.body120.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %read_sram.exit ], [ 0, %do.body120.cleanup_crit_edge ], [ -105, %do.end148 ], [ -105, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt77252_tx_dump(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #16
  %tct_size = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 21
  %0 = ptrtoint ptr %tct_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tct_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vcs = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %tct_base.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 12
  %cmd_lock.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 8
  %membase.i.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %vcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rx_vcc = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %rx_vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_vcc, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end8, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

if.end8:                                          ; preds = %if.end
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_vcc, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.for.inc_crit_edge, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end14:                                         ; preds = %if.end8.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name, i32 noundef %11) #16
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %14 = ptrtoint ptr %tct_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tct_base.i, align 4
  %mul.i = shl i32 %13, 3
  %add.i = add i32 %15, %mul.i
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name, i32 noundef %13) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %read_sram.exit.i.do.end3.i_crit_edge, %do.end14
  %i.018.i = phi i32 [ 0, %do.end14 ], [ %inc.i, %read_sram.exit.i.do.end3.i_crit_edge ]
  %add5.i = add i32 %add.i, %i.018.i
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !882
  tail call void @arm_heavy_mb() #13
  %shl.i.i = shl i32 %add5.i, 2
  %or.i.i = or i32 %shl.i.i, 1342177280
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #13, !srcloc !818
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %22 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not11.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not11.i.i.i, label %do.end3.i.read_sram.exit.i_crit_edge, label %do.end3.i.while.body.i.i.i_crit_edge

do.end3.i.while.body.i.i.i_crit_edge:             ; preds = %do.end3.i
  br label %while.body.i.i.i

do.end3.i.read_sram.exit.i_crit_edge:             ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %do.end3.i.while.body.i.i.i_crit_edge
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  %26 = and i32 %25, 131072
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.read_sram.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

while.body.i.i.i.read_sram.exit.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_sram.exit.i

read_sram.exit.i:                                 ; preds = %while.body.i.i.i.read_sram.exit.i_crit_edge, %do.end3.i.read_sram.exit.i_crit_edge
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !822
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !883
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i.i, i32 noundef %call2.i.i) #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %30) #16
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %dump_tct.exit, label %read_sram.exit.i.do.end3.i_crit_edge

read_sram.exit.i.do.end3.i_crit_edge:             ; preds = %read_sram.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

dump_tct.exit:                                    ; preds = %read_sram.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194) #16
  br label %for.inc

for.inc:                                          ; preds = %dump_tct.exit, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.034, 1
  %31 = ptrtoint ptr %tct_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tct_size, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77252_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !890
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 10
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef %name) #16
  br label %out

do.body8:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !891
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #13, !srcloc !818
  %and13 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body8.if.end30_crit_edge, label %do.body16

do.body8.if.end30_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

do.body16:                                        ; preds = %do.body8
  %7 = load i32, ptr @debug, align 4
  %and17 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end29_crit_edge, label %do.end22

do.body16.do.end29_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %name24 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, ptr noundef %name24) #16
  br label %do.end29

do.end29:                                         ; preds = %do.end22, %do.body16.do.end29_crit_edge
  %arrayidx = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx, align 4
  tail call fastcc void @idt77252_tx(ptr noundef %dev_id)
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.body8.if.end30_crit_edge
  %and31 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end51_crit_edge, label %do.body34

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.body34:                                        ; preds = %if.end30
  %10 = load i32, ptr @debug, align 4
  %and35 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end47_crit_edge, label %do.end40

do.body34.do.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end47

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  %name42 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef %name42) #16
  br label %do.end47

do.end47:                                         ; preds = %do.end40, %do.body34.do.end47_crit_edge
  %arrayidx49 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 14
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx49, align 4
  %inc50 = add i32 %12, 1
  store i32 %inc50, ptr %arrayidx49, align 4
  tail call fastcc void @idt77252_tx_dump(ptr noundef %dev_id)
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %if.end30.if.end51_crit_edge
  %and52 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end72_crit_edge, label %do.body55

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.body55:                                        ; preds = %if.end51
  %13 = load i32, ptr @debug, align 4
  %and56 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.end68_crit_edge, label %do.end61

do.body55.do.end68_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %name63 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef %name63) #16
  br label %do.end68

do.end68:                                         ; preds = %do.end61, %do.body55.do.end68_crit_edge
  %arrayidx70 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 12
  %14 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx70, align 4
  %inc71 = add i32 %15, 1
  store i32 %inc71, ptr %arrayidx70, align 4
  tail call fastcc void @idt77252_tx(ptr noundef %dev_id)
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %if.end51.if.end72_crit_edge
  %and73 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end93_crit_edge, label %do.body76

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

do.body76:                                        ; preds = %if.end72
  %16 = load i32, ptr @debug, align 4
  %and77 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.do.end89_crit_edge, label %do.end82

do.body76.do.end89_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  %name84 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, ptr noundef %name84) #16
  br label %do.end89

do.end89:                                         ; preds = %do.end82, %do.body76.do.end89_crit_edge
  %arrayidx91 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 11
  %17 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx91, align 4
  %inc92 = add i32 %18, 1
  store i32 %inc92, ptr %arrayidx91, align 4
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !892
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !893
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !894
  br label %if.end93

if.end93:                                         ; preds = %do.end89, %if.end72.if.end93_crit_edge
  %and94 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end114_crit_edge, label %do.body97

if.end93.if.end114_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

do.body97:                                        ; preds = %if.end93
  %28 = load i32, ptr @debug, align 4
  %and98 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end110_crit_edge, label %do.end103

do.body97.do.end110_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #15
  %name105 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, ptr noundef %name105) #16
  br label %do.end110

do.end110:                                        ; preds = %do.end103, %do.body97.do.end110_crit_edge
  %arrayidx112 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 5
  %29 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx112, align 4
  %inc113 = add i32 %30, 1
  store i32 %inc113, ptr %arrayidx112, align 4
  tail call fastcc void @idt77252_rx(ptr noundef %dev_id)
  br label %if.end114

if.end114:                                        ; preds = %do.end110, %if.end93.if.end114_crit_edge
  %and115 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end135_crit_edge, label %do.body118

if.end114.if.end135_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

do.body118:                                       ; preds = %if.end114
  %31 = load i32, ptr @debug, align 4
  %and119 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %do.body118.do.end131_crit_edge, label %do.end124

do.body118.do.end131_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end131

do.end124:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  %name126 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316, ptr noundef %name126) #16
  br label %do.end131

do.end131:                                        ; preds = %do.end124, %do.body118.do.end131_crit_edge
  %arrayidx133 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx133, align 4
  %inc134 = add i32 %33, 1
  store i32 %inc134, ptr %arrayidx133, align 4
  tail call fastcc void @idt77252_rx(ptr noundef %dev_id)
  br label %if.end135

if.end135:                                        ; preds = %do.end131, %if.end114.if.end135_crit_edge
  %and136 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end156_crit_edge, label %do.body139

if.end135.if.end156_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

do.body139:                                       ; preds = %if.end135
  %34 = load i32, ptr @debug, align 4
  %and140 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.do.end152_crit_edge, label %do.end145

do.body139.do.end152_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end152

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  %name147 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef %name147) #16
  br label %do.end152

do.end152:                                        ; preds = %do.end145, %do.body139.do.end152_crit_edge
  %arrayidx154 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 6
  %35 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx154, align 4
  %inc155 = add i32 %36, 1
  store i32 %inc155, ptr %arrayidx154, align 4
  tail call fastcc void @idt77252_rx(ptr noundef %dev_id)
  br label %if.end156

if.end156:                                        ; preds = %do.end152, %if.end135.if.end156_crit_edge
  %and157 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.if.end177_crit_edge, label %do.body160

if.end156.if.end177_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

do.body160:                                       ; preds = %if.end156
  %37 = load i32, ptr @debug, align 4
  %and161 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body160.do.end173_crit_edge, label %do.end166

do.body160.do.end173_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end173

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #15
  %name168 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef %name168) #16
  br label %do.end173

do.end173:                                        ; preds = %do.end166, %do.body160.do.end173_crit_edge
  %arrayidx175 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 4
  %38 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx175, align 4
  %inc176 = add i32 %39, 1
  store i32 %inc176, ptr %arrayidx175, align 4
  %raw_cell_head.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 41
  %40 = ptrtoint ptr %raw_cell_head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %raw_cell_head.i, align 4
  %cmp.i = icmp eq ptr %41, null
  br i1 %cmp.i, label %if.then.i, label %do.end173.if.end4.i_crit_edge

do.end173.if.end4.i_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then.i:                                        ; preds = %do.end173
  %raw_cell_hnd.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 42
  %42 = ptrtoint ptr %raw_cell_hnd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %raw_cell_hnd.i, align 4
  %add.ptr.i330 = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %add.ptr.i330 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i330, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %shr.i295.i = lshr i32 %46, 16
  %sub.i.i = add nsw i32 %shr.i295.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.if.end.thread310.i_crit_edge, label %if.end.i.i

if.then.i.if.end.thread310.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread310.i

if.end.i.i:                                       ; preds = %if.then.i
  %and.i.i = and i32 %46, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i.i)
  %cmp1.i.i = icmp ugt i32 %and.i.i, 511
  br i1 %cmp1.i.i, label %if.end.i.i.if.end.thread310.i_crit_edge, label %if.end.i

if.end.i.i.if.end.thread310.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread310.i

if.end.thread310.i:                               ; preds = %if.end.i.i.if.end.thread310.i_crit_edge, %if.then.i.if.end.thread310.i_crit_edge
  %47 = ptrtoint ptr %raw_cell_head.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %raw_cell_head.i, align 4
  br label %if.end177

if.end.i:                                         ; preds = %if.end.i.i
  %arrayidx4.i.i = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 40, i32 %sub.i.i, i32 1, i32 %and.i.i
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx4.i.i, align 4
  %50 = ptrtoint ptr %raw_cell_head.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %raw_cell_head.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end.i.if.end177_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.end.i.if.end177_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %do.end173.if.end4.i_crit_edge
  %51 = phi ptr [ %49, %if.end.i.if.end4.i_crit_edge ], [ %41, %do.end173.if.end4.i_crit_edge ]
  %paddr.i = getelementptr %struct.sk_buff, ptr %51, i32 0, i32 3, i32 28
  %52 = ptrtoint ptr %paddr.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %paddr.i, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %head6.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 18
  %56 = ptrtoint ptr %head6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head6.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = add i32 %53, -16
  %sub.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %add.i = sub i32 %sub.i, %sub.ptr.rhs.cast.i
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr7.i = getelementptr i8, ptr %59, i32 52
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #13, !srcloc !822
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !895
  %pcidev.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 2
  %62 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %paddr.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %paddr.i, align 1
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %66 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i.i, align 4
  %68 = ptrtoint ptr %head6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head6.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, -16
  %sub15.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %65, i32 noundef %sub15.i, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %61)
  %cmp16.not327.i = icmp eq i32 %add.i, %61
  br i1 %cmp16.not327.i, label %if.end4.i.if.end177_crit_edge, label %while.body.lr.ph.i

if.end4.i.if.end177_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

while.body.lr.ph.i:                               ; preds = %if.end4.i
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %vpibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 28
  %vcibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 29
  %vcs.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 33
  %vcimask.i = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 30
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup201.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %queue.0328.i = phi ptr [ %51, %while.body.lr.ph.i ], [ %queue.3.i, %cleanup201.i.while.body.i_crit_edge ]
  %data17.i = getelementptr inbounds %struct.sk_buff, ptr %queue.0328.i, i32 0, i32 19
  %70 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data17.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #13
  %and.i = lshr i32 %74, 20
  %shr.i = and i32 %and.i, 255
  %and18.i = lshr i32 %74, 4
  %shr19.i = and i32 %and18.i, 65535
  %75 = load i32, ptr @debug, align 4
  %and20.i = and i32 %75, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %while.body.i.if.end49.i_crit_edge, label %if.then22.i

while.body.i.if.end49.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then22.i:                                      ; preds = %while.body.i
  %shr25.i = lshr i32 %74, 28
  %shr31.i = lshr i32 %74, 1
  %and32.i = and i32 %shr31.i, 7
  %and34.i = and i32 %74, 1
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.404, ptr noundef %name.i, i32 noundef %shr25.i, i32 noundef %shr.i, i32 noundef %shr19.i, i32 noundef %and32.i, i32 noundef %and34.i) #16
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end39.i.do.end39.i_crit_edge, %if.then22.i
  %i.0326.i = phi i32 [ 16, %if.then22.i ], [ %inc.i, %do.end39.i.do.end39.i_crit_edge ]
  %76 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data17.i, align 4
  %arrayidx42.i = getelementptr i8, ptr %77, i32 %i.0326.i
  %78 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx42.i, align 1
  %conv.i = zext i8 %79 to i32
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.407, i32 noundef %conv.i) #16
  %inc.i = add nuw nsw i32 %i.0326.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %do.end46.i, label %do.end39.i.do.end39.i_crit_edge

do.end39.i.do.end39.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39.i

do.end46.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194) #16
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end46.i, %while.body.i.if.end49.i_crit_edge
  %80 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vpibits.i, align 4
  %shr.highbits.i = lshr i32 %shr.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits.i)
  %cmp50.not.i = icmp eq i32 %shr.highbits.i, 0
  br i1 %cmp50.not.i, label %lor.lhs.false.i, label %if.end49.i.do.body56.i_crit_edge

if.end49.i.do.body56.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %82 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vcibits.i, align 4
  %shr19.highbits.i = lshr i32 %shr19.i, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr19.highbits.i)
  %cmp53.not.i = icmp eq i32 %shr19.highbits.i, 0
  br i1 %cmp53.not.i, label %if.end70.i, label %lor.lhs.false.i.do.body56.i_crit_edge

lor.lhs.false.i.do.body56.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56.i

do.body56.i:                                      ; preds = %lor.lhs.false.i.do.body56.i_crit_edge, %if.end49.i.do.body56.i_crit_edge
  %84 = load i32, ptr @debug, align 4
  %and57.i = and i32 %84, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.drop.i_crit_edge, label %do.end62.i

do.body56.i.drop.i_crit_edge:                     ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #15
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef %name.i, i32 noundef %shr.i, i32 noundef %shr19.i) #16
  br label %drop.i

if.end70.i:                                       ; preds = %lor.lhs.false.i
  %85 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vcs.i, align 4
  %shl72.i = shl i32 %shr.i, %83
  %87 = ptrtoint ptr %vcimask.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vcimask.i, align 4
  %and73.i = and i32 %88, %shr19.i
  %or.i = or i32 %and73.i, %shl72.i
  %arrayidx74.i = getelementptr ptr, ptr %86, i32 %or.i
  %89 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx74.i, align 4
  %tobool75.not.i = icmp eq ptr %90, null
  br i1 %tobool75.not.i, label %if.end70.i.do.body80.i_crit_edge, label %lor.lhs.false76.i

if.end70.i.do.body80.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80.i

lor.lhs.false76.i:                                ; preds = %if.end70.i
  %flags.i = getelementptr inbounds %struct.vc_map, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool78.not.i = icmp eq i32 %93, 0
  br i1 %tobool78.not.i, label %lor.lhs.false76.i.do.body80.i_crit_edge, label %if.end94.i

lor.lhs.false76.i.do.body80.i_crit_edge:          ; preds = %lor.lhs.false76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80.i

do.body80.i:                                      ; preds = %lor.lhs.false76.i.do.body80.i_crit_edge, %if.end70.i.do.body80.i_crit_edge
  %94 = load i32, ptr @debug, align 4
  %and81.i = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %do.body80.i.drop.i_crit_edge, label %do.end86.i

do.body80.i.drop.i_crit_edge:                     ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

do.end86.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #15
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.381, ptr noundef %name.i, i32 noundef %shr.i, i32 noundef %shr19.i) #16
  br label %drop.i

if.end94.i:                                       ; preds = %lor.lhs.false76.i
  %rx_vcc.i = getelementptr inbounds %struct.vc_map, ptr %90, i32 0, i32 9
  %95 = ptrtoint ptr %rx_vcc.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_vcc.i, align 4
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %96, i32 0, i32 7, i32 2
  %97 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %aal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %98)
  %cmp96.not.i = icmp eq i8 %98, 13
  br i1 %cmp96.not.i, label %if.end113.i, label %do.body99.i

do.body99.i:                                      ; preds = %if.end94.i
  %99 = load i32, ptr @debug, align 4
  %and100.i = and i32 %99, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %do.body99.i.do.end112.i_crit_edge, label %do.end105.i

do.body99.i.do.end112.i_crit_edge:                ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112.i

do.end105.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #15
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, ptr noundef %name.i, i32 noundef %shr.i, i32 noundef %shr19.i) #16
  br label %do.end112.i

do.end112.i:                                      ; preds = %do.end105.i, %do.body99.i.do.end112.i_crit_edge
  %stats.i = getelementptr inbounds %struct.atm_vcc, ptr %96, i32 0, i32 16
  %100 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stats.i, align 8
  %rx_drop.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %101, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_drop.i, i32 1, i32 3, i32 1) #13
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i, ptr %rx_drop.i, i32 1, ptr elementtype(i32) %rx_drop.i) #13, !srcloc !874
  br label %drop.i

if.end113.i:                                      ; preds = %if.end94.i
  %call.i.i296.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 64, i32 noundef 2592) #13
  %cmp115.i = icmp eq ptr %call.i.i296.i, null
  br i1 %cmp115.i, label %do.end120.i, label %if.end126.i

do.end120.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %call124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.419, ptr noundef %name.i) #16
  %stats125.i = getelementptr inbounds %struct.atm_vcc, ptr %96, i32 0, i32 16
  %103 = ptrtoint ptr %stats125.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %stats125.i, align 8
  %rx_err.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %104, i32 0, i32 3
  %call.i.i293.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #13
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 1, ptr elementtype(i32) %rx_err.i) #13, !srcloc !874
  br label %drop.i

if.end126.i:                                      ; preds = %if.end113.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i296.i, i32 0, i32 20
  %106 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %truesize.i, align 8
  %call127.i = tail call i32 @atm_charge(ptr noundef %96, i32 noundef %107) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool128.not.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.not.i, label %do.body130.i, label %if.end144.i

do.body130.i:                                     ; preds = %if.end126.i
  %108 = load i32, ptr @debug, align 4
  %and131.i = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %do.body130.i.do.end143.i_crit_edge, label %do.end136.i

do.body130.i.do.end143.i_crit_edge:               ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143.i

do.end136.i:                                      ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #15
  %call140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, ptr noundef %name.i) #16
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end136.i, %do.body130.i.do.end143.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i296.i) #13
  br label %drop.i

if.end144.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  %data145.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i296.i, i32 0, i32 19
  %109 = ptrtoint ptr %data145.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data145.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %74, ptr %110, align 4
  %call146.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i296.i, i32 noundef 4) #13
  %112 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data17.i, align 4
  %arrayidx148.i = getelementptr i8, ptr %113, i32 16
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i296.i, i32 noundef 48) #13
  %114 = call ptr @memcpy(ptr %call.i.i, ptr %arrayidx148.i, i32 48)
  %cb150.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i296.i, i32 0, i32 3
  %115 = ptrtoint ptr %cb150.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %96, ptr %cb150.i, align 8
  %call.i.i297.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %116 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i296.i, i32 0, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %call.i.i297.i, ptr %116, align 8
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %96, i32 0, i32 10
  %118 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %push.i, align 8
  tail call void %119(ptr noundef %96, ptr noundef nonnull %call.i.i296.i) #13
  %stats153.i = getelementptr inbounds %struct.atm_vcc, ptr %96, i32 0, i32 16
  %120 = ptrtoint ptr %stats153.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %stats153.i, align 8
  %rx.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %121, i32 0, i32 2
  %call.i.i294.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx.i, i32 1, i32 3, i32 1) #13
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i, ptr %rx.i, i32 1, ptr elementtype(i32) %rx.i) #13, !srcloc !874
  br label %drop.i

drop.i:                                           ; preds = %if.end144.i, %do.end143.i, %do.end120.i, %do.end112.i, %do.end86.i, %do.body80.i.drop.i_crit_edge, %do.end62.i, %do.body56.i.drop.i_crit_edge
  %call154.i = tail call ptr @skb_pull(ptr noundef %queue.0328.i, i32 noundef 64) #13
  %paddr158.i = getelementptr %struct.sk_buff, ptr %queue.0328.i, i32 0, i32 3, i32 28
  %123 = ptrtoint ptr %paddr158.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %paddr158.i, align 1
  %125 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data17.i, align 4
  %head160.i = getelementptr inbounds %struct.sk_buff, ptr %queue.0328.i, i32 0, i32 18
  %127 = ptrtoint ptr %head160.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head160.i, align 8
  %sub.ptr.lhs.cast161.i = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast162.i = ptrtoint ptr %128 to i32
  %sub.ptr.sub163.i = add i32 %124, -16
  %sub164.i = add i32 %sub.ptr.sub163.i, %sub.ptr.lhs.cast161.i
  %add165.i = sub i32 %sub164.i, %sub.ptr.rhs.cast162.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %queue.0328.i, i32 0, i32 6
  %129 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %130)
  %cmp166.i = icmp ult i32 %130, 128
  br i1 %cmp166.i, label %if.then168.i, label %drop.i.cleanup201.i_crit_edge

drop.i.cleanup201.i_crit_edge:                    ; preds = %drop.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup201.i

if.then168.i:                                     ; preds = %drop.i
  %131 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %126, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #13
  %arrayidx173.i = getelementptr i8, ptr %126, i32 4
  %134 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx173.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #13
  %shr.i298.i = lshr i32 %136, 16
  %sub.i299.i = add nsw i32 %shr.i298.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i299.i)
  %cmp.i300.i = icmp ugt i32 %sub.i299.i, 3
  br i1 %cmp.i300.i, label %if.then168.i.sb_pool_skb.exit307.thread.i_crit_edge, label %if.end.i303.i

if.then168.i.sb_pool_skb.exit307.thread.i_crit_edge: ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_skb.exit307.thread.i

if.end.i303.i:                                    ; preds = %if.then168.i
  %and.i301.i = and i32 %136, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i301.i)
  %cmp1.i302.i = icmp ugt i32 %and.i301.i, 511
  br i1 %cmp1.i302.i, label %if.end.i303.i.sb_pool_skb.exit307.thread.i_crit_edge, label %sb_pool_skb.exit307.i

if.end.i303.i.sb_pool_skb.exit307.thread.i_crit_edge: ; preds = %if.end.i303.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_skb.exit307.thread.i

sb_pool_skb.exit307.thread.i:                     ; preds = %if.end.i303.i.sb_pool_skb.exit307.thread.i_crit_edge, %if.then168.i.sb_pool_skb.exit307.thread.i_crit_edge
  tail call fastcc void @recycle_rx_skb(ptr noundef %dev_id, ptr noundef %queue.0328.i) #13
  br label %cleanup201.thread.i

sb_pool_skb.exit307.i:                            ; preds = %if.end.i303.i
  %arrayidx4.i304.i = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 40, i32 %sub.i299.i, i32 1, i32 %and.i301.i
  %137 = ptrtoint ptr %arrayidx4.i304.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx4.i304.i, align 4
  tail call fastcc void @recycle_rx_skb(ptr noundef %dev_id, ptr noundef %queue.0328.i) #13
  %tobool175.not.i = icmp eq ptr %138, null
  br i1 %tobool175.not.i, label %sb_pool_skb.exit307.i.cleanup201.thread.i_crit_edge, label %cleanup.i

sb_pool_skb.exit307.i.cleanup201.thread.i_crit_edge: ; preds = %sb_pool_skb.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup201.thread.i

cleanup201.thread.i:                              ; preds = %sb_pool_skb.exit307.i.cleanup201.thread.i_crit_edge, %sb_pool_skb.exit307.thread.i
  %139 = ptrtoint ptr %raw_cell_head.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %raw_cell_head.i, align 4
  %call197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, ptr noundef %name.i) #16
  br label %if.end177

cleanup.i:                                        ; preds = %sb_pool_skb.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %raw_cell_head.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %raw_cell_head.i, align 4
  %141 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pcidev.i, align 4
  %dev180.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %paddr184.i = getelementptr %struct.sk_buff, ptr %138, i32 0, i32 3, i32 28
  %143 = ptrtoint ptr %paddr184.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %paddr184.i, align 1
  %end.i308.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 17
  %145 = ptrtoint ptr %end.i308.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %end.i308.i, align 4
  %data186.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 19
  %147 = ptrtoint ptr %data186.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data186.i, align 4
  %sub.ptr.lhs.cast187.i = ptrtoint ptr %146 to i32
  %sub.ptr.rhs.cast188.i = ptrtoint ptr %148 to i32
  %sub.ptr.sub189.i = sub i32 %sub.ptr.lhs.cast187.i, %sub.ptr.rhs.cast188.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev180.i, i32 noundef %144, i32 noundef %sub.ptr.sub189.i, i32 noundef 2) #13
  br label %cleanup201.i

cleanup201.i:                                     ; preds = %cleanup.i, %drop.i.cleanup201.i_crit_edge
  %head.2.i = phi i32 [ %133, %cleanup.i ], [ %add165.i, %drop.i.cleanup201.i_crit_edge ]
  %queue.3.i = phi ptr [ %138, %cleanup.i ], [ %queue.0328.i, %drop.i.cleanup201.i_crit_edge ]
  %cmp16.not.i = icmp eq i32 %head.2.i, %61
  br i1 %cmp16.not.i, label %cleanup201.i.if.end177_crit_edge, label %cleanup201.i.while.body.i_crit_edge

cleanup201.i.while.body.i_crit_edge:              ; preds = %cleanup201.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup201.i.if.end177_crit_edge:                 ; preds = %cleanup201.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.end177:                                        ; preds = %cleanup201.i.if.end177_crit_edge, %cleanup201.thread.i, %if.end4.i.if.end177_crit_edge, %if.end.i.if.end177_crit_edge, %if.end.thread310.i, %if.end156.if.end177_crit_edge
  %and178 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end177.if.end208_crit_edge, label %do.body181

if.end177.if.end208_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

do.body181:                                       ; preds = %if.end177
  %149 = load i32, ptr @debug, align 4
  %and182 = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body181.do.end194_crit_edge, label %do.end187

do.body181.do.end194_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end194

do.end187:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #15
  %name189 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.325, ptr noundef %name189) #16
  br label %do.end194

do.end194:                                        ; preds = %do.end187, %do.body181.do.end194_crit_edge
  %arrayidx196 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 10
  %150 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx196, align 4
  %inc197 = add i32 %151, 1
  store i32 %inc197, ptr %arrayidx196, align 4
  %atmdev = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 3
  %152 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %atmdev, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %phy, align 4
  %tobool198.not = icmp eq ptr %155, null
  br i1 %tobool198.not, label %do.end194.if.end208_crit_edge, label %land.lhs.true

do.end194.if.end208_crit_edge:                    ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

land.lhs.true:                                    ; preds = %do.end194
  %interrupt = getelementptr inbounds %struct.atmphy_ops, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %interrupt, align 4
  %tobool201.not = icmp eq ptr %157, null
  br i1 %tobool201.not, label %land.lhs.true.if.end208_crit_edge, label %if.then202

land.lhs.true.if.end208_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then202:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %157(ptr noundef %153) #13
  br label %if.end208

if.end208:                                        ; preds = %if.then202, %land.lhs.true.if.end208_crit_edge, %do.end194.if.end208_crit_edge, %if.end177.if.end208_crit_edge
  %and209 = and i32 %4, 396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.out_crit_edge, label %do.body212

if.end208.out_crit_edge:                          ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body212:                                       ; preds = %if.end208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !896
  tail call void @arm_heavy_mb() #13
  %158 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %membase, align 4
  %add.ptr218 = getelementptr i8, ptr %159, i32 20
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr218) #13, !srcloc !822
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !897
  %161 = and i32 %160, -1073741825
  %162 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %membase, align 4
  %add.ptr224 = getelementptr i8, ptr %163, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %161) #13, !srcloc !818
  %164 = load i32, ptr @debug, align 4
  %and226 = and i32 %164, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %do.body212.do.end238_crit_edge, label %do.end231

do.body212.do.end238_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end238

do.end231:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #15
  %name233 = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 46
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef %name233, i32 noundef %4) #16
  br label %do.end238

do.end238:                                        ; preds = %do.end231, %do.body212.do.end238_crit_edge
  %and239 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.end238.if.end245_crit_edge, label %if.then241

do.end238.if.end245_crit_edge:                    ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end245

if.then241:                                       ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx243 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 2
  %165 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx243, align 4
  %inc244 = add i32 %166, 1
  store i32 %inc244, ptr %arrayidx243, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then241, %do.end238.if.end245_crit_edge
  %and246 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end245.if.end252_crit_edge, label %if.then248

if.end245.if.end252_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end252

if.then248:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx250 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 3
  %167 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx250, align 4
  %inc251 = add i32 %168, 1
  store i32 %inc251, ptr %arrayidx250, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %if.end245.if.end252_crit_edge
  %and253 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %if.end252.if.end259_crit_edge, label %if.then255

if.end252.if.end259_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end259

if.then255:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx257 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 7
  %169 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx257, align 4
  %inc258 = add i32 %170, 1
  store i32 %inc258, ptr %arrayidx257, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %if.end252.if.end259_crit_edge
  %and260 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.end259.if.end266_crit_edge, label %if.then262

if.end259.if.end266_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end266

if.then262:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx264 = getelementptr %struct.idt77252_dev, ptr %dev_id, i32 0, i32 19, i32 8
  %171 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx264, align 4
  %inc265 = add i32 %172, 1
  store i32 %inc265, ptr %arrayidx264, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then262, %if.end259.if.end266_crit_edge
  %tqueue = getelementptr inbounds %struct.idt77252_dev, ptr %dev_id, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %173 = load ptr, ptr @system_wq, align 4
  %call.i.i332 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %173, ptr noundef %tqueue) #13
  br label %out

out:                                              ; preds = %if.end266, %if.end208.out_crit_edge, %do.end
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !898
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !807) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !899
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !876

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !900
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt77252_tx(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.tsq_info, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %last = getelementptr inbounds %struct.tsq_info, ptr %card, i32 0, i32 2
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.tsq_entry, ptr %1, i32 1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %tsqe.0 = phi ptr [ %5, %if.then ], [ %add.ptr, %if.else ]
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body16_crit_edge, label %do.end

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef %tsqe.0, ptr noundef %8, ptr noundef %1, ptr noundef %3) #16
  br label %do.body16

do.body16:                                        ; preds = %do.end, %do.body.do.body16_crit_edge
  %9 = load i32, ptr @debug, align 4
  %and17 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end45_crit_edge, label %do.end22

do.body16.do.end45_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %membase = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #13, !srcloc !822
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !901
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 68
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #13, !srcloc !822
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !902
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 72
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !822
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !903
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333, i32 noundef %13, i32 noundef %17, i32 noundef %21) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end22, %do.body16.do.end45_crit_edge
  %word_2 = getelementptr inbounds %struct.tsq_entry, ptr %tsqe.0, i32 0, i32 1
  %22 = ptrtoint ptr %word_2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %word_2, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool47.not = icmp sgt i32 %24, -1
  br i1 %tobool47.not, label %do.body50.preheader, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body50.preheader:                              ; preds = %do.end45
  %vpibits = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 28
  %vcibits = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 29
  %name133 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %vcs137 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %vcimask = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 30
  br label %do.body50

do.body50:                                        ; preds = %do.end185.do.body50_crit_edge, %do.body50.preheader
  %stat.0 = phi i32 [ %77, %do.end185.do.body50_crit_edge ], [ %24, %do.body50.preheader ]
  %tsqe.1 = phi ptr [ %tsqe.2, %do.end185.do.body50_crit_edge ], [ %tsqe.0, %do.body50.preheader ]
  %25 = load i32, ptr @debug, align 4
  %and52 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.do.end63_crit_edge, label %do.end57

do.body50.do.end63_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end63

do.end57:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %tsqe.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tsqe.1, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %word_259 = getelementptr inbounds %struct.tsq_entry, ptr %tsqe.1, i32 0, i32 1
  %29 = ptrtoint ptr %word_259 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %word_259, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.336, ptr noundef %tsqe.1, i32 noundef %28, i32 noundef %31) #16
  br label %do.end63

do.end63:                                         ; preds = %do.end57, %do.body50.do.end63_crit_edge
  %and64 = lshr i32 %stat.0, 29
  %32 = zext i32 %and64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.493)
  switch i32 %and64, label %do.end63.unreachabledefault [
    i32 0, label %do.body65
    i32 2, label %sw.bb77
    i32 1, label %sw.bb102
    i32 3, label %sw.bb119
  ]

do.body65:                                        ; preds = %do.end63
  %33 = load i32, ptr @debug, align 4
  %and66 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.sw.epilog_crit_edge, label %do.end71

do.body65.sw.epilog_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef %name133) #16
  br label %sw.epilog

sw.bb77:                                          ; preds = %do.end63
  %34 = and i32 %stat.0, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %34)
  %cmp80 = icmp eq i32 %34, 268435456
  br i1 %cmp80, label %sw.bb77.sw.epilog_crit_edge, label %if.end82

sw.bb77.sw.epilog_crit_edge:                      ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end82:                                         ; preds = %sw.bb77
  %35 = ptrtoint ptr %tsqe.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tsqe.1, align 4
  %37 = ptrtoint ptr %vcs137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vcs137, align 4
  %39 = and i32 %36, -14745600
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %arrayidx = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool84.not = icmp eq ptr %42, null
  br i1 %tobool84.not, label %do.end88, label %do.end97

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342, ptr noundef %name133, i32 noundef %40) #16
  br label %sw.epilog

do.end97:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef %name133, i32 noundef %44) #16
  %flags = getelementptr inbounds %struct.vc_map, ptr %42, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %sw.epilog

sw.bb102:                                         ; preds = %do.end63
  %45 = ptrtoint ptr %tsqe.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tsqe.1, align 4
  %47 = ptrtoint ptr %vcs137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vcs137, align 4
  %49 = and i32 %46, -14745600
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %arrayidx106 = getelementptr ptr, ptr %48, i32 %50
  %51 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx106, align 4
  %tobool107.not = icmp eq ptr %52, null
  br i1 %tobool107.not, label %do.end111, label %if.end118

do.end111:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #15
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, ptr noundef %name133, i32 noundef %50) #16
  br label %sw.epilog

if.end118:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drain_scq(ptr noundef %card, ptr noundef nonnull %52)
  br label %sw.epilog

sw.bb119:                                         ; preds = %do.end63
  %53 = ptrtoint ptr %tsqe.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tsqe.1, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %shr121 = lshr i32 %55, 20
  %and122 = and i32 %shr121, 255
  %shr123 = lshr i32 %55, 4
  %and124 = and i32 %shr123, 65535
  %56 = ptrtoint ptr %vpibits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vpibits, align 4
  %and122.highbits = lshr i32 %and122, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.highbits)
  %cmp125.not = icmp eq i32 %and122.highbits, 0
  br i1 %cmp125.not, label %lor.lhs.false, label %sw.bb119.do.end131_crit_edge

sw.bb119.do.end131_crit_edge:                     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end131

lor.lhs.false:                                    ; preds = %sw.bb119
  %58 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vcibits, align 4
  %and124.highbits = lshr i32 %and124, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.highbits)
  %cmp127.not = icmp eq i32 %and124.highbits, 0
  br i1 %cmp127.not, label %if.end136, label %lor.lhs.false.do.end131_crit_edge

lor.lhs.false.do.end131_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end131

do.end131:                                        ; preds = %lor.lhs.false.do.end131_crit_edge, %sw.bb119.do.end131_crit_edge
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef %name133, i32 noundef %and122, i32 noundef %and124) #16
  br label %sw.epilog

if.end136:                                        ; preds = %lor.lhs.false
  %60 = ptrtoint ptr %vcs137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vcs137, align 4
  %shl139 = shl i32 %and122, %59
  %62 = ptrtoint ptr %vcimask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vcimask, align 4
  %and140 = and i32 %63, %and124
  %or = or i32 %and140, %shl139
  %arrayidx141 = getelementptr ptr, ptr %61, i32 %or
  %64 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx141, align 4
  %tobool142.not = icmp eq ptr %65, null
  br i1 %tobool142.not, label %do.end146, label %if.end151

do.end146:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef %name133, i32 noundef %and122, i32 noundef %and124) #16
  br label %sw.epilog

if.end151:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drain_scq(ptr noundef %card, ptr noundef nonnull %65)
  br label %sw.epilog

do.end63.unreachabledefault:                      ; preds = %do.end63
  unreachable

sw.epilog:                                        ; preds = %if.end151, %do.end146, %do.end131, %if.end118, %do.end111, %do.end97, %do.end88, %sw.bb77.sw.epilog_crit_edge, %do.end71, %do.body65.sw.epilog_crit_edge
  %word_2152 = getelementptr inbounds %struct.tsq_entry, ptr %tsqe.1, i32 0, i32 1
  %66 = ptrtoint ptr %word_2152 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 128, ptr %word_2152, align 4
  %67 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %tsqe.1, ptr %next, align 4
  %68 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %last, align 4
  %cmp159 = icmp eq ptr %tsqe.1, %69
  br i1 %cmp159, label %if.then160, label %if.else163

if.then160:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card, align 4
  br label %do.body168

if.else163:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr166 = getelementptr %struct.tsq_entry, ptr %tsqe.1, i32 1
  br label %do.body168

do.body168:                                       ; preds = %if.else163, %if.then160
  %tsqe.2 = phi ptr [ %71, %if.then160 ], [ %add.ptr166, %if.else163 ]
  %72 = load i32, ptr @debug, align 4
  %and169 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body168.do.end185_crit_edge, label %do.end174

do.body168.do.end185_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end185

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 4
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, ptr noundef %tsqe.2, ptr noundef %74, ptr noundef %tsqe.1, ptr noundef %69) #16
  br label %do.end185

do.end185:                                        ; preds = %do.end174, %do.body168.do.end185_crit_edge
  %word_2186 = getelementptr inbounds %struct.tsq_entry, ptr %tsqe.2, i32 0, i32 1
  %75 = ptrtoint ptr %word_2186 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %word_2186, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %tobool189.not = icmp sgt i32 %77, -1
  br i1 %tobool189.not, label %do.end185.do.body50_crit_edge, label %do.body191

do.end185.do.body50_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

do.body191:                                       ; preds = %do.end185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !904
  tail call void @arm_heavy_mb() #13
  %78 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card, align 4
  %83 = ptrtoint ptr %82 to i32
  %sub = sub i32 %80, %83
  %84 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %membase198 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  %85 = ptrtoint ptr %membase198 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase198, align 4
  %add.ptr199 = getelementptr i8, ptr %86, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %84) #13, !srcloc !818
  %87 = load i32, ptr @debug, align 4
  %and201 = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %do.body191.cleanup_crit_edge, label %do.end206

do.body191.cleanup_crit_edge:                     ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end206:                                        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #15
  %index208 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 44
  %88 = ptrtoint ptr %index208 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index208, align 4
  %90 = ptrtoint ptr %membase198 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase198, align 4
  %add.ptr212 = getelementptr i8, ptr %91, i32 72
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #13, !srcloc !822
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !905
  %94 = ptrtoint ptr %membase198 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase198, align 4
  %add.ptr219 = getelementptr i8, ptr %95, i32 68
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #13, !srcloc !822
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !906
  %98 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %next, align 4
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, i32 noundef %89, i32 noundef %93, i32 noundef %97, ptr noundef %99) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end206, %do.body191.cleanup_crit_edge, %do.end45.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt77252_rx(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rsq = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 1
  %next = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %last = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsq, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.rsq_entry, ptr %1, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rsqe.0 = phi ptr [ %5, %if.then ], [ %add.ptr, %if.else ]
  %word_4 = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.0, i32 0, i32 3
  %6 = ptrtoint ptr %word_4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %word_4, align 4
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.body, label %do.body14.preheader

do.body14.preheader:                              ; preds = %if.end
  %name.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %vpibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 28
  %vcimask.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 30
  %vcs.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 33
  %vcibits.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 29
  %pcidev.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  %membase.i = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 4
  br label %do.body14

do.body:                                          ; preds = %if.end
  %8 = load i32, ptr @debug, align 4
  %and6 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.367, ptr noundef %name) #16
  br label %cleanup

do.body14:                                        ; preds = %do.cond31.do.body14_crit_edge, %do.body14.preheader
  %rsqe.1 = phi ptr [ %rsqe.2, %do.cond31.do.body14_crit_edge ], [ %rsqe.0, %do.body14.preheader ]
  %word_4.i = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.1, i32 0, i32 3
  %9 = ptrtoint ptr %word_4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_4.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %and.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %do.body14
  %12 = load i32, ptr @debug, align 4
  %and1.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.dequeue_rx.exit_crit_edge, label %do.end.i

do.body.i.dequeue_rx.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dequeue_rx.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369, ptr noundef %name.i) #16
  br label %dequeue_rx.exit

if.end7.i:                                        ; preds = %do.body14
  %word_2.i = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.1, i32 0, i32 1
  %13 = ptrtoint ptr %word_2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %shr.i504.i = lshr i32 %15, 16
  %sub.i.i = add nsw i32 %shr.i504.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %if.end7.i.do.end12.i_crit_edge, label %if.end.i.i

if.end7.i.do.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

if.end.i.i:                                       ; preds = %if.end7.i
  %and.i.i = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i.i)
  %cmp1.i.i = icmp ugt i32 %and.i.i, 511
  br i1 %cmp1.i.i, label %if.end.i.i.do.end12.i_crit_edge, label %sb_pool_skb.exit.i

if.end.i.i.do.end12.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

sb_pool_skb.exit.i:                               ; preds = %if.end.i.i
  %arrayidx4.i.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %sub.i.i, i32 1, i32 %and.i.i
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.i.i, align 4
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %sb_pool_skb.exit.i.do.end12.i_crit_edge, label %if.end19.i

sb_pool_skb.exit.i.do.end12.i_crit_edge:          ; preds = %sb_pool_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

do.end12.i:                                       ; preds = %sb_pool_skb.exit.i.do.end12.i_crit_edge, %if.end.i.i.do.end12.i_crit_edge, %if.end7.i.do.end12.i_crit_edge
  %18 = ptrtoint ptr %rsqe.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsqe.1, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %word_3.i = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.1, i32 0, i32 2
  %21 = ptrtoint ptr %word_3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %word_3.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, ptr noundef %name.i, ptr noundef nonnull @.str.370, i32 noundef %20, i32 noundef %15, i32 noundef %23, i32 noundef %11) #16
  br label %dequeue_rx.exit

if.end19.i:                                       ; preds = %sb_pool_skb.exit.i
  %24 = ptrtoint ptr %rsqe.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rsqe.1, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %shr.i = lshr i32 %26, 16
  %and21.i = and i32 %shr.i, 255
  %and23.i = and i32 %26, 65535
  %27 = load i32, ptr @debug, align 4
  %and25.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end19.i.do.end37.i_crit_edge, label %do.end30.i

if.end19.i.do.end37.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

do.end30.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef %name.i, i32 noundef %and21.i, i32 noundef %and23.i, ptr noundef nonnull %17, ptr noundef %29) #16
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end30.i, %if.end19.i.do.end37.i_crit_edge
  %30 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vpibits.i, align 4
  %and21.highbits.i = lshr i32 %and21.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.highbits.i)
  %cmp38.not.i = icmp eq i32 %and21.highbits.i, 0
  br i1 %cmp38.not.i, label %lor.lhs.false.i, label %do.end37.i.do.end44.i_crit_edge

do.end37.i.do.end44.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44.i

lor.lhs.false.i:                                  ; preds = %do.end37.i
  %32 = ptrtoint ptr %vcimask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vcimask.i, align 4
  %and39.i = and i32 %33, %and23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and23.i, i32 %and39.i)
  %cmp40.not.i = icmp eq i32 %and23.i, %and39.i
  br i1 %cmp40.not.i, label %if.end49.i, label %lor.lhs.false.i.do.end44.i_crit_edge

lor.lhs.false.i.do.end44.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44.i

do.end44.i:                                       ; preds = %lor.lhs.false.i.do.end44.i_crit_edge, %do.end37.i.do.end44.i_crit_edge
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef %name.i, i32 noundef %and21.i, i32 noundef %and23.i) #16
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef nonnull %17) #13
  br label %dequeue_rx.exit

if.end49.i:                                       ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %vcs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vcs.i, align 4
  %36 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vcibits.i, align 4
  %shl50.i = shl i32 %and21.i, %37
  %or.i = or i32 %shl50.i, %and23.i
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %or.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool53.not.i = icmp eq ptr %39, null
  br i1 %tobool53.not.i, label %if.end49.i.do.end60.i_crit_edge, label %lor.lhs.false54.i

if.end49.i.do.end60.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i

lor.lhs.false54.i:                                ; preds = %if.end49.i
  %flags.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags.i, align 4
  %42 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool56.not.i = icmp eq i32 %42, 0
  br i1 %tobool56.not.i, label %lor.lhs.false54.i.do.end60.i_crit_edge, label %if.end65.i

lor.lhs.false54.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i

do.end60.i:                                       ; preds = %lor.lhs.false54.i.do.end60.i_crit_edge, %if.end49.i.do.end60.i_crit_edge
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.381, ptr noundef %name.i, i32 noundef %and21.i, i32 noundef %and23.i) #16
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef nonnull %17) #13
  br label %dequeue_rx.exit

if.end65.i:                                       ; preds = %lor.lhs.false54.i
  %rx_vcc.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 9
  %43 = ptrtoint ptr %rx_vcc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_vcc.i, align 4
  %45 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %paddr.i = getelementptr %struct.sk_buff, ptr %17, i32 0, i32 3, i32 28
  %47 = ptrtoint ptr %paddr.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %paddr.i, align 1
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i, align 4
  %data68.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %51 = ptrtoint ptr %data68.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data68.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %48, i32 noundef %sub.ptr.sub.i, i32 noundef 2) #13
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %aal.i, align 8
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.494)
  switch i8 %54, label %do.end140.i [
    i8 13, label %if.end65.i.if.then77.i_crit_edge
    i8 3, label %if.end65.i.if.then77.i_crit_edge123
    i8 5, label %if.end148.i
  ]

if.end65.i.if.then77.i_crit_edge123:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77.i

if.end65.i.if.then77.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77.i

if.then77.i:                                      ; preds = %if.end65.i.if.then77.i_crit_edge, %if.end65.i.if.then77.i_crit_edge123
  %and79.i = and i32 %11, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not530.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not530.i, label %if.then77.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then77.i.for.end.i_crit_edge:                  ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then77.i
  %56 = ptrtoint ptr %data68.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data68.i, align 4
  %shl113.i = shl nuw nsw i32 %and21.i, 20
  %shl114.i = shl nuw nsw i32 %and23.i, 4
  %or115.i = or i32 %shl113.i, %shl114.i
  %and116.i = lshr i32 %11, 12
  %58 = and i32 %and116.i, 2
  %or118.i = or i32 %or115.i, %58
  %and119.i = lshr i32 %11, 10
  %and119.lobit.i = and i32 %and119.i, 1
  %or122.i = or i32 %or118.i, %and119.lobit.i
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 10
  %stats129.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end112.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0532.i = phi i32 [ %and79.i, %for.body.lr.ph.i ], [ %dec.i, %if.end112.i.for.body.i_crit_edge ]
  %cell.0531.i = phi ptr [ %57, %for.body.lr.ph.i ], [ %add.ptr130.i, %if.end112.i.for.body.i_crit_edge ]
  %call.i.i505.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 64, i32 noundef 2592) #13
  %cmp82.i = icmp eq ptr %call.i.i505.i, null
  br i1 %cmp82.i, label %do.end87.i, label %if.end92.i

do.end87.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.384, ptr noundef %name.i) #16
  %59 = ptrtoint ptr %stats129.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stats129.i, align 8
  %rx_drop.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %60, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_drop.i, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i, ptr %rx_drop.i, i32 %i.0532.i, ptr elementtype(i32) %rx_drop.i) #13, !srcloc !874
  br label %for.end.i

if.end92.i:                                       ; preds = %for.body.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i505.i, i32 0, i32 20
  %62 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %truesize.i, align 8
  %call93.i = tail call i32 @atm_charge(ptr noundef %44, i32 noundef %63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %do.body96.i, label %if.end112.i

do.body96.i:                                      ; preds = %if.end92.i
  %64 = load i32, ptr @debug, align 4
  %and97.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %do.body96.i.do.end109.i_crit_edge, label %do.end102.i

do.body96.i.do.end109.i_crit_edge:                ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end109.i

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #15
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, ptr noundef %name.i) #16
  br label %do.end109.i

do.end109.i:                                      ; preds = %do.end102.i, %do.body96.i.do.end109.i_crit_edge
  %sub.i = add i32 %i.0532.i, -1
  %65 = ptrtoint ptr %stats129.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stats129.i, align 8
  %rx_drop111.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %66, i32 0, i32 4
  %call.i.i497.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop111.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_drop111.i, i32 1, i32 3, i32 1) #13
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop111.i, ptr %rx_drop111.i, i32 %sub.i, ptr elementtype(i32) %rx_drop111.i) #13, !srcloc !874
  tail call void @consume_skb(ptr noundef nonnull %call.i.i505.i) #13
  br label %for.end.i

if.end112.i:                                      ; preds = %if.end92.i
  %data123.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i505.i, i32 0, i32 19
  %68 = ptrtoint ptr %data123.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data123.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or122.i, ptr %69, align 4
  %call124.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i505.i, i32 noundef 4) #13
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i505.i, i32 noundef 48) #13
  %71 = call ptr @memcpy(ptr %call.i.i, ptr %cell.0531.i, i32 48)
  %cb126.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i505.i, i32 0, i32 3
  %72 = ptrtoint ptr %cb126.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %44, ptr %cb126.i, align 8
  %call.i.i506.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %73 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i505.i, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %call.i.i506.i, ptr %73, align 8
  %75 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %push.i, align 8
  tail call void %76(ptr noundef %44, ptr noundef nonnull %call.i.i505.i) #13
  %77 = ptrtoint ptr %stats129.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stats129.i, align 8
  %rx.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %78, i32 0, i32 2
  %call.i.i498.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx.i, i32 1, i32 3, i32 1) #13
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i, ptr %rx.i, i32 1, ptr elementtype(i32) %rx.i) #13, !srcloc !874
  %add.ptr130.i = getelementptr i8, ptr %cell.0531.i, i32 48
  %dec.i = add nsw i32 %i.0532.i, -1
  %tobool80.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool80.not.i, label %if.end112.i.for.end.i_crit_edge, label %if.end112.i.for.body.i_crit_edge

if.end112.i.for.body.i_crit_edge:                 ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end112.i.for.end.i_crit_edge:                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end112.i.for.end.i_crit_edge, %do.end109.i, %do.end87.i, %if.then77.i.for.end.i_crit_edge
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef nonnull %17) #13
  br label %dequeue_rx.exit

do.end140.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %54 to i32
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, ptr noundef %name.i, i32 noundef %conv.i) #16
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef nonnull %17) #13
  br label %dequeue_rx.exit

if.end148.i:                                      ; preds = %if.end65.i
  %and149.i = and i32 %11, 511
  %mul.i = mul nuw nsw i32 %and149.i, 48
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul.i, ptr %len.i, align 4
  %rcv.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14
  %prev.i.i.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %rcv.i, ptr %17, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 1
  %84 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %17, ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %17, ptr %82, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %87, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %88 = load i32, ptr %len.i, align 4
  %len151.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 1
  %89 = ptrtoint ptr %len151.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len151.i, align 4
  %add.i = add i32 %90, %88
  store i32 %add.i, ptr %len151.i, align 4
  %and152.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %if.end148.i.dequeue_rx.exit_crit_edge, label %if.then154.i

if.end148.i.dequeue_rx.exit_crit_edge:            ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dequeue_rx.exit

if.then154.i:                                     ; preds = %if.end148.i
  %91 = ptrtoint ptr %data68.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data68.i, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i, align 4
  %add158.i = add i32 %93, -6
  %sub159.i = add i32 %add158.i, %95
  %96 = inttoptr i32 %sub159.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv161.i = zext i8 %98 to i32
  %shl162.i = shl nuw nsw i32 %conv161.i, 8
  %arrayidx163.i = getelementptr i8, ptr %96, i32 1
  %99 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx163.i, align 1
  %conv164.i = zext i8 %100 to i32
  %or165.i = or i32 %shl162.i, %conv164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or165.i)
  %tobool166.not.i = icmp eq i32 %or165.i, 0
  %spec.select.i = select i1 %tobool166.not.i, i32 65536, i32 %or165.i
  %101 = load i32, ptr @debug, align 4
  %and169.i = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i)
  %tobool170.not.i = icmp eq i32 %and169.i, 0
  br i1 %tobool170.not.i, label %if.then154.i.do.end181.i_crit_edge, label %do.end174.i

if.then154.i.do.end181.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end181.i

do.end174.i:                                      ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #15
  %call178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.393, ptr noundef %name.i, i32 noundef %spec.select.i) #16
  br label %do.end181.i

do.end181.i:                                      ; preds = %do.end174.i, %if.then154.i.do.end181.i_crit_edge
  %add182.i = add nuw nsw i32 %spec.select.i, 8
  %102 = ptrtoint ptr %len151.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len151.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add182.i, i32 %103)
  %cmp184.i = icmp ugt i32 %add182.i, %103
  %add187.i = add nuw nsw i32 %spec.select.i, 55
  call void @__sanitizer_cov_trace_cmp4(i32 %add187.i, i32 %103)
  %cmp189.i = icmp ult i32 %add187.i, %103
  %or.cond.i = select i1 %cmp184.i, i1 true, i1 %cmp189.i
  br i1 %or.cond.i, label %do.body192.i, label %if.end212.i

do.body192.i:                                     ; preds = %do.end181.i
  %104 = load i32, ptr @debug, align 4
  %and193.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193.i)
  %tobool194.not.i = icmp eq i32 %and193.i, 0
  br i1 %tobool194.not.i, label %do.body192.i.do.end210.i_crit_edge, label %do.end198.i

do.body192.i.do.end210.i_crit_edge:               ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end210.i

do.end198.i:                                      ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase.i, align 4
  %add.ptr203.i = getelementptr i8, ptr %106, i32 40
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203.i) #13, !srcloc !822
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !907
  %call207.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.396, ptr noundef %name.i, i32 noundef %spec.select.i, i32 noundef %103, i32 noundef %108) #16
  br label %do.end210.i

do.end210.i:                                      ; preds = %do.end198.i, %do.body192.i.do.end210.i_crit_edge
  %109 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i.i = icmp eq ptr %110, %rcv.i
  br i1 %cmp.not10.i.i, label %do.end210.i.recycle_rx_pool_skb.exit.i_crit_edge, label %do.end210.i.for.body.i.i_crit_edge

do.end210.i.for.body.i.i_crit_edge:               ; preds = %do.end210.i
  br label %for.body.i.i

do.end210.i.recycle_rx_pool_skb.exit.i_crit_edge: ; preds = %do.end210.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end210.i.for.body.i.i_crit_edge
  %skb.011.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %110, %do.end210.i.for.body.i.i_crit_edge ]
  %111 = ptrtoint ptr %skb.011.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %tmp.0.i.i = load ptr, ptr %skb.011.i.i, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb.011.i.i) #13
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %rcv.i
  br i1 %cmp.not.i.i, label %for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit.i

recycle_rx_pool_skb.exit.i:                       ; preds = %for.body.i.i.recycle_rx_pool_skb.exit.i_crit_edge, %do.end210.i.recycle_rx_pool_skb.exit.i_crit_edge
  %lock.i.i.i.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %112 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %113 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %114 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %115 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %len151.i, align 4
  %stats211.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  %116 = ptrtoint ptr %stats211.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stats211.i, align 8
  %rx_err.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %117, i32 0, i32 3
  %call.i.i499.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #13
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 1, ptr elementtype(i32) %rx_err.i) #13, !srcloc !874
  br label %dequeue_rx.exit

if.end212.i:                                      ; preds = %do.end181.i
  %and213.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.not.i, label %if.end232.i, label %do.body216.i

do.body216.i:                                     ; preds = %if.end212.i
  %119 = load i32, ptr @debug, align 4
  %and217.i = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  br i1 %tobool218.not.i, label %do.body216.i.do.end229.i_crit_edge, label %do.end222.i

do.body216.i.do.end229.i_crit_edge:               ; preds = %do.body216.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end229.i

do.end222.i:                                      ; preds = %do.body216.i
  call void @__sanitizer_cov_trace_pc() #15
  %call226.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, ptr noundef %name.i) #16
  br label %do.end229.i

do.end229.i:                                      ; preds = %do.end222.i, %do.body216.i.do.end229.i_crit_edge
  %120 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i88 = icmp eq ptr %121, %rcv.i
  br i1 %cmp.not10.i88, label %do.end229.i.recycle_rx_pool_skb.exit98_crit_edge, label %do.end229.i.for.body.i92_crit_edge

do.end229.i.for.body.i92_crit_edge:               ; preds = %do.end229.i
  br label %for.body.i92

do.end229.i.recycle_rx_pool_skb.exit98_crit_edge: ; preds = %do.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit98

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %do.end229.i.for.body.i92_crit_edge
  %skb.011.i89 = phi ptr [ %tmp.0.i90, %for.body.i92.for.body.i92_crit_edge ], [ %121, %do.end229.i.for.body.i92_crit_edge ]
  %122 = ptrtoint ptr %skb.011.i89 to i32
  call void @__asan_load4_noabort(i32 %122)
  %tmp.0.i90 = load ptr, ptr %skb.011.i89, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb.011.i89) #13
  %cmp.not.i91 = icmp eq ptr %tmp.0.i90, %rcv.i
  br i1 %cmp.not.i91, label %for.body.i92.recycle_rx_pool_skb.exit98_crit_edge, label %for.body.i92.for.body.i92_crit_edge

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i92

for.body.i92.recycle_rx_pool_skb.exit98_crit_edge: ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit98

recycle_rx_pool_skb.exit98:                       ; preds = %for.body.i92.recycle_rx_pool_skb.exit98_crit_edge, %do.end229.i.recycle_rx_pool_skb.exit98_crit_edge
  %lock.i.i.i93 = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i93, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %123 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %124 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %125 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %126 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %len151.i, align 4
  %stats230.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  %127 = ptrtoint ptr %stats230.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %stats230.i, align 8
  %rx_err231.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %128, i32 0, i32 3
  %call.i.i500.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err231.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err231.i, i32 1, i32 3, i32 1) #13
  %129 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err231.i, ptr %rx_err231.i, i32 1, ptr elementtype(i32) %rx_err231.i) #13, !srcloc !874
  br label %dequeue_rx.exit

if.end232.i:                                      ; preds = %if.end212.i
  %130 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp235.i = icmp ugt i32 %131, 1
  br i1 %cmp235.i, label %if.then237.i, label %if.end283.i

if.then237.i:                                     ; preds = %if.end232.i
  %call.i.i507.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %103, i32 noundef 2592) #13
  %tobool241.not.i = icmp eq ptr %call.i.i507.i, null
  br i1 %tobool241.not.i, label %do.body243.i, label %if.end259.i

do.body243.i:                                     ; preds = %if.then237.i
  %132 = load i32, ptr @debug, align 4
  %and244.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %do.body243.i.do.end256.i_crit_edge, label %do.end249.i

do.body243.i.do.end256.i_crit_edge:               ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end256.i

do.end249.i:                                      ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #15
  %call253.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef %name.i) #16
  br label %do.end256.i

do.end256.i:                                      ; preds = %do.end249.i, %do.body243.i.do.end256.i_crit_edge
  %133 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i77 = icmp eq ptr %134, %rcv.i
  br i1 %cmp.not10.i77, label %do.end256.i.recycle_rx_pool_skb.exit87_crit_edge, label %do.end256.i.for.body.i81_crit_edge

do.end256.i.for.body.i81_crit_edge:               ; preds = %do.end256.i
  br label %for.body.i81

do.end256.i.recycle_rx_pool_skb.exit87_crit_edge: ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit87

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %do.end256.i.for.body.i81_crit_edge
  %skb.011.i78 = phi ptr [ %tmp.0.i79, %for.body.i81.for.body.i81_crit_edge ], [ %134, %do.end256.i.for.body.i81_crit_edge ]
  %135 = ptrtoint ptr %skb.011.i78 to i32
  call void @__asan_load4_noabort(i32 %135)
  %tmp.0.i79 = load ptr, ptr %skb.011.i78, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb.011.i78) #13
  %cmp.not.i80 = icmp eq ptr %tmp.0.i79, %rcv.i
  br i1 %cmp.not.i80, label %for.body.i81.recycle_rx_pool_skb.exit87_crit_edge, label %for.body.i81.for.body.i81_crit_edge

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i81

for.body.i81.recycle_rx_pool_skb.exit87_crit_edge: ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit87

recycle_rx_pool_skb.exit87:                       ; preds = %for.body.i81.recycle_rx_pool_skb.exit87_crit_edge, %do.end256.i.recycle_rx_pool_skb.exit87_crit_edge
  %lock.i.i.i82 = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i82, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %136 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %137 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %138 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %139 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %len151.i, align 4
  %stats257.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  %140 = ptrtoint ptr %stats257.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stats257.i, align 8
  %rx_err258.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %141, i32 0, i32 3
  %call.i.i501.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err258.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err258.i, i32 1, i32 3, i32 1) #13
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err258.i, ptr %rx_err258.i, i32 1, ptr elementtype(i32) %rx_err258.i) #13, !srcloc !874
  br label %dequeue_rx.exit

if.end259.i:                                      ; preds = %if.then237.i
  %truesize260.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i507.i, i32 0, i32 20
  %143 = ptrtoint ptr %truesize260.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %truesize260.i, align 8
  %call261.i = tail call i32 @atm_charge(ptr noundef %44, i32 noundef %144) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261.i)
  %tobool262.not.i = icmp eq i32 %call261.i, 0
  %145 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i66 = icmp eq ptr %146, %rcv.i
  br i1 %tobool262.not.i, label %if.then263.i, label %for.cond266.preheader.i

for.cond266.preheader.i:                          ; preds = %if.end259.i
  br i1 %cmp.not10.i66, label %for.cond266.preheader.i.for.end276.i_crit_edge, label %for.cond266.preheader.i.for.body270.i_crit_edge

for.cond266.preheader.i.for.body270.i_crit_edge:  ; preds = %for.cond266.preheader.i
  br label %for.body270.i

for.cond266.preheader.i.for.end276.i_crit_edge:   ; preds = %for.cond266.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end276.i

if.then263.i:                                     ; preds = %if.end259.i
  br i1 %cmp.not10.i66, label %if.then263.i.recycle_rx_pool_skb.exit76_crit_edge, label %if.then263.i.for.body.i70_crit_edge

if.then263.i.for.body.i70_crit_edge:              ; preds = %if.then263.i
  br label %for.body.i70

if.then263.i.recycle_rx_pool_skb.exit76_crit_edge: ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit76

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %if.then263.i.for.body.i70_crit_edge
  %skb.011.i67 = phi ptr [ %tmp.0.i68, %for.body.i70.for.body.i70_crit_edge ], [ %146, %if.then263.i.for.body.i70_crit_edge ]
  %147 = ptrtoint ptr %skb.011.i67 to i32
  call void @__asan_load4_noabort(i32 %147)
  %tmp.0.i68 = load ptr, ptr %skb.011.i67, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb.011.i67) #13
  %cmp.not.i69 = icmp eq ptr %tmp.0.i68, %rcv.i
  br i1 %cmp.not.i69, label %for.body.i70.recycle_rx_pool_skb.exit76_crit_edge, label %for.body.i70.for.body.i70_crit_edge

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i70

for.body.i70.recycle_rx_pool_skb.exit76_crit_edge: ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit76

recycle_rx_pool_skb.exit76:                       ; preds = %for.body.i70.recycle_rx_pool_skb.exit76_crit_edge, %if.then263.i.recycle_rx_pool_skb.exit76_crit_edge
  %lock.i.i.i71 = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i71, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %148 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %149 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %150 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %151 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %len151.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %call.i.i507.i) #13
  br label %dequeue_rx.exit

for.body270.i:                                    ; preds = %for.body270.i.for.body270.i_crit_edge, %for.cond266.preheader.i.for.body270.i_crit_edge
  %sb238.0529.i = phi ptr [ %sb238.0.i, %for.body270.i.for.body270.i_crit_edge ], [ %146, %for.cond266.preheader.i.for.body270.i_crit_edge ]
  %data271.i = getelementptr inbounds %struct.sk_buff, ptr %sb238.0529.i, i32 0, i32 19
  %152 = ptrtoint ptr %data271.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data271.i, align 4
  %len272.i = getelementptr inbounds %struct.sk_buff, ptr %sb238.0529.i, i32 0, i32 6
  %154 = ptrtoint ptr %len272.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len272.i, align 4
  %call.i508.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i507.i, i32 noundef %155) #13
  %156 = call ptr @memcpy(ptr %call.i508.i, ptr %153, i32 %155)
  %157 = ptrtoint ptr %sb238.0529.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %sb238.0.i = load ptr, ptr %sb238.0529.i, align 4
  %cmp268.not.i = icmp eq ptr %sb238.0.i, %rcv.i
  br i1 %cmp268.not.i, label %for.body270.i.for.end276.i_crit_edge, label %for.body270.i.for.body270.i_crit_edge

for.body270.i.for.body270.i_crit_edge:            ; preds = %for.body270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body270.i

for.body270.i.for.end276.i_crit_edge:             ; preds = %for.body270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end276.i

for.end276.i:                                     ; preds = %for.body270.i.for.end276.i_crit_edge, %for.cond266.preheader.i.for.end276.i_crit_edge
  %158 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rcv.i, align 4
  %cmp.not10.i = icmp eq ptr %159, %rcv.i
  br i1 %cmp.not10.i, label %for.end276.i.recycle_rx_pool_skb.exit_crit_edge, label %for.end276.i.for.body.i62_crit_edge

for.end276.i.for.body.i62_crit_edge:              ; preds = %for.end276.i
  br label %for.body.i62

for.end276.i.recycle_rx_pool_skb.exit_crit_edge:  ; preds = %for.end276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %for.end276.i.for.body.i62_crit_edge
  %skb.011.i = phi ptr [ %tmp.0.i, %for.body.i62.for.body.i62_crit_edge ], [ %159, %for.end276.i.for.body.i62_crit_edge ]
  %160 = ptrtoint ptr %skb.011.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %tmp.0.i = load ptr, ptr %skb.011.i, align 8
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef %skb.011.i) #13
  %cmp.not.i = icmp eq ptr %tmp.0.i, %rcv.i
  br i1 %cmp.not.i, label %for.body.i62.recycle_rx_pool_skb.exit_crit_edge, label %for.body.i62.for.body.i62_crit_edge

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i62

for.body.i62.recycle_rx_pool_skb.exit_crit_edge:  ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %recycle_rx_pool_skb.exit

recycle_rx_pool_skb.exit:                         ; preds = %for.body.i62.recycle_rx_pool_skb.exit_crit_edge, %for.end276.i.recycle_rx_pool_skb.exit_crit_edge
  %lock.i.i.i63 = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i63, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %161 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %162 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %163 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %164 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %len151.i, align 4
  tail call void @skb_trim(ptr noundef nonnull %call.i.i507.i, i32 noundef %spec.select.i) #13
  %cb277.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i507.i, i32 0, i32 3
  %165 = ptrtoint ptr %cb277.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %44, ptr %cb277.i, align 8
  %call.i.i509.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %166 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i507.i, i32 0, i32 2
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %call.i.i509.i, ptr %166, align 8
  %push280.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 10
  %168 = ptrtoint ptr %push280.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %push280.i, align 8
  tail call void %169(ptr noundef %44, ptr noundef nonnull %call.i.i507.i) #13
  %stats281.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  %170 = ptrtoint ptr %stats281.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %stats281.i, align 8
  %rx282.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %171, i32 0, i32 2
  %call.i.i502.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx282.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx282.i, i32 1, i32 3, i32 1) #13
  %172 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx282.i, ptr %rx282.i, i32 1, ptr elementtype(i32) %rx282.i) #13, !srcloc !874
  br label %dequeue_rx.exit

if.end283.i:                                      ; preds = %if.end232.i
  %lock.i.i.i = getelementptr inbounds %struct.vc_map, ptr %39, i32 0, i32 14, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %173 = ptrtoint ptr %rcv.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %rcv.i, ptr %rcv.i, align 4
  %174 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %rcv.i, ptr %prev.i.i.i, align 4
  %175 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %176 = ptrtoint ptr %len151.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %len151.i, align 4
  %truesize284.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 20
  %177 = ptrtoint ptr %truesize284.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %truesize284.i, align 8
  %call285.i = tail call i32 @atm_charge(ptr noundef %44, i32 noundef %178) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285.i)
  %tobool286.not.i = icmp eq i32 %call285.i, 0
  br i1 %tobool286.not.i, label %if.then287.i, label %if.end288.i

if.then287.i:                                     ; preds = %if.end283.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @recycle_rx_skb(ptr noundef %card, ptr noundef nonnull %17) #13
  br label %dequeue_rx.exit

if.end288.i:                                      ; preds = %if.end283.i
  %179 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pcidev.i, align 4
  %dev290.i = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  %181 = ptrtoint ptr %paddr.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %paddr.i, align 1
  %183 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %end.i.i, align 4
  %185 = ptrtoint ptr %data68.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data68.i, align 4
  %sub.ptr.lhs.cast297.i = ptrtoint ptr %184 to i32
  %sub.ptr.rhs.cast298.i = ptrtoint ptr %186 to i32
  %sub.ptr.sub299.i = sub i32 %sub.ptr.lhs.cast297.i, %sub.ptr.rhs.cast298.i
  tail call void @dma_unmap_page_attrs(ptr noundef %dev290.i, i32 noundef %182, i32 noundef %sub.ptr.sub299.i, i32 noundef 2, i32 noundef 0) #13
  %pool.i.i = getelementptr %struct.sk_buff, ptr %17, i32 0, i32 3, i32 32
  %187 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %pool.i.i, align 1
  %shr.i512.i = lshr i32 %188, 16
  %sub.i513.i = add nsw i32 %shr.i512.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i513.i)
  %cmp.i514.i = icmp ugt i32 %sub.i513.i, 3
  br i1 %cmp.i514.i, label %if.end288.i.sb_pool_remove.exit.i_crit_edge, label %if.end.i517.i

if.end288.i.sb_pool_remove.exit.i_crit_edge:      ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_remove.exit.i

if.end.i517.i:                                    ; preds = %if.end288.i
  %and.i515.i = and i32 %188, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i515.i)
  %cmp1.i516.i = icmp ugt i32 %and.i515.i, 511
  br i1 %cmp1.i516.i, label %if.end.i517.i.sb_pool_remove.exit.i_crit_edge, label %if.end3.i518.i

if.end.i517.i.sb_pool_remove.exit.i_crit_edge:    ; preds = %if.end.i517.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_pool_remove.exit.i

if.end3.i518.i:                                   ; preds = %if.end.i517.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i.i = getelementptr %struct.idt77252_dev, ptr %card, i32 0, i32 40, i32 %sub.i513.i, i32 1, i32 %and.i515.i
  %189 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %arrayidx5.i.i, align 4
  br label %sb_pool_remove.exit.i

sb_pool_remove.exit.i:                            ; preds = %if.end3.i518.i, %if.end.i517.i.sb_pool_remove.exit.i_crit_edge, %if.end288.i.sb_pool_remove.exit.i_crit_edge
  tail call void @skb_trim(ptr noundef nonnull %17, i32 noundef %spec.select.i) #13
  %190 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %44, ptr %cb.i, align 8
  %call.i.i519.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %191 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 2
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %call.i.i519.i, ptr %191, align 8
  %push303.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 10
  %193 = ptrtoint ptr %push303.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %push303.i, align 8
  tail call void %194(ptr noundef %44, ptr noundef nonnull %17) #13
  %stats304.i = getelementptr inbounds %struct.atm_vcc, ptr %44, i32 0, i32 16
  %195 = ptrtoint ptr %stats304.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %stats304.i, align 8
  %rx305.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %196, i32 0, i32 2
  %call.i.i503.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx305.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx305.i, i32 1, i32 3, i32 1) #13
  %197 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx305.i, ptr %rx305.i, i32 1, ptr elementtype(i32) %rx305.i) #13, !srcloc !874
  %198 = ptrtoint ptr %truesize284.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %truesize284.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16128, i32 %199)
  %cmp307.i = icmp ugt i32 %199, 16128
  br i1 %cmp307.i, label %if.then309.i, label %if.else.i

if.then309.i:                                     ; preds = %sb_pool_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %card, i32 noundef 3, i32 noundef 16128, i32 noundef 1) #13
  br label %dequeue_rx.exit

if.else.i:                                        ; preds = %sb_pool_remove.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7936, i32 %199)
  %cmp311.i = icmp ugt i32 %199, 7936
  br i1 %cmp311.i, label %if.then313.i, label %if.else314.i

if.then313.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %card, i32 noundef 2, i32 noundef 7936, i32 noundef 1) #13
  br label %dequeue_rx.exit

if.else314.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %199)
  %cmp316.i = icmp ugt i32 %199, 3840
  br i1 %cmp316.i, label %if.then318.i, label %if.else319.i

if.then318.i:                                     ; preds = %if.else314.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %card, i32 noundef 1, i32 noundef 3840, i32 noundef 1) #13
  br label %dequeue_rx.exit

if.else319.i:                                     ; preds = %if.else314.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_rx_skb(ptr noundef %card, i32 noundef 0, i32 noundef 1792, i32 noundef 1) #13
  br label %dequeue_rx.exit

dequeue_rx.exit:                                  ; preds = %if.else319.i, %if.then318.i, %if.then313.i, %if.then309.i, %if.then287.i, %recycle_rx_pool_skb.exit, %recycle_rx_pool_skb.exit76, %recycle_rx_pool_skb.exit87, %recycle_rx_pool_skb.exit98, %recycle_rx_pool_skb.exit.i, %if.end148.i.dequeue_rx.exit_crit_edge, %do.end140.i, %for.end.i, %do.end60.i, %do.end44.i, %do.end12.i, %do.end.i, %do.body.i.dequeue_rx.exit_crit_edge
  %200 = ptrtoint ptr %word_4.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %word_4.i, align 4
  %201 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %rsqe.1, ptr %next, align 4
  %202 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %last, align 4
  %cmp22 = icmp eq ptr %rsqe.1, %203
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %204 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rsq, align 4
  br label %do.cond31

if.else26:                                        ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr29 = getelementptr %struct.rsq_entry, ptr %rsqe.1, i32 1
  br label %do.cond31

do.cond31:                                        ; preds = %if.else26, %if.then23
  %rsqe.2 = phi ptr [ %205, %if.then23 ], [ %add.ptr29, %if.else26 ]
  %word_432 = getelementptr inbounds %struct.rsq_entry, ptr %rsqe.2, i32 0, i32 3
  %206 = ptrtoint ptr %word_432 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %word_432, align 4
  %.mask61 = and i32 %207, 128
  %tobool34.not = icmp eq i32 %.mask61, 0
  br i1 %tobool34.not, label %do.body36, label %do.cond31.do.body14_crit_edge

do.cond31.do.body14_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

do.body36:                                        ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !908
  tail call void @arm_heavy_mb() #13
  %208 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %next, align 4
  %210 = ptrtoint ptr %209 to i32
  %211 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rsq, align 4
  %213 = ptrtoint ptr %212 to i32
  %sub = sub i32 %210, %213
  %214 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %215 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %membase.i, align 4
  %add.ptr43 = getelementptr i8, ptr %216, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %214) #13, !srcloc !818
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drain_scq(ptr noundef %card, ptr noundef %vc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scq1 = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 11
  %0 = ptrtoint ptr %scq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scq1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %used = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %used, i32 noundef 4) #13
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %used, align 4
  %next = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef %name, i32 noundef %4, ptr noundef %6) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %transmit = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 9
  %call6 = tail call ptr @skb_dequeue(ptr noundef %transmit) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end5.if.end31_crit_edge, label %do.body9

do.end5.if.end31_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

do.body9:                                         ; preds = %do.end5
  %7 = load i32, ptr @debug, align 4
  %and10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.end22_crit_edge, label %do.end15

do.body9.do.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %name17 = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 46
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.365, ptr noundef %name17, ptr noundef nonnull %call6) #16
  br label %do.end22

do.end22:                                         ; preds = %do.end15, %do.body9.do.end22_crit_edge
  %pcidev = getelementptr inbounds %struct.idt77252_dev, ptr %card, i32 0, i32 2
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 3
  %paddr = getelementptr %struct.sk_buff, ptr %call6, i32 0, i32 3, i32 28
  %10 = ptrtoint ptr %paddr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %paddr, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #13
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pop, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %17(ptr noundef %15, ptr noundef nonnull %call6) #13
  br label %if.end30

if.else:                                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %call6) #13
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %15, i32 0, i32 16
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 8
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #13, !srcloc !874
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %do.end5.if.end31_crit_edge
  %used32 = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 5
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %used32, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %used32, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %used32, ptr %used32, i32 1, ptr elementtype(i32) %used32) #13, !srcloc !887
  %skblock = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %skblock) #13
  %pending = getelementptr inbounds %struct.scq_info, ptr %1, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end31
  %call33 = tail call ptr @skb_dequeue(ptr noundef %pending) #13
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call35 = tail call fastcc i32 @push_on_scq(ptr noundef %card, ptr noundef %vc, ptr noundef nonnull %call33)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %while.body.while.cond_crit_edge, label %if.then37

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %scq1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scq1, align 4
  %pending39 = getelementptr inbounds %struct.scq_info, ptr %23, i32 0, i32 10
  tail call void @skb_queue_head(ptr noundef %pending39, ptr noundef nonnull %call33) #13
  br label %while.end

while.end:                                        ; preds = %if.then37, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %skblock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 412)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 412)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !365, !367, !368, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !479, !480, !481, !483, !484, !486, !487, !488, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !552, !553, !554, !556, !557, !558, !560, !561, !562, !563, !565, !566, !567, !569, !570, !571, !573, !574, !575, !577, !578, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !605, !606, !607, !608, !610, !611, !612, !614, !615, !616, !617, !619, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !646, !648, !649, !650, !652, !653, !654, !656, !657, !658, !660, !661, !662, !664, !665, !666, !668, !669, !670, !671, !673, !674, !675, !677, !678, !680, !681, !683, !684, !686, !687, !688, !690, !691, !692, !694, !695, !696, !698, !699, !700, !702, !703, !704, !705, !707, !708, !709, !711, !712, !713, !715, !716, !717, !719, !720, !721, !723, !725, !726, !727, !728, !730, !731, !732, !733, !735, !736, !737, !739, !740, !741, !743, !744, !745, !746, !748, !749, !750, !752, !753, !754, !756, !757, !758, !760, !761, !762, !763, !765, !766, !767, !769, !770, !772, !774, !775, !776, !778, !779, !780, !782, !783, !784, !786, !787, !788, !790, !791, !792, !794, !795, !796, !798, !800, !801, !802, !803, !804, !806}
!llvm.named.register.sp = !{!807}
!llvm.module.flags = !{!808, !809, !810, !811, !812, !813, !814, !815}
!llvm.ident = !{!816}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/atm/idt77252.c", i32 3763, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @idt77252_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @idt77252_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_idt77252__464_3766_idt77252_init6, !7, !"__initcall__kmod_idt77252__464_3766_idt77252_init6", i1 false, i1 false}
!7 = !{!"../drivers/atm/idt77252.c", i32 3766, i32 1}
!8 = !{ptr @__exitcall_idt77252_exit, !9, !"__exitcall_idt77252_exit", i1 false, i1 false}
!9 = !{!"../drivers/atm/idt77252.c", i32 3767, i32 1}
!10 = !{ptr @__UNIQUE_ID_file465, !11, !"__UNIQUE_ID_file465", i1 false, i1 false}
!11 = !{!"../drivers/atm/idt77252.c", i32 3769, i32 1}
!12 = !{ptr @__UNIQUE_ID_license466, !11, !"__UNIQUE_ID_license466", i1 false, i1 false}
!13 = !{ptr @__param_vpibits, !14, !"__param_vpibits", i1 false, i1 false}
!14 = !{!"../drivers/atm/idt77252.c", i32 3771, i32 1}
!15 = !{ptr @__UNIQUE_ID_vpibitstype467, !14, !"__UNIQUE_ID_vpibitstype467", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_vpibits468, !17, !"__UNIQUE_ID_vpibits468", i1 false, i1 false}
!17 = !{!"../drivers/atm/idt77252.c", i32 3772, i32 1}
!18 = !{ptr @__param_debug, !19, !"__param_debug", i1 false, i1 false}
!19 = !{!"../drivers/atm/idt77252.c", i32 3774, i32 1}
!20 = !{ptr @__UNIQUE_ID_debugtype469, !19, !"__UNIQUE_ID_debugtype469", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_debug470, !22, !"__UNIQUE_ID_debug470", i1 false, i1 false}
!22 = !{!"../drivers/atm/idt77252.c", i32 3775, i32 1}
!23 = !{ptr @__UNIQUE_ID_author471, !24, !"__UNIQUE_ID_author471", i1 false, i1 false}
!24 = !{!"../drivers/atm/idt77252.c", i32 3778, i32 1}
!25 = !{ptr @__UNIQUE_ID_description472, !26, !"__UNIQUE_ID_description472", i1 false, i1 false}
!26 = !{!"../drivers/atm/idt77252.c", i32 3779, i32 1}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/atm/idt77252.c", i32 3730, i32 11}
!29 = !{ptr @idt77252_driver, !30, !"idt77252_driver", i1 false, i1 false}
!30 = !{!"../drivers/atm/idt77252.c", i32 3729, i32 26}
!31 = !{ptr @idt77252_pci_tbl, !32, !"idt77252_pci_tbl", i1 false, i1 false}
!32 = !{!"../drivers/atm/idt77252.c", i32 3721, i32 35}
!33 = !{ptr @idt77252_init_one.last, !34, !"last", i1 false, i1 false}
!34 = !{!"../drivers/atm/idt77252.c", i32 3588, i32 31}
!35 = !{ptr @idt77252_init_one.index, !36, !"index", i1 false, i1 false}
!36 = !{!"../drivers/atm/idt77252.c", i32 3589, i32 13}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/atm/idt77252.c", i32 3598, i32 3}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @idt77252_init_one._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @idt77252_init_one._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/atm/idt77252.c", i32 3603, i32 3}
!44 = !{ptr @idt77252_init_one._entry.6, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @idt77252_init_one._entry_ptr.8, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/atm/idt77252.c", i32 3609, i32 3}
!48 = !{ptr @idt77252_init_one._entry.9, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @idt77252_init_one._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/atm/idt77252.c", i32 3616, i32 22}
!52 = !{ptr @idt77252_init_one.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/atm/idt77252.c", i32 3618, i32 2}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @idt77252_init_one.__key.14, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/atm/idt77252.c", i32 3623, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @idt77252_init_one.__key.16, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/atm/idt77252.c", i32 3624, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @idt77252_init_one.__key.18, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/atm/idt77252.c", i32 3625, i32 2}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @idt77252_init_one.__key.20, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/atm/idt77252.c", i32 3627, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/atm/idt77252.c", i32 3632, i32 3}
!69 = !{ptr @idt77252_init_one._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @idt77252_init_one._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/atm/idt77252.c", i32 3638, i32 3}
!73 = !{ptr @idt77252_init_one._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @idt77252_init_one._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/atm/idt77252.c", i32 3646, i32 3}
!77 = !{ptr @idt77252_init_one._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @idt77252_init_one._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/atm/idt77252.c", i32 3656, i32 3}
!81 = !{ptr @idt77252_init_one._entry.31, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @idt77252_init_one._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/atm/idt77252.c", i32 3667, i32 4}
!85 = !{ptr @idt77252_init_one._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @idt77252_init_one._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/atm/idt77252.c", i32 3673, i32 2}
!89 = !{ptr @idt77252_init_one._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @idt77252_init_one._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/atm/idt77252.c", i32 3679, i32 3}
!93 = !{ptr @idt77252_init_one._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @idt77252_init_one._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/atm/idt77252.c", i32 3692, i32 3}
!97 = !{ptr @idt77252_init_one._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @idt77252_init_one._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/atm/idt77252.c", i32 1852, i32 4}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @add_rx_skb._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @add_rx_skb._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/atm/idt77252.c", i32 1862, i32 4}
!106 = !{ptr @add_rx_skb._entry.48, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @add_rx_skb._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/atm/idt77252.c", i32 194, i32 3}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @write_sram._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @write_sram._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"idt77252_sram_write_errors", i1 false, i1 false}
!118 = !{!"../drivers/atm/idt77252.c", i32 152, i32 21}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/atm/idt77252.c", i32 3531, i32 2}
!121 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @idt77252_preset._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @idt77252_preset._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/atm/idt77252.c", i32 3534, i32 3}
!126 = !{ptr @idt77252_preset._entry.57, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @idt77252_preset._entry_ptr.59, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/atm/idt77252.c", i32 3539, i32 3}
!130 = !{ptr @idt77252_preset._entry.60, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @idt77252_preset._entry_ptr.62, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/atm/idt77252.c", i32 3546, i32 3}
!134 = !{ptr @idt77252_preset._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @idt77252_preset._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/atm/idt77252.c", i32 3559, i32 2}
!138 = !{ptr @idt77252_preset._entry.66, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @idt77252_preset._entry_ptr.68, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @idt77252_ops, !141, !"idt77252_ops", i1 false, i1 false}
!141 = !{!"../drivers/atm/idt77252.c", i32 137, i32 32}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/atm/idt77252.c", i32 3020, i32 2}
!144 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @idt77252_dev_close._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @idt77252_dev_close._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/atm/idt77252.c", i32 2906, i32 5}
!149 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @close_card_oam._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @close_card_oam._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @skb_queue_head_init.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!154 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/atm/idt77252.c", i32 2395, i32 3}
!157 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @idt77252_open._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @idt77252_open._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/atm/idt77252.c", i32 2400, i32 3}
!162 = !{ptr @idt77252_open._entry.76, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @idt77252_open._entry_ptr.78, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/atm/idt77252.c", i32 2408, i32 2}
!166 = !{ptr @idt77252_open._entry.79, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @idt77252_open._entry_ptr.81, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/atm/idt77252.c", i32 2416, i32 3}
!170 = !{ptr @idt77252_open._entry.82, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @idt77252_open._entry_ptr.84, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/atm/idt77252.c", i32 2425, i32 4}
!174 = !{ptr @idt77252_open._entry.85, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @idt77252_open._entry_ptr.87, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @idt77252_open.__key, !177, !"__key", i1 false, i1 false}
!177 = !{!"../drivers/atm/idt77252.c", i32 2432, i32 3}
!178 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/atm/idt77252.c", i32 2438, i32 2}
!181 = !{ptr @idt77252_open._entry.89, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @idt77252_open._entry_ptr.91, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/atm/idt77252.c", i32 2453, i32 3}
!188 = !{ptr @idt77252_open._entry.95, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @idt77252_open._entry_ptr.97, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/atm/idt77252.c", i32 2263, i32 3}
!193 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @idt77252_init_tx._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @idt77252_init_tx._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/atm/idt77252.c", i32 2269, i32 3}
!198 = !{ptr @idt77252_init_tx._entry.101, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @idt77252_init_tx._entry_ptr.103, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/atm/idt77252.c", i32 2277, i32 3}
!202 = !{ptr @idt77252_init_tx._entry.104, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @idt77252_init_tx._entry_ptr.106, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @alloc_scq.__key, !205, !"__key", i1 false, i1 false}
!205 = !{!"../drivers/atm/idt77252.c", i32 655, i32 2}
!206 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @alloc_scq.__key.108, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/atm/idt77252.c", i32 656, i32 2}
!209 = !{ptr @.str.109, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/atm/idt77252.c", i32 661, i32 2}
!212 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @alloc_scq._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @alloc_scq._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.112, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/atm/idt77252.c", i32 1744, i32 3}
!217 = !{ptr @.str.113, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @set_tct._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @set_tct._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @set_tct._entry.114, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/atm/idt77252.c", i32 1758, i32 3}
!222 = !{ptr @set_tct._entry_ptr.115, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/atm/idt77252.c", i32 2141, i32 3}
!225 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @idt77252_init_cbr._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @idt77252_init_cbr._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/atm/idt77252.c", i32 2155, i32 2}
!230 = !{ptr @idt77252_init_cbr._entry.118, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @idt77252_init_cbr._entry_ptr.120, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.122, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/atm/idt77252.c", i32 2167, i32 4}
!234 = !{ptr @idt77252_init_cbr._entry.121, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @idt77252_init_cbr._entry_ptr.123, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/atm/idt77252.c", i32 2173, i32 3}
!238 = !{ptr @idt77252_init_cbr._entry.124, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @idt77252_init_cbr._entry_ptr.126, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.128, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/atm/idt77252.c", i32 2179, i32 3}
!242 = !{ptr @idt77252_init_cbr._entry.127, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @idt77252_init_cbr._entry_ptr.129, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.131, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/atm/idt77252.c", i32 2190, i32 3}
!246 = !{ptr @idt77252_init_cbr._entry.130, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @idt77252_init_cbr._entry_ptr.132, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.134, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/atm/idt77252.c", i32 2196, i32 2}
!250 = !{ptr @idt77252_init_cbr._entry.133, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @idt77252_init_cbr._entry_ptr.135, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.136, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/atm/idt77252.c", i32 1608, i32 3}
!254 = !{ptr @.str.137, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @__fill_tst._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @__fill_tst._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/atm/idt77252.c", i32 1612, i32 2}
!259 = !{ptr @__fill_tst._entry.138, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @__fill_tst._entry_ptr.140, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @idt77252_init_est.__key, !262, !"__key", i1 false, i1 false}
!262 = !{!"../drivers/atm/idt77252.c", i32 2125, i32 2}
!263 = !{ptr @.str.141, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @rate_to_log, !265, !"rate_to_log", i1 false, i1 false}
!265 = !{!"../drivers/atm/idt77252_tables.h", i32 267, i32 22}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/atm/idt77252.c", i32 2368, i32 2}
!268 = !{ptr @.str.143, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @idt77252_init_rx._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @idt77252_init_rx._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.144, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/atm/idt77252.c", i32 2493, i32 2}
!273 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @idt77252_close._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @idt77252_close._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @idt77252_close._entry.146, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../drivers/atm/idt77252.c", i32 2516, i32 4}
!278 = !{ptr @idt77252_close._entry_ptr.147, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.149, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/atm/idt77252.c", i32 2543, i32 5}
!281 = !{ptr @idt77252_close._entry.148, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @idt77252_close._entry_ptr.150, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.151, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/atm/idt77252.c", i32 1946, i32 3}
!285 = !{ptr @.str.152, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @idt77252_send_skb._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @idt77252_send_skb._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.154, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/atm/idt77252.c", i32 1952, i32 3}
!290 = !{ptr @idt77252_send_skb._entry.153, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @idt77252_send_skb._entry_ptr.155, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @idt77252_send_skb._entry.156, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/atm/idt77252.c", i32 1964, i32 3}
!294 = !{ptr @idt77252_send_skb._entry_ptr.157, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.159, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/atm/idt77252.c", i32 1971, i32 3}
!297 = !{ptr @idt77252_send_skb._entry.158, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @idt77252_send_skb._entry_ptr.160, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.161, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/atm/idt77252.c", i32 841, i32 3}
!301 = !{ptr @.str.162, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @queue_skb._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @queue_skb._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.164, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/atm/idt77252.c", i32 845, i32 2}
!306 = !{ptr @queue_skb._entry.163, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @queue_skb._entry_ptr.165, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.167, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/atm/idt77252.c", i32 874, i32 3}
!310 = !{ptr @queue_skb._entry.166, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @queue_skb._entry_ptr.168, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.170, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/atm/idt77252.c", i32 909, i32 3}
!314 = !{ptr @queue_skb._entry.169, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @queue_skb._entry_ptr.171, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.172, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/atm/idt77252.c", i32 710, i32 2}
!318 = !{ptr @.str.173, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @push_on_scq._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @push_on_scq._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.175, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/atm/idt77252.c", i32 768, i32 2}
!323 = !{ptr @push_on_scq._entry.174, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @push_on_scq._entry_ptr.176, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.178, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/atm/idt77252.c", i32 770, i32 2}
!327 = !{ptr @push_on_scq._entry.177, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @push_on_scq._entry_ptr.179, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.181, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/atm/idt77252.c", i32 778, i32 3}
!331 = !{ptr @push_on_scq._entry.180, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @push_on_scq._entry_ptr.182, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.183, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/atm/idt77252.c", i32 553, i32 2}
!335 = !{ptr @.str.184, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @idt77252_tx_dump._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @idt77252_tx_dump._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.186, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/atm/idt77252.c", i32 568, i32 3}
!340 = !{ptr @idt77252_tx_dump._entry.185, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @idt77252_tx_dump._entry_ptr.187, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.188, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/atm/idt77252.c", i32 539, i32 2}
!344 = !{ptr @.str.189, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @dump_tct._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @dump_tct._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.191, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/atm/idt77252.c", i32 541, i32 3}
!349 = !{ptr @dump_tct._entry.190, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @dump_tct._entry_ptr.192, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.194, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/atm/idt77252.c", i32 543, i32 2}
!353 = !{ptr @dump_tct._entry.193, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @dump_tct._entry_ptr.195, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.196, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/atm/idt77252.c", i32 2002, i32 3}
!357 = !{ptr @.str.197, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @idt77252_send_oam._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @idt77252_send_oam._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.198, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/atm/idt77252.c", i32 232, i32 3}
!362 = !{ptr @.str.199, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @write_utility._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @write_utility._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.200, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/atm/idt77252.c", i32 213, i32 3}
!367 = !{ptr @read_utility._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @read_utility._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.201, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/atm/idt77252.c", i32 2631, i32 24}
!371 = !{ptr @.str.202, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/atm/idt77252.c", i32 2633, i32 24}
!373 = !{ptr @.str.203, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/atm/idt77252.c", i32 2635, i32 24}
!375 = !{ptr @.str.204, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/atm/idt77252.c", i32 2637, i32 24}
!377 = !{ptr @.str.205, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/atm/idt77252.c", i32 2639, i32 24}
!379 = !{ptr @.str.206, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/atm/idt77252.c", i32 2641, i32 24}
!381 = !{ptr @.str.207, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/atm/idt77252.c", i32 2643, i32 24}
!383 = !{ptr @.str.208, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/atm/idt77252.c", i32 2645, i32 24}
!385 = !{ptr @.str.209, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/atm/idt77252.c", i32 2647, i32 24}
!387 = !{ptr @.str.210, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/atm/idt77252.c", i32 2649, i32 24}
!389 = !{ptr @.str.211, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/atm/idt77252.c", i32 2651, i32 24}
!391 = !{ptr @.str.212, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/atm/idt77252.c", i32 2653, i32 24}
!393 = !{ptr @.str.213, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/atm/idt77252.c", i32 2655, i32 24}
!395 = !{ptr @.str.214, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/atm/idt77252.c", i32 2657, i32 24}
!397 = !{ptr @.str.215, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/atm/idt77252.c", i32 2659, i32 24}
!399 = !{ptr @.str.216, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/atm/idt77252.c", i32 2680, i32 19}
!401 = !{ptr @.str.217, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/atm/idt77252.c", i32 3259, i32 3}
!403 = !{ptr @.str.218, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @init_card._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @init_card._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.220, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/atm/idt77252.c", i32 3268, i32 2}
!408 = !{ptr @init_card._entry.219, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @init_card._entry_ptr.221, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.223, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/atm/idt77252.c", i32 3270, i32 3}
!412 = !{ptr @init_card._entry.222, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @init_card._entry_ptr.224, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.226, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/atm/idt77252.c", i32 3275, i32 3}
!416 = !{ptr @init_card._entry.225, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @init_card._entry_ptr.227, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.229, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/atm/idt77252.c", i32 3278, i32 4}
!420 = !{ptr @init_card._entry.228, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @init_card._entry_ptr.230, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.232, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/atm/idt77252.c", i32 3284, i32 2}
!424 = !{ptr @init_card._entry.231, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @init_card._entry_ptr.233, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.235, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/atm/idt77252.c", i32 3286, i32 3}
!428 = !{ptr @init_card._entry.234, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @init_card._entry_ptr.236, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.238, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/atm/idt77252.c", i32 3291, i32 3}
!432 = !{ptr @init_card._entry.237, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @init_card._entry_ptr.239, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.241, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/atm/idt77252.c", i32 3294, i32 4}
!436 = !{ptr @init_card._entry.240, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @init_card._entry_ptr.242, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.244, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/atm/idt77252.c", i32 3301, i32 3}
!440 = !{ptr @init_card._entry.243, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @init_card._entry_ptr.245, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.247, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/atm/idt77252.c", i32 3304, i32 2}
!444 = !{ptr @init_card._entry.246, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @init_card._entry_ptr.248, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.250, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/atm/idt77252.c", i32 3307, i32 3}
!448 = !{ptr @init_card._entry.249, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @init_card._entry_ptr.251, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.253, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/atm/idt77252.c", i32 3311, i32 2}
!452 = !{ptr @init_card._entry.252, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @init_card._entry_ptr.254, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.256, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/atm/idt77252.c", i32 3317, i32 2}
!456 = !{ptr @init_card._entry.255, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @init_card._entry_ptr.257, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.259, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/atm/idt77252.c", i32 3380, i32 2}
!460 = !{ptr @init_card._entry.258, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @init_card._entry_ptr.260, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.262, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/atm/idt77252.c", i32 3392, i32 3}
!464 = !{ptr @init_card._entry.261, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @init_card._entry_ptr.263, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.265, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/atm/idt77252.c", i32 3397, i32 2}
!468 = !{ptr @init_card._entry.264, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @init_card._entry_ptr.266, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.268, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/atm/idt77252.c", i32 3401, i32 2}
!472 = !{ptr @init_card._entry.267, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @init_card._entry_ptr.269, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @init_card._entry.270, !475, !"_entry", i1 false, i1 false}
!475 = !{!"../drivers/atm/idt77252.c", i32 3404, i32 3}
!476 = !{ptr @init_card._entry_ptr.271, !475, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.273, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/atm/idt77252.c", i32 3410, i32 2}
!479 = !{ptr @init_card._entry.272, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @init_card._entry_ptr.274, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @init_card._entry.275, !482, !"_entry", i1 false, i1 false}
!482 = !{!"../drivers/atm/idt77252.c", i32 3414, i32 3}
!483 = !{ptr @init_card._entry_ptr.276, !482, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.278, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/atm/idt77252.c", i32 3420, i32 2}
!486 = !{ptr @init_card._entry.277, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @init_card._entry_ptr.279, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @init_card._entry.280, !489, !"_entry", i1 false, i1 false}
!489 = !{!"../drivers/atm/idt77252.c", i32 3424, i32 3}
!490 = !{ptr @init_card._entry_ptr.281, !489, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.283, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/atm/idt77252.c", i32 3434, i32 3}
!493 = !{ptr @init_card._entry.282, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @init_card._entry_ptr.284, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.286, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/atm/idt77252.c", i32 3439, i32 3}
!497 = !{ptr @init_card._entry.285, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @init_card._entry_ptr.287, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.289, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/atm/idt77252.c", i32 3458, i32 2}
!501 = !{ptr @init_card._entry.288, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @init_card._entry_ptr.290, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.291, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/atm/idt77252.c", i32 3495, i32 17}
!505 = !{ptr @.str.293, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/atm/idt77252.c", i32 3500, i32 3}
!507 = !{ptr @init_card._entry.292, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @init_card._entry_ptr.294, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.296, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/atm/idt77252.c", i32 3511, i32 2}
!511 = !{ptr @init_card._entry.295, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @init_card._entry_ptr.297, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.298, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/atm/idt77252.c", i32 2717, i32 3}
!515 = !{ptr @.str.299, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @idt77252_interrupt._entry, !514, !"_entry", i1 false, i1 false}
!517 = !{ptr @idt77252_interrupt._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.301, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/atm/idt77252.c", i32 2724, i32 3}
!520 = !{ptr @idt77252_interrupt._entry.300, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @idt77252_interrupt._entry_ptr.302, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.304, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/atm/idt77252.c", i32 2729, i32 3}
!524 = !{ptr @idt77252_interrupt._entry.303, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @idt77252_interrupt._entry_ptr.305, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.307, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/atm/idt77252.c", i32 2736, i32 3}
!528 = !{ptr @idt77252_interrupt._entry.306, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @idt77252_interrupt._entry_ptr.308, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.310, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/atm/idt77252.c", i32 2741, i32 3}
!532 = !{ptr @idt77252_interrupt._entry.309, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @idt77252_interrupt._entry_ptr.311, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.313, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/atm/idt77252.c", i32 2747, i32 3}
!536 = !{ptr @idt77252_interrupt._entry.312, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @idt77252_interrupt._entry_ptr.314, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.316, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/atm/idt77252.c", i32 2752, i32 3}
!540 = !{ptr @idt77252_interrupt._entry.315, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @idt77252_interrupt._entry_ptr.317, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.319, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/atm/idt77252.c", i32 2757, i32 3}
!544 = !{ptr @idt77252_interrupt._entry.318, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @idt77252_interrupt._entry_ptr.320, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.322, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/atm/idt77252.c", i32 2762, i32 3}
!548 = !{ptr @idt77252_interrupt._entry.321, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @idt77252_interrupt._entry_ptr.323, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.325, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/atm/idt77252.c", i32 2768, i32 3}
!552 = !{ptr @idt77252_interrupt._entry.324, !551, !"_entry", i1 false, i1 false}
!553 = !{ptr @idt77252_interrupt._entry_ptr.326, !551, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.328, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/atm/idt77252.c", i32 2779, i32 3}
!556 = !{ptr @idt77252_interrupt._entry.327, !555, !"_entry", i1 false, i1 false}
!557 = !{ptr @idt77252_interrupt._entry_ptr.329, !555, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.330, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/atm/idt77252.c", i32 1416, i32 2}
!560 = !{ptr @.str.331, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @idt77252_tx._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @idt77252_tx._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.333, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/atm/idt77252.c", i32 1418, i32 2}
!565 = !{ptr @idt77252_tx._entry.332, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @idt77252_tx._entry_ptr.334, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.336, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/atm/idt77252.c", i32 1429, i32 3}
!569 = !{ptr @idt77252_tx._entry.335, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @idt77252_tx._entry_ptr.337, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.339, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/atm/idt77252.c", i32 1435, i32 4}
!573 = !{ptr @idt77252_tx._entry.338, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @idt77252_tx._entry_ptr.340, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.342, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/atm/idt77252.c", i32 1453, i32 5}
!577 = !{ptr @idt77252_tx._entry.341, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @idt77252_tx._entry_ptr.343, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.345, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/atm/idt77252.c", i32 1458, i32 4}
!581 = !{ptr @idt77252_tx._entry.344, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @idt77252_tx._entry_ptr.346, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.348, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/atm/idt77252.c", i32 1470, i32 5}
!585 = !{ptr @idt77252_tx._entry.347, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @idt77252_tx._entry_ptr.349, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.351, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/atm/idt77252.c", i32 1488, i32 5}
!589 = !{ptr @idt77252_tx._entry.350, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @idt77252_tx._entry_ptr.352, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.354, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/atm/idt77252.c", i32 1496, i32 5}
!593 = !{ptr @idt77252_tx._entry.353, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @idt77252_tx._entry_ptr.355, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.357, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/atm/idt77252.c", i32 1514, i32 3}
!597 = !{ptr @idt77252_tx._entry.356, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @idt77252_tx._entry_ptr.358, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.360, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/atm/idt77252.c", i32 1524, i32 2}
!601 = !{ptr @idt77252_tx._entry.359, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @idt77252_tx._entry_ptr.361, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.362, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/atm/idt77252.c", i32 797, i32 2}
!605 = !{ptr @.str.363, !604, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @drain_scq._entry, !604, !"_entry", i1 false, i1 false}
!607 = !{ptr @drain_scq._entry_ptr, !604, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.365, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/atm/idt77252.c", i32 802, i32 3}
!610 = !{ptr @drain_scq._entry.364, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @drain_scq._entry_ptr.366, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.367, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/atm/idt77252.c", i32 1218, i32 3}
!614 = !{ptr @.str.368, !613, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @idt77252_rx._entry, !613, !"_entry", i1 false, i1 false}
!616 = !{ptr @idt77252_rx._entry_ptr, !613, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.369, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/atm/idt77252.c", i32 1024, i32 3}
!619 = !{ptr @.str.370, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @dequeue_rx._entry, !618, !"_entry", i1 false, i1 false}
!621 = !{ptr @dequeue_rx._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.372, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/atm/idt77252.c", i32 1031, i32 3}
!624 = !{ptr @dequeue_rx._entry.371, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @dequeue_rx._entry_ptr.373, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.375, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/atm/idt77252.c", i32 1042, i32 2}
!628 = !{ptr @dequeue_rx._entry.374, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @dequeue_rx._entry_ptr.376, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.378, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/atm/idt77252.c", i32 1046, i32 3}
!632 = !{ptr @dequeue_rx._entry.377, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @dequeue_rx._entry_ptr.379, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.381, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/atm/idt77252.c", i32 1054, i32 3}
!636 = !{ptr @dequeue_rx._entry.380, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @dequeue_rx._entry_ptr.382, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.384, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/atm/idt77252.c", i32 1075, i32 5}
!640 = !{ptr @dequeue_rx._entry.383, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @dequeue_rx._entry_ptr.385, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @.str.387, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/atm/idt77252.c", i32 1081, i32 5}
!644 = !{ptr @dequeue_rx._entry.386, !643, !"_entry", i1 false, i1 false}
!645 = !{ptr @dequeue_rx._entry_ptr.388, !643, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.390, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/atm/idt77252.c", i32 1108, i32 3}
!648 = !{ptr @dequeue_rx._entry.389, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @dequeue_rx._entry_ptr.391, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.393, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/atm/idt77252.c", i32 1129, i32 3}
!652 = !{ptr @dequeue_rx._entry.392, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @dequeue_rx._entry_ptr.394, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.396, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/atm/idt77252.c", i32 1132, i32 4}
!656 = !{ptr @dequeue_rx._entry.395, !655, !"_entry", i1 false, i1 false}
!657 = !{ptr @dequeue_rx._entry_ptr.397, !655, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @.str.399, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/atm/idt77252.c", i32 1140, i32 4}
!660 = !{ptr @dequeue_rx._entry.398, !659, !"_entry", i1 false, i1 false}
!661 = !{ptr @dequeue_rx._entry_ptr.400, !659, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @.str.402, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/atm/idt77252.c", i32 1150, i32 5}
!664 = !{ptr @dequeue_rx._entry.401, !663, !"_entry", i1 false, i1 false}
!665 = !{ptr @dequeue_rx._entry_ptr.403, !663, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @.str.404, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/atm/idt77252.c", i32 1274, i32 4}
!668 = !{ptr @.str.405, !667, !"<string literal>", i1 false, i1 false}
!669 = !{ptr @idt77252_rx_raw._entry, !667, !"_entry", i1 false, i1 false}
!670 = !{ptr @idt77252_rx_raw._entry_ptr, !667, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.407, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/atm/idt77252.c", i32 1281, i32 5}
!673 = !{ptr @idt77252_rx_raw._entry.406, !672, !"_entry", i1 false, i1 false}
!674 = !{ptr @idt77252_rx_raw._entry_ptr.408, !672, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @idt77252_rx_raw._entry.409, !676, !"_entry", i1 false, i1 false}
!676 = !{!"../drivers/atm/idt77252.c", i32 1282, i32 4}
!677 = !{ptr @idt77252_rx_raw._entry_ptr.410, !676, !"_entry_ptr", i1 false, i1 false}
!678 = !{ptr @idt77252_rx_raw._entry.411, !679, !"_entry", i1 false, i1 false}
!679 = !{!"../drivers/atm/idt77252.c", i32 1287, i32 4}
!680 = !{ptr @idt77252_rx_raw._entry_ptr.412, !679, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @idt77252_rx_raw._entry.413, !682, !"_entry", i1 false, i1 false}
!682 = !{!"../drivers/atm/idt77252.c", i32 1294, i32 4}
!683 = !{ptr @idt77252_rx_raw._entry_ptr.414, !682, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.416, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/atm/idt77252.c", i32 1302, i32 4}
!686 = !{ptr @idt77252_rx_raw._entry.415, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @idt77252_rx_raw._entry_ptr.417, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.419, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/atm/idt77252.c", i32 1309, i32 4}
!690 = !{ptr @idt77252_rx_raw._entry.418, !689, !"_entry", i1 false, i1 false}
!691 = !{ptr @idt77252_rx_raw._entry_ptr.420, !689, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @.str.422, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/atm/idt77252.c", i32 1316, i32 4}
!694 = !{ptr @idt77252_rx_raw._entry.421, !693, !"_entry", i1 false, i1 false}
!695 = !{ptr @idt77252_rx_raw._entry_ptr.423, !693, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @.str.425, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/atm/idt77252.c", i32 1357, i32 5}
!698 = !{ptr @idt77252_rx_raw._entry.424, !697, !"_entry", i1 false, i1 false}
!699 = !{ptr @idt77252_rx_raw._entry_ptr.426, !697, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @.str.427, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/atm/idt77252.c", i32 3208, i32 2}
!702 = !{ptr @.str.428, !701, !"<string literal>", i1 false, i1 false}
!703 = !{ptr @init_sram._entry, !701, !"_entry", i1 false, i1 false}
!704 = !{ptr @init_sram._entry_ptr, !701, !"_entry_ptr", i1 false, i1 false}
!705 = !{ptr @.str.430, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/atm/idt77252.c", i32 3212, i32 2}
!707 = !{ptr @init_sram._entry.429, !706, !"_entry", i1 false, i1 false}
!708 = !{ptr @init_sram._entry_ptr.431, !706, !"_entry_ptr", i1 false, i1 false}
!709 = !{ptr @.str.433, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/atm/idt77252.c", i32 3232, i32 2}
!711 = !{ptr @init_sram._entry.432, !710, !"_entry", i1 false, i1 false}
!712 = !{ptr @init_sram._entry_ptr.434, !710, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @.str.436, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/atm/idt77252.c", i32 3236, i32 2}
!715 = !{ptr @init_sram._entry.435, !714, !"_entry", i1 false, i1 false}
!716 = !{ptr @init_sram._entry_ptr.437, !714, !"_entry_ptr", i1 false, i1 false}
!717 = !{ptr @.str.439, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/atm/idt77252.c", i32 3240, i32 2}
!719 = !{ptr @init_sram._entry.438, !718, !"_entry", i1 false, i1 false}
!720 = !{ptr @init_sram._entry_ptr.440, !718, !"_entry_ptr", i1 false, i1 false}
!721 = !{ptr @log_to_rate, !722, !"log_to_rate", i1 false, i1 false}
!722 = !{!"../drivers/atm/idt77252_tables.h", i32 7, i32 21}
!723 = !{ptr @.str.441, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/atm/idt77252.c", i32 1380, i32 3}
!725 = !{ptr @.str.442, !724, !"<string literal>", i1 false, i1 false}
!726 = !{ptr @init_tsq._entry, !724, !"_entry", i1 false, i1 false}
!727 = !{ptr @init_tsq._entry_ptr, !724, !"_entry_ptr", i1 false, i1 false}
!728 = !{ptr @.str.443, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/atm/idt77252.c", i32 978, i32 3}
!730 = !{ptr @.str.444, !729, !"<string literal>", i1 false, i1 false}
!731 = !{ptr @init_rsq._entry, !729, !"_entry", i1 false, i1 false}
!732 = !{ptr @init_rsq._entry_ptr, !729, !"_entry_ptr", i1 false, i1 false}
!733 = !{ptr @.str.446, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/atm/idt77252.c", i32 991, i32 2}
!735 = !{ptr @init_rsq._entry.445, !734, !"_entry", i1 false, i1 false}
!736 = !{ptr @init_rsq._entry_ptr.447, !734, !"_entry_ptr", i1 false, i1 false}
!737 = !{ptr @.str.449, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/atm/idt77252.c", i32 994, i32 2}
!739 = !{ptr @init_rsq._entry.448, !738, !"_entry", i1 false, i1 false}
!740 = !{ptr @init_rsq._entry_ptr.450, !738, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @.str.451, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/atm/idt77252.c", i32 2961, i32 3}
!743 = !{ptr @.str.452, !742, !"<string literal>", i1 false, i1 false}
!744 = !{ptr @idt77252_dev_open._entry, !742, !"_entry", i1 false, i1 false}
!745 = !{ptr @idt77252_dev_open._entry_ptr, !742, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.454, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/atm/idt77252.c", i32 2986, i32 3}
!748 = !{ptr @idt77252_dev_open._entry.453, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @idt77252_dev_open._entry_ptr.455, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.457, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/atm/idt77252.c", i32 2991, i32 3}
!752 = !{ptr @idt77252_dev_open._entry.456, !751, !"_entry", i1 false, i1 false}
!753 = !{ptr @idt77252_dev_open._entry_ptr.458, !751, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.460, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/atm/idt77252.c", i32 2995, i32 2}
!756 = !{ptr @idt77252_dev_open._entry.459, !755, !"_entry", i1 false, i1 false}
!757 = !{ptr @idt77252_dev_open._entry_ptr.461, !755, !"_entry_ptr", i1 false, i1 false}
!758 = !{ptr @.str.462, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/atm/idt77252.c", i32 2856, i32 5}
!760 = !{ptr @.str.463, !759, !"<string literal>", i1 false, i1 false}
!761 = !{ptr @open_card_oam._entry, !759, !"_entry", i1 false, i1 false}
!762 = !{ptr @open_card_oam._entry_ptr, !759, !"_entry_ptr", i1 false, i1 false}
!763 = !{ptr @.str.464, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../drivers/atm/idt77252.c", i32 2923, i32 3}
!765 = !{ptr @open_card_ubr0._entry, !764, !"_entry", i1 false, i1 false}
!766 = !{ptr @open_card_ubr0._entry_ptr, !764, !"_entry_ptr", i1 false, i1 false}
!767 = !{ptr @open_card_ubr0._entry.465, !768, !"_entry", i1 false, i1 false}
!768 = !{!"../drivers/atm/idt77252.c", i32 2931, i32 3}
!769 = !{ptr @open_card_ubr0._entry_ptr.466, !768, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @idt77252_chain, !771, !"idt77252_chain", i1 false, i1 false}
!771 = !{!"../drivers/atm/idt77252.c", i32 151, i32 29}
!772 = !{ptr @.str.467, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/atm/idt77252.c", i32 3038, i32 3}
!774 = !{ptr @deinit_card._entry, !773, !"_entry", i1 false, i1 false}
!775 = !{ptr @deinit_card._entry_ptr, !773, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @.str.469, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/atm/idt77252.c", i32 3041, i32 2}
!778 = !{ptr @deinit_card._entry.468, !777, !"_entry", i1 false, i1 false}
!779 = !{ptr @deinit_card._entry_ptr.470, !777, !"_entry_ptr", i1 false, i1 false}
!780 = !{ptr @.str.472, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/atm/idt77252.c", i32 3075, i32 3}
!782 = !{ptr @deinit_card._entry.471, !781, !"_entry", i1 false, i1 false}
!783 = !{ptr @deinit_card._entry_ptr.473, !781, !"_entry_ptr", i1 false, i1 false}
!784 = !{ptr @.str.475, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/atm/idt77252.c", i32 3080, i32 3}
!786 = !{ptr @deinit_card._entry.474, !785, !"_entry", i1 false, i1 false}
!787 = !{ptr @deinit_card._entry_ptr.476, !785, !"_entry_ptr", i1 false, i1 false}
!788 = !{ptr @.str.478, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/atm/idt77252.c", i32 3084, i32 2}
!790 = !{ptr @deinit_card._entry.477, !789, !"_entry", i1 false, i1 false}
!791 = !{ptr @deinit_card._entry_ptr.479, !789, !"_entry_ptr", i1 false, i1 false}
!792 = !{ptr @.str.481, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/atm/idt77252.c", i32 3096, i32 2}
!794 = !{ptr @deinit_card._entry.480, !793, !"_entry", i1 false, i1 false}
!795 = !{ptr @deinit_card._entry_ptr.482, !793, !"_entry_ptr", i1 false, i1 false}
!796 = !{ptr @debug, !797, !"debug", i1 false, i1 false}
!797 = !{!"../drivers/atm/idt77252.c", i32 73, i32 22}
!798 = !{ptr @.str.483, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/atm/idt77252.c", i32 3739, i32 2}
!800 = !{ptr @.str.484, !799, !"<string literal>", i1 false, i1 false}
!801 = !{ptr @idt77252_init._entry, !799, !"_entry", i1 false, i1 false}
!802 = !{ptr @idt77252_init._entry_ptr, !799, !"_entry_ptr", i1 false, i1 false}
!803 = !{ptr @__param_str_vpibits, !14, !"__param_str_vpibits", i1 false, i1 false}
!804 = !{ptr @vpibits, !805, !"vpibits", i1 false, i1 false}
!805 = !{!"../drivers/atm/idt77252.c", i32 60, i32 21}
!806 = !{ptr @__param_str_debug, !19, !"__param_str_debug", i1 false, i1 false}
!807 = !{!"sp"}
!808 = !{i32 1, !"wchar_size", i32 2}
!809 = !{i32 1, !"min_enum_size", i32 4}
!810 = !{i32 8, !"branch-target-enforcement", i32 0}
!811 = !{i32 8, !"sign-return-address", i32 0}
!812 = !{i32 8, !"sign-return-address-all", i32 0}
!813 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!814 = !{i32 7, !"uwtable", i32 1}
!815 = !{i32 7, !"frame-pointer", i32 2}
!816 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!817 = !{i64 2157656335}
!818 = !{i64 5069096}
!819 = !{!"auto-init"}
!820 = !{i64 2157726901}
!821 = !{i64 2157728630}
!822 = !{i64 5069514}
!823 = !{i64 2157631074}
!824 = !{i64 2157632179}
!825 = !{i64 2157633120}
!826 = !{i64 2157542223}
!827 = !{i64 2157730496}
!828 = !{i64 2157730941}
!829 = !{i64 2157731435}
!830 = !{i64 2157731910}
!831 = !{i64 2157732424}
!832 = !{i64 2157733187}
!833 = !{i64 2157688501}
!834 = !{i64 2157690158}
!835 = !{i64 2157697065}
!836 = !{i64 2157697994}
!837 = !{i64 2157663283}
!838 = !{i64 2157663840}
!839 = !{i64 2157664397}
!840 = !{i64 2157664956}
!841 = !{i64 2157666987}
!842 = !{i64 2157668986}
!843 = !{i64 2157670962}
!844 = !{i64 2157673053}
!845 = !{i64 2157512892}
!846 = !{i64 2157513410}
!847 = !{i64 2157462347}
!848 = !{i64 2157462961}
!849 = !{i64 2157464952}
!850 = !{i64 2157469891}
!851 = !{i64 2157470146}
!852 = !{i64 2157470401}
!853 = !{i64 2157699782}
!854 = !{i64 2157700196}
!855 = !{i64 2157702202}
!856 = !{i64 2157718948}
!857 = !{i64 2157644377}
!858 = !{i64 2157645306}
!859 = !{i64 2157635460}
!860 = !{i64 2157420090}
!861 = !{i64 2157420630}
!862 = !{i64 2157641585}
!863 = !{!"branch_weights", i32 2000, i32 1}
!864 = !{i64 2157551178}
!865 = !{i64 2157552010}
!866 = !{i64 2157552407}
!867 = !{i64 2157424175}
!868 = !{i64 2157424635}
!869 = !{i64 2157636489}
!870 = !{i64 2157650737}
!871 = !{i64 2157651672}
!872 = !{i64 2157599756}
!873 = !{i64 2157604210}
!874 = !{i64 2148429289, i64 2148429315, i64 2148429344, i64 2148429378, i64 2148429409, i64 2148429432}
!875 = !{i64 2148430819, i64 2148430851, i64 2148430880, i64 2148430914, i64 2148430945, i64 2148430968}
!876 = !{!"branch_weights", i32 1, i32 2000}
!877 = !{i64 2157429532}
!878 = !{i64 2157430008}
!879 = !{i64 2157426833}
!880 = !{i64 2157427599}
!881 = !{i64 2157604842}
!882 = !{i64 2157421266}
!883 = !{i64 2157422038}
!884 = !{i64 2157582146}
!885 = !{i64 2157585036}
!886 = !{i64 2157565999}
!887 = !{i64 2148431754, i64 2148431780, i64 2148431809, i64 2148431843, i64 2148431874, i64 2148431897}
!888 = !{i64 2157442560}
!889 = !{i64 2157444266}
!890 = !{i64 2157607437}
!891 = !{i64 2157609183}
!892 = !{i64 2157605850}
!893 = !{i64 2157606379}
!894 = !{i64 2157606908}
!895 = !{i64 2157496647}
!896 = !{i64 2157622758}
!897 = !{i64 2157623709}
!898 = !{i64 832989, i64 833050}
!899 = !{i64 835721}
!900 = !{i64 836006}
!901 = !{i64 2157519321}
!902 = !{i64 2157519576}
!903 = !{i64 2157519831}
!904 = !{i64 2157535311}
!905 = !{i64 2157538581}
!906 = !{i64 2157538836}
!907 = !{i64 2157488710}
!908 = !{i64 2157495474}
