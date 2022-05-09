; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/cxgbit/cxgbit_main.c_pt.bc'
source_filename = "../drivers/target/iscsi/cxgbit/cxgbit_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%union.anon.165 = type { i32 }
%struct.cxgbit_device = type { %struct.list_head, %struct.cxgb4_lld_info, [32 x ptr], %struct.spinlock, [4 x [2 x i8]], %struct.cxgbit_list_head, i32, %struct.kref, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgbit_list_head = type { %struct.list_head, %struct.spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.cxgbit_dcb_work = type { %struct.dcb_app_type, %struct.work_struct }
%struct.dcb_app_type = type { i32, %struct.dcb_app, %struct.list_head, i8 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.cxgbit_sock = type { %struct.cxgbit_sock_common, ptr, ptr, ptr, ptr, %struct.list_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.cxgbit_sock_common = type { ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.cxgbit_wr_wait, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.190 }
%union.anon.190 = type { ptr, [124 x i8] }
%struct.cxgbit_wr_wait = type { %struct.completion, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cxgbit_lro_cb = type { ptr, i32, i32, i8, i8 }
%struct.cpl_iscsi_hdr = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8 }
%union.opcode_tid = type { i32 }
%struct.cxgbit_lro_pdu_cb = type { i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr }
%struct.cpl_iscsi_data = type { %union.opcode_tid, [2 x i8], i16, i32, i16, i8, i8 }
%struct.cpl_rx_iscsi_cmp = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8, i32, i32 }
%struct.cpl_rx_data_ddp = type { %union.opcode_tid, i16, i16, i32, %union.anon.202, i32, i32 }
%union.anon.202 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }

@cdev_list_head = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cdev_list_head, ptr @cdev_list_head }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdev_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@cdev_list_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cdev_list_lock, i64 52), ptr getelementptr (i8, ptr @cdev_list_lock, i64 52) }, ptr @cdev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdev_list_lock\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_dcbevent_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cxgbit_dcbevent_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cxgbit_transport = internal global { %struct.iscsit_transport, [44 x i8] } { %struct.iscsit_transport { [16 x i8] c"cxgbit\00\00\00\00\00\00\00\00\00\00", i32 6, i8 0, i32 88, ptr null, %struct.list_head zeroinitializer, ptr @cxgbit_setup_np, ptr @cxgbit_accept_np, ptr @cxgbit_free_np, ptr null, ptr @cxgbit_free_conn, ptr @cxgbit_get_login_rx, ptr @cxgbit_put_login_tx, ptr @iscsit_immediate_queue, ptr @iscsit_response_queue, ptr @iscsit_build_r2ts_for_cmd, ptr @iscsit_queue_rsp, ptr @iscsit_queue_rsp, ptr @iscsit_aborted_task, ptr @cxgbit_xmit_pdu, ptr @cxgbit_unmap_cmd, ptr @cxgbit_get_rx_pdu, ptr @cxgbit_validate_params, ptr @cxgbit_get_r2t_ttt, ptr @cxgbit_get_sup_prot_ops }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cxgbit__671_740_cxgbit_init6 = internal global ptr @cxgbit_init, section ".initcall6.init", align 4
@__exitcall_cxgbit_exit = internal global ptr @cxgbit_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description672 = internal constant [55 x i8] c"cxgbit.description=Chelsio iSCSI target offload driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author673 = internal constant [37 x i8] c"cxgbit.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_version674 = internal constant [24 x i8] c"cxgbit.version=1.0.0-ko\00", section ".modinfo", align 1
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgbit\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1.0.0-ko\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.4 }, section "__modver", align 4
@__UNIQUE_ID_file675 = internal constant [47 x i8] c"cxgbit.file=drivers/target/iscsi/cxgbit/cxgbit\00", section ".modinfo", align 1
@__UNIQUE_ID_license676 = internal constant [19 x i8] c"cxgbit.license=GPL\00", section ".modinfo", align 1
@cxgbit_dcbevent_notify.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dcb_work->work)\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxgbit_dcb_workfn.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbit_dcb_workfn\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/target/iscsi/cxgbit/cxgbit_main.c\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"priority for ifid %d is %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cxgbit: priority for ifid %d is %u\0A\00", [60 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cxgbit_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"cxgbit\00\00\00\00\00\00\00\00\00\00", ptr null, i32 16, i32 1024, i32 16, i8 0, i8 1, ptr @cxgbit_uld_add, ptr null, ptr @cxgbit_uld_state_change, ptr null, ptr @cxgbit_uld_lro_rx_handler, ptr @cxgbit_uld_lro_flush, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cxgbit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016cxgbit: %s dcb enabled.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cxgbit_init\00", [20 x i8] zeroinitializer }, align 32
@cxgbit_init._entry_ptr = internal global ptr @cxgbit_init._entry, section ".printk_index", align 4
@cxgbit_uld_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cdev->np_lock\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cxgbit: cdev %s ddp init failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgbit_uld_add\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_uld_add._entry_ptr = internal global ptr @cxgbit_uld_add._entry, section ".printk_index", align 4
@cxgbit_uld_add.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cdev->cskq.lock\00", [47 x i8] zeroinitializer }, align 32
@cxgbit_uld_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.7, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016cxgbit: cdev %s added for iSCSI target transport\0A\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_uld_add._entry_ptr.19 = internal global ptr @cxgbit_uld_add._entry.17, section ".printk_index", align 4
@cxgbit_uld_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cxgbit: cdev %s state UP.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgbit_uld_state_change\00", [40 x i8] zeroinitializer }, align 32
@cxgbit_uld_state_change._entry_ptr = internal global ptr @cxgbit_uld_state_change._entry, section ".printk_index", align 4
@cxgbit_uld_state_change._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.7, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cxgbit: cdev %s state RECOVERY.\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgbit_uld_state_change._entry_ptr.24 = internal global ptr @cxgbit_uld_state_change._entry.22, section ".printk_index", align 4
@cxgbit_uld_state_change._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.7, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cxgbit: cdev %s state DOWN.\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgbit_uld_state_change._entry_ptr.27 = internal global ptr @cxgbit_uld_state_change._entry.25, section ".printk_index", align 4
@cxgbit_uld_state_change._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.7, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cxgbit: cdev %s state DETACH.\0A\00", [63 x i8] zeroinitializer }, align 32
@cxgbit_uld_state_change._entry_ptr.30 = internal global ptr @cxgbit_uld_state_change._entry.28, section ".printk_index", align 4
@cxgbit_uld_state_change._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.7, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cxgbit: cdev %s unknown state %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@cxgbit_uld_state_change._entry_ptr.33 = internal global ptr @cxgbit_uld_state_change._entry.31, section ".printk_index", align 4
@cxgbit_uld_lro_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgbit: ? FL 0x%p,RSS%#llx,FL %#llx,len %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgbit_uld_lro_rx_handler\00", [38 x i8] zeroinitializer }, align 32
@cxgbit_uld_lro_rx_handler._entry_ptr = internal global ptr @cxgbit_uld_lro_rx_handler._entry, section ".printk_index", align 4
@cxgbit_uld_lro_rx_handler.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cdev %p, opcode 0x%x(0x%x,0x%x), skb %p.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cxgbit: cdev %p, opcode 0x%x(0x%x,0x%x), skb %p.\0A\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_cplhandlers = external dso_local local_unnamed_addr global [239 x ptr], align 4
@cxgbit_uld_lro_rx_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.7, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cxgbit: No handler for opcode 0x%x.\0A\00", [57 x i8] zeroinitializer }, align 32
@cxgbit_uld_lro_rx_handler._entry_ptr.40 = internal global ptr @cxgbit_uld_lro_rx_handler._entry.38, section ".printk_index", align 4
@cxgbit_uld_lro_rx_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.7, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cxgbit: %s OOM bailing out.\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgbit_uld_lro_rx_handler._entry_ptr.43 = internal global ptr @cxgbit_uld_lro_rx_handler._entry.41, section ".printk_index", align 4
@cxgbit_lro_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cxgbit: %s: csk NULL, op 0x%x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgbit_lro_receive\00", [45 x i8] zeroinitializer }, align 32
@cxgbit_lro_receive._entry_ptr = internal global ptr @cxgbit_lro_receive._entry, section ".printk_index", align 4
@cxgbit_process_ddpvld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgbit: tid 0x%x, status 0x%x, hcrc bad.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_process_ddpvld\00", [42 x i8] zeroinitializer }, align 32
@cxgbit_process_ddpvld._entry_ptr = internal global ptr @cxgbit_process_ddpvld._entry, section ".printk_index", align 4
@cxgbit_process_ddpvld._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgbit: tid 0x%x, status 0x%x, dcrc bad.\0A\00", [52 x i8] zeroinitializer }, align 32
@cxgbit_process_ddpvld._entry_ptr.50 = internal global ptr @cxgbit_process_ddpvld._entry.48, section ".printk_index", align 4
@cxgbit_process_ddpvld._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.7, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgbit: tid 0x%x, status 0x%x, pad bad.\0A\00", [53 x i8] zeroinitializer }, align 32
@cxgbit_process_ddpvld._entry_ptr.53 = internal global ptr @cxgbit_process_ddpvld._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [14 x i64] [i64 12, i64 8, i64 38, i64 43, i64 45, i64 50, i64 51, i64 57, i64 58, i64 65, i64 69, i64 73, i64 178, i64 195]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 8, i64 51, i64 69, i64 178]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 51, i64 178]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"cdev_list_head\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 17, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"cdev_list_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 19, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"cxgbit_dcbevent_nb\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 704, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"cxgbit_transport\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 665, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 745, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 654, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 617, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"cxgbit_uld_info\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 691, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 715, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 65, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 77, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 83, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 90, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 149, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 154, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 157, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 161, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 165, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 491, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 515, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 522, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 527, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 387, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 178, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 183, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private constant [45 x i8] c"../drivers/target/iscsi/cxgbit/cxgbit_main.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 188, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1160, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author673, ptr @__UNIQUE_ID_description672, ptr @__UNIQUE_ID_file675, ptr @__UNIQUE_ID_license676, ptr @__UNIQUE_ID_version674, ptr @__exitcall_cxgbit_exit, ptr @__initcall__kmod_cxgbit__671_740_cxgbit_init6, ptr @__modver_attr, ptr @cxgbit_exit, ptr @cxgbit_init._entry, ptr @cxgbit_init._entry_ptr, ptr @cxgbit_lro_receive._entry, ptr @cxgbit_lro_receive._entry_ptr, ptr @cxgbit_process_ddpvld._entry, ptr @cxgbit_process_ddpvld._entry.48, ptr @cxgbit_process_ddpvld._entry.51, ptr @cxgbit_process_ddpvld._entry_ptr, ptr @cxgbit_process_ddpvld._entry_ptr.50, ptr @cxgbit_process_ddpvld._entry_ptr.53, ptr @cxgbit_uld_add._entry, ptr @cxgbit_uld_add._entry.17, ptr @cxgbit_uld_add._entry_ptr, ptr @cxgbit_uld_add._entry_ptr.19, ptr @cxgbit_uld_lro_rx_handler._entry, ptr @cxgbit_uld_lro_rx_handler._entry.38, ptr @cxgbit_uld_lro_rx_handler._entry.41, ptr @cxgbit_uld_lro_rx_handler._entry_ptr, ptr @cxgbit_uld_lro_rx_handler._entry_ptr.40, ptr @cxgbit_uld_lro_rx_handler._entry_ptr.43, ptr @cxgbit_uld_state_change._entry, ptr @cxgbit_uld_state_change._entry.22, ptr @cxgbit_uld_state_change._entry.25, ptr @cxgbit_uld_state_change._entry.28, ptr @cxgbit_uld_state_change._entry.31, ptr @cxgbit_uld_state_change._entry_ptr, ptr @cxgbit_uld_state_change._entry_ptr.24, ptr @cxgbit_uld_state_change._entry_ptr.27, ptr @cxgbit_uld_state_change._entry_ptr.30, ptr @cxgbit_uld_state_change._entry_ptr.33, ptr @cdev_list_head, ptr @.str, ptr @cdev_list_lock, ptr @.str.1, ptr @cxgbit_dcbevent_nb, ptr @cxgbit_transport, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cxgbit_dcbevent_notify.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cxgbit_uld_info, ptr @.str.10, ptr @.str.11, ptr @cxgbit_uld_add.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cxgbit_uld_add.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev_list_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_dcbevent_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_transport to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_dcbevent_notify.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_add.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_state_change._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_state_change._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_state_change._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_state_change._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_lro_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_lro_rx_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_uld_lro_rx_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_lro_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_process_ddpvld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_process_ddpvld._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_process_ddpvld._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_cxgbit_free_cdev(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -392
  %iscsi_ppm.i = getelementptr i8, ptr %kref, i32 -248
  %0 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iscsi_ppm.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @cxgbi_ppm_release(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ppm_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_dcbevent_notifier(ptr noundef nonnull @cxgbit_dcbevent_nb) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %0 = load ptr, ptr @cdev_list_head, align 4
  %cmp.not17 = icmp eq ptr %0, @cdev_list_head
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cxgbit_put_cdev.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cdev.018 = phi ptr [ %tmp.0, %cxgbit_put_cdev.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %cdev.018 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %cdev.018, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cdev.018) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cdev.018, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %cdev.018 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev.018, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %cdev.018 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %cdev.018, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cdev.018, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %kref.i = getelementptr inbounds %struct.cxgbit_device, ptr %cdev.018, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cxgbit_put_cdev.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !128

if.end5.i.i.i.i.i.cxgbit_put_cdev.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_cdev.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cxgbit_put_cdev.exit

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  %iscsi_ppm.i.i.i = getelementptr %struct.cxgbit_device, ptr %cdev.018, i32 0, i32 1, i32 39
  %11 = ptrtoint ptr %iscsi_ppm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iscsi_ppm.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call1.i.i = tail call i32 @cxgbi_ppm_release(ptr noundef %14) #10
  tail call void @kfree(ptr noundef %cdev.018) #10
  br label %cxgbit_put_cdev.exit

cxgbit_put_cdev.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgbit_put_cdev.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, @cdev_list_head
  br i1 %cmp.not, label %cxgbit_put_cdev.exit.for.end_crit_edge, label %cxgbit_put_cdev.exit.for.body_crit_edge

cxgbit_put_cdev.exit.for.body_crit_edge:          ; preds = %cxgbit_put_cdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cxgbit_put_cdev.exit.for.end_crit_edge:           ; preds = %cxgbit_put_cdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cxgbit_put_cdev.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  tail call void @iscsit_unregister_transport(ptr noundef nonnull @cxgbit_transport) #10
  %call12 = tail call i32 @cxgb4_unregister_uld(i32 noundef 3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_dcbevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgbit_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cxgb4_register_uld(i32 noundef 3, ptr noundef nonnull @cxgbit_uld_info) #10
  tail call void @iscsit_register_transport(ptr noundef nonnull @cxgbit_transport) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #13
  %call1 = tail call i32 @register_dcbevent_notifier(ptr noundef nonnull @cxgbit_dcbevent_nb) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgbit_dcbevent_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 64) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %data, i32 20)
  %work = getelementptr inbounds %struct.cxgbit_dcb_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.cxgbit_dcb_work, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @cxgbit_dcbevent_notify.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry6 = getelementptr inbounds %struct.cxgbit_dcb_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry6, ptr %entry6, align 8
  %prev.i = getelementptr inbounds %struct.cxgbit_dcb_work, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cxgbit_dcb_work, ptr %call7.i.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cxgbit_dcb_workfn, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_dcb_workfn(ptr noundef %work) #0 align 64 {
entry:
  %port_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port_id) #10
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %port_id, align 1
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %dcbx = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %dcbx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dcbx, align 4
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %app = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.then.out_crit_edge [
    i8 2, label %if.then.if.end_crit_edge
    i8 4, label %if.then.if.end_crit_edge69
  ]

