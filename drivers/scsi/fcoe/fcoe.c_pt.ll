; ModuleID = '/llk/IR_all_yes/drivers/scsi/fcoe/fcoe.c_pt.bc'
source_filename = "../drivers/scsi/fcoe/fcoe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fcoe_transport = type { [16 x i8], i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fcoe_percpu_s = type { ptr, %struct.work_struct, %struct.sk_buff_head, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.106 }
%union.anon.106 = type { i32 }
%struct.fcoe_sysfs_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.104, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.104 = type { %struct.atomic_t }
%struct.fcoe_crc_eof = type { i32, i8, [3 x i8] }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fcoe_hdr = type { i8, [12 x i8], i8 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.dcb_app_type = type { i32, %struct.dcb_app, %struct.list_head, i8 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.fcoe_interface = type { %struct.list_head, ptr, ptr, %struct.packet_type, %struct.packet_type, %struct.packet_type, ptr, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.112, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.112 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fcoe_ctlr_device = type { i32, %struct.device, ptr, %struct.list_head, [20 x i8], ptr, [20 x i8], ptr, %struct.mutex, i32, i32, i32, %struct.fcoe_fc_els_lesb }
%struct.fcoe_fc_els_lesb = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.netdev_fcoe_hbainfo = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [256 x i8], [256 x i8] }
%struct.anon.53 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.fc_fcp_pkt = type { %struct.spinlock, %struct.refcount_struct, i32, ptr, %struct.list_head, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.fcp_cmnd, i32, i16, i16, ptr, ptr, %struct.timer_list, i32, i32, i32, ptr, %struct.completion }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fip_frame = type { %struct.ethhdr, %struct.fip_header }
%struct.fip_header = type { i8, i8, i16, i8, i8, i16, i16 }
%struct.fcoe_fcf_device = type { i32, %struct.device, %struct.list_head, %struct.work_struct, %struct.delayed_work, i32, ptr, i32, i64, i64, i32, i16, [6 x i8], i8, i32, i8, i16 }

@__UNIQUE_ID_author377 = internal constant [26 x i8] c"fcoe.author=Open-FCoE.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description378 = internal constant [22 x i8] c"fcoe.description=FCoE\00", section ".modinfo", align 1
@__UNIQUE_ID_file379 = internal constant [33 x i8] c"fcoe.file=drivers/scsi/fcoe/fcoe\00", section ".modinfo", align 1
@__UNIQUE_ID_license380 = internal constant [20 x i8] c"fcoe.license=GPL v2\00", section ".modinfo", align 1
@__param_str_ddp_min = internal constant [13 x i8] c"fcoe.ddp_min\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fcoe_ddp_min = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_ddp_min = internal constant %struct.kernel_param { ptr @__param_str_ddp_min, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @fcoe_ddp_min } }, section "__param", align 4
@__UNIQUE_ID_ddp_mintype381 = internal constant [27 x i8] c"fcoe.parmtype=ddp_min:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ddp_min382 = internal constant [77 x i8] c"fcoe.parm=ddp_min:Minimum I/O size in bytes for Direct Data Placement (DDP).\00", section ".modinfo", align 1
@__param_str_debug_logging = internal constant [19 x i8] c"fcoe.debug_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fcoe_debug_logging = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @fcoe_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_debug_loggingtype383 = internal constant [32 x i8] c"fcoe.parmtype=debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging384 = internal constant [53 x i8] c"fcoe.parm=debug_logging:a bit mask of logging levels\00", section ".modinfo", align 1
@__param_str_e_d_tov = internal constant [13 x i8] c"fcoe.e_d_tov\00", align 1
@fcoe_e_d_tov = internal global { i32, [28 x i8] } { i32 2000, [28 x i8] zeroinitializer }, align 32
@__param_e_d_tov = internal constant %struct.kernel_param { ptr @__param_str_e_d_tov, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @fcoe_e_d_tov } }, section "__param", align 4
@__UNIQUE_ID_e_d_tovtype385 = internal constant [26 x i8] c"fcoe.parmtype=e_d_tov:int\00", section ".modinfo", align 1
@__UNIQUE_ID_e_d_tov386 = internal constant [46 x i8] c"fcoe.parm=e_d_tov:E_D_TOV in ms, default 2000\00", section ".modinfo", align 1
@__param_str_r_a_tov = internal constant [13 x i8] c"fcoe.r_a_tov\00", align 1
@fcoe_r_a_tov = internal global { i32, [28 x i8] } { i32 4000, [28 x i8] zeroinitializer }, align 32
@__param_r_a_tov = internal constant %struct.kernel_param { ptr @__param_str_r_a_tov, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @fcoe_r_a_tov } }, section "__param", align 4
@__UNIQUE_ID_r_a_tovtype387 = internal constant [26 x i8] c"fcoe.parmtype=r_a_tov:int\00", section ".modinfo", align 1
@__UNIQUE_ID_r_a_tov388 = internal constant [46 x i8] c"fcoe.parm=r_a_tov:R_A_TOV in ms, default 4000\00", section ".modinfo", align 1
@fcoe_nport_scsi_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fcoe_vport_scsi_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_fcoe__392_2508_fcoe_init6 = internal global ptr @fcoe_init, section ".initcall6.init", align 4
@fcoe_config_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.98, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fcoe_config_mutex, i64 52), ptr getelementptr (i8, ptr @fcoe_config_mutex, i64 52) }, ptr @fcoe_config_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.99, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@fcoe_hostlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fcoe_hostlist, ptr @fcoe_hostlist }, [24 x i8] zeroinitializer }, align 32
@fcoe_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@fcoe_sw_transport = internal global { %struct.fcoe_transport, [44 x i8] } { %struct.fcoe_transport { [16 x i8] c"fcoe\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.list_head { ptr getelementptr (i8, ptr @fcoe_sw_transport, i64 20), ptr getelementptr (i8, ptr @fcoe_sw_transport, i64 20) }, ptr @fcoe_match, ptr @fcoe_ctlr_alloc, ptr @fcoe_create, ptr @fcoe_destroy, ptr @fcoe_enable, ptr @fcoe_disable }, [44 x i8] zeroinitializer }, align 32
@__exitcall_fcoe_exit = internal global ptr @fcoe_exit, section ".exitcall.exit", align 4
@__pcpu_unique_fcoe_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@fcoe_percpu = weak dso_local global %struct.fcoe_percpu_s zeroinitializer, section ".data..percpu", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fcoe\00", [27 x i8] zeroinitializer }, align 32
@fcoe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013failed to register an fcoe transport, check if libfcoe is loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcoe_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/scsi/fcoe/fcoe.c\00", [39 x i8] zeroinitializer }, align 32
@fcoe_init._entry_ptr = internal global ptr @fcoe_init._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fcoe_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&p->work)\00", [36 x i8] zeroinitializer }, align 32
@fcoe_recv_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016fcoe: %s: NULL lport in skb\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fcoe_recv_frame\00", [16 x i8] zeroinitializer }, align 32
@fcoe_recv_frame._entry_ptr = internal global ptr @fcoe_recv_frame._entry, section ".printk_index", align 4
@fcoe_recv_frame._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016fcoe: %s: skb_info: len:%d data_len:%d head:%p data:%p tail:%p end:%p sum:%d dev:%s\0A\00", [41 x i8] zeroinitializer }, align 32
@fcoe_recv_frame._entry_ptr.9 = internal global ptr @fcoe_recv_frame._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@fcoe_recv_frame._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.3, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014fcoe: FCoE version mismatch: The frame has version %x, but the initiator supports version %x\0A\00", [32 x i8] zeroinitializer }, align 32
@fcoe_recv_frame._entry_ptr.13 = internal global ptr @fcoe_recv_frame._entry.11, section ".printk_index", align 4
@fcoe_filter_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016fcoe: fcoe: dropping FCoE lport LOGO in fip mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fcoe_filter_frames\00", [45 x i8] zeroinitializer }, align 32
@fcoe_filter_frames._entry_ptr = internal global ptr @fcoe_filter_frames._entry, section ".printk_index", align 4
@fcoe_filter_frames._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 1645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014fcoe: dropping frame with CRC error\0A\00", [57 x i8] zeroinitializer }, align 32
@fcoe_filter_frames._entry_ptr.19 = internal global ptr @fcoe_filter_frames._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@dcb_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @fcoe_dcb_app_notification, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fcoe_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @fcoe_device_notification, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@fcoe_device_notification._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016fcoe: %s: Unknown event %ld from netdev netlink\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fcoe_device_notification\00", [39 x i8] zeroinitializer }, align 32
@fcoe_device_notification._entry_ptr = internal global ptr @fcoe_device_notification._entry, section ".printk_index", align 4
@fcoe_device_notification._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 1910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Link up while interface is disabled.\0A\00", [56 x i8] zeroinitializer }, align 32
@fcoe_device_notification._entry_ptr.26 = internal global ptr @fcoe_device_notification._entry.24, section ".printk_index", align 4
@fcoe_device_notification._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 1919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Link down while interface is disabled.\0A\00", [54 x i8] zeroinitializer }, align 32
@fcoe_device_notification._entry_ptr.29 = internal global ptr @fcoe_device_notification._entry.27, section ".printk_index", align 4
@fcoe_if_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016fcoe: %s: Destroying interface\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fcoe_if_destroy\00", [16 x i8] zeroinitializer }, align 32
@fcoe_if_destroy._entry_ptr = internal global ptr @fcoe_if_destroy._entry, section ".printk_index", align 4
@fcoe_interface_remove.flogi_maddr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0E\FC\00\FF\FF\FE", [26 x i8] zeroinitializer }, align 32
@fcoe_interface_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016fcoe: %s: Failed to disable FCoE specific feature for LLD.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fcoe_interface_remove\00", [42 x i8] zeroinitializer }, align 32
@fcoe_interface_remove._entry_ptr = internal global ptr @fcoe_interface_remove._entry, section ".printk_index", align 4
@fcoe_netdev_features_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016fcoe: %s: Supports FCCRC offload\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fcoe_netdev_features_change\00", [36 x i8] zeroinitializer }, align 32
@fcoe_netdev_features_change._entry_ptr = internal global ptr @fcoe_netdev_features_change._entry, section ".printk_index", align 4
@fcoe_netdev_features_change._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016fcoe: %s: Supports LSO for max len 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@fcoe_netdev_features_change._entry_ptr.38 = internal global ptr @fcoe_netdev_features_change._entry.36, section ".printk_index", align 4
@fcoe_netdev_features_change._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016fcoe: %s: Supports LRO for max xid 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@fcoe_netdev_features_change._entry_ptr.41 = internal global ptr @fcoe_netdev_features_change._entry.39, section ".printk_index", align 4
@fcoe_if_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013fcoe: Failed to attach to the FC transport\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fcoe_if_init\00", [19 x i8] zeroinitializer }, align 32
@fcoe_if_init._entry_ptr = internal global ptr @fcoe_if_init._entry, section ".printk_index", align 4
@fcoe_nport_fc_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @fc_get_host_stats, ptr null, ptr @fcoe_reset, ptr null, ptr @fc_rport_terminate_io, ptr @fcoe_set_vport_symbolic_name, ptr @fcoe_vport_create, ptr @fcoe_vport_disable, ptr @fcoe_vport_destroy, ptr @fc_lport_bsg_request, ptr null, i32 20, i32 0, i32 0, i8 -1, i8 127, i8 -1, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s v%s over %s : %s\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@fcoe_vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 2668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013fcoe: Failed to create vport, WWPN (0x%s) already exists\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fcoe_vport_create\00", [46 x i8] zeroinitializer }, align 32
@fcoe_vport_create._entry_ptr = internal global ptr @fcoe_vport_create._entry, section ".printk_index", align 4
@fcoe_vport_create._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 2680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fcoe: fcoe_vport_create(%s) failed\0A\00", [58 x i8] zeroinitializer }, align 32
@fcoe_vport_create._entry_ptr.51 = internal global ptr @fcoe_vport_create._entry.49, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fcoe_if_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016fcoe: %s: Create Interface\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fcoe_if_create\00", [17 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr = internal global ptr @fcoe_if_create._entry, section ".printk_index", align 4
@fcoe_shost_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @fc_queuecommand, ptr null, ptr null, ptr @.str.76, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_abort, ptr @fc_eh_device_reset, ptr null, ptr null, ptr @fc_eh_host_reset, ptr @fc_slave_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr @.str, ptr null, i32 1024, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 3, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016fcoe: %s: Could not allocate host structure\0A\00", [49 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.56 = internal global ptr @fcoe_if_create._entry.54, section ".printk_index", align 4
@fcoe_if_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&port->destroy_work)\00", [57 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.53, ptr @.str.3, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016fcoe: %s: Could not configure lport for the interface\0A\00", [39 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.60 = internal global ptr @fcoe_if_create._entry.58, section ".printk_index", align 4
@fcoe_if_create._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.53, ptr @.str.3, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016fcoe: %s: Setting vport names, %16.16llx %16.16llx\0A\00", [42 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.63 = internal global ptr @fcoe_if_create._entry.61, section ".printk_index", align 4
@fcoe_if_create._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.3, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016fcoe: %s: Could not configure netdev for the interface\0A\00", [38 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.66 = internal global ptr @fcoe_if_create._entry.64, section ".printk_index", align 4
@fcoe_if_create._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.53, ptr @.str.3, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016fcoe: %s: Could not configure shost for the interface\0A\00", [39 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.69 = internal global ptr @fcoe_if_create._entry.67, section ".printk_index", align 4
@fcoe_libfc_fcn_templ = internal global { %struct.libfc_function_template, [32 x i8] } { %struct.libfc_function_template { ptr @fcoe_xmit, ptr @fcoe_elsct_send, ptr @fcoe_ddp_setup, ptr @fcoe_ddp_done, ptr @fcoe_ddp_target, ptr @fcoe_get_lesb, ptr null, ptr @fcoe_set_port_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.53, ptr @.str.3, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016fcoe: %s: Could not configure libfc for the interface\0A\00", [39 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.72 = internal global ptr @fcoe_if_create._entry.70, section ".printk_index", align 4
@fcoe_if_create._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.53, ptr @.str.3, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fcoe: %s: Could not configure the EM\0A\00", [56 x i8] zeroinitializer }, align 32
@fcoe_if_create._entry_ptr.75 = internal global ptr @fcoe_if_create._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FCoE Driver\00", [20 x i8] zeroinitializer }, align 32
@fcoe_netdev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016fcoe: %s: Supports FCOE_MTU of %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fcoe_netdev_config\00", [45 x i8] zeroinitializer }, align 32
@fcoe_netdev_config._entry_ptr = internal global ptr @fcoe_netdev_config._entry, section ".printk_index", align 4
@fcoe_netdev_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&port->timer)\00", [17 x i8] zeroinitializer }, align 32
@fcoe_shost_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016fcoe: %s: fcoe_shost_config: error on scsi_add_host\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fcoe_shost_config\00", [46 x i8] zeroinitializer }, align 32
@fcoe_shost_config._entry_ptr = internal global ptr @fcoe_shost_config._entry, section ".printk_index", align 4
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s v%s over %s\00", [17 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@fcoe_logo_resp.zero_mac = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@fcoe_fdmi_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016fcoe: Failed to retrieve FDMI information from netdev.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fcoe_fdmi_info\00", [17 x i8] zeroinitializer }, align 32
@fcoe_fdmi_info._entry_ptr = internal global ptr @fcoe_fdmi_info._entry, section ".printk_index", align 4
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@fcoe_fdmi_info._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.3, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016fcoe: No FDMI support.\0A\00", [38 x i8] zeroinitializer }, align 32
@fcoe_fdmi_info._entry_ptr.88 = internal global ptr @fcoe_fdmi_info._entry.86, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fcoe_em_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013fcoe_em_config: failed to add offload em:%p on interface:%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fcoe_em_config\00", [17 x i8] zeroinitializer }, align 32
@fcoe_em_config._entry_ptr = internal global ptr @fcoe_em_config._entry, section ".printk_index", align 4
@fcoe_em_config._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013fcoe_em_config: failed to allocate em for offload exches on interface:%s\0A\00", [52 x i8] zeroinitializer }, align 32
@fcoe_em_config._entry_ptr.93 = internal global ptr @fcoe_em_config._entry.91, section ".printk_index", align 4
@fcoe_em_config._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013fcoe_em_config: failed to allocate em on interface %s\0A\00", [39 x i8] zeroinitializer }, align 32
@fcoe_em_config._entry_ptr.96 = internal global ptr @fcoe_em_config._entry.94, section ".printk_index", align 4
@fcoe_vport_fc_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @fc_get_host_stats, ptr null, ptr @fcoe_reset, ptr null, ptr @fc_rport_terminate_io, ptr null, ptr null, ptr null, ptr null, ptr @fc_lport_bsg_request, ptr null, i32 20, i32 0, i32 0, i8 -1, i8 127, i8 -1, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fcoe_config_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fcoe_config_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@_fcoe_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fcoe: Failed to create interface (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_fcoe_create\00", [19 x i8] zeroinitializer }, align 32
@_fcoe_create._entry_ptr = internal global ptr @_fcoe_create._entry, section ".printk_index", align 4
@fcoe_interface_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016fcoe: %s: Could not get a reference to the module\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fcoe_interface_create\00", [42 x i8] zeroinitializer }, align 32
@fcoe_interface_create._entry_ptr = internal global ptr @fcoe_interface_create._entry, section ".printk_index", align 4
@fcoe_sysfs_templ = internal global { %struct.fcoe_sysfs_function_template, [56 x i8] } { %struct.fcoe_sysfs_function_template { ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_mode, ptr @fcoe_ctlr_enabled, ptr @fcoe_fcf_get_selected, ptr @fcoe_fcf_get_vlan_id }, [56 x i8] zeroinitializer }, align 32
@fcoe_interface_create._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fcoe: Failed to add fcoe_ctlr_device\0A\00", [56 x i8] zeroinitializer }, align 32
@fcoe_interface_create._entry_ptr.107 = internal global ptr @fcoe_interface_create._entry.105, section ".printk_index", align 4
@fcoe_interface_setup.flogi_maddr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0E\FC\00\FF\FF\FE", [26 x i8] zeroinitializer }, align 32
@fcoe_interface_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016fcoe: %s: Failed to enable FCoE specific feature for LLD.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fcoe_interface_setup\00", [43 x i8] zeroinitializer }, align 32
@fcoe_interface_setup._entry_ptr = internal global ptr @fcoe_interface_setup._entry, section ".printk_index", align 4
@fcoe_interface_setup._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016fcoe: %s: Bonded interfaces not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@fcoe_interface_setup._entry_ptr.112 = internal global ptr @fcoe_interface_setup._entry.110, section ".printk_index", align 4
@fcoe_interface_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fcoe_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016fcoe: %s: Cannot find hba structure\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fcoe_rcv\00", [23 x i8] zeroinitializer }, align 32
@fcoe_rcv._entry_ptr = internal global ptr @fcoe_rcv._entry, section ".printk_index", align 4
@fcoe_rcv._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.118, ptr @.str.3, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fcoe_rcv._entry_ptr.120 = internal global ptr @fcoe_rcv._entry.119, section ".printk_index", align 4
@fcoe_rcv._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str.3, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016fcoe: %s: wrong source mac address:%pM\0A\00", [54 x i8] zeroinitializer }, align 32
@fcoe_rcv._entry_ptr.123 = internal global ptr @fcoe_rcv._entry.121, section ".printk_index", align 4
@fcoe_rcv._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.118, ptr @.str.3, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016fcoe: %s: FC frame d_id mismatch with MAC:%pM\0A\00", [47 x i8] zeroinitializer }, align 32
@fcoe_rcv._entry_ptr.126 = internal global ptr @fcoe_rcv._entry.124, section ".printk_index", align 4
@fc_cpu_mask = external dso_local local_unnamed_addr global i16, align 2
@fcoe_select_cpu.selected_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 35078, i64 35092]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 81]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"fcoe_ddp_min\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 45, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"fcoe_debug_logging\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 50, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"fcoe_e_d_tov\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 54, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"fcoe_r_a_tov\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 58, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"fcoe_nport_scsi_transport\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 137, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"fcoe_vport_scsi_transport\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 138, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"fcoe_config_mutex\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"fcoe_hostlist\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 68, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"fcoe_wq\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 64, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"fcoe_sw_transport\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2449, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2472, i32 28 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2479, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2488, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1667, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1672, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1690, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1632, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1645, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 161, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1984, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [13 x i8] c"dcb_notifier\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 133, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant [14 x i8] c"fcoe_notifier\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 128, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1899, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1910, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1919, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1006, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 444, i32 18 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 473, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 662, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 670, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 680, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1264, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [24 x i8] c"fcoe_nport_fc_functions\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 172, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2786, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2786, i32 38 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2666, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2679, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1136, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c"fcoe_shost_template\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 263, i32 34 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1144, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1154, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1165, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1171, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1181, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1189, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [21 x i8] c"fcoe_libfc_fcn_templ\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 162, i32 39 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1197, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1224, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 265, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 726, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 737, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 781, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 790, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant [9 x i8] c"zero_mac\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2600, i32 12 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 829, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 836, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 872, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 961, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 971, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 985, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant [24 x i8] c"fcoe_vport_fc_functions\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 220, i32 36 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 62, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 717, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 2222, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 388, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [17 x i8] c"fcoe_sysfs_templ\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 148, i32 44 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 398, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [12 x i8] c"flogi_maddr\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 296, i32 18 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 305, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 311, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 320, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 695, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 723, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1349, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1355, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1371, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1388, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant [13 x i8] c"selected_cpu\00", align 1
@___asan_gen_.566 = private constant [28 x i8] c"../drivers/scsi/fcoe/fcoe.c\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 1312, i32 22 }
@llvm.compiler.used = appending global [205 x ptr] [ptr @__UNIQUE_ID_author377, ptr @__UNIQUE_ID_ddp_min382, ptr @__UNIQUE_ID_ddp_mintype381, ptr @__UNIQUE_ID_debug_logging384, ptr @__UNIQUE_ID_debug_loggingtype383, ptr @__UNIQUE_ID_description378, ptr @__UNIQUE_ID_e_d_tov386, ptr @__UNIQUE_ID_e_d_tovtype385, ptr @__UNIQUE_ID_file379, ptr @__UNIQUE_ID_license380, ptr @__UNIQUE_ID_r_a_tov388, ptr @__UNIQUE_ID_r_a_tovtype387, ptr @__exitcall_fcoe_exit, ptr @__initcall__kmod_fcoe__392_2508_fcoe_init6, ptr @__param_ddp_min, ptr @__param_debug_logging, ptr @__param_e_d_tov, ptr @__param_r_a_tov, ptr @_fcoe_create._entry, ptr @_fcoe_create._entry_ptr, ptr @fcoe_device_notification._entry, ptr @fcoe_device_notification._entry.24, ptr @fcoe_device_notification._entry.27, ptr @fcoe_device_notification._entry_ptr, ptr @fcoe_device_notification._entry_ptr.26, ptr @fcoe_device_notification._entry_ptr.29, ptr @fcoe_em_config._entry, ptr @fcoe_em_config._entry.91, ptr @fcoe_em_config._entry.94, ptr @fcoe_em_config._entry_ptr, ptr @fcoe_em_config._entry_ptr.93, ptr @fcoe_em_config._entry_ptr.96, ptr @fcoe_exit, ptr @fcoe_fdmi_info._entry, ptr @fcoe_fdmi_info._entry.86, ptr @fcoe_fdmi_info._entry_ptr, ptr @fcoe_fdmi_info._entry_ptr.88, ptr @fcoe_filter_frames._entry, ptr @fcoe_filter_frames._entry.17, ptr @fcoe_filter_frames._entry_ptr, ptr @fcoe_filter_frames._entry_ptr.19, ptr @fcoe_if_create._entry, ptr @fcoe_if_create._entry.54, ptr @fcoe_if_create._entry.58, ptr @fcoe_if_create._entry.61, ptr @fcoe_if_create._entry.64, ptr @fcoe_if_create._entry.67, ptr @fcoe_if_create._entry.70, ptr @fcoe_if_create._entry.73, ptr @fcoe_if_create._entry_ptr, ptr @fcoe_if_create._entry_ptr.56, ptr @fcoe_if_create._entry_ptr.60, ptr @fcoe_if_create._entry_ptr.63, ptr @fcoe_if_create._entry_ptr.66, ptr @fcoe_if_create._entry_ptr.69, ptr @fcoe_if_create._entry_ptr.72, ptr @fcoe_if_create._entry_ptr.75, ptr @fcoe_if_destroy._entry, ptr @fcoe_if_destroy._entry_ptr, ptr @fcoe_if_exit, ptr @fcoe_if_init._entry, ptr @fcoe_if_init._entry_ptr, ptr @fcoe_init._entry, ptr @fcoe_init._entry_ptr, ptr @fcoe_interface_create._entry, ptr @fcoe_interface_create._entry.105, ptr @fcoe_interface_create._entry_ptr, ptr @fcoe_interface_create._entry_ptr.107, ptr @fcoe_interface_remove._entry, ptr @fcoe_interface_remove._entry_ptr, ptr @fcoe_interface_setup._entry, ptr @fcoe_interface_setup._entry.110, ptr @fcoe_interface_setup._entry_ptr, ptr @fcoe_interface_setup._entry_ptr.112, ptr @fcoe_netdev_config._entry, ptr @fcoe_netdev_config._entry_ptr, ptr @fcoe_netdev_features_change._entry, ptr @fcoe_netdev_features_change._entry.36, ptr @fcoe_netdev_features_change._entry.39, ptr @fcoe_netdev_features_change._entry_ptr, ptr @fcoe_netdev_features_change._entry_ptr.38, ptr @fcoe_netdev_features_change._entry_ptr.41, ptr @fcoe_rcv._entry, ptr @fcoe_rcv._entry.119, ptr @fcoe_rcv._entry.121, ptr @fcoe_rcv._entry.124, ptr @fcoe_rcv._entry_ptr, ptr @fcoe_rcv._entry_ptr.120, ptr @fcoe_rcv._entry_ptr.123, ptr @fcoe_rcv._entry_ptr.126, ptr @fcoe_recv_frame._entry, ptr @fcoe_recv_frame._entry.11, ptr @fcoe_recv_frame._entry.7, ptr @fcoe_recv_frame._entry_ptr, ptr @fcoe_recv_frame._entry_ptr.13, ptr @fcoe_recv_frame._entry_ptr.9, ptr @fcoe_shost_config._entry, ptr @fcoe_shost_config._entry_ptr, ptr @fcoe_vport_create._entry, ptr @fcoe_vport_create._entry.49, ptr @fcoe_vport_create._entry_ptr, ptr @fcoe_vport_create._entry_ptr.51, ptr @fcoe_ddp_min, ptr @fcoe_debug_logging, ptr @fcoe_e_d_tov, ptr @fcoe_r_a_tov, ptr @fcoe_nport_scsi_transport, ptr @fcoe_vport_scsi_transport, ptr @fcoe_config_mutex, ptr @fcoe_hostlist, ptr @fcoe_wq, ptr @fcoe_sw_transport, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fcoe_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @skb_queue_head_init.__key, ptr @.str.21, ptr @dcb_notifier, ptr @fcoe_notifier, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @fcoe_interface_remove.flogi_maddr, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @fcoe_nport_fc_functions, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @fcoe_shost_template, ptr @.str.55, ptr @fcoe_if_create.__key, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @fcoe_libfc_fcn_templ, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @fcoe_netdev_config.__key, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @fcoe_logo_resp.zero_mac, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @fcoe_vport_fc_functions, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @fcoe_sysfs_templ, ptr @.str.106, ptr @fcoe_interface_setup.flogi_maddr, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.122, ptr @.str.125, ptr @fcoe_select_cpu.selected_cpu], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ddp_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_debug_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_e_d_tov to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_r_a_tov to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_nport_scsi_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_vport_scsi_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_config_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_hostlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_sw_transport to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_recv_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_recv_frame._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_recv_frame._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_filter_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_filter_frames._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_device_notification._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_device_notification._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_device_notification._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_remove.flogi_maddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_netdev_features_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_netdev_features_change._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_netdev_features_change._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_nport_fc_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_vport_create._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_shost_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_libfc_fcn_templ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_if_create._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_netdev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_netdev_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_shost_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_logo_resp.zero_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fdmi_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fdmi_info._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_em_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_em_config._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_em_config._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_vport_fc_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fcoe_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_sysfs_templ to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_create._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_setup.flogi_maddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_interface_setup._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_rcv._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_rcv._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_rcv._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_select_cpu.selected_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_if_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load ptr, ptr @fcoe_nport_scsi_transport, align 4
  tail call void @fc_release_transport(ptr noundef %0) #16
  %1 = load ptr, ptr @fcoe_vport_scsi_transport, align 4
  tail call void @fc_release_transport(ptr noundef %1) #16
  store ptr null, ptr @fcoe_nport_scsi_transport, align 4
  store ptr null, ptr @fcoe_vport_scsi_transport, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #16
  store ptr %call, ptr @fcoe_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fcoe_transport_attach(ptr noundef nonnull @fcoe_sw_transport) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  br label %out_destroy

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  %call635 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call635, i32 %0)
  %cmp36 = icmp ult i32 %call635, %0
  br i1 %cmp36, label %if.end5.do.body7_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end5.do.body7_crit_edge:                       ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %if.end5.do.body7_crit_edge
  %call637 = phi i32 [ %call6, %do.body7.do.body7_crit_edge ], [ %call635, %if.end5.do.body7_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call637
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @fcoe_percpu to i32)
  %3 = inttoptr i32 %add to ptr
  %work = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #16
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @fcoe_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry16 = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fcoe_receive_work, ptr %func, align 4
  %fcoe_rx_list = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %8 = ptrtoint ptr %fcoe_rx_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fcoe_rx_list, ptr %fcoe_rx_list, align 4
  %prev.i.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fcoe_rx_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call637, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %11
  br i1 %cmp, label %do.body7.do.body7_crit_edge, label %do.body7.for.end_crit_edge

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

for.end:                                          ; preds = %do.body7.for.end_crit_edge, %if.end5.for.end_crit_edge
  %call.i = tail call i32 @register_dcbevent_notifier(ptr noundef nonnull @dcb_notifier) #16
  %call1.i = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @fcoe_notifier) #16
  %call20 = tail call fastcc i32 @fcoe_if_init() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %for.end.out_destroy_crit_edge

for.end.out_destroy_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_destroy

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_destroy:                                      ; preds = %for.end.out_destroy_crit_edge, %do.end
  %rc.0 = phi i32 [ %call1, %do.end ], [ %call20, %for.end.out_destroy_crit_edge ]
  %12 = load ptr, ptr @fcoe_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #16
  br label %cleanup

cleanup:                                          ; preds = %out_destroy, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_destroy ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  %call.i = tail call i32 @unregister_dcbevent_notifier(ptr noundef nonnull @dcb_notifier) #16
  %call1.i = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @fcoe_notifier) #16
  tail call void @rtnl_lock() #16
  %0 = load ptr, ptr @fcoe_hostlist, align 4
  %cmp.not27 = icmp eq ptr %0, @fcoe_hostlist
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %fcoe_hostlist_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %fcoe.028 = phi ptr [ %tmp.0, %fcoe_hostlist_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %fcoe.028 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %fcoe.028, align 4
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe.028, i32 -1, i32 2
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 4
  %lport = getelementptr %struct.fc_lport, ptr %3, i32 1, i32 1
  %4 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lport, align 4
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %5, i32 1
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.fcoe_hostlist_del.exit_crit_edge

for.body.fcoe_hostlist_del.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_hostlist_del.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %fcoe_hostlist_del.exit

fcoe_hostlist_del.exit:                           ; preds = %if.end.i.i.i, %for.body.fcoe_hostlist_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = load ptr, ptr @fcoe_wq, align 4
  %destroy_work = getelementptr %struct.fc_lport, ptr %3, i32 1, i32 6, i32 8, i32 5, i32 1
  %call.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %destroy_work) #16
  %cmp.not = icmp eq ptr %tmp.0, @fcoe_hostlist
  br i1 %cmp.not, label %fcoe_hostlist_del.exit.for.end_crit_edge, label %fcoe_hostlist_del.exit.for.body_crit_edge

fcoe_hostlist_del.exit.for.body_crit_edge:        ; preds = %fcoe_hostlist_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

fcoe_hostlist_del.exit.for.end_crit_edge:         ; preds = %fcoe_hostlist_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %fcoe_hostlist_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #16
  %call1429 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1429, i32 %17)
  %cmp1530 = icmp ult i32 %call1429, %17
  br i1 %cmp1530, label %for.end.for.body16_crit_edge, label %for.end.for.end17_crit_edge

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end17

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %call1431 = phi i32 [ %call14, %for.body16.for.body16_crit_edge ], [ %call1429, %for.end.for.body16_crit_edge ]
  tail call fastcc void @fcoe_thread_cleanup_local(i32 noundef %call1431)
  %call14 = tail call i32 @cpumask_next(i32 noundef %call1431, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %18
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end17_crit_edge

for.body16.for.end17_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end17

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body16

for.end17:                                        ; preds = %for.body16.for.end17_crit_edge, %for.end.for.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  %19 = load ptr, ptr @fcoe_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %19) #16
  %call18 = tail call i32 @fcoe_if_exit() #21
  %call19 = tail call i32 @fcoe_transport_detach(ptr noundef nonnull @fcoe_sw_transport) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcoe_thread_cleanup_local(i32 noundef %cpu) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @fcoe_percpu to i32)
  %2 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.fcoe_percpu_s, ptr %2, i32 0, i32 2, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %crc_eof_page = getelementptr inbounds %struct.fcoe_percpu_s, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %crc_eof_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crc_eof_page, align 4
  store ptr null, ptr %crc_eof_page, align 4
  %crc_eof_offset = getelementptr inbounds %struct.fcoe_percpu_s, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %crc_eof_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %crc_eof_offset, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !315

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !316

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.100) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !318
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !319
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fcoe_thread_cleanup_local, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !321

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %10) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.fcoe_percpu_s, ptr %2, i32 0, i32 1
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_transport_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_transport_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_receive_work(ptr noundef %work) #4 align 64 {
entry:
  %crc_eof.i = alloca %struct.fcoe_crc_eof, align 8
  %tmp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmp) #16
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmp, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %fcoe_rx_list = getelementptr i8, ptr %work, i32 44
  %lock = getelementptr i8, ptr %work, i32 56
  call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %4 = ptrtoint ptr %fcoe_rx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcoe_rx_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %fcoe_rx_list
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmp, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %tmp, ptr %prev5.i.i, align 4
  store volatile ptr %5, ptr %tmp, align 8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.44, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %prev35.i.i, align 4
  %qlen.i = getelementptr i8, ptr %work, i32 52
  %13 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i, align 4
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %add.i = add i32 %16, %14
  store i32 %add.i, ptr %qlen.i.i, align 4
  %17 = ptrtoint ptr %fcoe_rx_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fcoe_rx_list, ptr %fcoe_rx_list, align 4
  store ptr %fcoe_rx_list, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %entry.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %18 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %skb_queue_splice_init.exit.cleanup_crit_edge, label %while.cond.preheader

skb_queue_splice_init.exit.cleanup_crit_edge:     ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond.preheader:                             ; preds = %skb_queue_splice_init.exit
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp, align 4
  %cmp.i.i19 = icmp eq ptr %21, %tmp
  %tobool.not.i1820 = icmp eq ptr %21, null
  %tobool.not.i21 = or i1 %cmp.i.i19, %tobool.not.i1820
  br i1 %tobool.not.i21, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %22 = getelementptr inbounds %struct.fcoe_crc_eof, ptr %crc_eof.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %fcoe_recv_frame.exit.while.body_crit_edge, %while.body.lr.ph
  %23 = phi ptr [ %21, %while.body.lr.ph ], [ %185, %fcoe_recv_frame.exit.while.body_crit_edge ]
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %23, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %prev17.i.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crc_eof.i) #16
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %crc_eof.i, align 8
  %33 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb.i.i, align 4
  %tobool.not.i14 = icmp eq ptr %34, null
  %35 = load i32, ptr @fcoe_debug_logging, align 4
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %do.body.i, label %do.body20.i, !prof !316

do.body.i:                                        ; preds = %while.body
  br i1 %tobool4.not.i, label %do.body.i.do.end18.i_crit_edge, label %do.end.i, !prof !315

do.body.i.do.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = getelementptr inbounds %struct.anon.44, ptr %23, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %38) #19
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end.i, %do.body.i.do.end18.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %23, i32 noundef 0) #16
  br label %fcoe_recv_frame.exit

do.body20.i:                                      ; preds = %while.body
  br i1 %tobool4.not.i, label %do.body20.i.do.end47.i_crit_edge, label %do.end33.i, !prof !315

do.body20.i.do.end47.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47.i

do.end33.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = getelementptr inbounds %struct.anon.44, ptr %23, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 18
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %52 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i.i, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %tobool39.not.i = icmp eq ptr %41, null
  %spec.select.i = select i1 %tobool39.not.i, ptr @.str.10, ptr %41
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %41, i32 noundef %43, i32 noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %51, ptr noundef %53, i32 noundef %56, ptr noundef nonnull %spec.select.i) #19
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end33.i, %do.body20.i.do.end47.i_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 7
  %57 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i.i, label %do.end47.i.skb_linearize.exit.i_crit_edge, label %cond.true.i.i

do.end47.i.skb_linearize.exit.i_crit_edge:        ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_linearize.exit.i

cond.true.i.i:                                    ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call ptr @__pskb_pull_tail(ptr noundef nonnull %23, i32 noundef %58) #16
  br label %skb_linearize.exit.i

skb_linearize.exit.i:                             ; preds = %cond.true.i.i, %do.end47.i.skb_linearize.exit.i_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15, i32 0, i32 20
  %61 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %62 to i32
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %conv.i.i
  %stats54.i = getelementptr inbounds %struct.fc_lport, ptr %34, i32 0, i32 16
  %63 = ptrtoint ptr %stats54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stats54.i, align 8
  %65 = ptrtoint ptr %64 to i32
  %66 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %69, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !322
  %70 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %add.i15 = add i32 %75, %65
  %76 = inttoptr i32 %add.i15 to ptr
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr.i.i, align 1
  %79 = lshr i8 %78, 4
  %80 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %78)
  %cmp.not.i = icmp ult i8 %78, 16
  br i1 %cmp.not.i, label %if.end81.i, label %if.then68.i, !prof !315

if.then68.i:                                      ; preds = %skb_linearize.exit.i
  %ErrorFrames.i = getelementptr inbounds %struct.fc_stats, ptr %76, i32 0, i32 5
  %81 = ptrtoint ptr %ErrorFrames.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ErrorFrames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %82)
  %cmp69.i = icmp ult i64 %82, 5
  br i1 %cmp69.i, label %do.end74.i, label %if.then68.i.drop.i_crit_edge

if.then68.i.drop.i_crit_edge:                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop.i

do.end74.i:                                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #18
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %80, i32 noundef 0) #19
  br label %drop.i

if.end81.i:                                       ; preds = %skb_linearize.exit.i
  %call82.i = call ptr @skb_pull(ptr noundef nonnull %23, i32 noundef 14) #16
  %len83.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %83 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len83.i, align 4
  %sub.i = add i32 %84, -8
  %RxFrames.i = getelementptr inbounds %struct.fc_stats, ptr %76, i32 0, i32 3
  %85 = ptrtoint ptr %RxFrames.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %RxFrames.i, align 8
  %inc.i = add i64 %86, 1
  store i64 %inc.i, ptr %RxFrames.i, align 8
  %div161.i = lshr i32 %sub.i, 2
  %conv84.i = zext i32 %div161.i to i64
  %RxWords.i = getelementptr inbounds %struct.fc_stats, ptr %76, i32 0, i32 4
  %87 = ptrtoint ptr %RxWords.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %RxWords.i, align 8
  %add85.i = add i64 %88, %conv84.i
  store i64 %add85.i, ptr %RxWords.i, align 8
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 4
  %89 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %fr_seq.i.i, align 4
  %fr_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 20
  %90 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %fr_flags.i.i, align 4
  %fr_encaps.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 21
  %91 = ptrtoint ptr %fr_encaps.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %fr_encaps.i.i, align 1
  %92 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %34, ptr %cb.i.i, align 8
  %fcoe_sof.i = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %fcoe_sof.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %fcoe_sof.i, align 1
  %fr_sof.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 18
  %95 = ptrtoint ptr %fr_sof.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %fr_sof.i, align 2
  %call92.i = call i32 @skb_copy_bits(ptr noundef nonnull %23, i32 noundef %sub.i, ptr noundef nonnull %crc_eof.i, i32 noundef 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %if.end95.i, label %if.end81.i.drop.i_crit_edge

if.end81.i.drop.i_crit_edge:                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop.i

if.end95.i:                                       ; preds = %if.end81.i
  %96 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %22, align 4
  %fr_eof.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 19
  %98 = ptrtoint ptr %fr_eof.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %fr_eof.i, align 1
  %99 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %crc_eof.i, align 8
  %fr_crc.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 12
  %101 = ptrtoint ptr %fr_crc.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %fr_crc.i, align 4
  %102 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %sub.i)
  %cmp.i.i16 = icmp ugt i32 %103, %sub.i
  br i1 %cmp.i.i16, label %cond.true.i169.i, label %if.end95.i.if.end105.i_crit_edge

if.end95.i.if.end105.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105.i

cond.true.i169.i:                                 ; preds = %if.end95.i
  %104 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i169.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %len83.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub.i, ptr %len83.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %107 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %108, i32 %sub.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 16
  %109 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end105.i

pskb_trim.exit.i:                                 ; preds = %cond.true.i169.i
  %call.i.i170.i = call i32 @___pskb_trim(ptr noundef nonnull %23, i32 noundef %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170.i)
  %tobool103.not.i = icmp eq i32 %call.i.i170.i, 0
  br i1 %tobool103.not.i, label %pskb_trim.exit.i.if.end105.i_crit_edge, label %pskb_trim.exit.i.drop.i_crit_edge

pskb_trim.exit.i.drop.i_crit_edge:                ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop.i

pskb_trim.exit.i.if.end105.i_crit_edge:           ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105.i

if.end105.i:                                      ; preds = %pskb_trim.exit.i.if.end105.i_crit_edge, %__skb_trim.exit.i.i.i, %if.end95.i.if.end105.i_crit_edge
  %crc_offload.i.i = getelementptr inbounds %struct.fc_lport, ptr %34, i32 0, i32 25
  %110 = ptrtoint ptr %crc_offload.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i.i = load i8, ptr %crc_offload.i.i, align 8
  %111 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i, label %if.end105.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end105.i.if.else.i.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end105.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load1.i.i = load i16, ptr %ip_summed.i.i, align 8
  %113 = and i16 %bf.load1.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %113)
  %cmp.i171.i = icmp eq i16 %113, 512
  br i1 %cmp.i171.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fr_flags.i.i, align 4
  %116 = and i8 %115, -2
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end105.i.if.else.i.i_crit_edge
  %117 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %fr_flags.i.i, align 4
  %119 = or i8 %118, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i = phi i8 [ %119, %if.else.i.i ], [ %116, %if.then.i.i ]
  %120 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %storemerge.i, ptr %fr_flags.i.i, align 4
  %121 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %122)
  %cmp.i.i.i = icmp ult i32 %122, 24
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.fc_frame_header_get.exit.i.i_crit_edge, !prof !316

if.end.i.i.fc_frame_header_get.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit.i.i

fc_frame_header_get.exit.i.i:                     ; preds = %do.end.i.i.i, %if.end.i.i.fc_frame_header_get.exit.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %123 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data.i.i.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp16.i.i = icmp eq i8 %126, 1
  br i1 %cmp16.i.i, label %land.lhs.true18.i.i, label %fc_frame_header_get.exit.i.i.if.end23.i.i_crit_edge

fc_frame_header_get.exit.i.i.if.end23.i.i_crit_edge: ; preds = %fc_frame_header_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

land.lhs.true18.i.i:                              ; preds = %fc_frame_header_get.exit.i.i
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %124, i32 0, i32 4
  %127 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %fh_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %128)
  %cmp20.i.i = icmp eq i8 %128, 8
  br i1 %cmp20.i.i, label %land.lhs.true18.i.i.do.body109.i_crit_edge, label %land.lhs.true18.i.i.if.end23.i.i_crit_edge

land.lhs.true18.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

land.lhs.true18.i.i.do.body109.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body109.i

if.end23.i.i:                                     ; preds = %land.lhs.true18.i.i.if.end23.i.i_crit_edge, %fc_frame_header_get.exit.i.i.if.end23.i.i_crit_edge
  %add.ptr.i.i.i = getelementptr %struct.fc_lport, ptr %34, i32 1
  %129 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i173.i = getelementptr %struct.fcoe_ctlr, ptr %130, i32 -1
  %131 = ptrtoint ptr %add.ptr.i173.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr.i173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %132)
  %cmp.i118.i.i = icmp eq i32 %132, 4
  br i1 %cmp.i118.i.i, label %land.lhs.true27.i.i, label %if.end23.i.i.if.end50.i.i_crit_edge

if.end23.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

land.lhs.true27.i.i:                              ; preds = %if.end23.i.i
  %133 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %134)
  %cmp.not.i.i.i.i = icmp ult i32 %134, 25
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true27.i.i.if.end50.i.i_crit_edge, label %fc_frame_payload_get.exit.i.i.i

land.lhs.true27.i.i.if.end50.i.i_crit_edge:       ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

fc_frame_payload_get.exit.i.i.i:                  ; preds = %land.lhs.true27.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.fc_frame_header, ptr %124, i32 1
  %tobool.not.i.i174.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i174.i, label %fc_frame_payload_get.exit.i.i.i.if.end50.i.i_crit_edge, label %fc_frame_payload_op.exit.i.i

fc_frame_payload_get.exit.i.i.i.if.end50.i.i_crit_edge: ; preds = %fc_frame_payload_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

fc_frame_payload_op.exit.i.i:                     ; preds = %fc_frame_payload_get.exit.i.i.i
  %135 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %add.ptr.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %136)
  %cmp30.i.i = icmp eq i8 %136, 5
  br i1 %cmp30.i.i, label %land.lhs.true32.i.i, label %fc_frame_payload_op.exit.i.i.if.end50.i.i_crit_edge

fc_frame_payload_op.exit.i.i.if.end50.i.i_crit_edge: ; preds = %fc_frame_payload_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

land.lhs.true32.i.i:                              ; preds = %fc_frame_payload_op.exit.i.i
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %124, i32 0, i32 3
  %137 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %fh_s_id.i.i, align 1
  %conv.i.i.i = zext i8 %138 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr %struct.fc_frame_header, ptr %124, i32 0, i32 3, i32 1
  %139 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %140 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %124, i32 0, i32 3, i32 2
  %141 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %142 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i.i.i)
  %cmp34.i.i = icmp eq i32 %or6.i.i.i, 16777214
  br i1 %cmp34.i.i, label %do.body.i.i, label %land.lhs.true32.i.i.if.end50.i.i_crit_edge

land.lhs.true32.i.i.if.end50.i.i_crit_edge:       ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

do.body.i.i:                                      ; preds = %land.lhs.true32.i.i
  %143 = load i32, ptr @fcoe_debug_logging, align 4
  %and37.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %do.body.i.i.drop.i_crit_edge, label %do.end.i.i, !prof !315

do.body.i.i.drop.i_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %drop.i

if.end50.i.i:                                     ; preds = %land.lhs.true32.i.i.if.end50.i.i_crit_edge, %fc_frame_payload_op.exit.i.i.if.end50.i.i_crit_edge, %fc_frame_payload_get.exit.i.i.i.if.end50.i.i_crit_edge, %land.lhs.true27.i.i.if.end50.i.i_crit_edge, %if.end23.i.i.if.end50.i.i_crit_edge
  %144 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %fr_flags.i.i, align 4
  %146 = and i8 %145, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool57.not.i.i = icmp eq i8 %146, 0
  br i1 %tobool57.not.i.i, label %if.end50.i.i.if.then64.i.i_crit_edge, label %lor.lhs.false.i.i

if.end50.i.i.if.then64.i.i_crit_edge:             ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64.i.i

lor.lhs.false.i.i:                                ; preds = %if.end50.i.i
  %147 = ptrtoint ptr %fr_crc.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fr_crc.i, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148) #16
  %150 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len83.i, align 4
  %call61.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %124, i32 noundef %151) #20
  %neg.i.i = xor i32 %call61.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %neg.i.i)
  %cmp62.i.i = icmp eq i32 %149, %neg.i.i
  br i1 %cmp62.i.i, label %lor.lhs.false.i.i.if.then64.i.i_crit_edge, label %do.body73.i.i

lor.lhs.false.i.i.if.then64.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64.i.i

if.then64.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then64.i.i_crit_edge, %if.end50.i.i.if.then64.i.i_crit_edge
  %152 = and i8 %145, -2
  %153 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %fr_flags.i.i, align 4
  br label %do.body109.i

do.body73.i.i:                                    ; preds = %lor.lhs.false.i.i
  %154 = ptrtoint ptr %stats54.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %stats54.i, align 8
  %156 = ptrtoint ptr %155 to i32
  %157 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %160, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !323
  %161 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu.i.i, align 4
  %arrayidx84.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx84.i.i, align 4
  %add.i175.i = add i32 %166, %156
  %167 = inttoptr i32 %add.i175.i to ptr
  %InvalidCRCCount.i.i = getelementptr inbounds %struct.fc_stats, ptr %167, i32 0, i32 13
  %168 = ptrtoint ptr %InvalidCRCCount.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %InvalidCRCCount.i.i, align 8
  %inc.i.i = add i64 %169, 1
  store i64 %inc.i.i, ptr %InvalidCRCCount.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %inc.i.i)
  %cmp86.i.i = icmp ult i64 %inc.i.i, 5
  br i1 %cmp86.i.i, label %do.end91.i.i, label %do.body73.i.i.do.body95.i.i_crit_edge

do.body73.i.i.do.body95.i.i_crit_edge:            ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body95.i.i

do.end91.i.i:                                     ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #19
  br label %do.body95.i.i

do.body95.i.i:                                    ; preds = %do.end91.i.i, %do.body73.i.i.do.body95.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !324
  %170 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i116.i.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i116.i.i to ptr
  %preempt_count.i.i117.i.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %preempt_count.i.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %preempt_count.i.i117.i.i, align 4
  %sub.i.i.i = add i32 %173, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i117.i.i, align 4
  br label %drop.i

do.body109.i:                                     ; preds = %if.then64.i.i, %land.lhs.true18.i.i.do.body109.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !325
  %174 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i162.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i162.i to ptr
  %preempt_count.i.i163.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %preempt_count.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %preempt_count.i.i163.i, align 4
  %sub.i.i17 = add i32 %177, -1
  store volatile i32 %sub.i.i17, ptr %preempt_count.i.i163.i, align 4
  call void @fc_exch_recv(ptr noundef nonnull %34, ptr noundef nonnull %23) #16
  br label %fcoe_recv_frame.exit

drop.i:                                           ; preds = %do.body95.i.i, %do.end.i.i, %do.body.i.i.drop.i_crit_edge, %pskb_trim.exit.i.drop.i_crit_edge, %if.end81.i.drop.i_crit_edge, %do.end74.i, %if.then68.i.drop.i_crit_edge
  %ErrorFrames113.i = getelementptr inbounds %struct.fc_stats, ptr %76, i32 0, i32 5
  %178 = ptrtoint ptr %ErrorFrames113.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %ErrorFrames113.i, align 8
  %inc114.i = add i64 %179, 1
  store i64 %inc114.i, ptr %ErrorFrames113.i, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !326
  %180 = call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i164.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i164.i to ptr
  %preempt_count.i.i165.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i165.i, align 4
  %sub.i166.i = add i32 %183, -1
  store volatile i32 %sub.i166.i, ptr %preempt_count.i.i165.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %23, i32 noundef 0) #16
  br label %fcoe_recv_frame.exit

fcoe_recv_frame.exit:                             ; preds = %drop.i, %do.body109.i, %do.end18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crc_eof.i) #16
  %184 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tmp, align 4
  %cmp.i.i = icmp eq ptr %185, %tmp
  %tobool.not.i18 = icmp eq ptr %185, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i18
  br i1 %tobool.not.i, label %fcoe_recv_frame.exit.cleanup_crit_edge, label %fcoe_recv_frame.exit.while.body_crit_edge

fcoe_recv_frame.exit.while.body_crit_edge:        ; preds = %fcoe_recv_frame.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