if.then.if.end_crit_edge69:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge69
  %priority10 = getelementptr i8, ptr %work, i32 -15
  %6 = ptrtoint ptr %priority10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priority10, align 1
  br label %do.body

if.else:                                          ; preds = %entry
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.out_crit_edge, label %if.then15

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then15:                                        ; preds = %if.else
  %app16 = getelementptr i8, ptr %work, i32 -16
  %8 = ptrtoint ptr %app16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp19.not = icmp eq i8 %9, 1
  br i1 %cmp19.not, label %if.end22, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22:                                         ; preds = %if.then15
  %priority24 = getelementptr i8, ptr %work, i32 -15
  %10 = ptrtoint ptr %priority24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priority24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool25.not = icmp eq i8 %11, 0
  br i1 %tobool25.not, label %if.end22.out_crit_edge, label %if.end27

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i8 @llvm.cttz.i8(i8 %11, i1 true), !range !130
  br label %do.body

do.body:                                          ; preds = %if.end27, %if.end
  %priority.0 = phi i8 [ %7, %if.end ], [ %12, %if.end27 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_dcb_workfn.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_dcb_workfn, %if.then39)) #10
          to label %do.end [label %if.then39], !srcloc !131

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %conv40 = zext i8 %priority.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_dcb_workfn.__UNIQUE_ID_ddebug669, ptr noundef nonnull @.str.9, i32 noundef %14, i32 noundef %conv40) #10
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %call43 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %16) #10
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end.out_crit_edge, label %do.body1.i

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body1.i:                                       ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %call47 = call ptr @cxgbit_find_device(ptr noundef nonnull %call43, ptr noundef nonnull %port_id) #10
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !132
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = call i32 @llvm.read_register.i32(metadata !116) #10
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i = add i32 %29, -1
  store i32 %add13.i, ptr %27, align 4
  %30 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !133
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !134

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #10, !srcloc !135
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %dev_put.exit.out.sink.split_crit_edge, label %if.end50