fcoe_recv_frame.exit.cleanup_crit_edge:           ; preds = %fcoe_recv_frame.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %fcoe_recv_frame.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %skb_queue_splice_init.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmp) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fcoe_if_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fc_attach_transport(ptr noundef nonnull @fcoe_nport_fc_functions) #16
  store ptr %call, ptr @fcoe_nport_scsi_transport, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fc_attach_transport(ptr noundef nonnull @fcoe_vport_fc_functions) #16
  store ptr %call1, ptr @fcoe_vport_scsi_transport, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %err_vport, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

err_vport:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load ptr, ptr @fcoe_nport_scsi_transport, align 4
  tail call void @fc_release_transport(ptr noundef %0) #16
  br label %do.end

do.end:                                           ; preds = %err_vport, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #19
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_dcbevent_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_dcb_app_notification(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.dcb_app_type, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %app, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr, align 4
  %call = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %3) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %fcoe.0.in.i = phi ptr [ %fcoe.0.i, %if.end.i.for.cond.i_crit_edge ], [ @fcoe_hostlist, %if.end.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %fcoe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %fcoe.0.i = load ptr, ptr %fcoe.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fcoe.0.i, @fcoe_hostlist
  br i1 %cmp.not.i, label %for.cond.i.do.body1.i_crit_edge, label %for.body.i

for.cond.i.do.body1.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev1.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = tail call ptr @vlan_dev_real_dev(ptr noundef %6) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %real_dev.0.i = phi ptr [ %call3.i, %if.then.i ], [ %6, %for.body.i.if.end.i_crit_edge ]
  %cmp5.i = icmp eq ptr %real_dev.0.i, %call
  br i1 %cmp5.i, label %if.end.i.do.body1.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %for.cond.i.do.body1.i_crit_edge
  %retval.0.i = phi ptr [ %fcoe.0.i, %if.end.i.do.body1.i_crit_edge ], [ null, %for.cond.i.do.body1.i_crit_edge ]
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i61 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i61 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, -1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !316

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #16, !srcloc !329
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %dev_put.exit.cleanup_crit_edge, label %if.end8

dev_put.exit.cleanup_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %dev_put.exit
  %dcbx = getelementptr inbounds %struct.dcb_app_type, ptr %ptr, i32 0, i32 3
  %23 = ptrtoint ptr %dcbx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dcbx, align 4
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not = icmp eq i8 %25, 0
  %priority15 = getelementptr inbounds %struct.dcb_app_type, ptr %ptr, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %priority15 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %priority15, align 1
  br i1 %tobool10.not, label %if.end8.if.end21_crit_edge, label %if.then11

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then11:                                        ; preds = %if.end8
  %28 = tail call i8 @llvm.cttz.i8(i8 %27, i1 true), !range !330
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %iszero = icmp eq i8 %27, 0
  br i1 %iszero, label %if.then11.cleanup_crit_edge, label %if.then11.if.end21_crit_edge

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %prio.0.ph.in = phi i8 [ %28, %if.then11.if.end21_crit_edge ], [ %27, %if.end8.if.end21_crit_edge ]
  %protocol = getelementptr inbounds %struct.dcb_app_type, ptr %ptr, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %protocol, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i16 %30, label %if.end21.cleanup_crit_edge [
    i16 -30444, label %if.end21.if.end34_crit_edge
    i16 -30458, label %if.end21.if.end34_crit_edge66
  ]

if.end21.if.end34_crit_edge66:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end21.if.end34_crit_edge, %if.end21.if.end34_crit_edge66
  %priority33 = getelementptr %struct.fcoe_ctlr, ptr %retval.0.i, i32 -1, i32 26
  %32 = ptrtoint ptr %priority33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %prio.0.ph.in, ptr %priority33, align 2
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %33)
  %.pr = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %.pr)
  %cmp38 = icmp eq i16 %.pr, -30458
  br i1 %cmp38, label %if.then40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %priority42 = getelementptr inbounds %struct.fcoe_interface, ptr %retval.0.i, i32 0, i32 8
  %34 = ptrtoint ptr %priority42 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %prio.0.ph.in, ptr %priority42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end34.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %dev_put.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_device_notification(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %fcoe.0.in = phi ptr [ @fcoe_hostlist, %entry ], [ %fcoe.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %fcoe.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %fcoe.0 = load ptr, ptr %fcoe.0.in, align 4
  %cmp.not = icmp eq ptr %fcoe.0, @fcoe_hostlist
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body:                                         ; preds = %for.cond
  %netdev1 = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0, i32 0, i32 1
  %3 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev1, align 4
  %cmp2 = icmp eq ptr %4, %1
  br i1 %cmp2, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.body
  %netdev1.le = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0, i32 0, i32 1
  %add.ptr3 = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0, i32 -1
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0, i32 -1, i32 2
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end9

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end9:                                          ; preds = %for.end
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %event, label %do.body [
    i32 2, label %if.end9.sw.epilog_crit_edge
    i32 10, label %if.end9.sw.epilog_crit_edge130
    i32 1, label %if.end9.land.lhs.true_crit_edge
    i32 4, label %if.end9.land.lhs.true_crit_edge131
    i32 7, label %sw.bb11
    i32 5, label %if.end9.land.lhs.true_crit_edge132
    i32 6, label %sw.bb19
    i32 12, label %sw.bb25
  ]

if.end9.land.lhs.true_crit_edge132:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end9.land.lhs.true_crit_edge131:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end9.sw.epilog_crit_edge130:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %and = and i64 %9, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb11.land.lhs.true_crit_edge

sw.bb11.land.lhs.true_crit_edge:                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end14:                                         ; preds = %sw.bb11
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %sub = add i32 %11, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 279, i32 %sub)
  %cmp15 = icmp ugt i32 %sub, 279
  br i1 %cmp15, label %if.then16, label %if.end14.land.lhs.true_crit_edge

if.end14.land.lhs.true_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 @fc_set_mfs(ptr noundef nonnull %6, i32 noundef %sub) #16
  br label %land.lhs.true

sw.bb19:                                          ; preds = %if.end9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fcoe.0) #16
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb19.list_del.exit_crit_edge

sw.bb19.list_del.exit_crit_edge:                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fcoe.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %fcoe.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcoe.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sw.bb19.list_del.exit_crit_edge
  %18 = ptrtoint ptr %fcoe.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %fcoe.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fcoe.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 51
  %22 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost_data.i, align 8
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #16
  %vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %23, i32 0, i32 35
  %26 = ptrtoint ptr %vports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vports.i, align 4
  %cmp12.not41.i = icmp eq ptr %27, %vports.i
  br i1 %cmp12.not41.i, label %list_del.exit.fcoe_vport_remove.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.fcoe_vport_remove.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_vport_remove.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %.pn.in42.i = phi ptr [ %.pn43.i, %for.inc.i.for.body.i_crit_edge ], [ %27, %list_del.exit.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn43.i = load ptr, ptr %.pn.in42.i, align 8
  %flags14.i = getelementptr i8, ptr %.pn.in42.i, i32 -4
  %29 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags14.i, align 4
  %31 = and i8 %30, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i8 %30, 2
  %32 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i, ptr %flags14.i, align 4
  %33 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost_data.i, align 8
  %work_q.i = getelementptr inbounds %struct.fc_host_attrs, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %work_q.i, align 8
  %vport_delete_work.i = getelementptr i8, ptr %.pn.in42.i, i32 936
  %call.i.i111 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %vport_delete_work.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %cmp12.not.i = icmp eq ptr %.pn43.i, %vports.i
  br i1 %cmp12.not.i, label %for.inc.i.fcoe_vport_remove.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.fcoe_vport_remove.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_vport_remove.exit

fcoe_vport_remove.exit:                           ; preds = %for.inc.i.fcoe_vport_remove.exit_crit_edge, %list_del.exit.fcoe_vport_remove.exit_crit_edge
  %37 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call2.i) #16
  %39 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shost_data.i, align 8
  %work_q28.i = getelementptr inbounds %struct.fc_host_attrs, ptr %40, i32 0, i32 41
  %41 = ptrtoint ptr %work_q28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %work_q28.i, align 8
  tail call void @flush_workqueue(ptr noundef %42) #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call fastcc void @fcoe_if_destroy(ptr noundef nonnull %6)
  %removed = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0, i32 0, i32 7
  %43 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool21.not = icmp eq i8 %44, 0
  br i1 %tobool21.not, label %if.then22, label %fcoe_vport_remove.exit.if.end23_crit_edge

fcoe_vport_remove.exit.if.end23_crit_edge:        ; preds = %fcoe_vport_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then22:                                        ; preds = %fcoe_vport_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fcoe_interface_remove(ptr noundef %fcoe.0)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %fcoe_vport_remove.exit.if.end23_crit_edge
  %45 = ptrtoint ptr %netdev1.le to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev1.le, align 4
  tail call void @fcoe_ctlr_destroy(ptr noundef %add.ptr3) #16
  %47 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lp, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  tail call void @scsi_host_put(ptr noundef %50) #16
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end23.fcoe_interface_cleanup.exit_crit_edge, label %do.body1.i.i

if.end23.fcoe_interface_cleanup.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_interface_cleanup.exit

do.body1.i.i:                                     ; preds = %if.end23
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 118
  %52 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i112 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i112 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %60, %54
  %61 = inttoptr i32 %add.i.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add13.i.i = add i32 %63, -1
  store i32 %add13.i.i, ptr %61, align 4
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !316

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #16, !srcloc !329
  br label %fcoe_interface_cleanup.exit

fcoe_interface_cleanup.exit:                      ; preds = %do.end30.i.i, %if.end23.fcoe_interface_cleanup.exit_crit_edge
  tail call void @module_put(ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  %cdev24 = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0, i32 -1, i32 5
  %65 = ptrtoint ptr %cdev24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cdev24, align 4
  tail call void @fcoe_ctlr_device_delete(ptr noundef %66) #16
  br label %out

sw.bb25:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fcoe_netdev_features_change(ptr noundef nonnull %6, ptr noundef %1)
  br label %land.lhs.true

do.body:                                          ; preds = %if.end9
  %67 = load i32, ptr @fcoe_debug_logging, align 4
  %and26 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body.land.lhs.true_crit_edge, label %do.end, !prof !315

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %event) #19
  br label %land.lhs.true

sw.epilog:                                        ; preds = %if.end9.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge130
  %call41 = tail call i32 @fcoe_link_speed_update(ptr noundef nonnull %6) #16
  %cdev42 = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0, i32 -1, i32 5
  %68 = ptrtoint ptr %cdev42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cdev42, align 4
  br label %if.else

land.lhs.true:                                    ; preds = %do.end, %do.body.land.lhs.true_crit_edge, %sw.bb25, %if.then16, %if.end14.land.lhs.true_crit_edge, %sw.bb11.land.lhs.true_crit_edge, %if.end9.land.lhs.true_crit_edge, %if.end9.land.lhs.true_crit_edge131, %if.end9.land.lhs.true_crit_edge132
  %call41119 = tail call i32 @fcoe_link_speed_update(ptr noundef nonnull %6) #16
  %cdev42120 = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0, i32 -1, i32 5
  %70 = ptrtoint ptr %cdev42120 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cdev42120, align 4
  %add.ptr.i.i.i = getelementptr %struct.fc_lport, ptr %6, i32 1
  %72 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev.i.i, align 4
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 50
  %76 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %operstate.i.i, align 8
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %77, label %land.lhs.true.if.else_crit_edge [
    i8 6, label %land.lhs.true.if.then46_crit_edge
    i8 0, label %land.lhs.true.if.then46_crit_edge133
  ]

land.lhs.true.if.then46_crit_edge133:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true.if.then46_crit_edge, %land.lhs.true.if.then46_crit_edge133
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %71, i32 0, i32 11
  %79 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enabled, align 8
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %80, label %if.then46.out_crit_edge [
    i32 1, label %do.end50
    i32 0, label %if.then46.sw.bb53_crit_edge
    i32 2, label %if.then46.sw.bb53_crit_edge134
  ]

if.then46.sw.bb53_crit_edge134:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb53

if.then46.sw.bb53_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb53

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #19
  br label %out

sw.bb53:                                          ; preds = %if.then46.sw.bb53_crit_edge, %if.then46.sw.bb53_crit_edge134
  tail call void @fcoe_ctlr_link_up(ptr noundef %add.ptr3) #16
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.epilog
  %82 = phi ptr [ %71, %land.lhs.true.if.else_crit_edge ], [ %69, %sw.epilog ]
  %call55 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else.out_crit_edge, label %if.then57

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then57:                                        ; preds = %if.else
  %enabled58 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %enabled58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %enabled58, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %84, label %if.then57.out_crit_edge [
    i32 1, label %do.end62
    i32 0, label %if.then57.do.body66_crit_edge
    i32 2, label %if.then57.do.body66_crit_edge135
  ]

if.then57.do.body66_crit_edge135:                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.then57.do.body66_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.then57.out_crit_edge:                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end62:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %out

do.body66:                                        ; preds = %if.then57.do.body66_crit_edge, %if.then57.do.body66_crit_edge135
  %stats70 = getelementptr inbounds %struct.fc_lport, ptr %6, i32 0, i32 16
  %86 = ptrtoint ptr %stats70 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stats70, align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %92, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !331
  %93 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  %add = add i32 %98, %88
  %99 = inttoptr i32 %add to ptr
  %LinkFailureCount = getelementptr inbounds %struct.fc_stats, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %LinkFailureCount to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %LinkFailureCount, align 8
  %inc = add i64 %101, 1
  store i64 %inc, ptr %LinkFailureCount, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !332
  %102 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i109 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i109 to ptr
  %preempt_count.i.i110 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i110 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i110, align 4
  %sub.i = add i32 %105, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i110, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef nonnull %6) #16
  br label %out

out:                                              ; preds = %do.body66, %do.end62, %if.then57.out_crit_edge, %if.else.out_crit_edge, %sw.bb53, %do.end50, %if.then46.out_crit_edge, %fcoe_interface_cleanup.exit, %for.end.out_crit_edge, %for.cond.out_crit_edge
  %rc.0 = phi i32 [ 1, %if.then57.out_crit_edge ], [ 1, %do.body66 ], [ 1, %do.end62 ], [ 1, %if.else.out_crit_edge ], [ 1, %if.then46.out_crit_edge ], [ 1, %sw.bb53 ], [ 1, %do.end50 ], [ 1, %fcoe_interface_cleanup.exit ], [ 0, %for.end.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_set_mfs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcoe_if_destroy(ptr noundef %lport) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %netdev1 = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %4 = load i32, ptr @fcoe_debug_logging, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !315

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %3) #19
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call11 = tail call i32 @fc_fabric_logoff(ptr noundef %lport) #16
  %call12 = tail call i32 @fc_lport_destroy(ptr noundef %lport) #16
  %timer = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 8, i32 1, i32 4
  %call13 = tail call i32 @del_timer_sync(ptr noundef %timer) #16
  tail call void @fcoe_clean_pending_queue(ptr noundef %lport) #16
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  %5 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_src_addr, align 4
  %add.ptr.i47 = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i47, align 2
  %conv.i = zext i16 %8 to i32
  %or.i = or i32 %6, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end10.if.end20_crit_edge, label %if.then16

do.end10.if.end20_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then16:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 @dev_uc_del(ptr noundef %3, ptr noundef %data_src_addr) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.end10.if.end20_crit_edge
  %vport = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 8
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport, align 8
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @synchronize_net() #16
  br label %if.end23

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fcoe_interface_remove(ptr noundef %1)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %call1.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %11)
  %cmp2.i = icmp ult i32 %call1.i, %11
  br i1 %cmp2.i, label %if.end23.do.body.i_crit_edge, label %if.end23.fcoe_percpu_clean.exit_crit_edge

if.end23.fcoe_percpu_clean.exit_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_percpu_clean.exit

if.end23.do.body.i_crit_edge:                     ; preds = %if.end23
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end23.do.body.i_crit_edge
  %call3.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call1.i, %if.end23.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @fcoe_percpu to i32)
  %14 = inttoptr i32 %add.i to ptr
  %work.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %14, i32 0, i32 1
  %call2.i = tail call zeroext i1 @flush_work(ptr noundef %work.i) #16
  %call.i = tail call i32 @cpumask_next(i32 noundef %call3.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i48 = icmp ult i32 %call.i, %15
  br i1 %cmp.i48, label %do.body.i.do.body.i_crit_edge, label %do.body.i.fcoe_percpu_clean.exit_crit_edge

do.body.i.fcoe_percpu_clean.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_percpu_clean.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

fcoe_percpu_clean.exit:                           ; preds = %do.body.i.fcoe_percpu_clean.exit_crit_edge, %if.end23.fcoe_percpu_clean.exit_crit_edge
  %16 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport, align 8
  tail call void @fc_remove_host(ptr noundef %17) #16
  %18 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lport, align 8
  tail call void @scsi_remove_host(ptr noundef %19) #16
  tail call void @fc_fcp_destroy(ptr noundef %lport) #16
  tail call void @fc_exch_mgr_free(ptr noundef %lport) #16
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %20 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stats.i, align 8
  tail call void @free_percpu(ptr noundef %21) #16
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 8
  %tobool26.not = icmp eq ptr %23, null
  br i1 %tobool26.not, label %fcoe_percpu_clean.exit.if.end29_crit_edge, label %if.then27

fcoe_percpu_clean.exit.if.end29_crit_edge:        ; preds = %fcoe_percpu_clean.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then27:                                        ; preds = %fcoe_percpu_clean.exit
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lport, align 8
  tail call void @scsi_host_put(ptr noundef %25) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %fcoe_percpu_clean.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcoe_interface_remove(ptr noundef %fcoe) unnamed_addr #4 align 64 {
entry:
  %.compoundliteral = alloca [6 x i8], align 1
  %.compoundliteral13 = alloca [6 x i8], align 1
  %.compoundliteral22 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %fcoe_packet_type = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 3
  tail call void @__dev_remove_pack(ptr noundef %fcoe_packet_type) #16
  %fip_packet_type = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 4
  tail call void @__dev_remove_pack(ptr noundef %fip_packet_type) #16
  %realdev = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 2
  %2 = ptrtoint ptr %realdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %realdev, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fip_vlan_packet_type = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 5
  tail call void @__dev_remove_pack(ptr noundef %fip_vlan_packet_type) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @synchronize_net() #16
  %call = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull @fcoe_interface_remove.flogi_maddr) #16
  %spma = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1, i32 24
  %4 = ptrtoint ptr %spma to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1, i32 28
  %call3 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %ctl_src_addr) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %mode = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %.compoundliteral, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %.compoundliteral, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %arrayinit.element, align 1
  %arrayinit.element7 = getelementptr inbounds i8, ptr %.compoundliteral, i32 2
  %10 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 24, ptr %arrayinit.element7, align 1
  %arrayinit.element8 = getelementptr inbounds i8, ptr %.compoundliteral, i32 3
  %11 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayinit.element8, align 1
  %arrayinit.element9 = getelementptr inbounds i8, ptr %.compoundliteral, i32 4
  %12 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayinit.element9, align 1
  %arrayinit.element10 = getelementptr inbounds i8, ptr %.compoundliteral, i32 5
  %13 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %arrayinit.element10, align 1
  %call12 = call i32 @dev_mc_del(ptr noundef %1, ptr noundef nonnull %.compoundliteral) #16
  %14 = ptrtoint ptr %.compoundliteral13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %.compoundliteral13, align 1
  br label %if.end31

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %.compoundliteral22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %.compoundliteral22, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then6
  %.compoundliteral22.sink74 = phi ptr [ %.compoundliteral22, %if.else ], [ %.compoundliteral13, %if.then6 ]
  %.sink = phi i8 [ 1, %if.else ], [ 5, %if.then6 ]
  %arrayinit.element24 = getelementptr inbounds i8, ptr %.compoundliteral22.sink74, i32 1
  %16 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %arrayinit.element24, align 1
  %arrayinit.element25 = getelementptr inbounds i8, ptr %.compoundliteral22.sink74, i32 2
  %17 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 24, ptr %arrayinit.element25, align 1
  %arrayinit.element26 = getelementptr inbounds i8, ptr %.compoundliteral22.sink74, i32 3
  %18 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayinit.element26, align 1
  %arrayinit.element27 = getelementptr inbounds i8, ptr %.compoundliteral22.sink74, i32 4
  %19 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayinit.element27, align 1
  %arrayinit.element28 = getelementptr inbounds i8, ptr %.compoundliteral22.sink74, i32 5
  %20 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %arrayinit.element28, align 1
  %call30 = call i32 @dev_mc_del(ptr noundef %1, ptr noundef nonnull %.compoundliteral22.sink74) #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_disable = getelementptr inbounds %struct.net_device_ops, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %ndo_fcoe_disable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndo_fcoe_disable, align 4
  %tobool32.not = icmp eq ptr %24, null
  br i1 %tobool32.not, label %if.end31.if.end52_crit_edge, label %if.then33

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then33:                                        ; preds = %if.end31
  %call35 = call i32 %24(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end52_crit_edge, label %do.body

if.then33.if.end52_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.body:                                          ; preds = %if.then33
  %25 = load i32, ptr @fcoe_debug_logging, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %do.body.if.end52_crit_edge, label %do.end, !prof !315

do.body.if.end52_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %1) #19
  br label %if.end52

if.end52:                                         ; preds = %do.end, %do.body.if.end52_crit_edge, %if.then33.if.end52_crit_edge, %if.end31.if.end52_crit_edge
  %removed = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 7
  %26 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %removed, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcoe_interface_cleanup(ptr noundef %fcoe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1
  tail call void @fcoe_ctlr_destroy(ptr noundef %add.ptr) #16
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1, i32 2
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @scsi_host_put(ptr noundef %5) #16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put.exit_crit_edge, label %do.body1.i

entry.dev_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit

do.body1.i:                                       ; preds = %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !316

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !329
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %entry.dev_put.exit_crit_edge
  tail call void @module_put(ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_device_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcoe_netdev_features_change(ptr noundef %lport, ptr noundef %netdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #16
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %sg_supp1 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %2 = ptrtoint ptr %sg_supp1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load2 = load i8, ptr %sg_supp1, align 8
  %bf.clear3 = and i8 %bf.load2, 127
  %3 = trunc i64 %1 to i8
  %4 = shl i8 %3, 7
  %bf.clear3.sink = or i8 %bf.clear3, %4
  store i8 %bf.clear3.sink, ptr %sg_supp1, align 8
  %5 = load i64, ptr %features, align 16
  %and6 = and i64 %5, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %crc_offload23 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  br i1 %tobool7.not, label %if.else22, label %if.then8

if.then8:                                         ; preds = %entry
  %bf.set11 = or i8 %bf.clear3.sink, 32
  %6 = ptrtoint ptr %crc_offload23 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set11, ptr %crc_offload23, align 8
  %7 = load i32, ptr @fcoe_debug_logging, align 4
  %and12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then8.if.end27_crit_edge, label %do.end, !prof !315

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %netdev) #19
  br label %if.end27

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear25 = and i8 %bf.clear3.sink, -33
  %8 = ptrtoint ptr %crc_offload23 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear25, ptr %crc_offload23, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %do.end, %if.then8.if.end27_crit_edge
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %and29 = and i64 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  %seq_offload57 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %11 = ptrtoint ptr %seq_offload57 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load58 = load i8, ptr %seq_offload57, align 8
  br i1 %tobool30.not, label %if.else56, label %if.then31

if.then31:                                        ; preds = %if.end27
  %bf.set34 = or i8 %bf.load58, 64
  %12 = ptrtoint ptr %seq_offload57 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set34, ptr %seq_offload57, align 8
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 137
  %13 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gso_max_size, align 8
  %lso_max = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 33
  %15 = ptrtoint ptr %lso_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lso_max, align 4
  %16 = load i32, ptr @fcoe_debug_logging, align 4
  %and36 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then31.if.end62_crit_edge, label %do.end47, !prof !315

if.then31.if.end62_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

do.end47:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %netdev, i32 noundef %14) #19
  br label %if.end62

if.else56:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear59 = and i8 %bf.load58, -65
  %17 = ptrtoint ptr %seq_offload57 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.clear59, ptr %seq_offload57, align 8
  %lso_max61 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 33
  %18 = ptrtoint ptr %lso_max61 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lso_max61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else56, %do.end47, %if.then31.if.end62_crit_edge
  %fcoe_ddp_xid = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 143
  %19 = ptrtoint ptr %fcoe_ddp_xid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcoe_ddp_xid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool63.not = icmp eq i32 %20, 0
  %lro_enabled92 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %21 = ptrtoint ptr %lro_enabled92 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load93 = load i8, ptr %lro_enabled92, align 8
  br i1 %tobool63.not, label %if.else91, label %if.then64

if.then64:                                        ; preds = %if.end62
  %bf.set67 = or i8 %bf.load93, 16
  %22 = ptrtoint ptr %lro_enabled92 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set67, ptr %lro_enabled92, align 8
  %23 = ptrtoint ptr %fcoe_ddp_xid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fcoe_ddp_xid, align 8
  %conv = trunc i32 %24 to i16
  %lro_xid = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 32
  %25 = ptrtoint ptr %lro_xid to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %lro_xid, align 8
  %26 = load i32, ptr @fcoe_debug_logging, align 4
  %and70 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then64.if.end97_crit_edge, label %do.end81, !prof !315

if.then64.if.end97_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

do.end81:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  %conv86 = and i32 %24, 65535
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %netdev, i32 noundef %conv86) #19
  br label %if.end97

if.else91:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear94 = and i8 %bf.load93, -17
  %27 = ptrtoint ptr %lro_enabled92 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear94, ptr %lro_enabled92, align 8
  %lro_xid96 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 32
  %28 = ptrtoint ptr %lro_xid96 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %lro_xid96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else91, %do.end81, %if.then64.if.end97_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_link_speed_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_link_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_clean_pending_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_logoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_fcp_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_mgr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fcoe_netdev(ptr nocapture noundef readonly %lport) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %netdev = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_set_rport_loss_tmo(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_port_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_speed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_get_host_stats(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_reset(ptr nocapture noundef readonly %shost) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %cdev2 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 5
  %2 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev2, align 4
  %call3 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr) #16
  %lp = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 2
  %4 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef %5) #16
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp, align 4
  %add.ptr.i.i.i = getelementptr %struct.fc_lport, ptr %9, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i.i, align 4
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %operstate.i.i, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %15, label %land.lhs.true.if.end_crit_edge [
    i8 6, label %land.lhs.true.if.then_crit_edge
    i8 0, label %land.lhs.true.if.then_crit_edge10
  ]