dev_put.exit.out.sink.split_crit_edge:            ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end50:                                         ; preds = %dev_put.exit
  %31 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_id, align 1
  %protocol = getelementptr i8, ptr %work, i32 -14
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol, align 2
  %cskq.i = getelementptr inbounds %struct.cxgbit_device, ptr %call47, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.cxgbit_device, ptr %call47, i32 0, i32 5, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %35 = ptrtoint ptr %cskq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn74.i = load ptr, ptr %cskq.i, align 4
  %cmp.not75.i = icmp eq ptr %.pn74.i, %cskq.i
  br i1 %cmp.not75.i, label %if.end50.cxgbit_update_dcb_priority.exit_crit_edge, label %if.end50.for.body.i_crit_edge

if.end50.for.body.i_crit_edge:                    ; preds = %if.end50
  br label %for.body.i

if.end50.cxgbit_update_dcb_priority.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_update_dcb_priority.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end50.for.body.i_crit_edge
  %.pn76.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn74.i, %if.end50.for.body.i_crit_edge ]
  %port_id5.i = getelementptr i8, ptr %.pn76.i, i32 493
  %36 = ptrtoint ptr %port_id5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port_id5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %32)
  %cmp7.not.i = icmp eq i8 %37, %32
  br i1 %cmp7.not.i, label %if.end17.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end17.i:                                       ; preds = %for.body.i
  %local_port.0.in.i = getelementptr i8, ptr %.pn76.i, i32 -338
  %38 = ptrtoint ptr %local_port.0.in.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %local_port.0.i = load i16, ptr %local_port.0.in.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %local_port.0.i, i16 %34)
  %cmp20.not.i = icmp eq i16 %local_port.0.i, %34
  br i1 %cmp20.not.i, label %if.end23.i, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %if.end17.i
  %dcb_priority24.i = getelementptr i8, ptr %.pn76.i, i32 495
  %39 = ptrtoint ptr %dcb_priority24.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dcb_priority24.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %priority.0)
  %cmp27.i = icmp eq i8 %40, %priority.0
  br i1 %cmp27.i, label %if.end23.i.for.inc.i_crit_edge, label %if.end30.i

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end30.i:                                       ; preds = %if.end23.i
  %call.i.i = call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i67 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i67, label %if.end30.i.for.inc.i_crit_edge, label %if.end32.i

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end32.i:                                       ; preds = %if.end30.i
  %rxq.i = getelementptr i8, ptr %.pn76.i, i32 8
  %lock33.i = getelementptr i8, ptr %.pn76.i, i32 20
  call void @_raw_spin_lock(ptr noundef %lock33.i) #10
  %prev.i.i.i = getelementptr i8, ptr %.pn76.i, i32 12
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %rxq.i, ptr %call.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call.i.i, ptr %42, align 4
  %qlen.i.i.i.i = getelementptr i8, ptr %.pn76.i, i32 16
  %46 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp37.i = icmp eq i32 %47, 0
  call void @_raw_spin_unlock(ptr noundef %lock33.i) #10
  br i1 %cmp37.i, label %if.then44.i, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then44.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %waitq.i = getelementptr i8, ptr %.pn76.i, i32 360
  call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %if.end32.i.for.inc.i_crit_edge, %if.end30.i.for.inc.i_crit_edge, %if.end23.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %48 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn76.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cskq.i
  br i1 %cmp.not.i, label %for.inc.i.cxgbit_update_dcb_priority.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cxgbit_update_dcb_priority.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_update_dcb_priority.exit

cxgbit_update_dcb_priority.exit:                  ; preds = %for.inc.i.cxgbit_update_dcb_priority.exit_crit_edge, %if.end50.cxgbit_update_dcb_priority.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %out.sink.split

out.sink.split:                                   ; preds = %cxgbit_update_dcb_priority.exit, %dev_put.exit.out.sink.split_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  br label %out

out:                                              ; preds = %out.sink.split, %do.end.out_crit_edge, %if.end22.out_crit_edge, %if.then15.out_crit_edge, %if.else.out_crit_edge, %if.then.out_crit_edge
  call void @kfree(ptr noundef %add.ptr) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port_id) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbit_find_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_setup_np(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_accept_np(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_free_np(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_free_conn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_get_login_rx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_put_login_tx(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_immediate_queue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_response_queue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_build_r2ts_for_cmd(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_queue_rsp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_aborted_task(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_xmit_pdu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_unmap_cmd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_get_rx_pdu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_validate_params(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_get_r2t_ttt(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgbit_get_sup_prot_ops(ptr nocapture noundef readnone %conn) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_dcbevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cxgbit_uld_add(ptr nocapture noundef readonly %lldi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 13
  %0 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adapter_type, align 4
  %2 = and i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp.i.not = icmp eq i8 %2, 64
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 400) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref, align 8
  %np_lock = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %np_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @cxgbit_uld_add.__key, i16 noundef signext 3) #10
  %lldi8 = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %lldi8, ptr %lldi, i32 148)
  %adapter_type.i = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %adapter_type.i, align 8
  %8 = and i8 %7, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %8)
  %cmp.i.not.i = icmp eq i8 %8, 80
  %iscsi_iolen.i = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 1, i32 17
  %9 = ptrtoint ptr %iscsi_iolen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iscsi_iolen.i, align 8
  %sub.i = add i32 %10, -312
  %minmaxop.i = select i1 %cmp.i.not.i, i32 15912, i32 16384
  %mdsl.0.i = tail call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 %sub.i) #10
  %and.i = and i32 %mdsl.0.i, 32764
  %mdsl26.i = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %mdsl26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %mdsl26.i, align 4
  %call9 = tail call i32 @cxgbit_ddp_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %do.end19, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end19:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end19.pci_name.exit_crit_edge

do.end19.pci_name.exit_crit_edge:                 ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end19.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %do.end19.pci_name.exit_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i) #13
  br label %if.end22

if.end22:                                         ; preds = %pci_name.exit, %if.end13.if.end22_crit_edge
  %fw_vers = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 16
  %21 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17640191, i32 %22)
  %cmp23 = icmp ugt i32 %22, 17640191
  br i1 %cmp23, label %if.then25, label %if.end22.do.body28_crit_edge

if.end22.do.body28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end22.do.body28_crit_edge
  %cskq = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 5
  %lock = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @cxgbit_uld_add.__key.15, i16 noundef signext 3) #10
  %23 = ptrtoint ptr %cskq to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cskq, ptr %cskq, align 8
  %prev.i = getelementptr inbounds %struct.cxgbit_device, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cskq, ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cdev_list_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef nonnull @cdev_list_head) #10
  br i1 %call.i.i, label %if.end.i.i57, label %do.body28.list_add_tail.exit_crit_edge

do.body28.list_add_tail.exit_crit_edge:           ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i57:                                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @cdev_list_head, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cdev_list_head, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i57, %do.body28.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  %29 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lldi, align 4
  %init_name.i.i58 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i58, align 8
  %tobool.not.i.i59 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i59, label %if.end.i.i61, label %list_add_tail.exit.pci_name.exit63_crit_edge

list_add_tail.exit.pci_name.exit63_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit63

if.end.i.i61:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i60 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %33 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i60, align 4
  br label %pci_name.exit63

pci_name.exit63:                                  ; preds = %if.end.i.i61, %list_add_tail.exit.pci_name.exit63_crit_edge
  %retval.0.i.i62 = phi ptr [ %34, %if.end.i.i61 ], [ %32, %list_add_tail.exit.pci_name.exit63_crit_edge ]
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i62) #13
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit63, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then11 ], [ %call7.i.i, %pci_name.exit63 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgbit_uld_state_change(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %state, label %do.end33 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %do.end15
    i32 3, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  %lldi = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1
  %1 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.pci_name.exit_crit_edge

sw.bb.pci_name.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %sw.bb.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %sw.bb.pci_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags3) #10
  tail call fastcc void @cxgbit_close_conn(ptr noundef %handle)
  %lldi8 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1
  %7 = ptrtoint ptr %lldi8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldi8, align 4
  %init_name.i.i49 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i49, align 8
  %tobool.not.i.i50 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i50, label %if.end.i.i52, label %sw.bb2.pci_name.exit54_crit_edge

sw.bb2.pci_name.exit54_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit54

if.end.i.i52:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i51 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %11 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i51, align 4
  br label %pci_name.exit54

pci_name.exit54:                                  ; preds = %if.end.i.i52, %sw.bb2.pci_name.exit54_crit_edge
  %retval.0.i.i53 = phi ptr [ %12, %if.end.i.i52 ], [ %10, %sw.bb2.pci_name.exit54_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i53) #13
  br label %sw.epilog

do.end15:                                         ; preds = %entry
  %lldi17 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1
  %13 = ptrtoint ptr %lldi17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldi17, align 4
  %init_name.i.i55 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i55, align 8
  %tobool.not.i.i56 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i56, label %if.end.i.i58, label %do.end15.pci_name.exit60_crit_edge

do.end15.pci_name.exit60_crit_edge:               ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit60

if.end.i.i58:                                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i57 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %17 = ptrtoint ptr %dev.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i57, align 4
  br label %pci_name.exit60

pci_name.exit60:                                  ; preds = %if.end.i.i58, %do.end15.pci_name.exit60_crit_edge
  %retval.0.i.i59 = phi ptr [ %18, %if.end.i.i58 ], [ %16, %do.end15.pci_name.exit60_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i.i59) #13
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %flags22 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags22) #10
  %lldi27 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1
  %19 = ptrtoint ptr %lldi27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lldi27, align 4
  %init_name.i.i61 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i61, align 8
  %tobool.not.i.i62 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i62, label %if.end.i.i64, label %sw.bb21.pci_name.exit66_crit_edge