land.lhs.true.if.then_crit_edge10:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge10
  tail call void @fcoe_ctlr_link_up(ptr noundef %add.ptr) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_terminate_io(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_set_vport_symbolic_name(ptr noundef %vport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 28
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i, align 4
  %symbolic_name2 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 7
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name, i32 noundef 256, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46, ptr noundef %9, ptr noundef %symbolic_name2)
  %state = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp.not = icmp eq i32 %11, 14
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %shost_data6 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 51
  %14 = ptrtoint ptr %shost_data6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost_data6, align 8
  %symbolic_name7 = getelementptr inbounds %struct.fc_host_attrs, ptr %15, i32 0, i32 28
  %call9 = tail call i32 @strnlen(ptr noundef %symbolic_name7, i32 noundef 255) #22
  %add = add i32 %call9, 21
  %rem.i = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %1, i32 noundef %add) #16
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %add) #16
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool.not, label %fc_frame_alloc.exit.cleanup_crit_edge, label %if.end12

fc_frame_alloc.exit.cleanup_crit_edge:            ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %elsct_send = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %elsct_send, align 4
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r_a_tov, align 8
  %mul = mul i32 %19, 3
  %call13 = tail call ptr %17(ptr noundef %1, i32 noundef 16777212, ptr noundef nonnull %fp.0.i, i32 noundef 536, ptr noundef null, ptr noundef null, i32 noundef %mul) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %fc_frame_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_vport_create(ptr noundef %vport, i1 noundef zeroext %disabled) #4 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %netdev3 = getelementptr inbounds %struct.fcoe_interface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call4 = tail call i32 @fcoe_validate_vport_create(ptr noundef %vport) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 3
  %7 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_name, align 8
  call void @fcoe_wwn_to_str(i64 noundef %8, ptr noundef nonnull %buf, i32 noundef 32) #16
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %buf) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  %dev = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 14
  %call7 = tail call fastcc ptr @fcoe_if_create(ptr noundef %3, ptr noundef %dev, i32 noundef 1)
  tail call void @rtnl_unlock() #16
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %5) #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  br i1 %disabled, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %11 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %call7, i32 0, i32 14
  %13 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %boot_time, align 4
  %call19 = tail call i32 @fc_fabric_login(ptr noundef %call7) #16
  tail call void @fc_vport_setlink(ptr noundef %call7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %do.end12, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ -5, %do.end12 ], [ 0, %if.else ], [ 0, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_vport_disable(ptr nocapture noundef %vport, i1 noundef zeroext %disable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %4 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  %call = tail call i32 @fc_fabric_logoff(ptr noundef %1) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %boot_time, align 4
  %call1 = tail call i32 @fc_fabric_login(ptr noundef %1) #16
  tail call void @fc_vport_setlink(ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_vport_destroy(ptr nocapture noundef readonly %vport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %lp_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #16
  %list = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  tail call fastcc void @fcoe_if_destroy(ptr noundef %3)
  tail call void @rtnl_unlock() #16
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_bsg_request(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_validate_vport_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_wwn_to_str(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fcoe_if_create(ptr noundef %fcoe, ptr noundef %parent, i32 noundef %npiv) unnamed_addr #4 align 64 {
entry:
  %wwnn.i = alloca i64, align 8
  %wwpn.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %fcoe, i32 -1
  %netdev1 = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %add.ptr2 = getelementptr i8, ptr %parent, i32 -128
  %2 = load i32, ptr @fcoe_debug_logging, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !315

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1) #19
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npiv)
  %tobool12.not = icmp eq i32 %npiv, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end11
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @fcoe_shost_template, i32 noundef 1188) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then13.do.body19_crit_edge, label %if.end.i

if.then13.do.body19_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %3 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %hostdata.i.i, align 8
  %ema_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ema_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ema_list.i, ptr %ema_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ema_list.i, ptr %prev.i.i, align 4
  %vports.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2
  %6 = ptrtoint ptr %vports.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vports.i, ptr %vports.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vports.i, ptr %prev.i1.i, align 4
  br label %if.end16

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call ptr @libfc_vport_create(ptr noundef %add.ptr2, i32 noundef 180) #16
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end.i
  %lport.0 = phi ptr [ %call15, %if.else ], [ %hostdata.i.i, %if.end.i ]
  %tobool17.not = icmp eq ptr %lport.0, null
  br i1 %tobool17.not, label %if.end16.do.body19_crit_edge, label %if.end42

if.end16.do.body19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

do.body19:                                        ; preds = %if.end16.do.body19_crit_edge, %if.then13.do.body19_crit_edge
  %8 = load i32, ptr @fcoe_debug_logging, align 4
  %and20 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.out_crit_edge, label %do.end32, !prof !315

do.body19.out_crit_edge:                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end32:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %1) #19
  br label %out

if.end42:                                         ; preds = %if.end16
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1
  %lport44 = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 1
  %9 = ptrtoint ptr %lport44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lport.0, ptr %lport44, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fcoe, ptr %add.ptr.i, align 4
  %get_netdev = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %get_netdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fcoe_netdev, ptr %get_netdev, align 4
  %max_queue_depth = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 2
  %12 = ptrtoint ptr %max_queue_depth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %max_queue_depth, align 4
  %min_queue_depth = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 3
  %13 = ptrtoint ptr %min_queue_depth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %min_queue_depth, align 4
  %destroy_work = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 5, i32 1
  tail call void @__init_work(ptr noundef %destroy_work, i32 noundef 0) #16
  %14 = ptrtoint ptr %destroy_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %destroy_work, align 4
  %lockdep_map = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 5, i32 6
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.57, ptr noundef nonnull @fcoe_if_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry49 = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 5, i32 2
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry49, ptr %prev.i, align 4
  %func = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 5, i32 3
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fcoe_destroy_work, ptr %func, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end42
  %fcoe.0.in.i.i = phi ptr [ @fcoe_hostlist, %if.end42 ], [ %fcoe.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %22 = ptrtoint ptr %fcoe.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %fcoe.0.i.i = load ptr, ptr %fcoe.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %fcoe.0.i.i, @fcoe_hostlist
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %netdev1.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %24, %21
  br i1 %cmp2.i.i, label %fcoe_hostlist_lookup_port.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

fcoe_hostlist_lookup_port.exit.i:                 ; preds = %for.body.i.i
  %tobool.not.i281 = icmp eq ptr %fcoe.0.i.i, null
  br i1 %tobool.not.i281, label %fcoe_hostlist_lookup_port.exit.i.if.then.i_crit_edge, label %fcoe_hostlist_lookup_port.exit.i.fcoe_hostlist_add.exit_crit_edge

fcoe_hostlist_lookup_port.exit.i.fcoe_hostlist_add.exit_crit_edge: ; preds = %fcoe_hostlist_lookup_port.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_hostlist_add.exit

fcoe_hostlist_lookup_port.exit.i.if.then.i_crit_edge: ; preds = %fcoe_hostlist_lookup_port.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %fcoe_hostlist_lookup_port.exit.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fcoe_hostlist, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %25, ptr noundef nonnull @fcoe_hostlist) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.fcoe_hostlist_add.exit_crit_edge

if.then.i.fcoe_hostlist_add.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_hostlist_add.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %19, ptr getelementptr inbounds (%struct.list_head, ptr @fcoe_hostlist, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fcoe_hostlist, ptr %19, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %19, ptr %25, align 4
  br label %fcoe_hostlist_add.exit

fcoe_hostlist_add.exit:                           ; preds = %if.end.i.i.i, %if.then.i.fcoe_hostlist_add.exit_crit_edge, %fcoe_hostlist_lookup_port.exit.i.fcoe_hostlist_add.exit_crit_edge
  %link_up.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 10
  %29 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %link_up.i, align 4
  %qfull.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 11
  %30 = ptrtoint ptr %qfull.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %qfull.i, align 1
  %max_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 27
  %31 = ptrtoint ptr %max_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %max_retry_count.i, align 8
  %max_rport_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 28
  %32 = ptrtoint ptr %max_rport_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %max_rport_retry_count.i, align 1
  %33 = load i32, ptr @fcoe_e_d_tov, align 4
  %e_d_tov.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 22
  %34 = ptrtoint ptr %e_d_tov.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %e_d_tov.i, align 4
  %35 = load i32, ptr @fcoe_r_a_tov, align 4
  %r_a_tov.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 23
  %36 = ptrtoint ptr %r_a_tov.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %r_a_tov.i, align 8
  %service_params.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 21
  %37 = ptrtoint ptr %service_params.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 418, ptr %service_params.i, align 8
  %does_npiv.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 25
  %38 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %does_npiv.i, align 8
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %does_npiv.i, align 8
  %call.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 168, i32 noundef 8) #23
  %stats.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 16
  %39 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %stats.i.i, align 8
  %call1.i = tail call i32 @fc_lport_config(ptr noundef %lport.0) #16
  %40 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load2.i = load i8, ptr %does_npiv.i, align 8
  %bf.clear9.i = and i8 %bf.load2.i, -113
  store i8 %bf.clear9.i, ptr %does_npiv.i, align 8
  %lro_xid.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 32
  %41 = ptrtoint ptr %lro_xid.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %lro_xid.i, align 8
  %lso_max.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 33
  %42 = ptrtoint ptr %lso_max.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %lso_max.i, align 4
  br i1 %tobool12.not, label %fcoe_hostlist_add.exit.if.end108_crit_edge, label %do.body83

fcoe_hostlist_add.exit.if.end108_crit_edge:       ; preds = %fcoe_hostlist_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

do.body83:                                        ; preds = %fcoe_hostlist_add.exit
  %43 = load i32, ptr @fcoe_debug_logging, align 4
  %and84 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.do.end105_crit_edge, label %do.end96, !prof !315

do.body83.do.end105_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end105

do.end96:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  %node_name = getelementptr i8, ptr %parent, i32 -120
  %44 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %node_name, align 8
  %port_name = getelementptr i8, ptr %parent, i32 -112
  %46 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %port_name, align 8
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %1, i64 noundef %45, i64 noundef %47) #19
  br label %do.end105

do.end105:                                        ; preds = %do.end96, %do.body83.do.end105_crit_edge
  %node_name106 = getelementptr i8, ptr %parent, i32 -120
  %48 = ptrtoint ptr %node_name106 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %node_name106, align 8
  %wwnn1.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 20
  %50 = ptrtoint ptr %wwnn1.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %wwnn1.i, align 8
  %port_name107 = getelementptr i8, ptr %parent, i32 -112
  %51 = ptrtoint ptr %port_name107 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %port_name107, align 8
  %wwpn1.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 19
  %53 = ptrtoint ptr %wwpn1.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %wwpn1.i, align 8
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %fcoe_hostlist_add.exit.if.end108_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwnn.i) #16
  %54 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %wwnn.i, align 8, !annotation !333
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwpn.i) #16
  %55 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %wwpn.i, align 8, !annotation !333
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %58 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %59, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end108.if.end.i285_crit_edge, label %if.then.i283

if.end108.if.end.i285_crit_edge:                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i285

if.then.i283:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %1) #16
  br label %if.end.i285

if.end.i285:                                      ; preds = %if.then.i283, %if.end108.if.end.i285_crit_edge
  %call2.sink.i = phi i16 [ %call2.i, %if.then.i283 ], [ 0, %if.end108.if.end.i285_crit_edge ]
  %60 = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 12
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %call2.sink.i, ptr %60, align 2
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %62 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mtu.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %64 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features.i, align 16
  %and.i = and i64 %65, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i284 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i284, label %if.end.i285.if.end18.i_crit_edge, label %if.then4.i

if.end.i285.if.end18.i_crit_edge:                 ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then4.i:                                       ; preds = %if.end.i285
  %66 = load i32, ptr @fcoe_debug_logging, align 4
  %and5.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.if.end18.i_crit_edge, label %do.end.i, !prof !315

if.then4.i.if.end18.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %1, i32 noundef 2158) #19
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.then4.i.if.end18.i_crit_edge, %if.end.i285.if.end18.i_crit_edge
  %mfs.0.i = phi i32 [ 2158, %do.end.i ], [ 2158, %if.then4.i.if.end18.i_crit_edge ], [ %63, %if.end.i285.if.end18.i_crit_edge ]
  %sub.i = add i32 %mfs.0.i, -22
  %call19.i = tail call i32 @fc_set_mfs(ptr noundef %lport.0, i32 noundef %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %do.body112

if.end22.i:                                       ; preds = %if.end18.i
  tail call fastcc void @fcoe_netdev_features_change(ptr noundef %lport.0, ptr noundef %1) #16
  %fcoe_pending_queue.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 1, i32 1
  %lock.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %67 = ptrtoint ptr %fcoe_pending_queue.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %fcoe_pending_queue.i, ptr %fcoe_pending_queue.i, align 4
  %prev.i.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 2
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %fcoe_pending_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 3
  %69 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %qlen.i.i.i, align 4
  %fcoe_pending_queue_active.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 1
  %70 = ptrtoint ptr %fcoe_pending_queue_active.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %fcoe_pending_queue_active.i, align 4
  %timer.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 4
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @fcoe_queue_timer, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @fcoe_netdev_config.__key) #16
  %call26.i = tail call i32 @fcoe_link_speed_update(ptr noundef %lport.0) #16
  %vport.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 8
  %71 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vport.i, align 8
  %tobool27.not.i = icmp eq ptr %72, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end22.i.if.end135_crit_edge

if.end22.i.if.end135_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end135

if.then28.i:                                      ; preds = %if.end22.i
  %call29.i = call i32 @fcoe_get_wwn(ptr noundef %1, ptr noundef nonnull %wwnn.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then28.i.if.end34.i_crit_edge, label %if.then31.i

if.then28.i.if.end34.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr.i = getelementptr %struct.fcoe_ctlr, ptr %57, i32 -1, i32 28
  %call33.i = call i64 @fcoe_wwn_from_mac(ptr noundef %ctl_src_addr.i, i32 noundef 1, i32 noundef 0) #16
  %73 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call33.i, ptr %wwnn.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.then28.i.if.end34.i_crit_edge
  %74 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %wwnn.i, align 8
  %wwnn1.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 20
  %76 = ptrtoint ptr %wwnn1.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %wwnn1.i.i, align 8
  %call35.i = call i32 @fcoe_get_wwn(ptr noundef %1, ptr noundef nonnull %wwpn.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then37.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr38.i = getelementptr %struct.fcoe_ctlr, ptr %57, i32 -1, i32 28
  %call40.i = call i64 @fcoe_wwn_from_mac(ptr noundef %ctl_src_addr38.i, i32 noundef 2, i32 noundef 0) #16
  %77 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %call40.i, ptr %wwpn.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end41.i_crit_edge
  %78 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %wwpn.i, align 8
  %wwpn1.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 19
  %80 = ptrtoint ptr %wwpn1.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %wwpn1.i.i, align 8
  br label %if.end135

do.body112:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwnn.i) #16
  %81 = load i32, ptr @fcoe_debug_logging, align 4
  %and113 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body112.out_lp_destroy_crit_edge, label %do.end125, !prof !315

do.body112.out_lp_destroy_crit_edge:              ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_lp_destroy

do.end125:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #18
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %1) #19
  br label %out_lp_destroy

if.end135:                                        ; preds = %if.end41.i, %if.end22.i.if.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwnn.i) #16
  %82 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lport.0, align 8
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 22
  %84 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 65535, ptr %max_lun.i, align 8
  %85 = load ptr, ptr %lport.0, align 8
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %85, i32 0, i32 21
  %86 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 256, ptr %max_id.i, align 4
  %87 = load ptr, ptr %lport.0, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %87, i32 0, i32 20
  %88 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %max_channel.i, align 8
  %89 = load ptr, ptr %lport.0, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 24
  %90 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 16, ptr %max_cmd_len.i, align 4
  %91 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vport.i, align 8
  %tobool.not.i288 = icmp eq ptr %92, null
  %fcoe_nport_scsi_transport.val.i = load ptr, ptr @fcoe_nport_scsi_transport, align 4
  %fcoe_vport_scsi_transport.val.i = load ptr, ptr @fcoe_vport_scsi_transport, align 4
  %93 = select i1 %tobool.not.i288, ptr %fcoe_nport_scsi_transport.val.i, ptr %fcoe_vport_scsi_transport.val.i
  %94 = load ptr, ptr %lport.0, align 8
  %transportt6.i = getelementptr inbounds %struct.Scsi_Host, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %transportt6.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %transportt6.i, align 4
  %96 = load ptr, ptr %lport.0, align 8
  %call.i.i289 = call i32 @scsi_add_host_with_dma(ptr noundef %96, ptr noundef %parent, ptr noundef %parent) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i289)
  %tobool8.not.i = icmp eq i32 %call.i.i289, 0
  br i1 %tobool8.not.i, label %if.end23.i, label %do.body.i

do.body.i:                                        ; preds = %if.end135
  %97 = load i32, ptr @fcoe_debug_logging, align 4
  %and.i290 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i290)
  %tobool10.not.i = icmp eq i32 %and.i290, 0
  br i1 %tobool10.not.i, label %do.body.i.do.body139_crit_edge, label %do.end.i293, !prof !315

do.body.i.do.body139_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body139

do.end.i293:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  %netdev.i.i292 = getelementptr inbounds %struct.fcoe_interface, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %netdev.i.i292 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %netdev.i.i292, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %101) #19
  br label %do.body139

if.end23.i:                                       ; preds = %if.end135
  %102 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vport.i, align 8
  %tobool25.not.i = icmp eq ptr %103, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end23.i.if.end162_crit_edge

if.end23.i.if.end162_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end162

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  %104 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lport.0, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %105, i32 0, i32 51
  %106 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %shost_data.i, align 8
  %max_npiv_vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %max_npiv_vports.i, align 4
  br label %if.end162

do.body139:                                       ; preds = %do.end.i293, %do.body.i.do.body139_crit_edge
  %109 = load i32, ptr @fcoe_debug_logging, align 4
  %and140 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.out_lp_destroy_crit_edge, label %do.end152, !prof !315

do.body139.out_lp_destroy_crit_edge:              ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_lp_destroy

do.end152:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #18
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %1) #19
  br label %out_lp_destroy

if.end162:                                        ; preds = %if.then26.i, %if.end23.i.if.end162_crit_edge
  %110 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lport.0, align 8
  %shost_data30.i = getelementptr inbounds %struct.Scsi_Host, ptr %111, i32 0, i32 51
  %112 = ptrtoint ptr %shost_data30.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shost_data30.i, align 8
  %symbolic_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %113, i32 0, i32 28
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i, align 4
  %netdev.i50.i = getelementptr inbounds %struct.fcoe_interface, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %netdev.i50.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %netdev.i50.i, align 4
  %call35.i294 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name.i, i32 noundef 256, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46, ptr noundef %117) #16
  %call163 = call i32 @fcoe_libfc_config(ptr noundef nonnull %lport.0, ptr noundef %add.ptr, ptr noundef nonnull @fcoe_libfc_fcn_templ, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end189, label %do.body166

do.body166:                                       ; preds = %if.end162
  %118 = load i32, ptr @fcoe_debug_logging, align 4
  %and167 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body166.out_lp_destroy_crit_edge, label %do.end179, !prof !315

do.body166.out_lp_destroy_crit_edge:              ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_lp_destroy

do.end179:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #18
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %1) #19
  br label %out_lp_destroy

if.end189:                                        ; preds = %if.end162
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 4
  %realdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %realdev1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %realdev1.i, align 4
  %123 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vport.i, align 8
  %tobool.not.i297 = icmp eq ptr %124, null
  br i1 %tobool.not.i297, label %if.end.i298, label %if.end189.fcoe_fdmi_info.exit_crit_edge

if.end189.fcoe_fdmi_info.exit_crit_edge:          ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_fdmi_info.exit

if.end.i298:                                      ; preds = %if.end189
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 16
  %125 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_fcoe_get_hbainfo.i = getelementptr inbounds %struct.net_device_ops, ptr %126, i32 0, i32 48
  %127 = ptrtoint ptr %ndo_fcoe_get_hbainfo.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ndo_fcoe_get_hbainfo.i, align 4
  %tobool2.not.i = icmp eq ptr %128, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 896) #24
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then3.i.fcoe_fdmi_info.exit_crit_edge, label %if.end7.i

if.then3.i.fcoe_fdmi_info.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_fdmi_info.exit

if.end7.i:                                        ; preds = %if.then3.i
  %130 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_fcoe_get_hbainfo9.i = getelementptr inbounds %struct.net_device_ops, ptr %131, i32 0, i32 48
  %132 = ptrtoint ptr %ndo_fcoe_get_hbainfo9.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ndo_fcoe_get_hbainfo9.i, align 4
  %call10.i = call i32 %133(ptr noundef %122, ptr noundef nonnull %call7.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %do.end.i299

do.end.i299:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #19
  br label %fcoe_fdmi_info.exit

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %134 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lport.0, align 8
  %shost_data.i300 = getelementptr inbounds %struct.Scsi_Host, ptr %135, i32 0, i32 51
  %136 = ptrtoint ptr %shost_data.i300 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shost_data.i300, align 8
  %serial_number.i = getelementptr inbounds %struct.fc_host_attrs, ptr %137, i32 0, i32 12
  %serial_number15.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 1
  %call17.i301 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %serial_number.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %serial_number15.i) #16
  %138 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %lport.0, align 8
  %shost_data19.i = getelementptr inbounds %struct.Scsi_Host, ptr %139, i32 0, i32 51
  %140 = ptrtoint ptr %shost_data19.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %shost_data19.i, align 8
  %manufacturer.i = getelementptr inbounds %struct.fc_host_attrs, ptr %141, i32 0, i32 13
  %call23.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %manufacturer.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef nonnull %call7.i.i.i) #16
  %142 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lport.0, align 8
  %shost_data25.i = getelementptr inbounds %struct.Scsi_Host, ptr %143, i32 0, i32 51
  %144 = ptrtoint ptr %shost_data25.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %shost_data25.i, align 8
  %model.i = getelementptr inbounds %struct.fc_host_attrs, ptr %145, i32 0, i32 14
  %model27.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 6
  %call29.i302 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model.i, i32 noundef 256, ptr noundef nonnull @.str.85, ptr noundef %model27.i) #16
  %146 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %lport.0, align 8
  %shost_data31.i = getelementptr inbounds %struct.Scsi_Host, ptr %147, i32 0, i32 51
  %148 = ptrtoint ptr %shost_data31.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %shost_data31.i, align 8
  %model_description.i = getelementptr inbounds %struct.fc_host_attrs, ptr %149, i32 0, i32 15
  %model_description33.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 7
  %call35.i303 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model_description.i, i32 noundef 256, ptr noundef nonnull @.str.85, ptr noundef %model_description33.i) #16
  %150 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lport.0, align 8
  %shost_data37.i = getelementptr inbounds %struct.Scsi_Host, ptr %151, i32 0, i32 51
  %152 = ptrtoint ptr %shost_data37.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %shost_data37.i, align 8
  %hardware_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %153, i32 0, i32 16
  %hardware_version39.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 2
  %call41.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %hardware_version.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %hardware_version39.i) #16
  %154 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %lport.0, align 8
  %shost_data43.i = getelementptr inbounds %struct.Scsi_Host, ptr %155, i32 0, i32 51
  %156 = ptrtoint ptr %shost_data43.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %shost_data43.i, align 8
  %driver_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %157, i32 0, i32 17
  %driver_version45.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 3
  %call47.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %driver_version.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %driver_version45.i) #16
  %158 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lport.0, align 8
  %shost_data49.i = getelementptr inbounds %struct.Scsi_Host, ptr %159, i32 0, i32 51
  %160 = ptrtoint ptr %shost_data49.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %shost_data49.i, align 8
  %optionrom_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %161, i32 0, i32 19
  %optionrom_version51.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 4
  %call53.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %optionrom_version.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %optionrom_version51.i) #16
  %162 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lport.0, align 8
  %shost_data55.i = getelementptr inbounds %struct.Scsi_Host, ptr %163, i32 0, i32 51
  %164 = ptrtoint ptr %shost_data55.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %shost_data55.i, align 8
  %firmware_version.i = getelementptr inbounds %struct.fc_host_attrs, ptr %165, i32 0, i32 18
  %firmware_version57.i = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %call7.i.i.i, i32 0, i32 5
  %call59.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %firmware_version.i, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %firmware_version57.i) #16
  %166 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load.i304 = load i8, ptr %does_npiv.i, align 8
  %bf.set.i305 = or i8 %bf.load.i304, 1
  store i8 %bf.set.i305, ptr %does_npiv.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %fcoe_fdmi_info.exit

if.else.i:                                        ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load61.i = load i8, ptr %does_npiv.i, align 8
  %bf.clear62.i = and i8 %bf.load61.i, -2
  store i8 %bf.clear62.i, ptr %does_npiv.i, align 8
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #19
  br label %fcoe_fdmi_info.exit

fcoe_fdmi_info.exit:                              ; preds = %if.else.i, %if.end14.i, %do.end.i299, %if.then3.i.fcoe_fdmi_info.exit_crit_edge, %if.end189.fcoe_fdmi_info.exit_crit_edge
  br i1 %tobool12.not, label %if.then191, label %if.else193

if.then191:                                       ; preds = %fcoe_fdmi_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call192 = call fastcc i32 @fcoe_em_config(ptr noundef nonnull %lport.0)
  br label %if.end197

if.else193:                                       ; preds = %fcoe_fdmi_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  %shost194 = getelementptr i8, ptr %parent, i32 -24
  %168 = ptrtoint ptr %shost194 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %shost194, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %169, i32 0, i32 53
  %call196 = call i32 @fc_exch_mgr_list_clone(ptr noundef %hostdata.i, ptr noundef nonnull %lport.0) #16
  br label %if.end197

if.end197:                                        ; preds = %if.else193, %if.then191
  %rc.0 = phi i32 [ %call196, %if.else193 ], [ %call192, %if.then191 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool198.not = icmp eq i32 %rc.0, 0
  br i1 %tobool198.not, label %if.end197.cleanup_crit_edge, label %do.body200

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body200:                                       ; preds = %if.end197
  %170 = load i32, ptr @fcoe_debug_logging, align 4
  %and201 = and i32 %170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %do.body200.out_lp_destroy_crit_edge, label %do.end213, !prof !315

do.body200.out_lp_destroy_crit_edge:              ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_lp_destroy

do.end213:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #18
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %1) #19
  br label %out_lp_destroy

out_lp_destroy:                                   ; preds = %do.end213, %do.body200.out_lp_destroy_crit_edge, %do.end179, %do.body166.out_lp_destroy_crit_edge, %do.end152, %do.body139.out_lp_destroy_crit_edge, %do.end125, %do.body112.out_lp_destroy_crit_edge
  %rc.1 = phi i32 [ -22, %do.end125 ], [ -22, %do.body112.out_lp_destroy_crit_edge ], [ %call.i.i289, %do.end152 ], [ %call.i.i289, %do.body139.out_lp_destroy_crit_edge ], [ %call163, %do.end179 ], [ %call163, %do.body166.out_lp_destroy_crit_edge ], [ %rc.0, %do.end213 ], [ %rc.0, %do.body200.out_lp_destroy_crit_edge ]
  call void @fc_exch_mgr_free(ptr noundef nonnull %lport.0) #16
  %171 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i307 = call zeroext i1 @__list_del_entry_valid(ptr noundef %172) #16
  br i1 %call.i.i.i307, label %if.end.i.i.i309, label %out_lp_destroy.fcoe_hostlist_del.exit_crit_edge

out_lp_destroy.fcoe_hostlist_del.exit_crit_edge:  ; preds = %out_lp_destroy
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_hostlist_del.exit

if.end.i.i.i309:                                  ; preds = %out_lp_destroy
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i308 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i308, align 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %172, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %fcoe_hostlist_del.exit

fcoe_hostlist_del.exit:                           ; preds = %if.end.i.i.i309, %out_lp_destroy.fcoe_hostlist_del.exit_crit_edge
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr inttoptr (i32 256 to ptr), ptr %172, align 4
  %prev.i.i310 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i.i310 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i310, align 4
  %181 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lport.0, align 8
  call void @scsi_host_put(ptr noundef %182) #16
  br label %out