sw.bb21.pci_name.exit66_crit_edge:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit66

if.end.i.i64:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i63 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i63, align 4
  br label %pci_name.exit66

pci_name.exit66:                                  ; preds = %if.end.i.i64, %sw.bb21.pci_name.exit66_crit_edge
  %retval.0.i.i65 = phi ptr [ %24, %if.end.i.i64 ], [ %22, %sw.bb21.pci_name.exit66_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %retval.0.i.i65) #13
  %cskq.i = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %25 = ptrtoint ptr %cskq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %cskq.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %cskq.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br i1 %cmp.i.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %pci_name.exit66
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_list_lock, i32 noundef 0) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %handle) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.i.list_del.exit.i_crit_edge

if.then5.i.list_del.exit.i_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then5.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %handle, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_list_lock) #10
  %kref.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !128

if.end5.i.i.i.i.i.i.sw.epilog_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  %iscsi_ppm.i.i.i.i = getelementptr %struct.cxgbit_device, ptr %handle, i32 0, i32 1, i32 39
  %36 = ptrtoint ptr %iscsi_ppm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iscsi_ppm.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call1.i.i.i = tail call i32 @cxgbi_ppm_release(ptr noundef %39) #10
  tail call void @kfree(ptr noundef %handle) #10
  br label %sw.epilog

if.else.i:                                        ; preds = %pci_name.exit66
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cxgbit_close_conn(ptr noundef %handle) #10
  br label %sw.epilog

do.end33:                                         ; preds = %entry
  %lldi35 = getelementptr inbounds %struct.cxgbit_device, ptr %handle, i32 0, i32 1
  %40 = ptrtoint ptr %lldi35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lldi35, align 4
  %init_name.i.i67 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %42 = ptrtoint ptr %init_name.i.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i67, align 8
  %tobool.not.i.i68 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i68, label %if.end.i.i70, label %do.end33.pci_name.exit72_crit_edge

do.end33.pci_name.exit72_crit_edge:               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit72

if.end.i.i70:                                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i69 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %44 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i69, align 4
  br label %pci_name.exit72

pci_name.exit72:                                  ; preds = %if.end.i.i70, %do.end33.pci_name.exit72_crit_edge
  %retval.0.i.i71 = phi ptr [ %45, %if.end.i.i70 ], [ %43, %do.end33.pci_name.exit72_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %retval.0.i.i71, i32 noundef %state) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %pci_name.exit72, %if.else.i, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, %pci_name.exit60, %pci_name.exit54, %pci_name.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgbit_uld_lro_rx_handler(ptr noundef %hndl, ptr nocapture noundef readonly %rsp, ptr noundef %gl, ptr noundef %lro_mgr, ptr noundef %napi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 51, label %entry.sw.bb_crit_edge
    i8 -78, label %entry.sw.bb_crit_edge170
    i8 69, label %entry.sw.bb_crit_edge171
    i8 73, label %entry.sw.bb_crit_edge172
    i8 -61, label %entry.sw.bb_crit_edge173
    i8 45, label %entry.sw.bb2_crit_edge
    i8 65, label %entry.sw.bb2_crit_edge174
    i8 38, label %entry.sw.bb2_crit_edge175
    i8 50, label %entry.sw.bb2_crit_edge176
    i8 43, label %entry.sw.bb2_crit_edge177
    i8 58, label %entry.sw.bb2_crit_edge178
    i8 57, label %entry.sw.bb2_crit_edge179
  ]

entry.sw.bb2_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge173:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge172:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge171:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge170:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge170, %entry.sw.bb_crit_edge171, %entry.sw.bb_crit_edge172, %entry.sw.bb_crit_edge173
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge174, %entry.sw.bb2_crit_edge175, %entry.sw.bb2_crit_edge176, %entry.sw.bb2_crit_edge177, %entry.sw.bb2_crit_edge178, %entry.sw.bb2_crit_edge179
  %lro_flush.0.off0 = phi i1 [ false, %entry.sw.bb2_crit_edge ], [ false, %entry.sw.bb2_crit_edge174 ], [ false, %entry.sw.bb2_crit_edge175 ], [ false, %entry.sw.bb2_crit_edge176 ], [ false, %entry.sw.bb2_crit_edge177 ], [ false, %entry.sw.bb2_crit_edge178 ], [ false, %entry.sw.bb2_crit_edge179 ], [ true, %sw.bb ]
  %tobool.not = icmp eq ptr %gl, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %va = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %3 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %va, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i64, ptr %rsp, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %add.ptr, %cond.false ]
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cond, align 4
  %and = and i32 %6, 16777215
  %tids = getelementptr inbounds %struct.cxgbit_device, ptr %hndl, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %10
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %12)
  %cmp.i = icmp ult i32 %sub.i, %12
  br i1 %cmp.i, label %sw.epilog, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.epilog:                                        ; preds = %cond.end
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 128
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %lro_skb = getelementptr inbounds %struct.cxgbit_sock, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %lro_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lro_skb, align 4
  %tobool4.not = icmp eq ptr %18, null
  %brmerge = or i1 %lro_flush.0.off0, %tobool4.not
  br i1 %brmerge, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cxgbit_lro_flush(ptr noundef %lro_mgr, ptr noundef nonnull %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %csk.0163 = phi ptr [ %16, %land.lhs.true.if.end_crit_edge ], [ %16, %if.then ], [ null, %sw.epilog.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ null, %cond.end.if.end_crit_edge ]
  %tobool9.not = icmp eq ptr %gl, null
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %1)
  %cmp = icmp eq i8 %1, 73
  br i1 %cmp, label %if.then12, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.then10
  %call14 = tail call fastcc i32 @cxgbit_lro_receive(ptr noundef %csk.0163, i8 noundef zeroext 73, ptr noundef %rsp, ptr noundef null, ptr noundef %lro_mgr, ptr noundef %napi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.cleanup102_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12.cleanup102_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.then10.if.end18_crit_edge
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef 40, i32 noundef 2592) #10
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end18.do.end99_crit_edge, label %if.end22

if.end18.do.end99_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

if.end22:                                         ; preds = %if.end18
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %cleanup.thread166, label %do.body3.i, !prof !128

do.body3.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !136
  unreachable

cleanup.thread166:                                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 40
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %24, 40
  store i32 %add.i, ptr %len9.i, align 4
  %arrayidx = getelementptr i64, ptr %rsp, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = call ptr @memcpy(ptr %26, ptr %arrayidx, i32 40)
  br label %if.end62

if.else:                                          ; preds = %if.end
  %va24 = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %28 = ptrtoint ptr %va24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %va24, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %31)
  %cmp26.not = icmp eq i8 %1, %31
  br i1 %cmp26.not, label %if.end35, label %do.end, !prof !128

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %rsp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rsp, align 8
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %29, align 1
  %tot_len = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 4
  %36 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tot_len, align 8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %29, i64 noundef %33, i64 noundef %35, i32 noundef %37) #13
  br label %cleanup102

if.end35:                                         ; preds = %if.else
  %38 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %1, label %if.end35.if.end49_crit_edge [
    i8 51, label %if.end35.if.then43_crit_edge
    i8 -78, label %if.end35.if.then43_crit_edge180
    i8 69, label %if.end35.if.then43_crit_edge181
  ]

if.end35.if.then43_crit_edge181:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.end35.if.then43_crit_edge180:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.end35.if.then43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43:                                        ; preds = %if.end35.if.then43_crit_edge, %if.end35.if.then43_crit_edge180, %if.end35.if.then43_crit_edge181
  %call45 = tail call fastcc i32 @cxgbit_lro_receive(ptr noundef %csk.0163, i8 noundef zeroext %1, ptr noundef %rsp, ptr noundef nonnull %gl, ptr noundef %lro_mgr, ptr noundef %napi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.cleanup102_crit_edge, label %if.then43.if.end49_crit_edge

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43.cleanup102_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %call50 = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef nonnull %gl, i32 noundef 128, i32 noundef 128) #10
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end49.do.end99_crit_edge, label %if.end49.if.end62_crit_edge, !prof !134

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end49.do.end99_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

if.end62:                                         ; preds = %if.end49.if.end62_crit_edge, %cleanup.thread166
  %skb.1 = phi ptr [ %call50, %if.end49.if.end62_crit_edge ], [ %call.i, %cleanup.thread166 ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv64 = zext i8 %42 to i32
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %42, ptr %43, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_uld_lro_rx_handler.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_uld_lro_rx_handler, %if.then77)) #10
          to label %do.end82 [label %if.then77], !srcloc !131

if.then77:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_uld_lro_rx_handler.__UNIQUE_ID_ddebug668, ptr noundef nonnull @.str.37, ptr noundef %hndl, i32 noundef %conv64, i32 noundef %46, i32 noundef %46, ptr noundef nonnull %skb.1) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %if.end62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %42)
  %cmp83 = icmp ult i8 %42, -17
  br i1 %cmp83, label %land.lhs.true85, label %do.end82.do.end93_crit_edge

do.end82.do.end93_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

land.lhs.true85:                                  ; preds = %do.end82
  %arrayidx86 = getelementptr [239 x ptr], ptr @cxgbit_cplhandlers, i32 0, i32 %conv64
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx86, align 4
  %tobool87.not = icmp eq ptr %48, null
  br i1 %tobool87.not, label %land.lhs.true85.do.end93_crit_edge, label %if.then88

land.lhs.true85.do.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %48(ptr noundef %hndl, ptr noundef nonnull %skb.1) #10
  br label %cleanup102

do.end93:                                         ; preds = %land.lhs.true85.do.end93_crit_edge, %do.end82.do.end93_crit_edge
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv64) #13
  tail call void @__kfree_skb(ptr noundef nonnull %skb.1) #10
  br label %cleanup102

do.end99:                                         ; preds = %if.end49.do.end99_crit_edge, %if.end18.do.end99_crit_edge
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35) #13
  br label %cleanup102

cleanup102:                                       ; preds = %do.end99, %do.end93, %if.then88, %if.then43.cleanup102_crit_edge, %do.end, %if.then12.cleanup102_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ 1, %do.end99 ], [ 0, %if.then43.cleanup102_crit_edge ], [ 0, %do.end93 ], [ 0, %if.then88 ], [ 0, %if.then12.cleanup102_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_uld_lro_flush(ptr noundef %lro_mgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lroq = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3
  %0 = ptrtoint ptr %lroq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lroq, align 4
  %cmp.i3 = icmp eq ptr %1, %lroq
  %tobool.not24 = icmp eq ptr %1, null
  %tobool.not5 = or i1 %cmp.i3, %tobool.not24
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  tail call fastcc void @cxgbit_lro_flush(ptr noundef %lro_mgr, ptr noundef nonnull %2)
  %3 = ptrtoint ptr %lroq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lroq, align 4
  %cmp.i = icmp eq ptr %4, %lroq
  %tobool.not2 = icmp eq ptr %4, null
  %tobool.not = or i1 %cmp.i, %tobool.not2
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_ddp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_close_conn(ptr noundef %cdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cskq = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 5
  %lock = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %0 = ptrtoint ptr %cskq to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn37 = load ptr, ptr %cskq, align 4
  %cmp.not38 = icmp eq ptr %.pn37, %cskq
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rxq = getelementptr i8, ptr %.pn39, i32 8
  %lock5 = getelementptr i8, ptr %.pn39, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %lock5) #10
  %prev.i.i = getelementptr i8, ptr %.pn39, i32 12
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rxq, ptr %call.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %2, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call.i, ptr %2, align 4
  %qlen.i.i.i = getelementptr i8, ptr %.pn39, i32 16
  %6 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock5) #10
  br i1 %cmp9, label %if.then15, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %waitq = getelementptr i8, ptr %.pn39, i32 360
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %cskq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_lro_flush(ptr noundef %lro_mgr, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lro_skb = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %lro_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %lro_skb, align 4
  %qlen.i = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %6, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %rxq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 6, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %prev.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rxq.i, ptr %skb, align 8
  %16 = ptrtoint ptr %prev9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %prev9.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %skb, ptr %14, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br i1 %cmp.i, label %if.then5.i, label %entry.cxgbit_queue_lro_skb.exit_crit_edge

entry.cxgbit_queue_lro_skb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_queue_lro_skb.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %waitq.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cxgbit_queue_lro_skb.exit

cxgbit_queue_lro_skb.exit:                        ; preds = %if.then5.i, %entry.cxgbit_queue_lro_skb.exit_crit_edge
  %kref.i = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %cxgbit_queue_lro_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !128

if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_put_csk.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cxgbit_put_csk.exit

if.then.i.i:                                      ; preds = %cxgbit_queue_lro_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @_cxgbit_free_csk(ptr noundef %kref.i) #10, !callees !137
  br label %cxgbit_put_csk.exit

cxgbit_put_csk.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cxgbit_put_csk.exit_crit_edge
  %lro_pkts = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 1
  %21 = ptrtoint ptr %lro_pkts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lro_pkts, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %lro_pkts, align 4
  %23 = ptrtoint ptr %lro_mgr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lro_mgr, align 4
  %dec = add i8 %24, -1
  store i8 %dec, ptr %lro_mgr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_lro_receive(ptr noundef %csk, i8 noundef zeroext %op, ptr nocapture noundef readonly %rsp, ptr noundef readonly %gl, ptr noundef %lro_mgr, ptr noundef %napi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %csk, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %op to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lro_skb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 14
  %0 = ptrtoint ptr %lro_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lro_skb, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.start_lro.preheader_crit_edge, label %if.end.add_packet_crit_edge

if.end.add_packet_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_packet

if.end.start_lro.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %start_lro.preheader

start_lro.preheader:                              ; preds = %if.then29, %if.end.start_lro.preheader_crit_edge
  %2 = ptrtoint ptr %lro_mgr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lro_mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp87 = icmp ugt i8 %3, 63
  br i1 %cmp87, label %if.then6.lr.ph, label %start_lro.preheader.if.end7_crit_edge

start_lro.preheader.if.end7_crit_edge:            ; preds = %start_lro.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6.lr.ph:                                   ; preds = %start_lro.preheader
  %lroq.i = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3
  br label %if.then6

if.then6:                                         ; preds = %cxgbit_uld_lro_flush.exit.if.then6_crit_edge, %if.then6.lr.ph
  %4 = ptrtoint ptr %lroq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lroq.i, align 4
  %cmp.i3.i = icmp eq ptr %5, %lroq.i
  %tobool.not24.i = icmp eq ptr %5, null
  %tobool.not5.i = or i1 %cmp.i3.i, %tobool.not24.i
  br i1 %tobool.not5.i, label %if.then6.cxgbit_uld_lro_flush.exit_crit_edge, label %if.then6.while.body.i_crit_edge

if.then6.while.body.i_crit_edge:                  ; preds = %if.then6
  br label %while.body.i

if.then6.cxgbit_uld_lro_flush.exit_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_uld_lro_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then6.while.body.i_crit_edge
  %6 = phi ptr [ %8, %while.body.i.while.body.i_crit_edge ], [ %5, %if.then6.while.body.i_crit_edge ]
  tail call fastcc void @cxgbit_lro_flush(ptr noundef %lro_mgr, ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %lroq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lroq.i, align 4
  %cmp.i.i = icmp eq ptr %8, %lroq.i
  %tobool.not2.i = icmp eq ptr %8, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not2.i
  br i1 %tobool.not.i, label %while.body.i.cxgbit_uld_lro_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cxgbit_uld_lro_flush.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_uld_lro_flush.exit

cxgbit_uld_lro_flush.exit:                        ; preds = %while.body.i.cxgbit_uld_lro_flush.exit_crit_edge, %if.then6.cxgbit_uld_lro_flush.exit_crit_edge
  %9 = ptrtoint ptr %lro_mgr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lro_mgr, align 4
  %cmp = icmp ugt i8 %10, 63
  br i1 %cmp, label %cxgbit_uld_lro_flush.exit.if.then6_crit_edge, label %cxgbit_uld_lro_flush.exit.if.end7_crit_edge

cxgbit_uld_lro_flush.exit.if.end7_crit_edge:      ; preds = %cxgbit_uld_lro_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

cxgbit_uld_lro_flush.exit.if.then6_crit_edge:     ; preds = %cxgbit_uld_lro_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end7:                                          ; preds = %cxgbit_uld_lro_flush.exit.if.end7_crit_edge, %start_lro.preheader.if.end7_crit_edge
  %call.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef 628, i32 noundef 2592) #10
  %tobool.not.i61 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i61, label %if.end7.cleanup_crit_edge, label %if.end.i, !prof !134

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 628)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cb.i, align 8
  %16 = or i8 %15, 8
  store i8 %16, ptr %cb.i, align 8
  %17 = load ptr, ptr %data.i, align 4
  %kref.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 20
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !134

if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end14_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end14_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end14_crit_edge
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %csk, ptr %17, align 4
  %21 = ptrtoint ptr %lro_skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %lro_skb, align 4
  %lroq = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %lroq, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i.i, ptr %23, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %29 = ptrtoint ptr %lro_mgr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lro_mgr, align 4
  %inc = add i8 %30, 1
  store i8 %inc, ptr %lro_mgr, align 4
  br label %add_packet

add_packet:                                       ; preds = %if.end14, %if.end.add_packet_crit_edge
  %31 = ptrtoint ptr %lro_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lro_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %tobool18.not = icmp eq ptr %gl, null
  br i1 %tobool18.not, label %lor.lhs.false25, label %land.lhs.true

land.lhs.true:                                    ; preds = %add_packet
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_frags, align 2
  %conv20 = zext i8 %38 to i32
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %39 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nfrags, align 4
  %add = add i32 %40, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add)
  %cmp21 = icmp ugt i32 %add, 17
  br i1 %cmp21, label %land.lhs.true.if.then29_crit_edge, label %lor.lhs.false

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %pdu_totallen = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %pdu_totallen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pdu_totallen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %42)
  %cmp23 = icmp ugt i32 %42, 65534
  br i1 %cmp23, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false25.thread

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false25:                                  ; preds = %add_packet
  %pdu_idx = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 3
  %43 = ptrtoint ptr %pdu_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pdu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %44)
  %cmp27 = icmp ugt i8 %44, 16
  br i1 %cmp27, label %lor.lhs.false25.if.then29_crit_edge, label %if.else