out:                                              ; preds = %fcoe_hostlist_del.exit, %do.end32, %do.body19.out_crit_edge
  %rc.3 = phi i32 [ %rc.1, %fcoe_hostlist_del.exit ], [ -12, %do.end32 ], [ -12, %do.body19.out_crit_edge ]
  %183 = inttoptr i32 %rc.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end197.cleanup_crit_edge
  %retval.0 = phi ptr [ %183, %out ], [ %lport.0, %if.end197.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_login(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_vport_setlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libfc_vport_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_destroy_work(ptr nocapture noundef readonly %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %lport = getelementptr i8, ptr %work, i32 -120
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data.i, align 8
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %vports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vports.i, align 4
  %cmp12.not41.i = icmp eq ptr %9, %vports.i
  br i1 %cmp12.not41.i, label %entry.fcoe_vport_remove.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.fcoe_vport_remove.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_vport_remove.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in42.i = phi ptr [ %.pn43.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %entry.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn43.i = load ptr, ptr %.pn.in42.i, align 8
  %flags14.i = getelementptr i8, ptr %.pn.in42.i, i32 -4
  %11 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags14.i, align 4
  %13 = and i8 %12, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i8 %12, 2
  %14 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or.i, ptr %flags14.i, align 4
  %15 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost_data.i, align 8
  %work_q.i = getelementptr inbounds %struct.fc_host_attrs, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %work_q.i, align 8
  %vport_delete_work.i = getelementptr i8, ptr %.pn.in42.i, i32 936
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %vport_delete_work.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %cmp12.not.i = icmp eq ptr %.pn43.i, %vports.i
  br i1 %cmp12.not.i, label %for.inc.i.fcoe_vport_remove.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.fcoe_vport_remove.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_vport_remove.exit

fcoe_vport_remove.exit:                           ; preds = %for.inc.i.fcoe_vport_remove.exit_crit_edge, %entry.fcoe_vport_remove.exit_crit_edge
  %19 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call2.i) #16
  %21 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shost_data.i, align 8
  %work_q28.i = getelementptr inbounds %struct.fc_host_attrs, ptr %22, i32 0, i32 41
  %23 = ptrtoint ptr %work_q28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %work_q28.i, align 8
  tail call void @flush_workqueue(ptr noundef %24) #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %cdev2 = getelementptr %struct.fcoe_ctlr, ptr %26, i32 -1, i32 5
  %27 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev2, align 4
  tail call void @rtnl_lock() #16
  %29 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lport, align 4
  tail call fastcc void @fcoe_if_destroy(ptr noundef %30)
  %removed = getelementptr inbounds %struct.fcoe_interface, ptr %26, i32 0, i32 7
  %31 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %if.then, label %fcoe_vport_remove.exit.if.end_crit_edge

fcoe_vport_remove.exit.if.end_crit_edge:          ; preds = %fcoe_vport_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %fcoe_vport_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fcoe_interface_remove(ptr noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %fcoe_vport_remove.exit.if.end_crit_edge
  tail call void @rtnl_unlock() #16
  %netdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev1.i, align 4
  %add.ptr.i = getelementptr %struct.fcoe_ctlr, ptr %26, i32 -1
  tail call void @fcoe_ctlr_destroy(ptr noundef %add.ptr.i) #16
  %lp.i = getelementptr %struct.fcoe_ctlr, ptr %26, i32 -1, i32 2
  %35 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lp.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void @scsi_host_put(ptr noundef %38) #16
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.fcoe_interface_cleanup.exit_crit_edge, label %do.body1.i.i

if.end.fcoe_interface_cleanup.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_interface_cleanup.exit

do.body1.i.i:                                     ; preds = %if.end
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 118
  %40 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %48, %42
  %49 = inttoptr i32 %add.i.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add13.i.i = add i32 %51, -1
  store i32 %add13.i.i, ptr %49, align 4
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !316

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #16, !srcloc !329
  br label %fcoe_interface_cleanup.exit

fcoe_interface_cleanup.exit:                      ; preds = %do.end30.i.i, %if.end.fcoe_interface_cleanup.exit_crit_edge
  tail call void @module_put(ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  tail call void @fcoe_ctlr_device_delete(ptr noundef %28) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_libfc_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fcoe_em_config(ptr noundef %lport) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lro_enabled = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %2 = ptrtoint ptr %lro_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %lro_enabled, align 8
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %lro_xid = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 32
  %4 = ptrtoint ptr %lro_xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lro_xid, align 8
  %6 = add i16 %5, -4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4094, i16 %6)
  %7 = icmp ult i16 %6, -4094
  br i1 %7, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %lro_xid6 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 32
  %8 = ptrtoint ptr %lro_xid6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %lro_xid6, align 8
  br label %skip_oem

if.end:                                           ; preds = %lor.lhs.false
  %netdev = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %12, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call ptr @vlan_dev_real_dev(ptr noundef %10) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %cur_real_dev.0 = phi ptr [ %call10, %if.then8 ], [ %10, %if.end.if.end12_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end22.for.cond_crit_edge, %if.end12
  %oldfcoe.0.in = phi ptr [ @fcoe_hostlist, %if.end12 ], [ %oldfcoe.0, %if.end22.for.cond_crit_edge ]
  %13 = ptrtoint ptr %oldfcoe.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %oldfcoe.0 = load ptr, ptr %oldfcoe.0.in, align 4
  %cmp13.not = icmp eq ptr %oldfcoe.0, @fcoe_hostlist
  br i1 %cmp13.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %netdev15 = getelementptr inbounds %struct.fcoe_interface, ptr %oldfcoe.0, i32 0, i32 1
  %14 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev15, align 4
  %priv_flags.i112 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i112 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i112, align 16
  %and.i113 = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i113)
  %tobool.i114.not = icmp eq i64 %and.i113, 0
  br i1 %tobool.i114.not, label %for.body.if.end22_crit_edge, label %if.then17

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call ptr @vlan_dev_real_dev(ptr noundef %15) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %for.body.if.end22_crit_edge
  %old_real_dev.0 = phi ptr [ %call19, %if.then17 ], [ %15, %for.body.if.end22_crit_edge ]
  %cmp23 = icmp eq ptr %cur_real_dev.0, %old_real_dev.0
  br i1 %cmp23, label %if.then25, label %if.end22.for.cond_crit_edge

if.end22.for.cond_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %oem = getelementptr inbounds %struct.fcoe_interface, ptr %oldfcoe.0, i32 0, i32 6
  %18 = ptrtoint ptr %oem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oem, align 4
  %oem26 = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %oem26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %oem26, align 4
  br label %for.end

for.end:                                          ; preds = %if.then25, %for.cond.for.end_crit_edge
  %oem32 = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %oem32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oem32, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %if.else44, label %if.then34

if.then34:                                        ; preds = %for.end
  %call36 = tail call ptr @fc_exch_mgr_add(ptr noundef %lport, ptr noundef nonnull %22, ptr noundef nonnull @fcoe_oem_match) #16
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end, label %if.then34.if.end60_crit_edge

if.then34.if.end60_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

do.end:                                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %oem32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oem32, align 4
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %24, ptr noundef %26) #19
  br label %cleanup

if.else44:                                        ; preds = %for.end
  %27 = ptrtoint ptr %lro_xid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lro_xid, align 8
  %call46 = tail call ptr @fc_exch_mgr_alloc(ptr noundef %lport, i32 noundef 46, i16 noundef zeroext 0, i16 noundef zeroext %28, ptr noundef nonnull @fcoe_oem_match) #16
  %29 = ptrtoint ptr %oem32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call46, ptr %oem32, align 4
  %tobool49.not = icmp eq ptr %call46, null
  br i1 %tobool49.not, label %do.end53, label %if.else44.if.end60_crit_edge

if.else44.if.end60_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

do.end53:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %31) #19
  br label %cleanup

if.end60:                                         ; preds = %if.else44.if.end60_crit_edge, %if.then34.if.end60_crit_edge
  %32 = ptrtoint ptr %lro_xid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %lro_xid, align 8
  %add = add i16 %33, 1
  br label %skip_oem

skip_oem:                                         ; preds = %if.end60, %if.then
  %min_xid.0 = phi i16 [ 0, %if.then ], [ %add, %if.end60 ]
  %call66 = tail call ptr @fc_exch_mgr_alloc(ptr noundef %lport, i32 noundef 46, i16 noundef zeroext %min_xid.0, i16 noundef zeroext 4095, ptr noundef null) #16
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %do.end71, label %skip_oem.cleanup_crit_edge

skip_oem.cleanup_crit_edge:                       ; preds = %skip_oem
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end71:                                         ; preds = %skip_oem
  call void @__sanitizer_cov_trace_pc() #18
  %netdev73 = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %netdev73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev73, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %35) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %skip_oem.cleanup_crit_edge, %do.end53, %do.end
  %retval.0 = phi i32 [ -12, %do.end71 ], [ -12, %do.end ], [ -12, %do.end53 ], [ 0, %skip_oem.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_exch_mgr_list_clone(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_queuecommand(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_abort(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_device_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_host_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_slave_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_timed_out(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_queue_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_get_wwn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fcoe_wwn_from_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_xmit(ptr noundef %lport, ptr noundef %fp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %len = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %rem = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1487, i32 noundef 9, ptr noundef null) #16
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = phi i32 [ %.pr, %do.end ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp.i = icmp ult i32 %5, 24
  br i1 %cmp.i, label %do.end.i, label %if.end.fc_frame_header_get.exit_crit_edge, !prof !316

if.end.fc_frame_header_get.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 10
  %8 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup179

if.end25:                                         ; preds = %fc_frame_header_get.exit
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp26 = icmp eq i8 %11, 1
  br i1 %cmp26, label %land.lhs.true, label %if.end25.if.end37_crit_edge, !prof !316

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end25
  %call34 = tail call i32 @fcoe_ctlr_els_send(ptr noundef %add.ptr, ptr noundef %lport, ptr noundef %fp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true.cleanup179_crit_edge

land.lhs.true.cleanup179_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup179

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %fr_sof to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fr_sof, align 2
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %14 = ptrtoint ptr %fr_eof to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fr_eof, align 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add = add i32 %17, -4
  %div43268 = lshr i32 %add, 2
  %crc_offload = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %18 = ptrtoint ptr %crc_offload to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %crc_offload, align 8
  %19 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  %ip_summed58 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed58 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load59 = load i16, ptr %ip_summed58, align 8
  br i1 %tobool44.not, label %if.else, label %if.then51, !prof !316

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set = or i16 %bf.load59, 1536
  %21 = ptrtoint ptr %ip_summed58 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.set, ptr %ip_summed58, align 8
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 18
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv55 = trunc i32 %sub.ptr.sub.i to i16
  %26 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv55, ptr %26, align 8
  %conv57 = trunc i32 %17 to i16
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv57, ptr %csum_offset, align 2
  br label %if.end63

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear60 = and i16 %bf.load59, -1537
  %29 = ptrtoint ptr %ip_summed58 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.clear60, ptr %ip_summed58, align 8
  %call62 = tail call i32 @fcoe_fc_crc(ptr noundef %fp) #16
  %phi.bo = xor i32 %call62, -1
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then51
  %crc.0 = phi i32 [ -1, %if.then51 ], [ %phi.bo, %if.else ]
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %if.else79, label %if.then65

if.then65:                                        ; preds = %if.end63
  %32 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %35, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !334
  %36 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i271 = add i32 %41, ptrtoint (ptr @fcoe_percpu to i32)
  %42 = inttoptr i32 %add.i271 to ptr
  %call6.i = tail call i32 @fcoe_get_paged_crc_eof(ptr noundef %fp, i32 noundef 8, ptr noundef %42) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !335
  %43 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i1.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool67.not = icmp eq i32 %call6.i, 0
  br i1 %tobool67.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags, align 2
  %conv72 = zext i8 %50 to i32
  %sub73 = add nsw i32 %conv72, -1
  %arrayidx74 = getelementptr %struct.skb_shared_info, ptr %48, i32 0, i32 12, i32 %sub73
  %51 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx74, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %53 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %53, 512
  %54 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !336
  %58 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i1.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 213
  %62 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !337
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %52, i32 noundef %or.i) #16
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %48, i32 0, i32 12, i32 %sub73, i32 2
  %64 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bv_offset.i, align 4
  %add.ptr78 = getelementptr i8, ptr %call.i.i, i32 %65
  br label %if.end81

cleanup:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #16
  br label %cleanup179

if.else79:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %call80 = tail call ptr @skb_put(ptr noundef %fp, i32 noundef 8) #16
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %cleanup.thread
  %cp.1 = phi ptr [ %call80, %if.else79 ], [ %add.ptr78, %cleanup.thread ]
  %66 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %cp.1, align 1
  %fcoe_eof = getelementptr inbounds %struct.fcoe_crc_eof, ptr %cp.1, i32 0, i32 1
  %67 = ptrtoint ptr %fcoe_eof to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %15, ptr %fcoe_eof, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %crc.0)
  %69 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %cp.1, align 1
  %70 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i274.not = icmp eq i32 %71, 0
  br i1 %tobool.i274.not, label %if.end81.if.end90_crit_edge, label %do.end87

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kunmap_local_indexed(ptr noundef %cp.1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !338
  %72 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i1.i275 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i1.i275 to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 213
  %76 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %77, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !339
  %78 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i276 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i276 to ptr
  %preempt_count.i.i.i277 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i277, align 4
  %sub.i.i278 = add i32 %81, -1
  store volatile i32 %sub.i.i278, ptr %preempt_count.i.i.i277, align 4
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end81.if.end90_crit_edge
  %call92 = tail call ptr @skb_push(ptr noundef %fp, i32 noundef 28) #16
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %head.i280 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 18
  %84 = ptrtoint ptr %head.i280 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i280, align 8
  %sub.ptr.lhs.cast.i281 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i282 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i283 = sub i32 %sub.ptr.lhs.cast.i281, %sub.ptr.rhs.cast.i282
  %conv.i = trunc i32 %sub.ptr.sub.i283 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 21
  %86 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 20
  %87 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i, ptr %network_header.i, align 4
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 8
  %88 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 14, ptr %mac_len, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 18
  %89 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -30458, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 8
  %90 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %priority, align 1
  %conv94 = zext i8 %91 to i32
  %priority95 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 6
  %92 = ptrtoint ptr %priority95 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv94, ptr %priority95, align 4
  %netdev = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %93 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %netdev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 15
  %95 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %96, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i290.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i290.not, label %if.end90.if.else104_crit_edge, label %land.lhs.true98

if.end90.if.else104_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else104

land.lhs.true98:                                  ; preds = %if.end90
  %realdev = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 2
  %97 = ptrtoint ptr %realdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %realdev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 23
  %99 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %features, align 16
  %and = and i64 %100, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool99.not = icmp eq i64 %and, 0
  br i1 %tobool99.not, label %land.lhs.true98.if.else104_crit_edge, label %if.then100

land.lhs.true98.if.else104_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else104

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #18
  %101 = getelementptr inbounds %struct.anon.44, ptr %fp, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %98, ptr %101, align 8
  %103 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev, align 4
  %call103 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %104) #16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 9
  %105 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 10
  %106 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %call103, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 3
  %107 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end106

if.else104:                                       ; preds = %land.lhs.true98.if.else104_crit_edge, %if.end90.if.else104_crit_edge
  %108 = getelementptr inbounds %struct.anon.44, ptr %fp, i32 0, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %94, ptr %108, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then100
  %110 = ptrtoint ptr %head.i280 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i280, align 8
  %112 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %113 to i32
  %add.ptr.i.i = getelementptr i8, ptr %111, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 -30458, ptr %h_proto, align 1
  %dest_addr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27
  %115 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %dest_addr, i32 6)
  %map_dest = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 22
  %116 = ptrtoint ptr %map_dest to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %map_dest, align 2, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool109.not = icmp eq i8 %117, 0
  br i1 %tobool109.not, label %if.end106.if.end115_crit_edge, label %if.then110

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr113 = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %7, i32 0, i32 1
  %118 = call ptr @memcpy(ptr %add.ptr113, ptr %fh_d_id, i32 3)
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end106.if.end115_crit_edge
  %flogi_oxid = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 19
  %119 = ptrtoint ptr %flogi_oxid to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flogi_oxid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %120)
  %cmp117.not = icmp eq i16 %120, -1
  %h_source129 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  br i1 %cmp117.not, label %if.else128, label %if.then125, !prof !315

if.then125:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 28
  %121 = call ptr @memcpy(ptr %h_source129, ptr %ctl_src_addr, i32 6)
  br label %if.end132

if.else128:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  %122 = call ptr @memcpy(ptr %h_source129, ptr %data_src_addr, i32 6)
  br label %if.end132

if.end132:                                        ; preds = %if.else128, %if.then125
  %add.ptr133 = getelementptr %struct.ethhdr, ptr %add.ptr.i.i, i32 1
  %123 = call ptr @memset(ptr %add.ptr133, i32 0, i32 13)
  %fcoe_sof = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr133, i32 0, i32 2
  %124 = ptrtoint ptr %fcoe_sof to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %13, ptr %fcoe_sof, align 1
  %125 = ptrtoint ptr %crc_offload to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load134 = load i8, ptr %crc_offload, align 8
  %126 = and i8 %bf.load134, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool138.not = icmp eq i8 %126, 0
  br i1 %tobool138.not, label %if.end132.if.else152_crit_edge, label %land.lhs.true139

if.end132.if.else152_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else152

land.lhs.true139:                                 ; preds = %if.end132
  %fr_max_payload = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 16
  %127 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %fr_max_payload, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool144.not = icmp eq i16 %128, 0
  br i1 %tobool144.not, label %land.lhs.true139.if.else152_crit_edge, label %if.then145

land.lhs.true139.if.else152_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else152

if.then145:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #18
  %end.i291 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %129 = ptrtoint ptr %end.i291 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i291, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 32, ptr %gso_type, align 8
  %132 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %fr_max_payload, align 8
  br label %do.body158

if.else152:                                       ; preds = %land.lhs.true139.if.else152_crit_edge, %if.end132.if.else152_crit_edge
  %end.i293 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %134 = ptrtoint ptr %end.i293 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i293, align 4
  %gso_type154 = getelementptr inbounds %struct.skb_shared_info, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %gso_type154 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %gso_type154, align 8
  br label %do.body158

do.body158:                                       ; preds = %if.else152, %if.then145
  %end.i291.sink = phi ptr [ %end.i291, %if.then145 ], [ %end.i293, %if.else152 ]
  %.sink = phi i16 [ %133, %if.then145 ], [ 0, %if.else152 ]
  %137 = ptrtoint ptr %end.i291.sink to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i291.sink, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %.sink, ptr %gso_size, align 4
  %stats162 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %140 = ptrtoint ptr %stats162 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stats162, align 8
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %146, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !341
  %147 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i295 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i295 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cpu, align 4
  %arrayidx169 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx169, align 4
  %add170 = add i32 %152, %142
  %153 = inttoptr i32 %add170 to ptr
  %TxFrames = getelementptr inbounds %struct.fc_stats, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %TxFrames to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %TxFrames, align 8
  %inc = add i64 %155, 1
  store i64 %inc, ptr %TxFrames, align 8
  %156 = zext i32 %div43268 to i64
  %TxWords = getelementptr inbounds %struct.fc_stats, ptr %153, i32 0, i32 2
  %157 = ptrtoint ptr %TxWords to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %TxWords, align 8
  %add172 = add i64 %158, %156
  store i64 %add172, ptr %TxWords, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !342
  %159 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i269 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i269 to ptr
  %preempt_count.i.i270 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i270 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i270, align 4
  %sub.i = add i32 %162, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i270, align 4
  %163 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %lport, ptr %cb, align 8
  %qlen.i = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 3
  %164 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i = icmp eq i32 %165, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body158.if.end4.sink.split.i_crit_edge

do.body158.if.end4.sink.split.i_crit_edge:        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.sink.split.i

if.else.i:                                        ; preds = %do.body158
  %call.i = tail call i32 @fcoe_start_io(ptr noundef %fp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i.cleanup179_crit_edge, label %if.else.i.if.end4.sink.split.i_crit_edge

if.else.i.if.end4.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.sink.split.i

if.else.i.cleanup179_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup179

if.end4.sink.split.i:                             ; preds = %if.else.i.if.end4.sink.split.i_crit_edge, %do.body158.if.end4.sink.split.i_crit_edge
  %lport3.i = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 1
  %166 = ptrtoint ptr %lport3.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lport3.i, align 4
  tail call void @fcoe_check_wait_queue(ptr noundef %167, ptr noundef %fp) #16
  br label %cleanup179

cleanup179:                                       ; preds = %if.end4.sink.split.i, %if.else.i.cleanup179_crit_edge, %cleanup, %land.lhs.true.cleanup179_crit_edge, %if.then24
  %retval.1 = phi i32 [ -12, %cleanup ], [ 0, %if.then24 ], [ 0, %land.lhs.true.cleanup179_crit_edge ], [ 0, %if.else.i.cleanup179_crit_edge ], [ 0, %if.end4.sink.split.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fcoe_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i = icmp ult i32 %3, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !316

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %4 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %op, label %fc_frame_header_get.exit.sw.epilog_crit_edge [
    i32 4, label %fc_frame_header_get.exit.sw.bb_crit_edge
    i32 81, label %fc_frame_header_get.exit.sw.bb_crit_edge27
    i32 5, label %sw.bb3
  ]

fc_frame_header_get.exit.sw.bb_crit_edge27:       ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

fc_frame_header_get.exit.sw.bb_crit_edge:         ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

fc_frame_header_get.exit.sw.epilog_crit_edge:     ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %fc_frame_header_get.exit.sw.bb_crit_edge, %fc_frame_header_get.exit.sw.bb_crit_edge27
  %point_to_multipoint = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %5 = ptrtoint ptr %point_to_multipoint to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %point_to_multipoint, align 8
  %6 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef nonnull @fcoe_flogi_resp, ptr noundef %add.ptr, i32 noundef %timeout) #16
  br label %cleanup

sw.bb3:                                           ; preds = %fc_frame_header_get.exit
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %8, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %14 to i32
  %or6.i = or i32 %or.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i)
  %cmp.not = icmp eq i32 %or6.i, 16777214
  br i1 %cmp.not, label %if.end6, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end6:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef 5, ptr noundef nonnull @fcoe_logo_resp, ptr noundef %lport, i32 noundef %timeout) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %fc_frame_header_get.exit.sw.epilog_crit_edge
  %call8 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6, %if.end
  %retval.0 = phi ptr [ %call8, %sw.epilog ], [ %call7, %if.end6 ], [ %call2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_ddp_setup(ptr nocapture noundef readonly %lport, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_setup = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %ndo_fcoe_ddp_setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_fcoe_ddp_setup, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 %7(ptr noundef %3, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_ddp_done(ptr nocapture noundef readonly %lport, i16 noundef zeroext %xid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_done = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %ndo_fcoe_ddp_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_fcoe_ddp_done, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 %7(ptr noundef %3, i16 noundef zeroext %xid) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_ddp_target(ptr nocapture noundef readonly %lport, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_target = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %ndo_fcoe_ddp_target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_fcoe_ddp_target, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 %7(ptr noundef %3, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_get_lesb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_set_port_id(ptr noundef %lport, i32 noundef %port_id, ptr noundef %fp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %tobool.not = icmp eq ptr %fp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %3)
  %cmp.not.i.i = icmp ult i32 %3, 25
  br i1 %cmp.not.i.i, label %land.lhs.true.if.end_crit_edge, label %fc_frame_payload_get.exit.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

fc_frame_payload_get.exit.i:                      ; preds = %land.lhs.true
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %5, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.if.end_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.if.end_crit_edge:     ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp = icmp eq i8 %7, 4
  br i1 %cmp, label %if.then, label %fc_frame_payload_op.exit.if.end_crit_edge

fc_frame_payload_op.exit.if.end_crit_edge:        ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @fcoe_ctlr_recv_flogi(ptr noundef %add.ptr, ptr noundef %lport, ptr noundef nonnull %fp) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %fc_frame_payload_op.exit.if.end_crit_edge, %fc_frame_payload_get.exit.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_els_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_get_paged_crc_eof(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_check_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_start_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_elsct_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %seq, i32 -40
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end:                                           ; preds = %entry
  %granted_mac = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 22
  %2 = ptrtoint ptr %granted_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granted_mac, align 4
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 26
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i16 = icmp eq i32 %or.i, 0
  br i1 %cmp.i16, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @fcoe_ctlr_recv_flogi(ptr noundef %arg, ptr noundef %1, ptr noundef %fp) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %granted_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %granted_mac, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv.i18 = zext i16 %9 to i32
  %or.i19 = or i32 %7, %conv.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i19)
  %cmp.i20 = icmp eq i32 %or.i19, 0
  br i1 %cmp.i20, label %if.end4.done_crit_edge, label %if.then6

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.then6:                                         ; preds = %if.end4
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 4
  %data_src_addr.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 6, i32 10
  %12 = ptrtoint ptr %data_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_src_addr.i, align 4
  %add.ptr.i18.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 6, i32 10, i32 0, i32 1
  %14 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i18.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then6.if.end.i_crit_edge, label %if.then.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 4
  %call4.i = tail call i32 @dev_uc_del(ptr noundef %17, ptr noundef %data_src_addr.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then6.if.end.i_crit_edge
  %18 = ptrtoint ptr %granted_mac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %granted_mac, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 2
  %conv.i20.i = zext i16 %21 to i32
  %or.i21.i = or i32 %19, %conv.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i21.i)
  %cmp.i22.i = icmp eq i32 %or.i21.i, 0
  br i1 %cmp.i22.i, label %if.end.i.fcoe_update_src_mac.exit_crit_edge, label %if.then6.i

if.end.i.fcoe_update_src_mac.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_update_src_mac.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %netdev7.i = getelementptr inbounds %struct.fcoe_interface, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %netdev7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev7.i, align 4
  %call8.i = tail call i32 @dev_uc_add(ptr noundef %23, ptr noundef %granted_mac) #16
  br label %fcoe_update_src_mac.exit

fcoe_update_src_mac.exit:                         ; preds = %if.then6.i, %if.end.i.fcoe_update_src_mac.exit_crit_edge
  %24 = call ptr @memcpy(ptr %data_src_addr.i, ptr %granted_mac, i32 6)
  br label %done

done:                                             ; preds = %fcoe_update_src_mac.exit, %if.end4.done_crit_edge, %entry.done_crit_edge
  tail call void @fc_lport_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_logo_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %arg, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %data_src_addr.i = getelementptr %struct.fc_lport, ptr %arg, i32 1, i32 6, i32 10
  %2 = ptrtoint ptr %data_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_src_addr.i, align 4
  %add.ptr.i18.i = getelementptr %struct.fc_lport, ptr %arg, i32 1, i32 6, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i18.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  %call4.i = tail call i32 @dev_uc_del(ptr noundef %7, ptr noundef %data_src_addr.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %8 = load i32, ptr @fcoe_logo_resp.zero_mac, align 4
  %9 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @fcoe_logo_resp.zero_mac, i32 0, i32 4), align 4
  %conv.i20.i = zext i16 %9 to i32
  %or.i21.i = or i32 %8, %conv.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i21.i)
  %cmp.i22.i = icmp eq i32 %or.i21.i, 0
  br i1 %cmp.i22.i, label %if.end.i.fcoe_update_src_mac.exit_crit_edge, label %if.then6.i

if.end.i.fcoe_update_src_mac.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_update_src_mac.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %netdev7.i = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %netdev7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev7.i, align 4
  %call8.i = tail call i32 @dev_uc_add(ptr noundef %11, ptr noundef nonnull @fcoe_logo_resp.zero_mac) #16
  br label %fcoe_update_src_mac.exit

fcoe_update_src_mac.exit:                         ; preds = %if.then6.i, %if.end.i.fcoe_update_src_mac.exit_crit_edge
  %12 = call ptr @memcpy(ptr %data_src_addr.i, ptr @fcoe_logo_resp.zero_mac, i32 6)
  br label %if.end

if.end:                                           ; preds = %fcoe_update_src_mac.exit, %entry.if.end_crit_edge
  tail call void @fc_lport_logo_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_recv_flogi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_update_src_mac(ptr noundef %lport, ptr noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  %2 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_src_addr, align 4
  %add.ptr.i18 = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i18, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %call4 = tail call i32 @dev_uc_del(ptr noundef %7, ptr noundef %data_src_addr) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i19, align 2
  %conv.i20 = zext i16 %11 to i32
  %or.i21 = or i32 %9, %conv.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i21)
  %cmp.i22 = icmp eq i32 %or.i21, 0
  br i1 %cmp.i22, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev7 = getelementptr inbounds %struct.fcoe_interface, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev7, align 4
  %call8 = tail call i32 @dev_uc_add(ptr noundef %13, ptr noundef %addr) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %14 = call ptr @memcpy(ptr %data_src_addr, ptr %addr, i32 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_flogi_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_logo_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_mgr_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fcoe_oem_match(ptr nocapture noundef readonly %fp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.i = icmp ult i32 %1, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !316

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 161, i32 noundef 9, ptr noundef null) #16
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %fr_fsp = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %fr_fsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fr_fsp, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true11, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %fc_frame_header_get.exit
  %cmd.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end26_crit_edge, label %fc_fcp_is_read.exit

land.lhs.true.i.if.end26_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

fc_fcp_is_read.exit:                              ; preds = %land.lhs.true.i
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i34 = icmp eq i32 %9, 2
  br i1 %cmp.i34, label %land.lhs.true, label %fc_fcp_is_read.exit.if.end26_crit_edge

fc_fcp_is_read.exit.if.end26_crit_edge:           ; preds = %fc_fcp_is_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true:                                    ; preds = %fc_fcp_is_read.exit
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len, align 16
  %12 = load i32, ptr @fcoe_ddp_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp = icmp ugt i32 %11, %12
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true11:                                  ; preds = %fc_frame_header_get.exit
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %cmp12 = icmp eq i8 %14, 6
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true11.if.end26_crit_edge

land.lhs.true11.if.end26_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fh_rx_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp16 = icmp eq i16 %16, -1
  br i1 %cmp16, label %if.then18, label %land.lhs.true14.if.end26_crit_edge

land.lhs.true14.if.end26_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then18:                                        ; preds = %land.lhs.true14
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %18)
  %cmp.not.i = icmp ult i32 %18, 56
  br i1 %cmp.not.i, label %if.then18.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.then18.fc_frame_payload_get.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %20, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.then18.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.then18.fc_frame_payload_get.exit_crit_edge ]
  %fc_flags = getelementptr inbounds %struct.fcp_cmnd, ptr %pp.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fc_flags, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %fc_frame_payload_get.exit.if.end26_crit_edge, label %land.lhs.true21

fc_frame_payload_get.exit.if.end26_crit_edge:     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true21:                                  ; preds = %fc_frame_payload_get.exit
  %fc_dl = getelementptr inbounds %struct.fcp_cmnd, ptr %pp.0.i, i32 0, i32 6
  %24 = ptrtoint ptr %fc_dl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_dl, align 4
  %26 = load i32, ptr @fcoe_ddp_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp22 = icmp ugt i32 %25, %26
  br i1 %cmp22, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end26_crit_edge

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true21.if.end26_crit_edge, %fc_frame_payload_get.exit.if.end26_crit_edge, %land.lhs.true14.if.end26_crit_edge, %land.lhs.true11.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %fc_fcp_is_read.exit.if.end26_crit_edge, %land.lhs.true.i.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end26 ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true21.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_mgr_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_dcbevent_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fcoe_match(ptr nocapture noundef readnone %netdev) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_ctlr_alloc(ptr noundef %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_fcoe_create(ptr noundef %netdev, i32 noundef 2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_create(ptr noundef %netdev, i32 noundef %fip_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_fcoe_create(ptr noundef %netdev, i32 noundef %fip_mode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_destroy(ptr noundef readnone %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fcoe.0.in.i = phi ptr [ @fcoe_hostlist, %entry ], [ %fcoe.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %fcoe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fcoe.0.i = load ptr, ptr %fcoe.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fcoe.0.i, @fcoe_hostlist
  br i1 %cmp.not.i, label %for.cond.i.out_nodev_crit_edge, label %for.body.i

for.cond.i.out_nodev_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_nodev

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %fcoe_hostlist_lookup_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

fcoe_hostlist_lookup_port.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %fcoe.0.i, null
  br i1 %tobool.not, label %fcoe_hostlist_lookup_port.exit.out_nodev_crit_edge, label %if.end

fcoe_hostlist_lookup_port.exit.out_nodev_crit_edge: ; preds = %fcoe_hostlist_lookup_port.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_nodev

if.end:                                           ; preds = %fcoe_hostlist_lookup_port.exit
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i, i32 -1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %fcoe.0.i) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fcoe.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %fcoe.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcoe.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %fcoe.0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fcoe.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fcoe.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = load ptr, ptr @fcoe_wq, align 4
  %destroy_work = getelementptr %struct.fc_lport, ptr %4, i32 1, i32 6, i32 8, i32 5, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %destroy_work) #16
  br label %out_nodev

out_nodev:                                        ; preds = %list_del.exit, %fcoe_hostlist_lookup_port.exit.out_nodev_crit_edge, %for.cond.i.out_nodev_crit_edge
  %rc.0 = phi i32 [ 0, %list_del.exit ], [ -19, %fcoe_hostlist_lookup_port.exit.out_nodev_crit_edge ], [ -19, %for.cond.i.out_nodev_crit_edge ]
  tail call void @rtnl_unlock() #16
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_enable(ptr noundef readnone %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fcoe.0.in.i = phi ptr [ @fcoe_hostlist, %entry ], [ %fcoe.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %fcoe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fcoe.0.i = load ptr, ptr %fcoe.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fcoe.0.i, @fcoe_hostlist
  br i1 %cmp.not.i, label %fcoe_hostlist_lookup_port.exit.thread, label %for.body.i

fcoe_hostlist_lookup_port.exit.thread:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %fcoe_hostlist_lookup_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

fcoe_hostlist_lookup_port.exit:                   ; preds = %for.body.i
  tail call void @rtnl_unlock() #16
  %tobool.not = icmp eq ptr %fcoe.0.i, null
  br i1 %tobool.not, label %fcoe_hostlist_lookup_port.exit.out_crit_edge, label %if.end

fcoe_hostlist_lookup_port.exit.out_crit_edge:     ; preds = %fcoe_hostlist_lookup_port.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %fcoe_hostlist_lookup_port.exit
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i, i32 -1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  %add.ptr.i.i.i = getelementptr %struct.fc_lport, ptr %4, i32 1
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev.i.i, align 4
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 50
  %9 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operstate.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %10, label %if.end.out_crit_edge [
    i8 6, label %if.end.if.then3_crit_edge
    i8 0, label %if.end.if.then3_crit_edge15
  ]

if.end.if.then3_crit_edge15:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge15
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i, i32 -1
  tail call void @fcoe_ctlr_link_up(ptr noundef %add.ptr) #16
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %fcoe_hostlist_lookup_port.exit.out_crit_edge, %fcoe_hostlist_lookup_port.exit.thread
  %rc.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.then3 ], [ -19, %fcoe_hostlist_lookup_port.exit.out_crit_edge ], [ -19, %fcoe_hostlist_lookup_port.exit.thread ]
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_disable(ptr noundef readnone %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fcoe.0.in.i = phi ptr [ @fcoe_hostlist, %entry ], [ %fcoe.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %fcoe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fcoe.0.i = load ptr, ptr %fcoe.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fcoe.0.i, @fcoe_hostlist
  br i1 %cmp.not.i, label %fcoe_hostlist_lookup_port.exit.thread, label %for.body.i

fcoe_hostlist_lookup_port.exit.thread:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %fcoe_hostlist_lookup_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

fcoe_hostlist_lookup_port.exit:                   ; preds = %for.body.i
  tail call void @rtnl_unlock() #16
  %tobool.not = icmp eq ptr %fcoe.0.i, null
  br i1 %tobool.not, label %fcoe_hostlist_lookup_port.exit.if.end_crit_edge, label %if.then

fcoe_hostlist_lookup_port.exit.if.end_crit_edge:  ; preds = %fcoe_hostlist_lookup_port.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %fcoe_hostlist_lookup_port.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i, i32 -1
  %call1 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr) #16
  %lp = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i, i32 -1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef %4) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %fcoe_hostlist_lookup_port.exit.if.end_crit_edge, %fcoe_hostlist_lookup_port.exit.thread
  %rc.0 = phi i32 [ 0, %if.then ], [ -19, %fcoe_hostlist_lookup_port.exit.if.end_crit_edge ], [ -19, %fcoe_hostlist_lookup_port.exit.thread ]
  tail call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_fcoe_create(ptr noundef %netdev, i32 noundef %fip_mode, i32 noundef %link_state) unnamed_addr #4 align 64 {
entry:
  %app.i = alloca %struct.dcb_app, align 4
  %.compoundliteral.i.i = alloca [6 x i8], align 1
  %.compoundliteral110.i.i = alloca [6 x i8], align 1
  %.compoundliteral119.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fcoe_config_mutex, i32 noundef 0) #16
  tail call void @rtnl_lock() #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %fcoe.0.in.i.i = phi ptr [ @fcoe_hostlist, %entry ], [ %fcoe.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %fcoe.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fcoe.0.i.i = load ptr, ptr %fcoe.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %fcoe.0.i.i, @fcoe_hostlist
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.body.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %netdev1.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %fcoe.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i.i, label %fcoe_hostlist_lookup_port.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

fcoe_hostlist_lookup_port.exit.i:                 ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %fcoe.0.i.i, null
  br i1 %tobool.not.i, label %fcoe_hostlist_lookup_port.exit.i.if.end_crit_edge, label %fcoe_hostlist_lookup.exit

fcoe_hostlist_lookup_port.exit.i.if.end_crit_edge: ; preds = %fcoe_hostlist_lookup_port.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

fcoe_hostlist_lookup.exit:                        ; preds = %fcoe_hostlist_lookup_port.exit.i
  %lp.i = getelementptr %struct.fcoe_ctlr, ptr %fcoe.0.i.i, i32 -1, i32 2
  %3 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %fcoe_hostlist_lookup.exit.if.end_crit_edge, label %fcoe_hostlist_lookup.exit.out_nodev_crit_edge

fcoe_hostlist_lookup.exit.out_nodev_crit_edge:    ; preds = %fcoe_hostlist_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_nodev

fcoe_hostlist_lookup.exit.if.end_crit_edge:       ; preds = %fcoe_hostlist_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %fcoe_hostlist_lookup.exit.if.end_crit_edge, %fcoe_hostlist_lookup_port.exit.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge
  %.compoundliteral110.i.sroa.gep87.i = getelementptr inbounds i8, ptr %.compoundliteral110.i.i, i32 5
  %.compoundliteral110.i.sroa.gep84.i = getelementptr inbounds i8, ptr %.compoundliteral110.i.i, i32 4
  %.compoundliteral110.i.sroa.gep81.i = getelementptr inbounds i8, ptr %.compoundliteral110.i.i, i32 3
  %.compoundliteral110.i.sroa.gep78.i = getelementptr inbounds i8, ptr %.compoundliteral110.i.i, i32 2
  %.compoundliteral110.i.sroa.gep.i = getelementptr inbounds i8, ptr %.compoundliteral110.i.i, i32 1
  %.compoundliteral119.i.sroa.gep86.i = getelementptr inbounds i8, ptr %.compoundliteral119.i.i, i32 5
  %.compoundliteral119.i.sroa.gep83.i = getelementptr inbounds i8, ptr %.compoundliteral119.i.i, i32 4
  %.compoundliteral119.i.sroa.gep80.i = getelementptr inbounds i8, ptr %.compoundliteral119.i.i, i32 3
  %.compoundliteral119.i.sroa.gep77.i = getelementptr inbounds i8, ptr %.compoundliteral119.i.i, i32 2
  %.compoundliteral119.i.sroa.gep.i = getelementptr inbounds i8, ptr %.compoundliteral119.i.i, i32 1
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef null) #16
  br i1 %call.i, label %if.end12.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  %5 = load i32, ptr @fcoe_debug_logging, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i48 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i48, label %do.body.i.if.then3_crit_edge, label %do.end.i, !prof !315

do.body.i.if.then3_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %netdev) #19
  br label %if.then3

if.end12.i:                                       ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %call13.i = tail call ptr @fcoe_ctlr_device_add(ptr noundef %dev.i, ptr noundef nonnull @fcoe_sysfs_templ, i32 noundef 580) #16
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %do.body16.i, label %if.end38.i

do.body16.i:                                      ; preds = %if.end12.i
  %6 = load i32, ptr @fcoe_debug_logging, align 4
  %and17.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.out_putmod.i_crit_edge, label %do.end29.i, !prof !315

do.body16.i.out_putmod.i_crit_edge:               ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_putmod.i

do.end29.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #18
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #19
  br label %out_putmod.i

if.end38.i:                                       ; preds = %if.end12.i
  %add.ptr.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1
  %cdev.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13.i, ptr %cdev.i, align 4
  %add.ptr.i61.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 3
  %tobool.not.i.i = icmp eq ptr %netdev, null
  br i1 %tobool.not.i.i, label %if.end38.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end38.i.dev_hold.exit.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end38.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i = add i32 %20, 1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !316

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !329
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end38.i.dev_hold.exit.i_crit_edge
  tail call void @fcoe_ctlr_init(ptr noundef %add.ptr.i.i, i32 noundef %fip_mode) #16
  %send.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 10, i32 1, i32 4
  %22 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fcoe_fip_send, ptr %send.i, align 4
  %update_mac.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %update_mac.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fcoe_update_src_mac, ptr %update_mac.i, align 4
  %get_src_addr.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %get_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fcoe_get_src_mac, ptr %get_src_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i.i) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral110.i.i) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral119.i.i) #16
  %netdev1.i.i49 = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 7
  %25 = ptrtoint ptr %netdev1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %netdev, ptr %netdev1.i.i49, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev_ops.i.i, align 8
  %ndo_fcoe_enable.i.i = getelementptr inbounds %struct.net_device_ops, ptr %27, i32 0, i32 43
  %28 = ptrtoint ptr %ndo_fcoe_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndo_fcoe_enable.i.i, align 4
  %tobool.not.i62.i = icmp eq ptr %29, null
  br i1 %tobool.not.i62.i, label %dev_hold.exit.i.if.end17.i.i_crit_edge, label %if.then.i.i

dev_hold.exit.i.if.end17.i.i_crit_edge:           ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i.i

if.then.i.i:                                      ; preds = %dev_hold.exit.i
  %call.i.i = tail call i32 %29(ptr noundef %netdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.end17.i.i_crit_edge, label %do.body.i.i

if.then.i.i.if.end17.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  %30 = load i32, ptr @fcoe_debug_logging, align 4
  %and.i.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.if.end17.i.i_crit_edge, label %do.end.i.i, !prof !315

do.body.i.i.if.end17.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %netdev) #19
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.if.end17.i.i_crit_edge, %if.then.i.i.if.end17.i.i_crit_edge, %dev_hold.exit.i.if.end17.i.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i63.i = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63.i)
  %tobool.not.i200.i.i = icmp eq i32 %and.i.i63.i, 0
  br i1 %tobool.not.i200.i.i, label %if.end17.i.i.if.end43.i.i_crit_edge, label %netif_is_bond_master.exit.i.i

if.end17.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i.i

netif_is_bond_master.exit.i.i:                    ; preds = %if.end17.i.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %33 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %34, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_master.exit.i.i.if.end43.i.i_crit_edge, label %do.body20.i.i

netif_is_bond_master.exit.i.i.if.end43.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i.i

do.body20.i.i:                                    ; preds = %netif_is_bond_master.exit.i.i
  %35 = load i32, ptr @fcoe_debug_logging, align 4
  %and21.i.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %do.body20.i.i.if.then43.i_crit_edge, label %do.end33.i.i, !prof !315

do.body20.i.i.if.then43.i_crit_edge:              ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43.i

do.end33.i.i:                                     ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %netdev) #19
  br label %if.then43.i

if.end43.i.i:                                     ; preds = %netif_is_bond_master.exit.i.i.if.end43.i.i_crit_edge, %if.end17.i.i.if.end43.i.i_crit_edge
  %priv_flags.i201.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %36 = ptrtoint ptr %priv_flags.i201.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %priv_flags.i201.i.i, align 16
  %and.i202.i.i = and i64 %37, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i202.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i202.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end43.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end43.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call45.i.i = tail call ptr @vlan_dev_real_dev(ptr noundef %netdev) #16
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end43.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %call45.i.i, %cond.true.i.i ], [ %netdev, %if.end43.i.i.cond.end.i.i_crit_edge ]
  %realdev.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 4
  %38 = ptrtoint ptr %realdev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cond.i.i, ptr %realdev.i.i, align 4
  %39 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !343
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i, label %cond.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

cond.end.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %cond.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %cond.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call47.i.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end56.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end56.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call49.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %land.lhs.true.i.i.do.end56.i.i_crit_edge, label %land.lhs.true51.i.i

land.lhs.true.i.i.do.end56.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56.i.i

land.lhs.true51.i.i:                              ; preds = %land.lhs.true.i.i
  %.b199.i.i = load i1, ptr @fcoe_interface_setup.__warned, align 1
  br i1 %.b199.i.i, label %land.lhs.true51.i.i.do.end56.i.i_crit_edge, label %if.then53.i.i

land.lhs.true51.i.i.do.end56.i.i_crit_edge:       ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56.i.i

if.then53.i.i:                                    ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @fcoe_interface_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 320, ptr noundef nonnull @.str.113) #16
  br label %do.end56.i.i

do.end56.i.i:                                     ; preds = %if.then53.i.i, %land.lhs.true51.i.i.do.end56.i.i_crit_edge, %land.lhs.true.i.i.do.end56.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end56.i.i_crit_edge
  %dev_addrs.i.i = getelementptr inbounds %struct.net_device, ptr %cond.i.i, i32 0, i32 67
  %43 = ptrtoint ptr %dev_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ha.0213.i.i = load volatile ptr, ptr %dev_addrs.i.i, align 4
  %cmp.not214.i.i = icmp eq ptr %ha.0213.i.i, %dev_addrs.i.i
  br i1 %cmp.not214.i.i, label %do.end56.i.i.for.end.i.i_crit_edge, label %do.end56.i.i.for.body.i.i50_crit_edge

do.end56.i.i.for.body.i.i50_crit_edge:            ; preds = %do.end56.i.i
  br label %for.body.i.i50

do.end56.i.i.for.end.i.i_crit_edge:               ; preds = %do.end56.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i.i50:                                   ; preds = %for.inc.i.i.for.body.i.i50_crit_edge, %do.end56.i.i.for.body.i.i50_crit_edge
  %ha.0215.i.i = phi ptr [ %ha.0.i.i, %for.inc.i.i.for.body.i.i50_crit_edge ], [ %ha.0213.i.i, %do.end56.i.i.for.body.i.i50_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0215.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp66.i.i = icmp eq i8 %45, 2
  br i1 %cmp66.i.i, label %land.lhs.true68.i.i, label %for.body.i.i50.for.inc.i.i_crit_edge

for.body.i.i50.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true68.i.i:                              ; preds = %for.body.i.i50
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0215.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 4
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i.i.i, label %is_valid_ether_addr.exit.i.i, label %land.lhs.true68.i.i.for.inc.i.i_crit_edge

land.lhs.true68.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

is_valid_ether_addr.exit.i.i:                     ; preds = %land.lhs.true68.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0215.i.i, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %50 to i32
  %or.i.i.i.i = or i32 %47, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge, label %if.then72.i.i

is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then72.i.i:                                    ; preds = %is_valid_ether_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr.i.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i61.i, i32 -1, i32 28
  %51 = call ptr @memcpy(ptr %ctl_src_addr.i.i, ptr %addr.i.i, i32 6)
  %spma.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 10, i32 1
  %52 = ptrtoint ptr %spma.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %spma.i.i, align 4
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true68.i.i.for.inc.i.i_crit_edge, %for.body.i.i50.for.inc.i.i_crit_edge
  %53 = ptrtoint ptr %ha.0215.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %ha.0.i.i = load volatile ptr, ptr %ha.0215.i.i, align 4
  %cmp.not.i.i51 = icmp eq ptr %ha.0.i.i, %dev_addrs.i.i
  br i1 %cmp.not.i.i51, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i50_crit_edge

for.inc.i.i.for.body.i.i50_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i50

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then72.i.i, %do.end56.i.i.for.end.i.i_crit_edge
  %call.i204.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i204.i.i, label %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i207.i.i

for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i207.i.i:                           ; preds = %for.end.i.i
  %call1.i205.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205.i.i)
  %tobool.not.i206.i.i = icmp eq i32 %call1.i205.i.i, 0
  br i1 %tobool.not.i206.i.i, label %land.lhs.true.i207.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i209.i.i

land.lhs.true.i207.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i207.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i209.i.i:                          ; preds = %land.lhs.true.i207.i.i
  %.b4.i208.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i208.i.i, label %land.lhs.true2.i209.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i210.i.i

land.lhs.true2.i209.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i209.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

if.then.i210.i.i:                                 ; preds = %land.lhs.true2.i209.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #16
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i210.i.i, %land.lhs.true2.i209.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i207.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !344
  %54 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i.i.i211.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i211.i.i to ptr
  %preempt_count.i.i.i.i212.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i212.i.i, align 4
  %sub.i.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i212.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %spma86.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 10, i32 1
  %58 = ptrtoint ptr %spma86.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %spma86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool87.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool87.not.i.i, label %if.then88.i.i, label %rcu_read_unlock.exit.i.i.if.end92.i.i_crit_edge

rcu_read_unlock.exit.i.i.if.end92.i.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.i.i

if.then88.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr89.i.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i61.i, i32 -1, i32 28
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr.i.i, align 64
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %62 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %addr_len.i.i, align 1
  %conv91.i.i = zext i8 %63 to i32
  %64 = call ptr @memcpy(ptr %ctl_src_addr89.i.i, ptr %61, i32 %conv91.i.i)
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then88.i.i, %rcu_read_unlock.exit.i.i.if.end92.i.i_crit_edge
  %call93.i.i = tail call i32 @dev_uc_add(ptr noundef %netdev, ptr noundef nonnull @fcoe_interface_setup.flogi_maddr) #16
  %65 = ptrtoint ptr %spma86.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %spma86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool95.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool95.not.i.i, label %if.end92.i.i.if.end100.i.i_crit_edge, label %if.then96.i.i

if.end92.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i.i

if.then96.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctl_src_addr97.i.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i61.i, i32 -1, i32 28
  %call99.i.i = tail call i32 @dev_uc_add(ptr noundef %netdev, ptr noundef %ctl_src_addr97.i.i) #16
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then96.i.i, %if.end92.i.i.if.end100.i.i_crit_edge
  %mode.i.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i61.i, i32 -1, i32 1
  %67 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp101.i.i = icmp eq i32 %68, 3
  br i1 %cmp101.i.i, label %if.then103.i.i, label %if.else.i.i

if.then103.i.i:                                   ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %.compoundliteral.i.i, align 1
  %arrayinit.element.i.i = getelementptr inbounds i8, ptr %.compoundliteral.i.i, i32 1
  %70 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 16, ptr %arrayinit.element.i.i, align 1
  %arrayinit.element104.i.i = getelementptr inbounds i8, ptr %.compoundliteral.i.i, i32 2
  %71 = ptrtoint ptr %arrayinit.element104.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 24, ptr %arrayinit.element104.i.i, align 1
  %arrayinit.element105.i.i = getelementptr inbounds i8, ptr %.compoundliteral.i.i, i32 3
  %72 = ptrtoint ptr %arrayinit.element105.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %arrayinit.element105.i.i, align 1
  %arrayinit.element106.i.i = getelementptr inbounds i8, ptr %.compoundliteral.i.i, i32 4
  %73 = ptrtoint ptr %arrayinit.element106.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayinit.element106.i.i, align 1
  %arrayinit.element107.i.i = getelementptr inbounds i8, ptr %.compoundliteral.i.i, i32 5
  %74 = ptrtoint ptr %arrayinit.element107.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %arrayinit.element107.i.i, align 1
  %call109.i.i = call i32 @dev_mc_add(ptr noundef %netdev, ptr noundef nonnull %.compoundliteral.i.i) #16
  %75 = ptrtoint ptr %.compoundliteral110.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %.compoundliteral110.i.i, align 1
  br label %if.end128.i.i

if.else.i.i:                                      ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %.compoundliteral119.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %.compoundliteral119.i.i, align 1
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %if.else.i.i, %if.then103.i.i
  %.compoundliteral119.sink220.i.i = phi ptr [ %.compoundliteral119.i.i, %if.else.i.i ], [ %.compoundliteral110.i.i, %if.then103.i.i ]
  %.sink.i.i = phi i8 [ 1, %if.else.i.i ], [ 5, %if.then103.i.i ]
  %.compoundliteral119.sink220.i.sroa.phi.i = phi ptr [ %.compoundliteral119.i.sroa.gep.i, %if.else.i.i ], [ %.compoundliteral110.i.sroa.gep.i, %if.then103.i.i ]
  %.compoundliteral119.sink220.i.sroa.phi76.i = phi ptr [ %.compoundliteral119.i.sroa.gep77.i, %if.else.i.i ], [ %.compoundliteral110.i.sroa.gep78.i, %if.then103.i.i ]
  %.compoundliteral119.sink220.i.sroa.phi79.i = phi ptr [ %.compoundliteral119.i.sroa.gep80.i, %if.else.i.i ], [ %.compoundliteral110.i.sroa.gep81.i, %if.then103.i.i ]
  %.compoundliteral119.sink220.i.sroa.phi82.i = phi ptr [ %.compoundliteral119.i.sroa.gep83.i, %if.else.i.i ], [ %.compoundliteral110.i.sroa.gep84.i, %if.then103.i.i ]
  %.compoundliteral119.sink220.i.sroa.phi85.i = phi ptr [ %.compoundliteral119.i.sroa.gep86.i, %if.else.i.i ], [ %.compoundliteral110.i.sroa.gep87.i, %if.then103.i.i ]
  %77 = ptrtoint ptr %.compoundliteral119.sink220.i.sroa.phi.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 16, ptr %.compoundliteral119.sink220.i.sroa.phi.i, align 1
  %78 = ptrtoint ptr %.compoundliteral119.sink220.i.sroa.phi76.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 24, ptr %.compoundliteral119.sink220.i.sroa.phi76.i, align 1
  %79 = ptrtoint ptr %.compoundliteral119.sink220.i.sroa.phi79.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %.compoundliteral119.sink220.i.sroa.phi79.i, align 1
  %80 = ptrtoint ptr %.compoundliteral119.sink220.i.sroa.phi82.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %.compoundliteral119.sink220.i.sroa.phi82.i, align 1
  %81 = ptrtoint ptr %.compoundliteral119.sink220.i.sroa.phi85.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.sink.i.i, ptr %.compoundliteral119.sink220.i.sroa.phi85.i, align 1
  %call127.i.i = call i32 @dev_mc_add(ptr noundef %netdev, ptr noundef nonnull %.compoundliteral119.sink220.i.i) #16
  %fcoe_packet_type.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 4, i32 1
  %func.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @fcoe_rcv, ptr %func.i.i, align 4
  %83 = ptrtoint ptr %fcoe_packet_type.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -30458, ptr %fcoe_packet_type.i.i, align 4
  %dev.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 5
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %netdev, ptr %dev.i.i, align 4
  call void @dev_add_pack(ptr noundef %fcoe_packet_type.i.i) #16
  %fip_packet_type.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %func133.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 5, i32 1, i32 1
  %85 = ptrtoint ptr %func133.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @fcoe_fip_recv, ptr %func133.i.i, align 4
  %86 = ptrtoint ptr %fip_packet_type.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -30444, ptr %fip_packet_type.i.i, align 4
  %dev137.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %87 = ptrtoint ptr %dev137.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %netdev, ptr %dev137.i.i, align 4
  call void @dev_add_pack(ptr noundef %fip_packet_type.i.i) #16
  %cmp139.not.i.i = icmp eq ptr %cond.i.i, %netdev
  br i1 %cmp139.not.i.i, label %if.end128.i.i.fcoe_interface_create.exit_crit_edge, label %if.then141.i.i

if.end128.i.i.fcoe_interface_create.exit_crit_edge: ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_interface_create.exit

if.then141.i.i:                                   ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %fip_vlan_packet_type.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %add.ptr.i61.i, i32 0, i32 5
  %func142.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 8, i32 1
  %88 = ptrtoint ptr %func142.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @fcoe_fip_vlan_recv, ptr %func142.i.i, align 4
  %89 = ptrtoint ptr %fip_vlan_packet_type.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -30444, ptr %fip_vlan_packet_type.i.i, align 4
  %dev146.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 8, i32 0, i32 1
  %90 = ptrtoint ptr %dev146.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %cond.i.i, ptr %dev146.i.i, align 4
  call void @dev_add_pack(ptr noundef %fip_vlan_packet_type.i.i) #16
  br label %fcoe_interface_create.exit

if.then43.i:                                      ; preds = %do.end33.i.i, %do.body20.i.i.if.then43.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral110.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral119.i.i) #16
  tail call void @fcoe_ctlr_destroy(ptr noundef %add.ptr.i.i) #16
  tail call void @fcoe_ctlr_device_delete(ptr noundef nonnull %call13.i) #16
  br i1 %tobool.not.i.i, label %if.then43.i.out_putmod.i_crit_edge, label %do.body1.i73.i

if.then43.i.out_putmod.i_crit_edge:               ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_putmod.i

do.body1.i73.i:                                   ; preds = %if.then43.i
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !327
  %pcpu_refcnt.i65.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %92 = ptrtoint ptr %pcpu_refcnt.i65.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcpu_refcnt.i65.i, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i66.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i66.i to ptr
  %cpu.i67.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu.i67.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu.i67.i, align 4
  %arrayidx.i68.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i68.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i68.i, align 4
  %add.i69.i = add i32 %100, %94
  %101 = inttoptr i32 %add.i69.i to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add13.i70.i = add i32 %103, -1
  store i32 %add13.i70.i, ptr %101, align 4
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !328
  %and.i.i.i71.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71.i)
  %tobool24.not.i72.i = icmp eq i32 %and.i.i.i71.i, 0
  br i1 %tobool24.not.i72.i, label %if.then28.i74.i, label %do.body1.i73.i.do.end30.i75.i_crit_edge, !prof !316