lor.lhs.false25.if.then29_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false25.thread:                           ; preds = %lor.lhs.false
  %pdu_idx82 = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 3
  %45 = ptrtoint ptr %pdu_idx82 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pdu_idx82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp2783 = icmp ugt i8 %46, 16
  br i1 %cmp2783, label %lor.lhs.false25.thread.if.then29_crit_edge, label %if.then32

lor.lhs.false25.thread.if.then29_crit_edge:       ; preds = %lor.lhs.false25.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false25.thread.if.then29_crit_edge, %lor.lhs.false25.if.then29_crit_edge, %lor.lhs.false.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  tail call fastcc void @cxgbit_lro_flush(ptr noundef %lro_mgr, ptr noundef %32)
  br label %start_lro.preheader

if.then32:                                        ; preds = %lor.lhs.false25.thread
  %add.ptr.i = getelementptr i8, ptr %34, i32 16
  %conv.i = zext i8 %46 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 36
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %47 = zext i8 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %op, label %if.else35.i [
    i8 51, label %if.then.i
    i8 -78, label %if.then20.i
  ]

if.then.i:                                        ; preds = %if.then32
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %48 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %va.i, align 8
  %50 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr2.i, align 4
  %52 = or i8 %51, 1
  store i8 %52, ptr %add.ptr2.i, align 4
  %seq.i = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %49, i32 0, i32 3
  %53 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %seq.i, align 4
  %seq7.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 6
  %55 = ptrtoint ptr %seq7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %seq7.i, align 4
  %len8.i = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %len8.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len8.i, align 2
  %conv9.i = zext i16 %57 to i32
  %58 = load ptr, ptr %va.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %58, i32 16
  %hdr.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 12
  %59 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr11.i, ptr %hdr.i, align 4
  %hlen.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 8
  %60 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv9.i, ptr %hlen.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nr_frags.i, align 2
  %hfrag_idx.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 2
  %65 = ptrtoint ptr %hfrag_idx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %hfrag_idx.i, align 2
  %66 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp12.i = icmp ugt i32 %67, 1
  br i1 %cmp12.i, label %if.then15.i, label %if.then.i.if.end.i64_crit_edge, !prof !134

if.then.i.if.end.i64_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i64

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i63 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3
  %68 = ptrtoint ptr %cb.i63 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %cb.i63, align 8
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then15.i, %if.then.i.if.end.i64_crit_edge
  %complete.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 4
  %69 = ptrtoint ptr %complete.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %complete.i, align 1
  br label %cxgbit_lro_add_packet_gl.exit

if.then20.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %va22.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %70 = ptrtoint ptr %va22.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %va22.i, align 8
  %72 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr2.i, align 4
  %74 = or i8 %73, 2
  store i8 %74, ptr %add.ptr2.i, align 4
  %len27.i = getelementptr inbounds %struct.cpl_iscsi_data, ptr %71, i32 0, i32 2
  %75 = ptrtoint ptr %len27.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %len27.i, align 2
  %conv28.i = zext i16 %76 to i32
  %dlen.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 9
  %77 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv28.i, ptr %dlen.i, align 4
  %offset29.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 2
  %78 = ptrtoint ptr %offset29.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset29.i, align 4
  %doffset.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 10
  %80 = ptrtoint ptr %doffset.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %doffset.i, align 4
  %81 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nfrags, align 4
  %conv31.i = trunc i32 %82 to i8
  %nr_dfrags.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 3
  %83 = ptrtoint ptr %nr_dfrags.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv31.i, ptr %nr_dfrags.i, align 1
  %84 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i, align 4
  %nr_frags33.i = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %nr_frags33.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nr_frags33.i, align 2
  %dfrag_idx.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 4
  %88 = ptrtoint ptr %dfrag_idx.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %dfrag_idx.i, align 4
  %complete34.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 4
  %89 = ptrtoint ptr %complete34.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %complete34.i, align 1
  br label %cxgbit_lro_add_packet_gl.exit

if.else35.i:                                      ; preds = %if.then32
  %va37.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %90 = ptrtoint ptr %va37.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %va37.i, align 8
  %92 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr2.i, align 4
  %94 = or i8 %93, 5
  store i8 %94, ptr %add.ptr2.i, align 4
  %len42.i = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %91, i32 0, i32 2
  %95 = ptrtoint ptr %len42.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %len42.i, align 2
  %conv43.i = zext i16 %96 to i32
  %97 = load ptr, ptr %va37.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %97, i32 24
  %hdr46.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 12
  %98 = ptrtoint ptr %hdr46.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr45.i, ptr %hdr46.i, align 4
  %hlen47.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 8
  %99 = ptrtoint ptr %hlen47.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv43.i, ptr %hlen47.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %nr_frags49.i = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %nr_frags49.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nr_frags49.i, align 2
  %hfrag_idx50.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 2
  %104 = ptrtoint ptr %hfrag_idx50.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %hfrag_idx50.i, align 2
  %ulp_crc.i = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %91, i32 0, i32 7
  %105 = ptrtoint ptr %ulp_crc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ulp_crc.i, align 4
  %ddigest.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 11
  %107 = ptrtoint ptr %ddigest.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %ddigest.i, align 4
  %108 = load i16, ptr %len42.i, align 2
  %conv52.i = zext i16 %108 to i32
  %pdulen.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 7
  %109 = ptrtoint ptr %pdulen.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv52.i, ptr %pdulen.i, align 4
  %110 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp54.i = icmp ugt i32 %111, 1
  br i1 %cmp54.i, label %if.then62.i, label %if.else35.i.if.end66.i_crit_edge, !prof !134

if.else35.i.if.end66.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb63.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3
  %112 = ptrtoint ptr %cb63.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %cb63.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.else35.i.if.end66.i_crit_edge
  %113 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %34, align 4
  %ddpvld.i = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %91, i32 0, i32 8
  %115 = ptrtoint ptr %ddpvld.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ddpvld.i, align 4
  tail call fastcc void @cxgbit_process_ddpvld(ptr noundef %114, ptr noundef %add.ptr2.i, i32 noundef %116) #10
  %117 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr2.i, align 4
  %conv68.i = zext i8 %118 to i32
  %and.i = and i32 %conv68.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool69.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool69.not.i, label %if.else76.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %or73.i = or i8 %118, 16
  %119 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %or73.i, ptr %add.ptr2.i, align 4
  br label %if.end84.sink.split.i

if.else76.i:                                      ; preds = %if.end66.i
  %and79.i = and i32 %conv68.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.else76.i.if.end84.i_crit_edge, label %if.else76.i.if.end84.sink.split.i_crit_edge

if.else76.i.if.end84.sink.split.i_crit_edge:      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.sink.split.i

if.else76.i.if.end84.i_crit_edge:                 ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.end84.sink.split.i:                            ; preds = %if.else76.i.if.end84.sink.split.i_crit_edge, %if.then70.i
  %complete82.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 5
  %120 = ptrtoint ptr %complete82.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %complete82.i, align 1
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end84.sink.split.i, %if.else76.i.if.end84.i_crit_edge
  %121 = ptrtoint ptr %hlen47.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hlen47.i, align 4
  %dlen86.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 9
  %123 = ptrtoint ptr %dlen86.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dlen86.i, align 4
  %add.i = add i32 %124, %122
  %125 = ptrtoint ptr %pdu_totallen to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pdu_totallen, align 4
  %add87.i = add i32 %add.i, %126
  store i32 %add87.i, ptr %pdu_totallen, align 4
  %complete88.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 4
  %127 = ptrtoint ptr %complete88.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %complete88.i, align 1
  %128 = ptrtoint ptr %pdu_idx82 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pdu_idx82, align 4
  %inc.i = add i8 %129, 1
  store i8 %inc.i, ptr %pdu_idx82, align 4
  br label %cxgbit_lro_add_packet_gl.exit