do.body1.i73.i.do.end30.i75.i_crit_edge:          ; preds = %do.body1.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i75.i

if.then28.i74.i:                                  ; preds = %do.body1.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i75.i

do.end30.i75.i:                                   ; preds = %if.then28.i74.i, %do.body1.i73.i.do.end30.i75.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #16, !srcloc !329
  br label %out_putmod.i

out_putmod.i:                                     ; preds = %do.end30.i75.i, %if.then43.i.out_putmod.i_crit_edge, %do.end29.i, %do.body16.i.out_putmod.i_crit_edge
  %fcoe.0.i = phi ptr [ inttoptr (i32 -12 to ptr), %do.end29.i ], [ inttoptr (i32 -12 to ptr), %do.body16.i.out_putmod.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then43.i.out_putmod.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %do.end30.i75.i ]
  tail call void @module_put(ptr noundef null) #16
  br label %if.then3

fcoe_interface_create.exit:                       ; preds = %if.then141.i.i, %if.end128.i.i.fcoe_interface_create.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral110.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral119.i.i) #16
  %cmp.i = icmp ugt ptr %add.ptr.i61.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fcoe_interface_create.exit.if.then3_crit_edge, label %if.end5

fcoe_interface_create.exit.if.then3_crit_edge:    ; preds = %fcoe_interface_create.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %fcoe_interface_create.exit.if.then3_crit_edge, %out_putmod.i, %do.end.i, %do.body.i.if.then3_crit_edge
  %fcoe.1.i60 = phi ptr [ %add.ptr.i61.i, %fcoe_interface_create.exit.if.then3_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.body.i.if.then3_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.end.i ], [ %fcoe.0.i, %out_putmod.i ]
  %105 = ptrtoint ptr %fcoe.1.i60 to i32
  br label %out_nodev

if.end5:                                          ; preds = %fcoe_interface_create.exit
  %106 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cdev.i, align 4
  %dev = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %107, i32 0, i32 1
  %call6 = call fastcc ptr @fcoe_if_create(ptr noundef %add.ptr.i61.i, ptr noundef %dev, i32 noundef 0)
  %cmp.i52 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %netdev) #19
  %removed = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1, i32 12, i32 10
  %108 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %removed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool10.not = icmp eq i8 %109, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fcoe_interface_remove(ptr noundef %add.ptr.i61.i)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end.if.end12_crit_edge
  call void @rtnl_unlock() #16
  call fastcc void @fcoe_interface_cleanup(ptr noundef %add.ptr.i61.i)
  call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  call void @fcoe_ctlr_device_delete(ptr noundef %107) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %lp = getelementptr %struct.fcoe_ctlr_device, ptr %call13.i, i32 1, i32 1
  %110 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call6, ptr %lp, align 4
  %111 = ptrtoint ptr %realdev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %realdev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app.i) #16
  %113 = ptrtoint ptr %app.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 35078, ptr %app.i, align 4
  %tobool.not.i53 = icmp eq ptr %112, null
  br i1 %tobool.not.i53, label %if.end13.fcoe_dcb_create.exit_crit_edge, label %land.lhs.true.i

if.end13.fcoe_dcb_create.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_dcb_create.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %dcbnl_ops.i = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 139
  %114 = ptrtoint ptr %dcbnl_ops.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dcbnl_ops.i, align 16
  %tobool1.not.i = icmp eq ptr %115, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.fcoe_dcb_create.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.fcoe_dcb_create.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_dcb_create.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %getdcbx.i = getelementptr inbounds %struct.dcbnl_rtnl_ops, ptr %115, i32 0, i32 41
  %116 = ptrtoint ptr %getdcbx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %getdcbx.i, align 4
  %tobool4.not.i = icmp eq ptr %117, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.fcoe_dcb_create.exit_crit_edge, label %if.then.i

land.lhs.true2.i.fcoe_dcb_create.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_dcb_create.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  %call.i54 = call zeroext i8 %117(ptr noundef nonnull %112) #16
  %118 = and i8 %call.i54, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool7.not.i = icmp eq i8 %118, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %119 = ptrtoint ptr %app.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %app.i, align 4
  %call9.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef nonnull %112, ptr noundef nonnull %app.i) #16
  %protocol.i = getelementptr inbounds %struct.dcb_app, ptr %app.i, i32 0, i32 2
  %120 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -30444, ptr %protocol.i, align 2
  %call10.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef nonnull %112, ptr noundef nonnull %app.i) #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %121 = ptrtoint ptr %app.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %app.i, align 4
  %call12.i = call zeroext i8 @dcb_getapp(ptr noundef nonnull %112, ptr noundef nonnull %app.i) #16
  %protocol13.i = getelementptr inbounds %struct.dcb_app, ptr %app.i, i32 0, i32 2
  %122 = ptrtoint ptr %protocol13.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -30444, ptr %protocol13.i, align 2
  %call14.i = call zeroext i8 @dcb_getapp(ptr noundef nonnull %112, ptr noundef nonnull %app.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then8.i
  %fup.0.i = phi i8 [ %call10.i, %if.then8.i ], [ %call14.i, %if.else.i ]
  %up.0.i = phi i8 [ %call9.i, %if.then8.i ], [ %call12.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up.0.i)
  %iszero.i = icmp eq i8 %up.0.i, 0
  %123 = call i8 @llvm.cttz.i8(i8 %up.0.i, i1 true) #16, !range !330
  %narrow.i = select i1 %iszero.i, i8 0, i8 %123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fup.0.i)
  %iszero21.i = icmp eq i8 %fup.0.i, 0
  %124 = call i8 @llvm.cttz.i8(i8 %fup.0.i, i1 true) #16, !range !330
  %cond31.i = select i1 %iszero21.i, i8 %narrow.i, i8 %124
  br label %fcoe_dcb_create.exit

fcoe_dcb_create.exit:                             ; preds = %if.end.i, %land.lhs.true2.i.fcoe_dcb_create.exit_crit_edge, %land.lhs.true.i.fcoe_dcb_create.exit_crit_edge, %if.end13.fcoe_dcb_create.exit_crit_edge
  %ctlr_prio.0.i = phi i8 [ %cond31.i, %if.end.i ], [ 0, %land.lhs.true2.i.fcoe_dcb_create.exit_crit_edge ], [ 0, %land.lhs.true.i.fcoe_dcb_create.exit_crit_edge ], [ 0, %if.end13.fcoe_dcb_create.exit_crit_edge ]
  %fcoe_prio.0.i = phi i8 [ %narrow.i, %if.end.i ], [ 6, %land.lhs.true2.i.fcoe_dcb_create.exit_crit_edge ], [ 6, %land.lhs.true.i.fcoe_dcb_create.exit_crit_edge ], [ 6, %if.end13.fcoe_dcb_create.exit_crit_edge ]
  %priority.i = getelementptr inbounds %struct.fcoe_interface, ptr %add.ptr.i61.i, i32 0, i32 8
  %125 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %fcoe_prio.0.i, ptr %priority.i, align 1
  %priority35.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i61.i, i32 -1, i32 26
  %126 = ptrtoint ptr %priority35.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %ctlr_prio.0.i, ptr %priority35.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %call6, i32 0, i32 14
  %128 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %boot_time, align 4
  %call14 = call i32 @fc_fabric_login(ptr noundef %call6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %link_state)
  %cmp = icmp eq i32 %link_state, 1
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %107, i32 0, i32 11
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %fcoe_dcb_create.exit
  %129 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %enabled, align 8
  %add.ptr.i.i.i = getelementptr %struct.fc_lport, ptr %call6, i32 1
  %130 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.fcoe_interface, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev.i.i, align 4
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 50
  %134 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %operstate.i.i, align 8
  %136 = zext i8 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %135, label %if.then15.out_nodev_crit_edge [
    i8 6, label %if.then15.if.then21_crit_edge
    i8 0, label %if.then15.if.then21_crit_edge67
  ]

if.then15.if.then21_crit_edge67:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then15.if.then21_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then15.out_nodev_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_nodev

if.else:                                          ; preds = %fcoe_dcb_create.exit
  call void @__sanitizer_cov_trace_pc() #18
  %137 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %enabled, align 8
  br label %out_nodev

if.then21:                                        ; preds = %if.then15.if.then21_crit_edge, %if.then15.if.then21_crit_edge67
  call void @rtnl_unlock() #16
  call void @fcoe_ctlr_link_up(ptr noundef %add.ptr.i.i) #16
  call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  br label %cleanup

out_nodev:                                        ; preds = %if.else, %if.then15.out_nodev_crit_edge, %if.then3, %fcoe_hostlist_lookup.exit.out_nodev_crit_edge
  %rc.0 = phi i32 [ %105, %if.then3 ], [ 0, %if.then15.out_nodev_crit_edge ], [ -17, %fcoe_hostlist_lookup.exit.out_nodev_crit_edge ], [ 0, %if.else ]
  call void @rtnl_unlock() #16
  call void @mutex_unlock(ptr noundef nonnull @fcoe_config_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out_nodev, %if.then21, %if.end12
  %retval.0 = phi i32 [ %rc.0, %out_nodev ], [ -5, %if.end12 ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fcoe_ctlr_device_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_fip_send(ptr nocapture noundef readonly %fip, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30444, i16 %3)
  %cmp = icmp eq i16 %3, -30444
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %fip_op = getelementptr inbounds %struct.fip_frame, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fip_op to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %fip_op, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp4 = icmp eq i16 %5, 4
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %realdev = getelementptr %struct.fcoe_ctlr, ptr %fip, i32 1, i32 3
  %6 = ptrtoint ptr %realdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %realdev, align 4
  %netdev = getelementptr %struct.fcoe_ctlr, ptr %fip, i32 1, i32 2
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %cmp7.not = icmp eq ptr %7, %9
  br i1 %cmp7.not, label %land.lhs.true6.if.else_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %netdev10 = getelementptr %struct.fcoe_ctlr, ptr %fip, i32 1, i32 2
  %10 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true6.if.end_crit_edge
  %.sink = phi ptr [ %11, %if.else ], [ %7, %land.lhs.true6.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink, ptr %12, align 8
  %lp = getelementptr inbounds %struct.fcoe_ctlr, ptr %fip, i32 0, i32 2
  %14 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lp, align 4
  %qlen.i = getelementptr %struct.fc_lport, ptr %15, i32 1, i32 3
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.if.end4.sink.split.i_crit_edge

if.end.if.end4.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.sink.split.i

if.else.i:                                        ; preds = %if.end
  %call.i = tail call i32 @fcoe_start_io(ptr noundef %skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i.fcoe_port_send.exit_crit_edge, label %if.else.i.if.end4.sink.split.i_crit_edge

if.else.i.if.end4.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.sink.split.i

if.else.i.fcoe_port_send.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_port_send.exit

if.end4.sink.split.i:                             ; preds = %if.else.i.if.end4.sink.split.i_crit_edge, %if.end.if.end4.sink.split.i_crit_edge
  %lport3.i = getelementptr %struct.fc_lport, ptr %15, i32 1, i32 1
  %18 = ptrtoint ptr %lport3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lport3.i, align 4
  tail call void @fcoe_check_wait_queue(ptr noundef %19, ptr noundef %skb) #16
  br label %fcoe_port_send.exit

fcoe_port_send.exit:                              ; preds = %if.end4.sink.split.i, %if.else.i.fcoe_port_send.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fcoe_get_src_mac(ptr noundef readnone %lport) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  ret ptr %data_src_addr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_get_lesb(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_ctlr_mode(ptr noundef %ctlr_dev) #4 align 64 {
entry:
  %.compoundliteral = alloca [6 x i8], align 1
  %.compoundliteral10 = alloca [6 x i8], align 1
  %.compoundliteral20 = alloca [6 x i8], align 1
  %.compoundliteral33 = alloca [6 x i8], align 1
  %.compoundliteral43 = alloca [6 x i8], align 1
  %.compoundliteral53 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fcoe_ctlr_device, ptr %ctlr_dev, i32 1
  %mode = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr_dev, i32 0, i32 10
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mode2 = getelementptr inbounds %struct.fcoe_ctlr, ptr %add.ptr.i, i32 0, i32 1
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp3.not = icmp eq i32 %3, 3
  br i1 %cmp3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr %struct.fcoe_ctlr_device, ptr %ctlr_dev, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %6 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %.compoundliteral, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %.compoundliteral, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %arrayinit.element, align 1
  %arrayinit.element4 = getelementptr inbounds i8, ptr %.compoundliteral, i32 2
  %8 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %arrayinit.element4, align 1
  %arrayinit.element5 = getelementptr inbounds i8, ptr %.compoundliteral, i32 3
  %9 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayinit.element5, align 1
  %arrayinit.element6 = getelementptr inbounds i8, ptr %.compoundliteral, i32 4
  %10 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayinit.element6, align 1
  %arrayinit.element7 = getelementptr inbounds i8, ptr %.compoundliteral, i32 5
  %11 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayinit.element7, align 1
  %call8 = call i32 @dev_mc_del(ptr noundef %5, ptr noundef nonnull %.compoundliteral) #16
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  %14 = ptrtoint ptr %.compoundliteral10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %.compoundliteral10, align 1
  %arrayinit.element12 = getelementptr inbounds i8, ptr %.compoundliteral10, i32 1
  %15 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %arrayinit.element12, align 1
  %arrayinit.element13 = getelementptr inbounds i8, ptr %.compoundliteral10, i32 2
  %16 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 24, ptr %arrayinit.element13, align 1
  %arrayinit.element14 = getelementptr inbounds i8, ptr %.compoundliteral10, i32 3
  %17 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayinit.element14, align 1
  %arrayinit.element15 = getelementptr inbounds i8, ptr %.compoundliteral10, i32 4
  %18 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayinit.element15, align 1
  %arrayinit.element16 = getelementptr inbounds i8, ptr %.compoundliteral10, i32 5
  %19 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %arrayinit.element16, align 1
  %call18 = call i32 @dev_mc_add(ptr noundef %13, ptr noundef nonnull %.compoundliteral10) #16
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %22 = ptrtoint ptr %.compoundliteral20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %.compoundliteral20, align 1
  %arrayinit.element22 = getelementptr inbounds i8, ptr %.compoundliteral20, i32 1
  %23 = ptrtoint ptr %arrayinit.element22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %arrayinit.element22, align 1
  %arrayinit.element23 = getelementptr inbounds i8, ptr %.compoundliteral20, i32 2
  %24 = ptrtoint ptr %arrayinit.element23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 24, ptr %arrayinit.element23, align 1
  %arrayinit.element24 = getelementptr inbounds i8, ptr %.compoundliteral20, i32 3
  %25 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayinit.element24, align 1
  %arrayinit.element25 = getelementptr inbounds i8, ptr %.compoundliteral20, i32 4
  %26 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayinit.element25, align 1
  %arrayinit.element26 = getelementptr inbounds i8, ptr %.compoundliteral20, i32 5
  %27 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %arrayinit.element26, align 1
  %call28 = call i32 @dev_mc_add(ptr noundef %21, ptr noundef nonnull %.compoundliteral20) #16
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %mode29 = getelementptr inbounds %struct.fcoe_ctlr, ptr %add.ptr.i, i32 0, i32 1
  %28 = ptrtoint ptr %mode29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp30.not = icmp eq i32 %29, 2
  br i1 %cmp30.not, label %if.else.if.end62_crit_edge, label %if.then31

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %netdev32 = getelementptr %struct.fcoe_ctlr_device, ptr %ctlr_dev, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 7
  %30 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev32, align 4
  %32 = ptrtoint ptr %.compoundliteral33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %.compoundliteral33, align 1
  %arrayinit.element35 = getelementptr inbounds i8, ptr %.compoundliteral33, i32 1
  %33 = ptrtoint ptr %arrayinit.element35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %arrayinit.element35, align 1
  %arrayinit.element36 = getelementptr inbounds i8, ptr %.compoundliteral33, i32 2
  %34 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 24, ptr %arrayinit.element36, align 1
  %arrayinit.element37 = getelementptr inbounds i8, ptr %.compoundliteral33, i32 3
  %35 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayinit.element37, align 1
  %arrayinit.element38 = getelementptr inbounds i8, ptr %.compoundliteral33, i32 4
  %36 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayinit.element38, align 1
  %arrayinit.element39 = getelementptr inbounds i8, ptr %.compoundliteral33, i32 5
  %37 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %arrayinit.element39, align 1
  %call41 = call i32 @dev_mc_del(ptr noundef %31, ptr noundef nonnull %.compoundliteral33) #16
  %38 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev32, align 4
  %40 = ptrtoint ptr %.compoundliteral43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %.compoundliteral43, align 1
  %arrayinit.element45 = getelementptr inbounds i8, ptr %.compoundliteral43, i32 1
  %41 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %arrayinit.element45, align 1
  %arrayinit.element46 = getelementptr inbounds i8, ptr %.compoundliteral43, i32 2
  %42 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 24, ptr %arrayinit.element46, align 1
  %arrayinit.element47 = getelementptr inbounds i8, ptr %.compoundliteral43, i32 3
  %43 = ptrtoint ptr %arrayinit.element47 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayinit.element47, align 1
  %arrayinit.element48 = getelementptr inbounds i8, ptr %.compoundliteral43, i32 4
  %44 = ptrtoint ptr %arrayinit.element48 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayinit.element48, align 1
  %arrayinit.element49 = getelementptr inbounds i8, ptr %.compoundliteral43, i32 5
  %45 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %arrayinit.element49, align 1
  %call51 = call i32 @dev_mc_del(ptr noundef %39, ptr noundef nonnull %.compoundliteral43) #16
  %46 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev32, align 4
  %48 = ptrtoint ptr %.compoundliteral53 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %.compoundliteral53, align 1
  %arrayinit.element55 = getelementptr inbounds i8, ptr %.compoundliteral53, i32 1
  %49 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %arrayinit.element55, align 1
  %arrayinit.element56 = getelementptr inbounds i8, ptr %.compoundliteral53, i32 2
  %50 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 24, ptr %arrayinit.element56, align 1
  %arrayinit.element57 = getelementptr inbounds i8, ptr %.compoundliteral53, i32 3
  %51 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayinit.element57, align 1
  %arrayinit.element58 = getelementptr inbounds i8, ptr %.compoundliteral53, i32 4
  %52 = ptrtoint ptr %arrayinit.element58 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayinit.element58, align 1
  %arrayinit.element59 = getelementptr inbounds i8, ptr %.compoundliteral53, i32 5
  %53 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %arrayinit.element59, align 1
  %call61 = call i32 @dev_mc_add(ptr noundef %47, ptr noundef nonnull %.compoundliteral53) #16
  br label %if.end62

if.end62:                                         ; preds = %if.then31, %if.else.if.end62_crit_edge, %if.then
  call void @fcoe_ctlr_set_fip_mode(ptr noundef %ctlr_dev) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_ctlr_enabled(ptr nocapture noundef readonly %cdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr %struct.fcoe_ctlr_device, ptr %cdev, i32 1, i32 1
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.fcoe_interface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 4
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %cdev, i32 0, i32 11
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @fcoe_enable(ptr noundef %5)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 @fcoe_disable(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_fcf_get_selected(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_fcf_get_vlan_id(ptr nocapture noundef %fcf_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf_dev, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %netdev = getelementptr i8, ptr %1, i32 1564
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %call2 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %3) #16
  %vlan_id = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf_dev, i32 0, i32 16
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call2, ptr %vlan_id, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_set_fip_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_rcv(ptr noundef %skb, ptr noundef %netdev, ptr nocapture noundef readonly %ptype, ptr nocapture noundef readnone %olddev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ptype, i32 -452
  %lp = getelementptr i8, ptr %ptype, i32 -444
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end20, !prof !316

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @fcoe_debug_logging, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.err2_crit_edge, label %do.end, !prof !315

do.body.err2_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %netdev) #19
  br label %err2

if.end20:                                         ; preds = %entry
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool21.not = icmp eq i8 %4, 0
  br i1 %tobool21.not, label %if.end20.err2_crit_edge, label %do.body24

if.end20.err2_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

do.body24:                                        ; preds = %if.end20
  %5 = load i32, ptr @fcoe_debug_logging, align 4
  %and25 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end51_crit_edge, label %do.end37, !prof !315

do.body24.do.end51_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end51

do.end37:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len, align 8
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %21 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %tobool43.not = icmp eq ptr %23, null
  %spec.select = select i1 %tobool43.not, ptr @.str.10, ptr %23
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %netdev, i32 noundef %7, i32 noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %20, ptr noundef nonnull %spec.select) #19
  br label %do.end51

do.end51:                                         ; preds = %do.end37, %do.body24.do.end51_crit_edge
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %do.end51
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread264, !prof !316

skb_share_check.exit.thread264:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %if.end54

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

skb_share_check.exit:                             ; preds = %do.end51
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end54_crit_edge

skb_share_check.exit.if.end54_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end54:                                         ; preds = %skb_share_check.exit.if.end54_crit_edge, %skb_share_check.exit.thread264
  %skb.addr.0.i267 = phi ptr [ %call7.i, %skb_share_check.exit.thread264 ], [ %skb, %skb_share_check.exit.if.end54_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %conv.i.i
  %30 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp.i = icmp eq i32 %31, 4
  br i1 %cmp.i, label %land.lhs.true, label %if.end54.if.end86_crit_edge

if.end54.if.end86_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end54
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %dest_addr = getelementptr i8, ptr %ptype, i32 -177
  %32 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %h_source, align 4
  %34 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dest_addr, align 4
  %xor.i = xor i32 %35, %33
  %add.ptr.i = getelementptr i8, ptr %h_source, i32 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %ptype, i32 -173
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %39, %37
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i233 = icmp eq i32 %or.i, 0
  br i1 %cmp.i233, label %land.lhs.true.if.end86_crit_edge, label %do.body61

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

do.body61:                                        ; preds = %land.lhs.true
  %40 = load i32, ptr @fcoe_debug_logging, align 4
  %and62 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.do.body166_crit_edge, label %do.end74, !prof !315

do.body61.do.body166_crit_edge:                   ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body166

do.end74:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #18
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %netdev, ptr noundef %h_source) #19
  br label %do.body166

if.end86:                                         ; preds = %land.lhs.true.if.end86_crit_edge, %if.end54.if.end86_crit_edge
  %len87 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 6
  %41 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %42)
  %cmp88 = icmp ult i32 %42, 46
  br i1 %cmp88, label %if.end86.do.body166_crit_edge, label %lor.rhs, !prof !316

if.end86.do.body166_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body166

lor.rhs:                                          ; preds = %if.end86
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %sub.i.i)
  %cmp.i234 = icmp ugt i32 %sub.i.i, 37
  br i1 %cmp.i234, label %lor.rhs.if.end99_crit_edge, label %pskb_may_pull.exit, !prof !315

lor.rhs.if.end99_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

pskb_may_pull.exit:                               ; preds = %lor.rhs
  %sub.i235 = sub nuw nsw i32 38, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i267, i32 noundef %sub.i235) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body166_crit_edge, label %pskb_may_pull.exit.if.end99_crit_edge, !prof !316

pskb_may_pull.exit.if.end99_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

pskb_may_pull.exit.do.body166_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body166

if.end99:                                         ; preds = %pskb_may_pull.exit.if.end99_crit_edge, %lor.rhs.if.end99_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i237 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 15, i32 0, i32 19
  %add.i238 = add i16 %conv.i.i237, 14
  %49 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %add.i238, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %add.i238 to i32
  %add.ptr.i239 = getelementptr i8, ptr %48, i32 %conv.i
  %arrayidx = getelementptr [6 x i8], ptr %add.ptr.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %conv.i240 = zext i8 %51 to i32
  %shl.i = shl nuw nsw i32 %conv.i240, 16
  %arrayidx1.i = getelementptr i8, ptr %arrayidx, i32 1
  %52 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %53 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i241 = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %arrayidx, i32 2
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %55 to i32
  %or6.i = or i32 %or.i241, %conv5.i
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %add.ptr.i239, i32 0, i32 1
  %56 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fh_d_id, align 1
  %conv.i242 = zext i8 %57 to i32
  %shl.i243 = shl nuw nsw i32 %conv.i242, 16
  %arrayidx1.i244 = getelementptr i8, ptr %fh_d_id, i32 1
  %58 = ptrtoint ptr %arrayidx1.i244 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx1.i244, align 1
  %conv2.i245 = zext i8 %59 to i32
  %shl3.i246 = shl nuw nsw i32 %conv2.i245, 8
  %or.i247 = or i32 %shl3.i246, %shl.i243
  %arrayidx4.i248 = getelementptr i8, ptr %fh_d_id, i32 2
  %60 = ptrtoint ptr %arrayidx4.i248 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx4.i248, align 1
  %conv5.i249 = zext i8 %61 to i32
  %or6.i250 = or i32 %or.i247, %conv5.i249
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i, i32 %or6.i250)
  %cmp104.not = icmp eq i32 %or6.i, %or6.i250
  br i1 %cmp104.not, label %if.end131, label %do.body106

do.body106:                                       ; preds = %if.end99
  %62 = load i32, ptr @fcoe_debug_logging, align 4
  %and107 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.body166_crit_edge, label %do.end119, !prof !315

do.body106.do.body166_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body166

do.end119:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #18
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %netdev, ptr noundef %add.ptr.i.i) #19
  br label %do.body166

if.end131:                                        ; preds = %if.end99
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i267, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %1, ptr %cb.i, align 4
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %add.ptr.i239, i32 0, i32 5
  %64 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fh_f_ctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %tobool136.not = icmp sgt i8 %65, -1
  br i1 %tobool136.not, label %if.else, label %if.then137

if.then137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #18
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %add.ptr.i239, i32 0, i32 9
  %66 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %fh_ox_id, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @fc_cpu_mask to i32))
  %68 = load i16, ptr @fc_cpu_mask, align 2
  %and139230 = and i16 %68, %67
  %and139 = zext i16 %and139230 to i32
  br label %if.end151

if.else:                                          ; preds = %if.end131
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %add.ptr.i239, i32 0, i32 10
  %69 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %fh_rx_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %cmp141 = icmp eq i16 %70, -1
  br i1 %cmp141, label %if.then143, label %if.else145

if.then143:                                       ; preds = %if.else
  %71 = load i32, ptr @fcoe_select_cpu.selected_cpu, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %71, ptr noundef nonnull @__cpu_online_mask) #20
  store i32 %call.i, ptr @fcoe_select_cpu.selected_cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %72 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %72)
  %cmp.not.i = icmp ult i32 %call.i, %72
  br i1 %cmp.not.i, label %if.then143.fcoe_select_cpu.exit_crit_edge, label %if.then.i

if.then143.fcoe_select_cpu.exit_crit_edge:        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  br label %fcoe_select_cpu.exit

if.then.i:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %72) #16
  store i32 %call.i.i, ptr @fcoe_select_cpu.selected_cpu, align 4
  br label %fcoe_select_cpu.exit

fcoe_select_cpu.exit:                             ; preds = %if.then.i, %if.then143.fcoe_select_cpu.exit_crit_edge
  %73 = load i32, ptr @fcoe_select_cpu.selected_cpu, align 4
  br label %if.end151

if.else145:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @fc_cpu_mask to i32))
  %74 = load i16, ptr @fc_cpu_mask, align 2
  %and149229 = and i16 %74, %70
  %and149 = zext i16 %and149229 to i32
  br label %if.end151

if.end151:                                        ; preds = %if.else145, %fcoe_select_cpu.exit, %if.then137
  %cpu.0 = phi i32 [ %and139, %if.then137 ], [ %73, %fcoe_select_cpu.exit ], [ %and149, %if.else145 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %75 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %75)
  %cmp152.not = icmp ult i32 %cpu.0, %75
  br i1 %cmp152.not, label %do.body156, label %if.end151.do.body166_crit_edge

if.end151.do.body166_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body166

do.body156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx161 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0
  %76 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx161, align 4
  %add = add i32 %77, ptrtoint (ptr @fcoe_percpu to i32)
  %78 = inttoptr i32 %add to ptr
  %fcoe_rx_list = getelementptr inbounds %struct.fcoe_percpu_s, ptr %78, i32 0, i32 2
  %lock = getelementptr inbounds %struct.fcoe_percpu_s, ptr %78, i32 0, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %prev.i.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %78, i32 0, i32 2, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %skb.addr.0.i267 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %fcoe_rx_list, ptr %skb.addr.0.i267, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.addr.0.i267, i32 0, i32 1
  %82 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.addr.0.i267, ptr %prev.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %skb.addr.0.i267, ptr %80, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %78, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %work = getelementptr inbounds %struct.fcoe_percpu_s, ptr %78, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %86 = load ptr, ptr @system_wq, align 4
  %call.i261 = tail call zeroext i1 @queue_work_on(i32 noundef %cpu.0, ptr noundef %86, ptr noundef %work) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

do.body166:                                       ; preds = %if.end151.do.body166_crit_edge, %do.end119, %do.body106.do.body166_crit_edge, %pskb_may_pull.exit.do.body166_crit_edge, %if.end86.do.body166_crit_edge, %do.end74, %do.body61.do.body166_crit_edge
  %stats = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stats, align 8
  %89 = ptrtoint ptr %88 to i32
  %90 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %93, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !345
  %94 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i to ptr
  %cpu178 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu178 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu178, align 4
  %arrayidx179 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx179, align 4
  %add180 = add i32 %99, %89
  %100 = inttoptr i32 %add180 to ptr
  %ErrorFrames = getelementptr inbounds %struct.fc_stats, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %ErrorFrames to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ErrorFrames, align 8
  %inc = add i64 %102, 1
  store i64 %inc, ptr %ErrorFrames, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !346
  %103 = tail call i32 @llvm.read_register.i32(metadata !305) #16
  %and.i.i.i231 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i231 to ptr
  %preempt_count.i.i232 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i232 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i232, align 4
  %sub.i = add i32 %106, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i232, align 4
  br label %err2

err2:                                             ; preds = %do.body166, %if.end20.err2_crit_edge, %do.end, %do.body.err2_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %do.end ], [ %skb, %do.body.err2_crit_edge ], [ %skb.addr.0.i267, %do.body166 ], [ %skb, %if.end20.err2_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %err2, %do.body156, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ 1, %err2 ], [ 0, %do.body156 ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %skb_share_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_fip_recv(ptr noundef %skb, ptr nocapture noundef readnone %netdev, ptr noundef %ptype, ptr nocapture noundef readnone %orig_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ptype, i32 -492
  tail call void @fcoe_ctlr_recv(ptr noundef %add.ptr1, ptr noundef %skb) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_fip_vlan_recv(ptr noundef %skb, ptr nocapture noundef readnone %netdev, ptr noundef %ptype, ptr nocapture noundef readnone %orig_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ptype, i32 -532
  tail call void @fcoe_ctlr_recv(ptr noundef %add.ptr1, ptr noundef %skb) #16
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !195, !197, !198, !199, !200, !202, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !242, !243, !244, !246, !248, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !292, !294, !295, !297, !298, !299, !301, !302, !303}
!llvm.named.register.sp = !{!305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__UNIQUE_ID_author377, !1, !"__UNIQUE_ID_author377", i1 false, i1 false}
!1 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_description378, !3, !"__UNIQUE_ID_description378", i1 false, i1 false}
!3 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_file379, !5, !"__UNIQUE_ID_file379", i1 false, i1 false}
!5 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 42, i32 1}
!6 = !{ptr @__UNIQUE_ID_license380, !5, !"__UNIQUE_ID_license380", i1 false, i1 false}
!7 = !{ptr @__param_ddp_min, !8, !"__param_ddp_min", i1 false, i1 false}
!8 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 46, i32 1}
!9 = !{ptr @__UNIQUE_ID_ddp_mintype381, !8, !"__UNIQUE_ID_ddp_mintype381", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_ddp_min382, !11, !"__UNIQUE_ID_ddp_min382", i1 false, i1 false}
!11 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 47, i32 1}
!12 = !{ptr @__param_debug_logging, !13, !"__param_debug_logging", i1 false, i1 false}
!13 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 51, i32 1}
!14 = !{ptr @__UNIQUE_ID_debug_loggingtype383, !13, !"__UNIQUE_ID_debug_loggingtype383", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_debug_logging384, !16, !"__UNIQUE_ID_debug_logging384", i1 false, i1 false}
!16 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 52, i32 1}
!17 = !{ptr @__param_e_d_tov, !18, !"__param_e_d_tov", i1 false, i1 false}
!18 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 55, i32 1}
!19 = !{ptr @__UNIQUE_ID_e_d_tovtype385, !18, !"__UNIQUE_ID_e_d_tovtype385", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_e_d_tov386, !21, !"__UNIQUE_ID_e_d_tov386", i1 false, i1 false}
!21 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 56, i32 1}
!22 = !{ptr @__param_r_a_tov, !23, !"__param_r_a_tov", i1 false, i1 false}
!23 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 59, i32 1}
!24 = !{ptr @__UNIQUE_ID_r_a_tovtype387, !23, !"__UNIQUE_ID_r_a_tovtype387", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_r_a_tov388, !26, !"__UNIQUE_ID_r_a_tov388", i1 false, i1 false}
!26 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 60, i32 1}
!27 = !{ptr @__initcall__kmod_fcoe__392_2508_fcoe_init6, !28, !"__initcall__kmod_fcoe__392_2508_fcoe_init6", i1 false, i1 false}
!28 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2508, i32 1}
!29 = !{ptr @__exitcall_fcoe_exit, !30, !"__exitcall_fcoe_exit", i1 false, i1 false}
!30 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2557, i32 1}
!31 = !{ptr @fcoe_debug_logging, !32, !"fcoe_debug_logging", i1 false, i1 false}
!32 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 50, i32 14}
!33 = !{ptr @fcoe_wq, !34, !"fcoe_wq", i1 false, i1 false}
!34 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 64, i32 33}
!35 = !{ptr @__pcpu_unique_fcoe_percpu, !36, !"__pcpu_unique_fcoe_percpu", i1 false, i1 false}
!36 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 69, i32 8}
!37 = !{ptr @fcoe_percpu, !36, !"fcoe_percpu", i1 false, i1 false}
!38 = !{ptr @fcoe_nport_scsi_transport, !39, !"fcoe_nport_scsi_transport", i1 false, i1 false}
!39 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 137, i32 40}
!40 = !{ptr @fcoe_vport_scsi_transport, !41, !"fcoe_vport_scsi_transport", i1 false, i1 false}
!41 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 138, i32 40}
!42 = !{ptr @__param_str_ddp_min, !8, !"__param_str_ddp_min", i1 false, i1 false}
!43 = !{ptr @fcoe_ddp_min, !44, !"fcoe_ddp_min", i1 false, i1 false}
!44 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 45, i32 21}
!45 = !{ptr @__param_str_debug_logging, !13, !"__param_str_debug_logging", i1 false, i1 false}
!46 = !{ptr @__param_str_e_d_tov, !18, !"__param_str_e_d_tov", i1 false, i1 false}
!47 = !{ptr @fcoe_e_d_tov, !48, !"fcoe_e_d_tov", i1 false, i1 false}
!48 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 54, i32 21}
!49 = !{ptr @__param_str_r_a_tov, !23, !"__param_str_r_a_tov", i1 false, i1 false}
!50 = !{ptr @fcoe_r_a_tov, !51, !"fcoe_r_a_tov", i1 false, i1 false}
!51 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 58, i32 21}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2472, i32 28}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2479, i32 3}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fcoe_init._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @fcoe_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @fcoe_init.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2488, i32 3}
!62 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.5, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1667, i32 3}
!65 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @fcoe_recv_frame._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @fcoe_recv_frame._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1672, i32 2}
!70 = !{ptr @fcoe_recv_frame._entry.7, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @fcoe_recv_frame._entry_ptr.9, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1690, i32 4}
!75 = !{ptr @fcoe_recv_frame._entry.11, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @fcoe_recv_frame._entry_ptr.13, !74, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1632, i32 3}
!81 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fcoe_filter_frames._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @fcoe_filter_frames._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1645, i32 3}
!86 = !{ptr @fcoe_filter_frames._entry.17, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fcoe_filter_frames._entry_ptr.19, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!90 = !{ptr @skb_queue_head_init.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!92 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dcb_notifier, !94, !"dcb_notifier", i1 false, i1 false}
!94 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 133, i32 30}
!95 = !{ptr @fcoe_notifier, !96, !"fcoe_notifier", i1 false, i1 false}
!96 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 128, i32 30}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1899, i32 3}
!99 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @fcoe_device_notification._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @fcoe_device_notification._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1910, i32 4}
!104 = !{ptr @fcoe_device_notification._entry.24, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @fcoe_device_notification._entry_ptr.26, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1919, i32 4}
!108 = !{ptr @fcoe_device_notification._entry.27, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @fcoe_device_notification._entry_ptr.29, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1006, i32 2}
!112 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fcoe_if_destroy._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fcoe_if_destroy._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @fcoe_interface_remove.flogi_maddr, !116, !"flogi_maddr", i1 false, i1 false}
!116 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 444, i32 18}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 473, i32 4}
!119 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @fcoe_interface_remove._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @fcoe_interface_remove._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 662, i32 3}
!124 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @fcoe_netdev_features_change._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @fcoe_netdev_features_change._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 670, i32 3}
!129 = !{ptr @fcoe_netdev_features_change._entry.36, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @fcoe_netdev_features_change._entry_ptr.38, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 680, i32 3}
!133 = !{ptr @fcoe_netdev_features_change._entry.39, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @fcoe_netdev_features_change._entry_ptr.41, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1264, i32 2}
!137 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @fcoe_if_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @fcoe_if_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @fcoe_nport_fc_functions, !141, !"fcoe_nport_fc_functions", i1 false, i1 false}
!141 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 172, i32 36}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2786, i32 4}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2786, i32 38}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2666, i32 3}
!148 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @fcoe_vport_create._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @fcoe_vport_create._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2679, i32 3}
!153 = !{ptr @fcoe_vport_create._entry.49, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @fcoe_vport_create._entry_ptr.51, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1136, i32 2}
!157 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @fcoe_if_create._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @fcoe_if_create._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.55, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1144, i32 3}
!162 = !{ptr @fcoe_if_create._entry.54, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @fcoe_if_create._entry_ptr.56, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @fcoe_if_create.__key, !165, !"__key", i1 false, i1 false}
!165 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1154, i32 2}
!166 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1165, i32 3}
!169 = !{ptr @fcoe_if_create._entry.58, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @fcoe_if_create._entry_ptr.60, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1171, i32 3}
!173 = !{ptr @fcoe_if_create._entry.61, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @fcoe_if_create._entry_ptr.63, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1181, i32 3}
!177 = !{ptr @fcoe_if_create._entry.64, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @fcoe_if_create._entry_ptr.66, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1189, i32 3}
!181 = !{ptr @fcoe_if_create._entry.67, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @fcoe_if_create._entry_ptr.69, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1197, i32 3}
!185 = !{ptr @fcoe_if_create._entry.70, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @fcoe_if_create._entry_ptr.72, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1224, i32 3}
!189 = !{ptr @fcoe_if_create._entry.73, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @fcoe_if_create._entry_ptr.75, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 265, i32 10}
!193 = !{ptr @fcoe_shost_template, !194, !"fcoe_shost_template", i1 false, i1 false}
!194 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 263, i32 34}
!195 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 726, i32 3}
!197 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @fcoe_netdev_config._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @fcoe_netdev_config._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @fcoe_netdev_config.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 737, i32 2}
!202 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 781, i32 3}
!205 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @fcoe_shost_config._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @fcoe_shost_config._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.82, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 790, i32 4}
!210 = !{ptr @fcoe_libfc_fcn_templ, !211, !"fcoe_libfc_fcn_templ", i1 false, i1 false}
!211 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 162, i32 39}
!212 = !{ptr @fcoe_logo_resp.zero_mac, !213, !"zero_mac", i1 false, i1 false}
!213 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2600, i32 12}
!214 = !{ptr @.str.83, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 829, i32 4}
!216 = !{ptr @.str.84, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fcoe_fdmi_info._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fcoe_fdmi_info._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 836, i32 5}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 872, i32 3}
!223 = !{ptr @fcoe_fdmi_info._entry.86, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @fcoe_fdmi_info._entry_ptr.88, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 961, i32 4}
!227 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @fcoe_em_config._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @fcoe_em_config._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.92, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 971, i32 4}
!232 = !{ptr @fcoe_em_config._entry.91, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @fcoe_em_config._entry_ptr.93, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 985, i32 3}
!236 = !{ptr @fcoe_em_config._entry.94, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @fcoe_em_config._entry_ptr.96, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @fcoe_vport_fc_functions, !239, !"fcoe_vport_fc_functions", i1 false, i1 false}
!239 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 220, i32 36}
!240 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 62, i32 8}
!242 = !{ptr @.str.99, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @fcoe_config_mutex, !241, !"fcoe_config_mutex", i1 false, i1 false}
!244 = !{ptr @fcoe_hostlist, !245, !"fcoe_hostlist", i1 false, i1 false}
!245 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 68, i32 8}
!246 = !{ptr @.str.100, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../include/linux/mm.h", i32 717, i32 2}
!248 = !{ptr @fcoe_sw_transport, !249, !"fcoe_sw_transport", i1 false, i1 false}
!249 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2449, i32 30}
!250 = !{ptr @.str.101, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 2222, i32 3}
!252 = !{ptr @.str.102, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @_fcoe_create._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @_fcoe_create._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 388, i32 3}
!257 = !{ptr @.str.104, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @fcoe_interface_create._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @fcoe_interface_create._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.106, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 398, i32 3}
!262 = !{ptr @fcoe_interface_create._entry.105, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @fcoe_interface_create._entry_ptr.107, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @fcoe_sysfs_templ, !265, !"fcoe_sysfs_templ", i1 false, i1 false}
!265 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 148, i32 44}
!266 = !{ptr @fcoe_interface_setup.flogi_maddr, !267, !"flogi_maddr", i1 false, i1 false}
!267 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 296, i32 18}
!268 = !{ptr @.str.108, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 305, i32 4}
!270 = !{ptr @.str.109, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @fcoe_interface_setup._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @fcoe_interface_setup._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.111, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 311, i32 3}
!275 = !{ptr @fcoe_interface_setup._entry.110, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @fcoe_interface_setup._entry_ptr.112, !274, !"_entry_ptr", i1 false, i1 false}
!277 = distinct !{null, !278, !"__warned", i1 false, i1 false}
!278 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 320, i32 2}
!279 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!280 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!281 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!282 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.115, !281, !"<string literal>", i1 false, i1 false}
!284 = distinct !{null, !285, !"__warned", i1 false, i1 false}
!285 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!286 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.117, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1349, i32 3}
!289 = !{ptr @.str.118, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @fcoe_rcv._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @fcoe_rcv._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @fcoe_rcv._entry.119, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1355, i32 2}
!294 = !{ptr @fcoe_rcv._entry_ptr.120, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.122, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1371, i32 3}
!297 = !{ptr @fcoe_rcv._entry.121, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @fcoe_rcv._entry_ptr.123, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1388, i32 3}
!301 = !{ptr @fcoe_rcv._entry.124, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @fcoe_rcv._entry_ptr.126, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @fcoe_select_cpu.selected_cpu, !304, !"selected_cpu", i1 false, i1 false}
!304 = !{!"../drivers/scsi/fcoe/fcoe.c", i32 1312, i32 22}
!305 = !{!"sp"}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{i64 2154043371, i64 2154043854, i64 2154043408, i64 2154043464, i64 2154043498, i64 2154043522, i64 2154043563, i64 2154043584, i64 2154043612, i64 2154043646}
!318 = !{i64 2148502069}
!319 = !{i64 2148416778, i64 2148416810, i64 2148416839, i64 2148416873, i64 2148416904, i64 2148416927}
!320 = !{i64 2148502298}
!321 = !{i64 2149026970, i64 2149026975, i64 2149026988, i64 2149027032, i64 2149027066, i64 2149027087}
!322 = !{i64 2157197025}
!323 = !{i64 2157186711}
!324 = !{i64 2157188372}
!325 = !{i64 2157199828}
!326 = !{i64 2157199990}
!327 = !{i64 817293, i64 817354}
!328 = !{i64 820025}
!329 = !{i64 820310}
!330 = !{i8 0, i8 9}
!331 = !{i64 2157216154}
!332 = !{i64 2157216327}
!333 = !{!"auto-init"}
!334 = !{i64 2157174874}
!335 = !{i64 2157175958}
!336 = !{i64 2154459916}
!337 = !{i64 2153132292}
!338 = !{i64 2153132499}
!339 = !{i64 2154462687}
!340 = !{i8 0, i8 2}
!341 = !{i64 2157181082}
!342 = !{i64 2157181255}
!343 = !{i64 2149429752}
!344 = !{i64 2149430018}
!345 = !{i64 2157174418}
!346 = !{i64 2157174591}