cxgbit_lro_add_packet_gl.exit:                    ; preds = %if.end84.i, %if.then20.i, %if.end.i64
  %len.0.i = phi i32 [ %conv9.i, %if.end.i64 ], [ %conv28.i, %if.then20.i ], [ %conv43.i, %if.end84.i ]
  %offset.0.i = phi i32 [ 16, %if.end.i64 ], [ 16, %if.then20.i ], [ 24, %if.end84.i ]
  tail call fastcc void @cxgbit_copy_frags(ptr noundef %32, ptr noundef nonnull %gl, i32 noundef %offset.0.i) #10
  %130 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nfrags, align 4
  %frags.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i, i32 0, i32 1
  %132 = ptrtoint ptr %frags.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %frags.i, align 1
  %134 = trunc i32 %131 to i8
  %conv95.i = add i8 %133, %134
  store i8 %conv95.i, ptr %frags.i, align 1
  %offset96.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 2
  %135 = ptrtoint ptr %offset96.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %offset96.i, align 4
  %add97.i = add i32 %136, %len.0.i
  store i32 %add97.i, ptr %offset96.i, align 4
  %len98.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %137 = ptrtoint ptr %len98.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len98.i, align 4
  %add99.i = add i32 %138, %len.0.i
  store i32 %add99.i, ptr %len98.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 7
  %139 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %data_len.i, align 8
  %add100.i = add i32 %140, %len.0.i
  store i32 %add100.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 20
  %141 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %truesize.i, align 8
  %add101.i = add i32 %142, %len.0.i
  store i32 %add101.i, ptr %truesize.i, align 8
  br label %if.end33

if.else:                                          ; preds = %lor.lhs.false25
  %add.ptr.i66 = getelementptr i8, ptr %34, i32 16
  %conv.i68 = zext i8 %44 to i32
  %mul.i69 = mul nuw nsw i32 %conv.i68, 36
  %add.ptr2.i70 = getelementptr i8, ptr %add.ptr.i66, i32 %mul.i69
  %add.ptr3.i = getelementptr i64, ptr %rsp, i32 1
  %143 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %34, align 4
  %ddpvld.i71 = getelementptr inbounds %struct.cpl_rx_data_ddp, ptr %add.ptr3.i, i32 0, i32 6
  %145 = ptrtoint ptr %ddpvld.i71 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ddpvld.i71, align 4
  tail call fastcc void @cxgbit_process_ddpvld(ptr noundef %144, ptr noundef %add.ptr2.i70, i32 noundef %146) #10
  %147 = ptrtoint ptr %add.ptr2.i70 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr2.i70, align 4
  %149 = or i8 %148, 4
  store i8 %149, ptr %add.ptr2.i70, align 4
  %ulp_crc.i72 = getelementptr i64, ptr %rsp, i32 3
  %150 = ptrtoint ptr %ulp_crc.i72 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ulp_crc.i72, align 4
  %ddigest.i73 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i70, i32 0, i32 11
  %152 = ptrtoint ptr %ddigest.i73 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %ddigest.i73, align 4
  %len.i = getelementptr inbounds %struct.cpl_rx_data_ddp, ptr %add.ptr3.i, i32 0, i32 2
  %153 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %len.i, align 2
  %conv6.i = zext i16 %154 to i32
  %pdulen.i74 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i70, i32 0, i32 7
  %155 = ptrtoint ptr %pdulen.i74 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv6.i, ptr %pdulen.i74, align 4
  %156 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i75 = icmp eq i8 %156, 0
  br i1 %tobool.not.i75, label %if.else.cxgbit_lro_add_packet_rsp.exit_crit_edge, label %if.then.i77

if.else.cxgbit_lro_add_packet_rsp.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_lro_add_packet_rsp.exit

if.then.i77:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %complete.i76 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr2.i70, i32 0, i32 5
  %157 = ptrtoint ptr %complete.i76 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %complete.i76, align 1
  br label %cxgbit_lro_add_packet_rsp.exit

cxgbit_lro_add_packet_rsp.exit:                   ; preds = %if.then.i77, %if.else.cxgbit_lro_add_packet_rsp.exit_crit_edge
  %pdu_totallen.i78 = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 1
  %158 = ptrtoint ptr %pdu_totallen.i78 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pdu_totallen.i78, align 4
  %add.i79 = add i32 %159, %conv6.i
  store i32 %add.i79, ptr %pdu_totallen.i78, align 4
  %complete10.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %34, i32 0, i32 4
  %160 = ptrtoint ptr %complete10.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %complete10.i, align 1
  %161 = ptrtoint ptr %pdu_idx to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %pdu_idx, align 4
  %inc.i80 = add i8 %162, 1
  store i8 %inc.i80, ptr %pdu_idx, align 4
  br label %if.end33

if.end33:                                         ; preds = %cxgbit_lro_add_packet_rsp.exit, %cxgbit_lro_add_packet_gl.exit
  %lro_merged = getelementptr inbounds %struct.t4_lro_mgr, ptr %lro_mgr, i32 0, i32 2
  %163 = ptrtoint ptr %lro_merged to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %lro_merged, align 4
  %inc34 = add i32 %164, 1
  store i32 %inc34, ptr %lro_merged, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -1, %do.end ], [ -1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_pktgl_to_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_cxgbit_free_csk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_process_ddpvld(ptr nocapture noundef readonly %csk, ptr nocapture noundef %pdu_cb, i32 noundef %ddpvld) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ddpvld, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %1, i32 noundef %ddpvld) #13
  %2 = ptrtoint ptr %pdu_cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdu_cb, align 4
  %4 = or i8 %3, 32
  store i8 %4, ptr %pdu_cb, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and2 = and i32 %ddpvld, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %do.end6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tid8 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid8, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %6, i32 noundef %ddpvld) #13
  %7 = ptrtoint ptr %pdu_cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pdu_cb, align 4
  %9 = or i8 %8, 64
  store i8 %9, ptr %pdu_cb, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end6, %if.end.if.end14_crit_edge
  %and15 = and i32 %ddpvld, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %do.end19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %tid21 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %10 = ptrtoint ptr %tid21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %11, i32 noundef %ddpvld) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.end14.if.end23_crit_edge
  %and24 = and i32 %ddpvld, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end35_crit_edge, label %land.lhs.true

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end23
  %12 = ptrtoint ptr %pdu_cb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pdu_cb, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool29.not = icmp eq i8 %14, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %or33 = or i8 %13, 8
  %15 = ptrtoint ptr %pdu_cb to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or33, ptr %pdu_cb, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %land.lhs.true.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_copy_frags(ptr nocapture noundef %skb, ptr nocapture noundef readonly %gl, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %frags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1
  %4 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frags, align 8
  %offset3 = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %offset3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset3, align 4
  %conv4 = zext i16 %7 to i32
  %add = add i32 %conv4, %offset
  %size = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 2
  %conv7 = zext i16 %9 to i32
  %sub = sub i32 %conv7, %offset
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %conv, i32 2
  %11 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %conv, i32 1
  %12 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %bv_len.i.i, align 4
  %13 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  %and.i8.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_fill_page_desc.exit

if.then.i:                                        ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %22 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %23 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp82 = icmp ugt i32 %24, 1
  br i1 %cmp82, label %for.body.lr.ph, label %__skb_fill_page_desc.exit.for.end_crit_edge

__skb_fill_page_desc.exit.for.end_crit_edge:      ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %__skb_fill_page_desc.exit
  %pfmemalloc.i69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %__skb_fill_page_desc.exit73.for.body_crit_edge, %for.body.lr.ph
  %conv884 = phi i32 [ 1, %for.body.lr.ph ], [ %conv8, %__skb_fill_page_desc.exit73.for.body_crit_edge ]
  %i.083 = phi i8 [ 1, %for.body.lr.ph ], [ %inc, %__skb_fill_page_desc.exit73.for.body_crit_edge ]
  %add12 = add nuw nsw i32 %conv884, %conv
  %arrayidx14 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %conv884
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx14, align 8
  %offset19 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %conv884, i32 1
  %27 = ptrtoint ptr %offset19 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset19, align 4
  %conv20 = zext i16 %28 to i32
  %size24 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %conv884, i32 2
  %29 = ptrtoint ptr %size24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size24, align 2
  %conv25 = zext i16 %30 to i32
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %arrayidx.i57 = getelementptr %struct.skb_shared_info, ptr %32, i32 0, i32 12, i32 %add12
  %33 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %26, ptr %arrayidx.i57, align 4
  %bv_offset.i58 = getelementptr %struct.skb_shared_info, ptr %32, i32 0, i32 12, i32 %add12, i32 2
  %34 = ptrtoint ptr %bv_offset.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv20, ptr %bv_offset.i58, align 4
  %bv_len.i.i59 = getelementptr %struct.skb_shared_info, ptr %32, i32 0, i32 12, i32 %add12, i32 1
  %35 = ptrtoint ptr %bv_len.i.i59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv25, ptr %bv_len.i.i59, align 4
  %36 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i60 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool.not.i.i61 = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.not.i.i61, label %if.end.i.i64, label %if.then.i.i63, !prof !128

if.then.i.i63:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i62 = add i32 %38, -1
  br label %_compound_head.exit.i68

if.end.i.i64:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %26 to i32
  br label %_compound_head.exit.i68

_compound_head.exit.i68:                          ; preds = %if.end.i.i64, %if.then.i.i63
  %retval.0.i.i65 = phi i32 [ %sub.i.i62, %if.then.i.i63 ], [ %39, %if.end.i.i64 ]
  %40 = inttoptr i32 %retval.0.i.i65 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i8.i66 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i66)
  %tobool.i.not.i67 = icmp eq i32 %and.i8.i66, 0
  br i1 %tobool.i.not.i67, label %_compound_head.exit.i68.__skb_fill_page_desc.exit73_crit_edge, label %if.then.i72

_compound_head.exit.i68.__skb_fill_page_desc.exit73_crit_edge: ; preds = %_compound_head.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_fill_page_desc.exit73

if.then.i72:                                      ; preds = %_compound_head.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pfmemalloc.i69 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i70 = load i8, ptr %pfmemalloc.i69, align 2
  %bf.set.i71 = or i8 %bf.load.i70, 2
  store i8 %bf.set.i71, ptr %pfmemalloc.i69, align 2
  br label %__skb_fill_page_desc.exit73

__skb_fill_page_desc.exit73:                      ; preds = %if.then.i72, %_compound_head.exit.i68.__skb_fill_page_desc.exit73_crit_edge
  %inc = add i8 %i.083, 1
  %conv8 = zext i8 %inc to i32
  %46 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nfrags, align 4
  %cmp = icmp ugt i32 %47, %conv8
  br i1 %cmp, label %__skb_fill_page_desc.exit73.for.body_crit_edge, label %__skb_fill_page_desc.exit73.for.end_crit_edge

__skb_fill_page_desc.exit73.for.end_crit_edge:    ; preds = %__skb_fill_page_desc.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

__skb_fill_page_desc.exit73.for.body_crit_edge:   ; preds = %__skb_fill_page_desc.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %__skb_fill_page_desc.exit73.for.end_crit_edge, %__skb_fill_page_desc.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %24, %__skb_fill_page_desc.exit.for.end_crit_edge ], [ %47, %__skb_fill_page_desc.exit73.for.end_crit_edge ]
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %nr_frags28 = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nr_frags28 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nr_frags28, align 2
  %52 = trunc i32 %.lcssa to i8
  %conv31 = add i8 %51, %52
  store i8 %conv31, ptr %nr_frags28, align 2
  %53 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nfrags, align 4
  %sub34 = add i32 %54, -1
  %arrayidx35 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %sub34
  %55 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx35, align 8
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i75 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.not.i.i76, label %if.end.i.i79, label %if.then.i.i78, !prof !128

if.then.i.i78:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i77 = add i32 %59, -1
  br label %_compound_head.exit.i81

if.end.i.i79:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %56 to i32
  br label %_compound_head.exit.i81

_compound_head.exit.i81:                          ; preds = %if.end.i.i79, %if.then.i.i78
  %retval.0.i.i80 = phi i32 [ %sub.i.i77, %if.then.i.i78 ], [ %60, %if.end.i.i79 ]
  %61 = inttoptr i32 %retval.0.i.i80 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %62 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %63, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !134

if.then.i1.i:                                     ; preds = %_compound_head.exit.i81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.54) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !139
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i81
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cxgbit_copy_frags, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !131

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %61, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @cdev_list_head, !1, !"cdev_list_head", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 17, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 19, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cdev_list_lock, !3, !"cdev_list_lock", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_cxgbit__671_740_cxgbit_init6, !7, !"__initcall__kmod_cxgbit__671_740_cxgbit_init6", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 740, i32 1}
!8 = !{ptr @__exitcall_cxgbit_exit, !9, !"__exitcall_cxgbit_exit", i1 false, i1 false}
!9 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 741, i32 1}
!10 = !{ptr @__UNIQUE_ID_description672, !11, !"__UNIQUE_ID_description672", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 743, i32 1}
!12 = !{ptr @__UNIQUE_ID_author673, !13, !"__UNIQUE_ID_author673", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 744, i32 1}
!14 = !{ptr @__UNIQUE_ID_version674, !15, !"__UNIQUE_ID_version674", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 745, i32 1}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_file675, !21, !"__UNIQUE_ID_file675", i1 false, i1 false}
!21 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 746, i32 1}
!22 = !{ptr @__UNIQUE_ID_license676, !21, !"__UNIQUE_ID_license676", i1 false, i1 false}
!23 = !{ptr @cxgbit_dcbevent_nb, !24, !"cxgbit_dcbevent_nb", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 704, i32 30}
!25 = !{ptr @cxgbit_dcbevent_notify.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 654, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 617, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cxgbit_dcb_workfn.__UNIQUE_ID_ddebug669, !29, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!33 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cxgbit_transport, !35, !"cxgbit_transport", i1 false, i1 false}
!35 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 665, i32 32}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 715, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cxgbit_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cxgbit_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @cxgbit_uld_info, !42, !"cxgbit_uld_info", i1 false, i1 false}
!42 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 691, i32 30}
!43 = !{ptr @cxgbit_uld_add.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 65, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 77, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cxgbit_uld_add._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cxgbit_uld_add._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @cxgbit_uld_add.__key.15, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 83, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 90, i32 2}
!56 = !{ptr @cxgbit_uld_add._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cxgbit_uld_add._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 149, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cxgbit_uld_state_change._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cxgbit_uld_state_change._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 154, i32 3}
!65 = !{ptr @cxgbit_uld_state_change._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cxgbit_uld_state_change._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 157, i32 3}
!69 = !{ptr @cxgbit_uld_state_change._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cxgbit_uld_state_change._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 161, i32 3}
!73 = !{ptr @cxgbit_uld_state_change._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cxgbit_uld_state_change._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 165, i32 3}
!77 = !{ptr @cxgbit_uld_state_change._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cxgbit_uld_state_change._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 491, i32 4}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cxgbit_uld_lro_rx_handler._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @cxgbit_uld_lro_rx_handler._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 515, i32 2}
!86 = !{ptr @cxgbit_uld_lro_rx_handler.__UNIQUE_ID_ddebug668, !85, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!87 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 522, i32 3}
!90 = !{ptr @cxgbit_uld_lro_rx_handler._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cxgbit_uld_lro_rx_handler._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 527, i32 2}
!94 = !{ptr @cxgbit_uld_lro_rx_handler._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cxgbit_uld_lro_rx_handler._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 387, i32 3}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cxgbit_lro_receive._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @cxgbit_lro_receive._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 178, i32 3}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cxgbit_process_ddpvld._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @cxgbit_process_ddpvld._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 183, i32 3}
!108 = !{ptr @cxgbit_process_ddpvld._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cxgbit_process_ddpvld._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_main.c", i32 188, i32 3}
!112 = !{ptr @cxgbit_process_ddpvld._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cxgbit_process_ddpvld._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!116 = !{!"sp"}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2148466269}
!127 = !{i64 2148380733, i64 2148380765, i64 2148380794, i64 2148380828, i64 2148380859, i64 2148380882}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2149894275}
!130 = !{i8 0, i8 9}
!131 = !{i64 2148190131, i64 2148190136, i64 2148190149, i64 2148190193, i64 2148190227, i64 2148190248}
!132 = !{i64 770996, i64 771057}
!133 = !{i64 773728}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 774013}
!136 = !{i64 2154957508, i64 2154962057, i64 2154957545, i64 2154957601, i64 2154957635, i64 2154957659, i64 2154957700, i64 2154957721, i64 2154957749, i64 2154957783}
!137 = !{ptr @_cxgbit_free_cdev, ptr @_cxgbit_free_csk}
!138 = !{i64 2148378268, i64 2148378300, i64 2148378329, i64 2148378363, i64 2148378394, i64 2148378417}
!139 = !{i64 2153832255, i64 2153832739, i64 2153832292, i64 2153832348, i64 2153832382, i64 2153832406, i64 2153832447, i64 2153832468, i64 2153832496, i64 2153832530}
!140 = !{i64 2148376738, i64 2148376764, i64 2148376793, i64 2148376827, i64 2148376858, i64 2148376881}
