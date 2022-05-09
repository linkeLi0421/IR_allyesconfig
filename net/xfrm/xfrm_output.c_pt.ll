; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_output.c_pt.bc'
source_filename = "../net/xfrm/xfrm_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pktgen_xfrm_outer_mode_output\22, \22a\22\09"
module asm "\09.weak\09__crc_pktgen_xfrm_outer_mode_output\09\09\09\09"
module asm "\09.long\09__crc_pktgen_xfrm_outer_mode_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pktgen_xfrm_outer_mode_output:\09\09\09\09\09"
module asm "\09.asciz \09\22pktgen_xfrm_outer_mode_output\22\09\09\09\09\09"
module asm "__kstrtabns_pktgen_xfrm_outer_mode_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_output_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_output_resume\09\09\09\09"
module asm "\09.long\09__crc_xfrm_output_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_output_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_output_resume\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_output_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_output\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_output\09\09\09\09"
module asm "\09.long\09__crc_xfrm_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_output:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_output\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_local_error\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_local_error\09\09\09\09"
module asm "\09.long\09__crc_xfrm_local_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_local_error:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_local_error\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_local_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.162, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.162 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.61 }
%struct.llist_node = type { ptr }
%union.anon.61 = type { i32 }
%struct.sk_buff_head = type { %union.anon.108, i32, %struct.spinlock }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.119, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.120, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.120 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.sk_buff = type { %union.anon.21, %union.anon.24, %union.anon.25, [48 x i8], %union.anon.26, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.28, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, ptr, %union.anon.23 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.30, i32, i32, i32, i16, i16, %union.anon.32, i32, %union.anon.33, %union.anon.34, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.30 = type { i32 }
%union.anon.32 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_beet_phdr = type { i8, i8, i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.163, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.163 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.20 }
%union.anon.20 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.137, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.137 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.151 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.118, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.118 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.156, i32, i32, i8, i8 }
%struct.anon.156 = type { i32, i32 }
%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon.121, %union.anon.123, %union.anon.124, i16, i8, i8, i32, %union.anon.126, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.129, [0 x i32], %union.anon.130, i16, i16, %union.anon.131, %struct.refcount_struct, [0 x i32], %union.anon.132 }
%union.anon.121 = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.126 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { %struct.hlist_node }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i32 }
%struct.xfrm_state_afinfo = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.133, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.134, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.135, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.133 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.15 }
%union.anon.15 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.114, i32, %struct.list_head, ptr }
%union.anon.114 = type { %struct.in6_addr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.159, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.ipv6_opt_hdr = type { i8, i8 }

@__kstrtab_pktgen_xfrm_outer_mode_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_pktgen_xfrm_outer_mode_output = external dso_local constant [0 x i8], align 1
@__ksymtab_pktgen_xfrm_outer_mode_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pktgen_xfrm_outer_mode_output to i32), ptr @__kstrtab_pktgen_xfrm_outer_mode_output, ptr @__kstrtabns_pktgen_xfrm_outer_mode_output }, section "___ksymtab_gpl+pktgen_xfrm_outer_mode_output", align 4
@__kstrtab_xfrm_output_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_output_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_output_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_output_resume to i32), ptr @__kstrtab_xfrm_output_resume, ptr @__kstrtabns_xfrm_output_resume }, section "___ksymtab_gpl+xfrm_output_resume", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_xfrm_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_output = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_output to i32), ptr @__kstrtab_xfrm_output, ptr @__kstrtabns_xfrm_output }, section "___ksymtab_gpl+xfrm_output", align 4
@__kstrtab_xfrm_local_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_local_error = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_local_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_local_error to i32), ptr @__kstrtab_xfrm_local_error, ptr @__kstrtabns_xfrm_local_error }, section "___ksymtab_gpl+xfrm_local_error", align 4
@xfrm_outer_mode_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/xfrm/xfrm_output.c\00", [41 x i8] zeroinitializer }, align 32
@xfrm_outer_mode_output.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm4_prepare_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm4_extract_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014BEET mode doesn't support inner IPv4 fragments\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfrm4_extract_output\00", [43 x i8] zeroinitializer }, align 32
@xfrm4_extract_output._entry_ptr = internal global ptr @xfrm4_extract_output._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@xfrm6_prepare_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mip6_rthdr_offset.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xfrm_output\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mip6_rthdr_offset\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mip6: hao exists already, override\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_hook.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 60]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 60]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 41]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 255]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 43, i64 60]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 472, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 802, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 161, i32 2 }
@___asan_gen_.56 = private constant [26 x i8] c"../net/xfrm/xfrm_output.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 113, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1011, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 229, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_pktgen_xfrm_outer_mode_output, ptr @__ksymtab_xfrm_local_error, ptr @__ksymtab_xfrm_output, ptr @__ksymtab_xfrm_output_resume, ptr @xfrm4_extract_output._entry, ptr @xfrm4_extract_output._entry_ptr, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_extract_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pktgen_xfrm_outer_mode_output(ptr noundef %x, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfrm_outer_mode_output(ptr noundef %x, ptr noundef %skb)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_outer_mode_output(ptr noundef %x, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %prevhdr.i282 = alloca ptr, align 4
  %prevhdr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48
  %0 = ptrtoint ptr %outer_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %outer_mode, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %land.end80 [
    i8 4, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge317
    i8 0, label %sw.bb12
    i8 2, label %sw.bb29
  ]

entry.sw.bb_crit_edge317:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge317
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %4, label %sw.bb.return_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then9
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %sw.bb
  %call.i = tail call fastcc i32 @xfrm_inner_extract_output(ptr noundef %x, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = or i16 %7, 2
  store i16 %8, ptr %flags.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2048, ptr %protocol.i, align 8
  %10 = ptrtoint ptr %outer_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %outer_mode, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %11, label %land.end.i [
    i8 4, label %sw.bb.i
    i8 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %optlen1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %13 = ptrtoint ptr %optlen1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %optlen1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %if.then.i.i, !prof !65

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = and i8 %14, 4
  %narrow.i.i = sub nuw nsw i8 8, %15
  %sub.i.i = zext i8 %narrow.i.i to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %hdrlen.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ 0, %sw.bb.i.if.end.i.i_crit_edge ]
  %header_len.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %16 = ptrtoint ptr %header_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %header_len.i.i, align 4
  %ihl.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %18 = ptrtoint ptr %ihl.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ihl.i.i, align 8
  %conv8.i.i = zext i8 %19 to i32
  %20 = add i32 %hdrlen.0.i.i, %17
  %sub9.i.i = sub i32 65516, %20
  %add10.i.i = add i32 %sub9.i.i, %conv8.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = trunc i32 %add10.i.i to i16
  %conv1.i.i.i = add i16 %conv.i.i.i.i, %25
  %26 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv1.i.i.i, ptr %network_header.i.i.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %27 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.not.i.i = icmp eq i16 %28, 10
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add15.i.i = add i16 %conv1.i.i.i, 8
  %29 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %add15.i.i, ptr %network_header.i.i.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end.i.i.if.end17.i.i_crit_edge
  %30 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i.i.i, align 4
  %add20.i.i = add i16 %31, 9
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %32 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add20.i.i, ptr %mac_header.i.i, align 2
  %add24.i.i = add i16 %31, 20
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add24.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i.i.i
  %34 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 69, ptr %add.ptr.i.i.i.i.i, align 4
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %35 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protocol.i.i.i, align 1
  %protocol4.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %protocol4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %protocol4.i.i.i, align 1
  %tos.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %38 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tos.i.i.i, align 1
  %tos7.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %tos7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tos7.i.i.i, align 1
  %id.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %41 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id.i.i.i, align 4
  %id10.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %id10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %id10.i.i.i, align 4
  %frag_off.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %44 = ptrtoint ptr %frag_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %frag_off.i.i.i, align 2
  %frag_off13.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %frag_off13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %frag_off13.i.i.i, align 2
  %ttl.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %47 = ptrtoint ptr %ttl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ttl.i.i.i, align 2
  %ttl16.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %ttl16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %ttl16.i.i.i, align 4
  %50 = ptrtoint ptr %ihl.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ihl.i.i, align 8
  %conv29.i.i = zext i8 %51 to i32
  %sub30.i.i = sub nsw i32 %conv29.i.i, %hdrlen.0.i.i
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len1.i.i.i, align 4
  %sub.i.i.i = sub i32 %53, %sub30.i.i
  store i32 %sub.i.i.i, ptr %len1.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %55)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %55
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !66

do.body4.i.i.i:                                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.end17.i.i
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 %sub30.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i.i, align 4
  %58 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i.i.i, align 8
  %60 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i4.i.i = zext i16 %61 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %59, i32 %conv.i.i4.i.i
  br i1 %tobool.not.i.i, label %__skb_pull.exit.i.i.xfrm4_beet_encap_add.exit.i_crit_edge, label %if.end69.i.i, !prof !65

__skb_pull.exit.i.i.xfrm4_beet_encap_add.exit.i_crit_edge: ; preds = %__skb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm4_beet_encap_add.exit.i

if.end69.i.i:                                     ; preds = %__skb_pull.exit.i.i
  %conv.not.i.i = and i8 %14, 4
  %sub71.i.i = xor i8 %conv.not.i.i, 4
  %padlen.i.i = getelementptr inbounds %struct.ip_beet_phdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %padlen.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %sub71.i.i, ptr %padlen.i.i, align 1
  %div1.i.i = lshr i8 %14, 3
  %hdrlen74.i.i = getelementptr inbounds %struct.ip_beet_phdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %hdrlen74.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %div1.i.i, ptr %hdrlen74.i.i, align 1
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %protocol.i.i, align 1
  %66 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub71.i.i)
  %tobool76.not.i.i = icmp eq i8 %sub71.i.i, 0
  br i1 %tobool76.not.i.i, label %if.end69.i.i.if.end80.i.i_crit_edge, label %if.then77.i.i

if.end69.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i

if.then77.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr %struct.ip_beet_phdr, ptr %add.ptr.i.i.i, i32 1
  %conv79.i.i = zext i8 %sub71.i.i to i32
  %67 = call ptr @memset(ptr %add.ptr.i.i, i32 1, i32 %conv79.i.i)
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then77.i.i, %if.end69.i.i.if.end80.i.i_crit_edge
  %68 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 94, ptr %protocol.i.i, align 1
  %69 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -16
  %bf.set.i.i = or i8 %bf.clear.i.i, 5
  store i8 %bf.set.i.i, ptr %add.ptr.i.i.i.i, align 4
  br label %xfrm4_beet_encap_add.exit.i

xfrm4_beet_encap_add.exit.i:                      ; preds = %if.end80.i.i, %__skb_pull.exit.i.i.xfrm4_beet_encap_add.exit.i_crit_edge
  %saddr.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %70 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %saddr.i.i, align 4
  %saddr84.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %72 = ptrtoint ptr %saddr84.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %saddr84.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %73 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id.i.i, align 4
  %daddr85.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %daddr85.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %daddr85.i.i, align 4
  br label %return

sw.bb4.i:                                         ; preds = %if.end.i
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %and.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb4.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb4.i.skb_dst.exit.i.i_crit_edge:              ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb4.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !66

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %sw.bb4.i.skb_dst.exit.i.i_crit_edge
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %76, align 8
  %and25.i.i.i = and i32 %80, -2
  %81 = inttoptr i32 %and25.i.i.i to ptr
  %head.i.i.i53.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %82 = ptrtoint ptr %head.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i.i53.i, align 8
  %network_header.i.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %84 = ptrtoint ptr %network_header.i.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i.i54.i, align 4
  %conv.i.i.i55.i = zext i16 %85 to i32
  %add.ptr.i.i.i56.i = getelementptr i8, ptr %83, i32 %conv.i.i.i55.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %86 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i56.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.rhs.cast.i.i.i57.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i.i58.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i57.i
  %conv.i.i2.i.i = trunc i32 %sub.ptr.sub.i.i.i58.i to i16
  %inner_network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %88 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv1.i.i59.i = add i16 %88, %conv.i.i2.i.i
  %89 = ptrtoint ptr %inner_network_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv1.i.i59.i, ptr %inner_network_header.i.i.i.i, align 4
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %90 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i4.i60.i = zext i16 %91 to i32
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %83, i32 %conv.i.i4.i60.i
  %sub.ptr.lhs.cast.i7.i.i = ptrtoint ptr %add.ptr.i.i5.i.i to i32
  %sub.ptr.sub.i9.i.i = sub i32 %sub.ptr.lhs.cast.i7.i.i, %sub.ptr.rhs.cast.i.i.i
  %inner_transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %92 = trunc i32 %sub.ptr.sub.i9.i.i to i16
  %conv1.i16.i.i = add i16 %92, %conv.i.i2.i.i
  %93 = ptrtoint ptr %inner_transport_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv1.i16.i.i, ptr %inner_transport_header.i.i.i.i, align 2
  %header_len.i61.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %94 = ptrtoint ptr %header_len.i61.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %header_len.i61.i, align 4
  %96 = trunc i32 %95 to i16
  %conv1.i24.i.i = sub i16 %conv.i.i2.i.i, %96
  store i16 %conv1.i24.i.i, ptr %network_header.i.i.i54.i, align 4
  %add.i.i = add i16 %conv1.i24.i.i, 9
  %mac_header.i62.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %97 = ptrtoint ptr %mac_header.i62.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %add.i.i, ptr %mac_header.i62.i, align 2
  %add6.i.i = add i16 %conv1.i24.i.i, 20
  store i16 %add6.i.i, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i27.i.i = zext i16 %conv1.i24.i.i to i32
  %add.ptr.i.i28.i.i = getelementptr i8, ptr %83, i32 %conv.i.i27.i.i
  %98 = ptrtoint ptr %add.ptr.i.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 69, ptr %add.ptr.i.i28.i.i, align 4
  %99 = load i32, ptr %76, align 8
  %and.i29.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %and.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %skb_dst.exit.i.i.skb_dst.exit39.i.i_crit_edge, label %land.lhs.true.i33.i.i

skb_dst.exit.i.i.skb_dst.exit39.i.i_crit_edge:    ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i

land.lhs.true.i33.i.i:                            ; preds = %skb_dst.exit.i.i
  %call.i31.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i)
  %tobool1.not.i32.i.i = icmp eq i32 %call.i31.i.i, 0
  br i1 %tobool1.not.i32.i.i, label %land.rhs.i36.i.i, label %land.lhs.true.i33.i.i.skb_dst.exit39.i.i_crit_edge

land.lhs.true.i33.i.i.skb_dst.exit39.i.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i

land.rhs.i36.i.i:                                 ; preds = %land.lhs.true.i33.i.i
  %call2.i34.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i34.i.i)
  %tobool3.not.i35.i.i = icmp eq i32 %call2.i34.i.i, 0
  br i1 %tobool3.not.i35.i.i, label %do.end.i37.i.i, label %land.rhs.i36.i.i.skb_dst.exit39.i.i_crit_edge, !prof !66

land.rhs.i36.i.i.skb_dst.exit39.i.i_crit_edge:    ; preds = %land.rhs.i36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i

do.end.i37.i.i:                                   ; preds = %land.rhs.i36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit39.i.i

skb_dst.exit39.i.i:                               ; preds = %do.end.i37.i.i, %land.rhs.i36.i.i.skb_dst.exit39.i.i_crit_edge, %land.lhs.true.i33.i.i.skb_dst.exit39.i.i_crit_edge, %skb_dst.exit.i.i.skb_dst.exit39.i.i_crit_edge
  %100 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %76, align 8
  %and25.i38.i.i = and i32 %101, -2
  %102 = inttoptr i32 %and25.i38.i.i to ptr
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %104, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %106)
  %switch.selectcmp.i.i.i = icmp eq i16 %106, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %106)
  %switch.selectcmp2.i.i.i = icmp eq i16 %106, 2
  %107 = select i1 %switch.selectcmp.i.i.i, i8 41, i8 0
  %conv15.i.i = select i1 %switch.selectcmp2.i.i.i, i8 4, i8 %107
  %protocol.i63.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %protocol.i63.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv15.i.i, ptr %protocol.i63.i, align 1
  %extra_flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %109 = ptrtoint ptr %extra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %extra_flags.i.i, align 4
  %and.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i64.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i64.i, label %if.else.i.i, label %skb_dst.exit39.i.i.if.end.i65.i_crit_edge

skb_dst.exit39.i.i.if.end.i65.i_crit_edge:        ; preds = %skb_dst.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i65.i

if.else.i.i:                                      ; preds = %skb_dst.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tos17.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %111 = ptrtoint ptr %tos17.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tos17.i.i, align 1
  br label %if.end.i65.i

if.end.i65.i:                                     ; preds = %if.else.i.i, %skb_dst.exit39.i.i.if.end.i65.i_crit_edge
  %.sink.i.i = phi i8 [ %112, %if.else.i.i ], [ 0, %skb_dst.exit39.i.i.if.end.i65.i_crit_edge ]
  %113 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink.i.i, ptr %113, align 1
  %tos22.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %115 = ptrtoint ptr %tos22.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tos22.i.i, align 1
  %117 = and i8 %116, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp.i.not.i.i.i = icmp eq i8 %117, 3
  %spec.select.i.i.i = select i1 %cmp.i.not.i.i.i, i8 2, i8 %117
  %118 = and i8 %.sink.i.i, -4
  %or.i.i.i = or i8 %spec.select.i.i.i, %118
  %119 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %or.i.i.i, ptr %113, align 1
  %flags26.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %120 = ptrtoint ptr %flags26.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %flags26.i.i, align 1
  %conv27.i.i = zext i8 %121 to i32
  %and28.i.i = and i32 %conv27.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  %spec.store.select.i.i = select i1 %tobool29.not.i.i, i8 %or.i.i.i, i8 %118
  %122 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %spec.store.select.i.i, ptr %113, align 1
  %and32.i.i = and i32 %conv27.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %cond.false.i.i, label %if.end.i65.i.cond.end.i.i_crit_edge

if.end.i65.i.cond.end.i.i_crit_edge:              ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  %frag_off.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %123 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %frag_off.i.i, align 2
  %125 = and i16 %124, 16384
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i65.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i16 [ %125, %cond.false.i.i ], [ 0, %if.end.i65.i.cond.end.i.i_crit_edge ]
  %frag_off39.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 4
  %126 = ptrtoint ptr %frag_off39.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %cond.i.i, ptr %frag_off39.i.i, align 2
  %xfrm.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 4
  %127 = ptrtoint ptr %xfrm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xfrm.i.i.i, align 4
  %tobool.not.i40.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i40.i.i, label %lor.lhs.false.i.i.i, label %cond.end.i.i.if.then.i.i.i_crit_edge

cond.end.i.i.if.then.i.i.i_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %cond.end.i.i
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 7
  %129 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %flags.i.i.i, align 4
  %131 = and i16 %130, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool1.not.i41.i.i = icmp eq i16 %131, 0
  br i1 %tobool1.not.i41.i.i, label %lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %cond.end.i.i.if.then.i.i.i_crit_edge
  %child.i.i.i = getelementptr inbounds %struct.xfrm_dst, ptr %81, i32 0, i32 2
  %132 = ptrtoint ptr %child.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %child.i.i.i, align 4
  br label %xfrm_dst_child.exit.i.i

xfrm_dst_child.exit.i.i:                          ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %133, %if.then.i.i.i ], [ null, %lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge ]
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %135, -4
  %136 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %136, i32 9
  %137 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i.i66.i = icmp eq i32 %138, 0
  br i1 %cmp.i.i66.i, label %if.then.i42.i.i, label %xfrm_dst_child.exit.i.i.ip4_dst_hoplimit.exit.i.i_crit_edge

xfrm_dst_child.exit.i.i.ip4_dst_hoplimit.exit.i.i_crit_edge: ; preds = %xfrm_dst_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip4_dst_hoplimit.exit.i.i

if.then.i42.i.i:                                  ; preds = %xfrm_dst_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %retval.0.i.i.i, align 4
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %140, i32 0, i32 127
  %141 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i.i = getelementptr inbounds %struct.net, ptr %142, i32 0, i32 35, i32 37
  %143 = ptrtoint ptr %sysctl_ip_default_ttl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %sysctl_ip_default_ttl.i.i.i, align 2
  %conv.i.i.i = zext i8 %144 to i32
  br label %ip4_dst_hoplimit.exit.i.i

ip4_dst_hoplimit.exit.i.i:                        ; preds = %if.then.i42.i.i, %xfrm_dst_child.exit.i.i.ip4_dst_hoplimit.exit.i.i_crit_edge
  %hoplimit.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i42.i.i ], [ %138, %xfrm_dst_child.exit.i.i.ip4_dst_hoplimit.exit.i.i_crit_edge ]
  %conv42.i.i = trunc i32 %hoplimit.0.i.i.i to i8
  %ttl.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv42.i.i, ptr %ttl.i.i, align 4
  %saddr.i67.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %146 = ptrtoint ptr %saddr.i67.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %saddr.i67.i, align 4
  %saddr44.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 8
  %148 = ptrtoint ptr %saddr44.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %saddr44.i.i, align 4
  %id.i68.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %149 = ptrtoint ptr %id.i68.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %id.i68.i, align 4
  %daddr45.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i28.i.i, i32 0, i32 9
  %151 = ptrtoint ptr %daddr45.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %daddr45.i.i, align 4
  %152 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %81, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 127
  %154 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %nd_net.i.i.i, align 4
  %156 = ptrtoint ptr %head.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %head.i.i.i53.i, align 8
  %158 = ptrtoint ptr %network_header.i.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %network_header.i.i.i54.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %159 to i32
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %157, i32 %conv.i.i.i.i.i.i
  %frag_off.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 4
  %160 = ptrtoint ptr %frag_off.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %frag_off.i.i.i.i, align 2
  %162 = and i16 %161, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool9.not.i.i.i.i = icmp eq i16 %162, 0
  br i1 %tobool9.not.i.i.i.i, label %ip4_dst_hoplimit.exit.i.i.if.else.i.i.i.i_crit_edge, label %land.lhs.true10.i.i.i.i

ip4_dst_hoplimit.exit.i.i.if.else.i.i.i.i_crit_edge: ; preds = %ip4_dst_hoplimit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i.i

land.lhs.true10.i.i.i.i:                          ; preds = %ip4_dst_hoplimit.exit.i.i
  %ignore_df.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %163 = ptrtoint ptr %ignore_df.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load.i.i.i.i = load i16, ptr %ignore_df.i.i.i.i, align 8
  %164 = and i16 %bf.load.i.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool11.not.i.i.i.i = icmp eq i16 %164, 0
  br i1 %tobool11.not.i.i.i.i, label %if.then12.i.i.i.i, label %land.lhs.true10.i.i.i.i.if.else.i.i.i.i_crit_edge

land.lhs.true10.i.i.i.i.if.else.i.i.i.i_crit_edge: ; preds = %land.lhs.true10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %land.lhs.true10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %id13.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 3
  %165 = ptrtoint ptr %id13.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %id13.i.i.i.i, align 4
  br label %return

if.else.i.i.i.i:                                  ; preds = %land.lhs.true10.i.i.i.i.if.else.i.i.i.i_crit_edge, %ip4_dst_hoplimit.exit.i.i.if.else.i.i.i.i_crit_edge
  tail call void @__ip_select_ident(ptr noundef %155, ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef 1) #8
  br label %return

land.end.i:                                       ; preds = %if.end.i
  %.b52.i = load i1, ptr @xfrm4_prepare_output.__already_done, align 1
  br i1 %.b52.i, label %land.end.i.return_crit_edge, label %if.then12.i, !prof !65

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then12.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfrm4_prepare_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #8
  br label %return

if.then9:                                         ; preds = %sw.bb
  %call.i143 = tail call fastcc i32 @xfrm_inner_extract_output(ptr noundef %x, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end.i147, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i147:                                      ; preds = %if.then9
  %ignore_df.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %166 = ptrtoint ptr %ignore_df.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %bf.load.i = load i16, ptr %ignore_df.i, align 8
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %ignore_df.i, align 8
  %protocol.i145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %167 = ptrtoint ptr %protocol.i145 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -31011, ptr %protocol.i145, align 8
  %168 = ptrtoint ptr %outer_mode to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %outer_mode, align 2
  %170 = zext i8 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %169, label %land.end.i251 [
    i8 4, label %sw.bb.i150
    i8 1, label %sw.bb2.i
  ]

sw.bb.i150:                                       ; preds = %if.end.i147
  %optlen1.i.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %171 = ptrtoint ptr %optlen1.i.i148 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %optlen1.i.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i.i149 = icmp eq i8 %172, 0
  br i1 %tobool.not.i.i149, label %sw.bb.i150.if.end.i.i165_crit_edge, label %if.then.i.i153, !prof !65

sw.bb.i150.if.end.i.i165_crit_edge:               ; preds = %sw.bb.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i165

if.then.i.i153:                                   ; preds = %sw.bb.i150
  call void @__sanitizer_cov_trace_pc() #10
  %173 = and i8 %172, 4
  %narrow.i.i151 = sub nuw nsw i8 8, %173
  %sub.i.i152 = zext i8 %narrow.i.i151 to i32
  br label %if.end.i.i165

if.end.i.i165:                                    ; preds = %if.then.i.i153, %sw.bb.i150.if.end.i.i165_crit_edge
  %hdr_len.0.i.i = phi i32 [ %sub.i.i152, %if.then.i.i153 ], [ 0, %sw.bb.i150.if.end.i.i165_crit_edge ]
  %header_len.i.i154 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %174 = ptrtoint ptr %header_len.i.i154 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %header_len.i.i154, align 4
  %176 = add i32 %175, %hdr_len.0.i.i
  %data.i.i.i.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %177 = ptrtoint ptr %data.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i.i.i.i155, align 4
  %head.i.i.i.i156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %179 = ptrtoint ptr %head.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %head.i.i.i.i156, align 8
  %sub.ptr.lhs.cast.i.i.i.i157 = ptrtoint ptr %178 to i32
  %sub.ptr.rhs.cast.i.i.i.i158 = ptrtoint ptr %180 to i32
  %sub.ptr.sub.i.i.i.i159 = sub i32 %sub.ptr.lhs.cast.i.i.i.i157, %sub.ptr.rhs.cast.i.i.i.i158
  %conv.i.i.i.i160 = trunc i32 %sub.ptr.sub.i.i.i.i159 to i16
  %network_header.i.i.i.i161 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %181 = trunc i32 %176 to i16
  %conv1.i.i.i162 = sub i16 %conv.i.i.i.i160, %181
  %182 = ptrtoint ptr %network_header.i.i.i.i161 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv1.i.i.i162, ptr %network_header.i.i.i.i161, align 4
  %family.i.i163 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %183 = ptrtoint ptr %family.i.i163 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %family.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %184)
  %cmp.not.i.i164 = icmp eq i16 %184, 10
  br i1 %cmp.not.i.i164, label %if.end.i.i165.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i165.if.end12.i.i_crit_edge:             ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i.i166 = add i16 %conv1.i.i.i162, 8
  %185 = ptrtoint ptr %network_header.i.i.i.i161 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %add10.i.i166, ptr %network_header.i.i.i.i161, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i165.if.end12.i.i_crit_edge
  %186 = ptrtoint ptr %network_header.i.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %network_header.i.i.i.i161, align 4
  %add15.i.i167 = add i16 %187, 6
  %mac_header.i.i168 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %188 = ptrtoint ptr %mac_header.i.i168 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %add15.i.i167, ptr %mac_header.i.i168, align 2
  %add19.i.i = add i16 %187, 40
  %transport_header.i.i169 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %189 = ptrtoint ptr %transport_header.i.i169 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %add19.i.i, ptr %transport_header.i.i169, align 2
  %ihl.i.i170 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %190 = ptrtoint ptr %ihl.i.i170 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ihl.i.i170, align 8
  %conv23.i.i = zext i8 %191 to i32
  %sub24.i.i = sub nsw i32 %conv23.i.i, %hdr_len.0.i.i
  %len1.i.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %192 = ptrtoint ptr %len1.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len1.i.i.i171, align 4
  %sub.i.i.i172 = sub i32 %193, %sub24.i.i
  store i32 %sub.i.i.i172, ptr %len1.i.i.i171, align 4
  %data_len.i.i.i173 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %194 = ptrtoint ptr %data_len.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %data_len.i.i.i173, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i172, i32 %195)
  %cmp.i.i.i174 = icmp ult i32 %sub.i.i.i172, %195
  br i1 %cmp.i.i.i174, label %do.body4.i.i.i175, label %__skb_pull.exit.i.i184, !prof !66

do.body4.i.i.i175:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

__skb_pull.exit.i.i184:                           ; preds = %if.end12.i.i
  %add.ptr.i.i.i176 = getelementptr i8, ptr %178, i32 %sub24.i.i
  %196 = ptrtoint ptr %data.i.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %add.ptr.i.i.i176, ptr %data.i.i.i.i155, align 4
  %conv.i.i.i.i.i177 = zext i16 %187 to i32
  %add.ptr.i.i.i.i.i178 = getelementptr i8, ptr %180, i32 %conv.i.i.i.i.i177
  %197 = ptrtoint ptr %add.ptr.i.i.i.i.i178 to i32
  call void @__asan_load1_noabort(i32 %197)
  %bf.load.i.i.i = load i8, ptr %add.ptr.i.i.i.i.i178, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 15
  %bf.set.i.i.i = or i8 %bf.clear.i.i.i, 96
  store i8 %bf.set.i.i.i, ptr %add.ptr.i.i.i.i.i178, align 4
  %flow_lbl.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i178, i32 0, i32 1
  %flow_lbl1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %198 = call ptr @memcpy(ptr %flow_lbl.i.i.i, ptr %flow_lbl1.i.i.i, i32 3)
  %protocol.i.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %199 = ptrtoint ptr %protocol.i.i.i179 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %protocol.i.i.i179, align 1
  %nexthdr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i178, i32 0, i32 3
  %201 = ptrtoint ptr %nexthdr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %nexthdr.i.i.i, align 2
  %tos.i.i.i180 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %202 = ptrtoint ptr %tos.i.i.i180 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %tos.i.i.i180, align 1
  %204 = load i16, ptr %add.ptr.i.i.i.i.i178, align 2
  %205 = and i16 %204, -4081
  %conv6.i.i.i.i = zext i8 %203 to i16
  %shl7.i.i.i.i = shl nuw nsw i16 %conv6.i.i.i.i, 4
  %or10.i.i.i.i = or i16 %205, %shl7.i.i.i.i
  store i16 %or10.i.i.i.i, ptr %add.ptr.i.i.i.i.i178, align 2
  %ttl.i.i.i181 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %206 = ptrtoint ptr %ttl.i.i.i181 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %ttl.i.i.i181, align 2
  %hop_limit.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i178, i32 0, i32 4
  %208 = ptrtoint ptr %hop_limit.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %hop_limit.i.i.i, align 1
  %209 = ptrtoint ptr %head.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %head.i.i.i.i156, align 8
  %211 = ptrtoint ptr %network_header.i.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %network_header.i.i.i.i161, align 4
  %conv.i.i4.i.i182 = zext i16 %212 to i32
  %add.ptr.i.i.i.i183 = getelementptr i8, ptr %210, i32 %conv.i.i4.i.i182
  br i1 %tobool.not.i.i149, label %__skb_pull.exit.i.i184.xfrm6_beet_encap_add.exit.i_crit_edge, label %if.end63.i.i, !prof !65

__skb_pull.exit.i.i184.xfrm6_beet_encap_add.exit.i_crit_edge: ; preds = %__skb_pull.exit.i.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm6_beet_encap_add.exit.i

if.end63.i.i:                                     ; preds = %__skb_pull.exit.i.i184
  %conv.not.i.i185 = and i8 %172, 4
  %sub65.i.i = xor i8 %conv.not.i.i185, 4
  %padlen.i.i186 = getelementptr inbounds %struct.ip_beet_phdr, ptr %add.ptr.i.i.i176, i32 0, i32 2
  %213 = ptrtoint ptr %padlen.i.i186 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %sub65.i.i, ptr %padlen.i.i186, align 1
  %div1.i.i187 = lshr i8 %172, 3
  %hdrlen.i.i = getelementptr inbounds %struct.ip_beet_phdr, ptr %add.ptr.i.i.i176, i32 0, i32 1
  %214 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %div1.i.i187, ptr %hdrlen.i.i, align 1
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i183, i32 0, i32 3
  %215 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %nexthdr.i.i, align 2
  %217 = ptrtoint ptr %add.ptr.i.i.i176 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %add.ptr.i.i.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub65.i.i)
  %tobool70.not.i.i = icmp eq i8 %sub65.i.i, 0
  br i1 %tobool70.not.i.i, label %if.end63.i.i.if.end74.i.i_crit_edge, label %if.then71.i.i

if.end63.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i.i

if.then71.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i188 = getelementptr %struct.ip_beet_phdr, ptr %add.ptr.i.i.i176, i32 1
  %conv73.i.i = zext i8 %sub65.i.i to i32
  %218 = call ptr @memset(ptr %add.ptr.i.i188, i32 1, i32 %conv73.i.i)
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then71.i.i, %if.end63.i.i.if.end74.i.i_crit_edge
  %219 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 94, ptr %nexthdr.i.i, align 2
  br label %xfrm6_beet_encap_add.exit.i

xfrm6_beet_encap_add.exit.i:                      ; preds = %if.end74.i.i, %__skb_pull.exit.i.i184.xfrm6_beet_encap_add.exit.i_crit_edge
  %saddr.i.i189 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i183, i32 0, i32 5
  %saddr78.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %220 = call ptr @memcpy(ptr %saddr.i.i189, ptr %saddr78.i.i, i32 16)
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i183, i32 0, i32 6
  %id.i.i190 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %221 = call ptr @memcpy(ptr %daddr.i.i, ptr %id.i.i190, i32 16)
  br label %return

sw.bb2.i:                                         ; preds = %if.end.i147
  %222 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 8
  %and.i.i.i191 = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i191)
  %tobool.not.i.i.i192 = icmp eq i32 %and.i.i.i191, 0
  br i1 %tobool.not.i.i.i192, label %sw.bb2.i.skb_dst.exit.i.i223_crit_edge, label %land.lhs.true.i.i.i195

sw.bb2.i.skb_dst.exit.i.i223_crit_edge:           ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i223

land.lhs.true.i.i.i195:                           ; preds = %sw.bb2.i
  %call.i.i.i193 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i193)
  %tobool1.not.i.i.i194 = icmp eq i32 %call.i.i.i193, 0
  br i1 %tobool1.not.i.i.i194, label %land.rhs.i.i.i198, label %land.lhs.true.i.i.i195.skb_dst.exit.i.i223_crit_edge

land.lhs.true.i.i.i195.skb_dst.exit.i.i223_crit_edge: ; preds = %land.lhs.true.i.i.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i223

land.rhs.i.i.i198:                                ; preds = %land.lhs.true.i.i.i195
  %call2.i.i.i196 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i196)
  %tobool3.not.i.i.i197 = icmp eq i32 %call2.i.i.i196, 0
  br i1 %tobool3.not.i.i.i197, label %do.end.i.i.i199, label %land.rhs.i.i.i198.skb_dst.exit.i.i223_crit_edge, !prof !66

land.rhs.i.i.i198.skb_dst.exit.i.i223_crit_edge:  ; preds = %land.rhs.i.i.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i223

do.end.i.i.i199:                                  ; preds = %land.rhs.i.i.i198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i223

skb_dst.exit.i.i223:                              ; preds = %do.end.i.i.i199, %land.rhs.i.i.i198.skb_dst.exit.i.i223_crit_edge, %land.lhs.true.i.i.i195.skb_dst.exit.i.i223_crit_edge, %sw.bb2.i.skb_dst.exit.i.i223_crit_edge
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %222, align 8
  %and25.i.i.i200 = and i32 %226, -2
  %227 = inttoptr i32 %and25.i.i.i200 to ptr
  %head.i.i.i51.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %228 = ptrtoint ptr %head.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %head.i.i.i51.i, align 8
  %network_header.i.i.i52.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %230 = ptrtoint ptr %network_header.i.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %network_header.i.i.i52.i, align 4
  %conv.i.i.i53.i = zext i16 %231 to i32
  %add.ptr.i.i.i54.i = getelementptr i8, ptr %229, i32 %conv.i.i.i53.i
  %data.i.i.i201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %232 = ptrtoint ptr %data.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %data.i.i.i201, align 4
  %sub.ptr.lhs.cast.i.i.i202 = ptrtoint ptr %add.ptr.i.i.i54.i to i32
  %sub.ptr.rhs.cast.i.i.i203 = ptrtoint ptr %233 to i32
  %sub.ptr.sub.i.i.i204 = sub i32 %sub.ptr.lhs.cast.i.i.i202, %sub.ptr.rhs.cast.i.i.i203
  %sub.ptr.rhs.cast.i.i.i55.i = ptrtoint ptr %229 to i32
  %sub.ptr.sub.i.i.i56.i = sub i32 %sub.ptr.rhs.cast.i.i.i203, %sub.ptr.rhs.cast.i.i.i55.i
  %conv.i.i2.i.i205 = trunc i32 %sub.ptr.sub.i.i.i56.i to i16
  %inner_network_header.i.i.i.i206 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %234 = trunc i32 %sub.ptr.sub.i.i.i204 to i16
  %conv1.i.i57.i = add i16 %234, %conv.i.i2.i.i205
  %235 = ptrtoint ptr %inner_network_header.i.i.i.i206 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv1.i.i57.i, ptr %inner_network_header.i.i.i.i206, align 4
  %transport_header.i.i.i.i207 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %236 = ptrtoint ptr %transport_header.i.i.i.i207 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %transport_header.i.i.i.i207, align 2
  %conv.i.i4.i58.i = zext i16 %237 to i32
  %add.ptr.i.i5.i.i208 = getelementptr i8, ptr %229, i32 %conv.i.i4.i58.i
  %sub.ptr.lhs.cast.i7.i.i209 = ptrtoint ptr %add.ptr.i.i5.i.i208 to i32
  %sub.ptr.sub.i9.i.i210 = sub i32 %sub.ptr.lhs.cast.i7.i.i209, %sub.ptr.rhs.cast.i.i.i203
  %inner_transport_header.i.i.i.i211 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %238 = trunc i32 %sub.ptr.sub.i9.i.i210 to i16
  %conv1.i16.i.i212 = add i16 %238, %conv.i.i2.i.i205
  %239 = ptrtoint ptr %inner_transport_header.i.i.i.i211 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv1.i16.i.i212, ptr %inner_transport_header.i.i.i.i211, align 2
  %header_len.i59.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %240 = ptrtoint ptr %header_len.i59.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %header_len.i59.i, align 4
  %242 = trunc i32 %241 to i16
  %conv1.i24.i.i213 = sub i16 %conv.i.i2.i.i205, %242
  store i16 %conv1.i24.i.i213, ptr %network_header.i.i.i52.i, align 4
  %add.i.i214 = add i16 %conv1.i24.i.i213, 6
  %mac_header.i60.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %243 = ptrtoint ptr %mac_header.i60.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %add.i.i214, ptr %mac_header.i60.i, align 2
  %add6.i.i215 = add i16 %conv1.i24.i.i213, 40
  store i16 %add6.i.i215, ptr %transport_header.i.i.i.i207, align 2
  %conv.i.i27.i.i216 = zext i16 %conv1.i24.i.i213 to i32
  %add.ptr.i.i28.i.i217 = getelementptr i8, ptr %229, i32 %conv.i.i27.i.i216
  %244 = ptrtoint ptr %add.ptr.i.i28.i.i217 to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load.i.i218 = load i8, ptr %add.ptr.i.i28.i.i217, align 4
  %bf.clear.i.i219 = and i8 %bf.load.i.i218, 15
  %bf.set.i.i220 = or i8 %bf.clear.i.i219, 96
  store i8 %bf.set.i.i220, ptr %add.ptr.i.i28.i.i217, align 4
  %flow_lbl.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i28.i.i217, i32 0, i32 1
  %flow_lbl9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %245 = call ptr @memcpy(ptr %flow_lbl.i.i, ptr %flow_lbl9.i.i, i32 3)
  %246 = load i32, ptr %222, align 8
  %and.i29.i.i221 = and i32 %246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i.i221)
  %tobool.not.i30.i.i222 = icmp eq i32 %and.i29.i.i221, 0
  br i1 %tobool.not.i30.i.i222, label %skb_dst.exit.i.i223.skb_dst.exit39.i.i237_crit_edge, label %land.lhs.true.i33.i.i226

skb_dst.exit.i.i223.skb_dst.exit39.i.i237_crit_edge: ; preds = %skb_dst.exit.i.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i237

land.lhs.true.i33.i.i226:                         ; preds = %skb_dst.exit.i.i223
  %call.i31.i.i224 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i224)
  %tobool1.not.i32.i.i225 = icmp eq i32 %call.i31.i.i224, 0
  br i1 %tobool1.not.i32.i.i225, label %land.rhs.i36.i.i229, label %land.lhs.true.i33.i.i226.skb_dst.exit39.i.i237_crit_edge

land.lhs.true.i33.i.i226.skb_dst.exit39.i.i237_crit_edge: ; preds = %land.lhs.true.i33.i.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i237

land.rhs.i36.i.i229:                              ; preds = %land.lhs.true.i33.i.i226
  %call2.i34.i.i227 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i34.i.i227)
  %tobool3.not.i35.i.i228 = icmp eq i32 %call2.i34.i.i227, 0
  br i1 %tobool3.not.i35.i.i228, label %do.end.i37.i.i230, label %land.rhs.i36.i.i229.skb_dst.exit39.i.i237_crit_edge, !prof !66

land.rhs.i36.i.i229.skb_dst.exit39.i.i237_crit_edge: ; preds = %land.rhs.i36.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit39.i.i237

do.end.i37.i.i230:                                ; preds = %land.rhs.i36.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit39.i.i237

skb_dst.exit39.i.i237:                            ; preds = %do.end.i37.i.i230, %land.rhs.i36.i.i229.skb_dst.exit39.i.i237_crit_edge, %land.lhs.true.i33.i.i226.skb_dst.exit39.i.i237_crit_edge, %skb_dst.exit.i.i223.skb_dst.exit39.i.i237_crit_edge
  %247 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %222, align 8
  %and25.i38.i.i231 = and i32 %248, -2
  %249 = inttoptr i32 %and25.i38.i.i231 to ptr
  %ops.i.i232 = getelementptr inbounds %struct.dst_entry, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %ops.i.i232 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ops.i.i232, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %251, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %253)
  %switch.selectcmp.i.i.i233 = icmp eq i16 %253, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %253)
  %switch.selectcmp2.i.i.i234 = icmp eq i16 %253, 2
  %254 = select i1 %switch.selectcmp.i.i.i233, i8 41, i8 0
  %conv14.i.i = select i1 %switch.selectcmp2.i.i.i234, i8 4, i8 %254
  %nexthdr.i61.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i28.i.i217, i32 0, i32 3
  %255 = ptrtoint ptr %nexthdr.i61.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv14.i.i, ptr %nexthdr.i61.i, align 2
  %extra_flags.i.i235 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %256 = ptrtoint ptr %extra_flags.i.i235 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %extra_flags.i.i235, align 4
  %and.i.i236 = and i32 %257, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i236)
  %tobool.not.i62.i = icmp eq i32 %and.i.i236, 0
  br i1 %tobool.not.i62.i, label %if.else.i.i238, label %skb_dst.exit39.i.i237.if.end.i63.i_crit_edge

skb_dst.exit39.i.i237.if.end.i63.i_crit_edge:     ; preds = %skb_dst.exit39.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i63.i

if.else.i.i238:                                   ; preds = %skb_dst.exit39.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  %tos.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %258 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %tos.i.i, align 1
  %phi.bo.i.i = and i8 %259, -4
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %if.else.i.i238, %skb_dst.exit39.i.i237.if.end.i63.i_crit_edge
  %dsfield.0.i.i = phi i8 [ %phi.bo.i.i, %if.else.i.i238 ], [ 0, %skb_dst.exit39.i.i237.if.end.i63.i_crit_edge ]
  %tos22.i.i239 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %260 = ptrtoint ptr %tos22.i.i239 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %tos22.i.i239, align 1
  %262 = and i8 %261, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %262)
  %cmp.i.not.i.i.i240 = icmp eq i8 %262, 3
  %spec.select.i.i.i241 = select i1 %cmp.i.not.i.i.i240, i8 2, i8 %262
  %flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %263 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %flags.i.i, align 1
  %265 = and i8 %264, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool28.not.i.i = icmp eq i8 %265, 0
  %or.i.i.i242 = select i1 %tobool28.not.i.i, i8 %spec.select.i.i.i241, i8 0
  %spec.select.i.i = or i8 %or.i.i.i242, %dsfield.0.i.i
  %266 = ptrtoint ptr %add.ptr.i.i28.i.i217 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %add.ptr.i.i28.i.i217, align 2
  %268 = and i16 %267, -4081
  %conv6.i.i.i = zext i8 %spec.select.i.i to i16
  %shl7.i.i.i = shl nuw nsw i16 %conv6.i.i.i, 4
  %or10.i.i.i = or i16 %shl7.i.i.i, %268
  store i16 %or10.i.i.i, ptr %add.ptr.i.i28.i.i217, align 2
  %xfrm.i.i.i243 = getelementptr inbounds %struct.dst_entry, ptr %227, i32 0, i32 4
  %269 = ptrtoint ptr %xfrm.i.i.i243 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %xfrm.i.i.i243, align 4
  %tobool.not.i40.i.i244 = icmp eq ptr %270, null
  br i1 %tobool.not.i40.i.i244, label %lor.lhs.false.i.i.i247, label %if.end.i63.i.if.then.i.i.i249_crit_edge

if.end.i63.i.if.then.i.i.i249_crit_edge:          ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i249

lor.lhs.false.i.i.i247:                           ; preds = %if.end.i63.i
  %flags.i.i.i245 = getelementptr inbounds %struct.dst_entry, ptr %227, i32 0, i32 7
  %271 = ptrtoint ptr %flags.i.i.i245 to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %flags.i.i.i245, align 4
  %273 = and i16 %272, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %273)
  %tobool1.not.i41.i.i246 = icmp eq i16 %273, 0
  br i1 %tobool1.not.i41.i.i246, label %lor.lhs.false.i.i.i247.xfrm6_tunnel_encap_add.exit.i_crit_edge, label %lor.lhs.false.i.i.i247.if.then.i.i.i249_crit_edge

lor.lhs.false.i.i.i247.if.then.i.i.i249_crit_edge: ; preds = %lor.lhs.false.i.i.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i249

lor.lhs.false.i.i.i247.xfrm6_tunnel_encap_add.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm6_tunnel_encap_add.exit.i

if.then.i.i.i249:                                 ; preds = %lor.lhs.false.i.i.i247.if.then.i.i.i249_crit_edge, %if.end.i63.i.if.then.i.i.i249_crit_edge
  %child.i.i.i248 = getelementptr inbounds %struct.xfrm_dst, ptr %227, i32 0, i32 2
  %274 = ptrtoint ptr %child.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %child.i.i.i248, align 4
  br label %xfrm6_tunnel_encap_add.exit.i

xfrm6_tunnel_encap_add.exit.i:                    ; preds = %if.then.i.i.i249, %lor.lhs.false.i.i.i247.xfrm6_tunnel_encap_add.exit.i_crit_edge
  %retval.0.i.i.i250 = phi ptr [ %275, %if.then.i.i.i249 ], [ null, %lor.lhs.false.i.i.i247.xfrm6_tunnel_encap_add.exit.i_crit_edge ]
  %call34.i.i = tail call i32 @ip6_dst_hoplimit(ptr noundef %retval.0.i.i.i250) #8
  %conv35.i.i = trunc i32 %call34.i.i to i8
  %hop_limit.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i28.i.i217, i32 0, i32 4
  %276 = ptrtoint ptr %hop_limit.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv35.i.i, ptr %hop_limit.i.i, align 1
  %saddr.i64.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i28.i.i217, i32 0, i32 5
  %saddr37.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %277 = call ptr @memcpy(ptr %saddr.i64.i, ptr %saddr37.i.i, i32 16)
  %daddr.i65.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i28.i.i217, i32 0, i32 6
  %id.i66.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %278 = call ptr @memcpy(ptr %daddr.i65.i, ptr %id.i66.i, i32 16)
  br label %return

land.end.i251:                                    ; preds = %if.end.i147
  %.b50.i = load i1, ptr @xfrm6_prepare_output.__already_done, align 1
  br i1 %.b50.i, label %land.end.i251.return_crit_edge, label %if.then10.i, !prof !65

land.end.i251.return_crit_edge:                   ; preds = %land.end.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i:                                      ; preds = %land.end.i251
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfrm6_prepare_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #8
  br label %return

sw.bb12:                                          ; preds = %entry
  %family14 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %279 = ptrtoint ptr %family14 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %family14, align 1
  %281 = zext i8 %280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %280, label %sw.bb12.return_crit_edge [
    i8 2, label %if.then18
    i8 10, label %if.then26
  ]

sw.bb12.return_crit_edge:                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then18:                                        ; preds = %sw.bb12
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %282 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %284 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i253 = zext i16 %285 to i32
  %add.ptr.i.i.i254 = getelementptr i8, ptr %283, i32 %conv.i.i.i253
  %286 = ptrtoint ptr %add.ptr.i.i.i254 to i32
  call void @__asan_load1_noabort(i32 %286)
  %bf.load.i255 = load i8, ptr %add.ptr.i.i.i254, align 4
  %bf.clear.i = shl i8 %bf.load.i255, 2
  %287 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %287 to i32
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %288 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i2.i = zext i16 %289 to i32
  %add.ptr.i.i3.i = getelementptr i8, ptr %283, i32 %conv.i.i2.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %290 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i3.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %291 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.rhs.cast.i.i.i256 = ptrtoint ptr %283 to i32
  %sub.ptr.sub.i.i.i257 = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.rhs.cast.i.i.i256
  %conv.i.i5.i = trunc i32 %sub.ptr.sub.i.i.i257 to i16
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %292 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i.i = add i16 %292, %conv.i.i5.i
  %293 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %conv1.i.i, ptr %inner_transport_header.i.i.i, align 2
  %header_len.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %294 = ptrtoint ptr %header_len.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %header_len.i, align 4
  %296 = trunc i32 %295 to i16
  %conv1.i13.i = sub i16 %conv.i.i5.i, %296
  store i16 %conv1.i13.i, ptr %network_header.i.i.i, align 4
  %add.i = add i16 %conv1.i13.i, 9
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %297 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %add.i, ptr %mac_header.i, align 2
  %298 = zext i8 %287 to i16
  %conv7.i = add i16 %conv1.i13.i, %298
  store i16 %conv7.i, ptr %transport_header.i.i.i, align 2
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %299 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %len1.i.i, align 4
  %sub.i.i258 = sub i32 %300, %mul.i
  store i32 %sub.i.i258, ptr %len1.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %301 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i258, i32 %302)
  %cmp.i.i = icmp ult i32 %sub.i.i258, %302
  br i1 %cmp.i.i, label %do.body4.i.i, label %xfrm4_transport_output.exit, !prof !66

do.body4.i.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

xfrm4_transport_output.exit:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i259 = getelementptr i8, ptr %291, i32 %mul.i
  %303 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %add.ptr.i.i259, ptr %data.i.i, align 4
  %conv.i.i = zext i16 %conv1.i13.i to i32
  %add.ptr.i15.i = getelementptr i8, ptr %283, i32 %conv.i.i
  %304 = call ptr @memmove(ptr %add.ptr.i15.i, ptr %add.ptr.i.i.i254, i32 %mul.i)
  br label %return

if.then26:                                        ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr.i) #8
  %305 = ptrtoint ptr %prevhdr.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr.i, align 4, !annotation !68
  %head.i.i.i260 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %306 = ptrtoint ptr %head.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %head.i.i.i260, align 8
  %network_header.i.i.i261 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %308 = ptrtoint ptr %network_header.i.i.i261 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %network_header.i.i.i261, align 4
  %conv.i.i.i262 = zext i16 %309 to i32
  %add.ptr.i.i.i263 = getelementptr i8, ptr %307, i32 %conv.i.i.i262
  %transport_header.i.i.i264 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %310 = ptrtoint ptr %transport_header.i.i.i264 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %transport_header.i.i.i264, align 2
  %conv.i.i27.i = zext i16 %311 to i32
  %add.ptr.i.i28.i = getelementptr i8, ptr %307, i32 %conv.i.i27.i
  %data.i.i265 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %312 = ptrtoint ptr %data.i.i265 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %data.i.i265, align 4
  %sub.ptr.lhs.cast.i.i266 = ptrtoint ptr %add.ptr.i.i28.i to i32
  %sub.ptr.rhs.cast.i.i267 = ptrtoint ptr %313 to i32
  %sub.ptr.sub.i.i268 = sub i32 %sub.ptr.lhs.cast.i.i266, %sub.ptr.rhs.cast.i.i267
  %sub.ptr.rhs.cast.i.i.i269 = ptrtoint ptr %307 to i32
  %sub.ptr.sub.i.i.i270 = sub i32 %sub.ptr.rhs.cast.i.i267, %sub.ptr.rhs.cast.i.i.i269
  %conv.i.i30.i = trunc i32 %sub.ptr.sub.i.i.i270 to i16
  %inner_transport_header.i.i.i271 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %314 = trunc i32 %sub.ptr.sub.i.i268 to i16
  %conv1.i.i272 = add i16 %314, %conv.i.i30.i
  %315 = ptrtoint ptr %inner_transport_header.i.i.i271 to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %conv1.i.i272, ptr %inner_transport_header.i.i.i271, align 2
  %type.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %316 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %type.i.i, align 8
  %proto.i.i = getelementptr inbounds %struct.xfrm_type, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %proto.i.i, align 4
  %320 = zext i8 %319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %320, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %319, label %sw.epilog.i.i [
    i8 60, label %if.then26.sw.bb.i.i_crit_edge
    i8 43, label %if.then26.sw.bb.i.i_crit_edge318
  ]

if.then26.sw.bb.i.i_crit_edge318:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.then26.sw.bb.i.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then26.sw.bb.i.i_crit_edge, %if.then26.sw.bb.i.i_crit_edge318
  %conv3.i.i = zext i8 %319 to i32
  %call.i.i = call fastcc i32 @mip6_rthdr_offset(ptr noundef %skb, ptr noundef nonnull %prevhdr.i, i32 noundef %conv3.i.i) #8
  br label %xfrm6_hdr_offset.exit.i

sw.epilog.i.i:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 @ip6_find_1stfragopt(ptr noundef %skb, ptr noundef nonnull %prevhdr.i) #8
  br label %xfrm6_hdr_offset.exit.i

xfrm6_hdr_offset.exit.i:                          ; preds = %sw.epilog.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %call4.i.i, %sw.epilog.i.i ], [ %call.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %xfrm6_hdr_offset.exit.i.xfrm6_transport_output.exit_crit_edge, label %if.end.i278

xfrm6_hdr_offset.exit.i.xfrm6_transport_output.exit_crit_edge: ; preds = %xfrm6_hdr_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm6_transport_output.exit

if.end.i278:                                      ; preds = %xfrm6_hdr_offset.exit.i
  %321 = ptrtoint ptr %prevhdr.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %prevhdr.i, align 4
  %header_len.i273 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %323 = ptrtoint ptr %header_len.i273 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %header_len.i273, align 4
  %idx.neg.i = sub i32 0, %324
  %add.ptr.i = getelementptr i8, ptr %322, i32 %idx.neg.i
  %325 = ptrtoint ptr %data.i.i265 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %data.i.i265, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %326 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %327 = ptrtoint ptr %head.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %head.i.i.i260, align 8
  %sub.ptr.rhs.cast.i.i34.i = ptrtoint ptr %328 to i32
  %sub.ptr.sub.i.i35.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i.i34.i
  %conv.i.i36.i = trunc i32 %sub.ptr.sub.i.i35.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %329 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i37.i = add i16 %conv.i.i36.i, %329
  %330 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %conv1.i37.i, ptr %mac_header.i.i.i, align 2
  %331 = load i32, ptr %header_len.i273, align 4
  %332 = trunc i32 %331 to i16
  %conv1.i45.i = sub i16 %conv.i.i36.i, %332
  %333 = ptrtoint ptr %network_header.i.i.i261 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %conv1.i45.i, ptr %network_header.i.i.i261, align 4
  %334 = trunc i32 %retval.0.i.i to i16
  %conv5.i = add i16 %conv1.i45.i, %334
  %335 = ptrtoint ptr %transport_header.i.i.i264 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %conv5.i, ptr %transport_header.i.i.i264, align 2
  %len1.i.i274 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %336 = ptrtoint ptr %len1.i.i274 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %len1.i.i274, align 4
  %sub.i.i275 = sub i32 %337, %retval.0.i.i
  store i32 %sub.i.i275, ptr %len1.i.i274, align 4
  %data_len.i.i276 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %338 = ptrtoint ptr %data_len.i.i276 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %data_len.i.i276, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i275, i32 %339)
  %cmp.i.i277 = icmp ult i32 %sub.i.i275, %339
  br i1 %cmp.i.i277, label %do.body4.i.i279, label %__skb_pull.exit.i, !prof !66

do.body4.i.i279:                                  ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i280 = getelementptr i8, ptr %326, i32 %retval.0.i.i
  %340 = ptrtoint ptr %data.i.i265 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %add.ptr.i.i280, ptr %data.i.i265, align 4
  %conv.i.i49.i = zext i16 %conv1.i45.i to i32
  %add.ptr.i.i50.i = getelementptr i8, ptr %328, i32 %conv.i.i49.i
  %341 = call ptr @memmove(ptr %add.ptr.i.i50.i, ptr %add.ptr.i.i.i263, i32 %retval.0.i.i)
  br label %xfrm6_transport_output.exit

xfrm6_transport_output.exit:                      ; preds = %__skb_pull.exit.i, %xfrm6_hdr_offset.exit.i.xfrm6_transport_output.exit_crit_edge
  %retval.0.i281 = phi i32 [ 0, %__skb_pull.exit.i ], [ %retval.0.i.i, %xfrm6_hdr_offset.exit.i.xfrm6_transport_output.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr.i) #8
  br label %return

sw.bb29:                                          ; preds = %entry
  %family31 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %342 = ptrtoint ptr %family31 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %family31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %343)
  %cmp33 = icmp eq i8 %343, 10
  br i1 %cmp33, label %if.then35, label %land.end

if.then35:                                        ; preds = %sw.bb29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr.i282) #8
  %344 = ptrtoint ptr %prevhdr.i282 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr.i282, align 4, !annotation !68
  %head.i.i.i283 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %345 = ptrtoint ptr %head.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %head.i.i.i283, align 8
  %network_header.i.i.i284 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %347 = ptrtoint ptr %network_header.i.i.i284 to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %network_header.i.i.i284, align 4
  %conv.i.i.i285 = zext i16 %348 to i32
  %add.ptr.i.i.i286 = getelementptr i8, ptr %346, i32 %conv.i.i.i285
  %type.i.i287 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %349 = ptrtoint ptr %type.i.i287 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %type.i.i287, align 8
  %proto.i.i288 = getelementptr inbounds %struct.xfrm_type, ptr %350, i32 0, i32 1
  %351 = ptrtoint ptr %proto.i.i288 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %proto.i.i288, align 4
  %353 = zext i8 %352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %352, label %sw.epilog.i.i293 [
    i8 60, label %if.then35.sw.bb.i.i291_crit_edge
    i8 43, label %if.then35.sw.bb.i.i291_crit_edge319
  ]

if.then35.sw.bb.i.i291_crit_edge319:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i291

if.then35.sw.bb.i.i291_crit_edge:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i291

sw.bb.i.i291:                                     ; preds = %if.then35.sw.bb.i.i291_crit_edge, %if.then35.sw.bb.i.i291_crit_edge319
  %conv3.i.i289 = zext i8 %352 to i32
  %call.i.i290 = call fastcc i32 @mip6_rthdr_offset(ptr noundef %skb, ptr noundef nonnull %prevhdr.i282, i32 noundef %conv3.i.i289) #8
  br label %xfrm6_hdr_offset.exit.i296

sw.epilog.i.i293:                                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i292 = call i32 @ip6_find_1stfragopt(ptr noundef %skb, ptr noundef nonnull %prevhdr.i282) #8
  br label %xfrm6_hdr_offset.exit.i296

xfrm6_hdr_offset.exit.i296:                       ; preds = %sw.epilog.i.i293, %sw.bb.i.i291
  %retval.0.i.i294 = phi i32 [ %call4.i.i292, %sw.epilog.i.i293 ], [ %call.i.i290, %sw.bb.i.i291 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i294)
  %cmp.i295 = icmp slt i32 %retval.0.i.i294, 0
  br i1 %cmp.i295, label %xfrm6_hdr_offset.exit.i296.xfrm6_ro_output.exit_crit_edge, label %if.end.i311

xfrm6_hdr_offset.exit.i296.xfrm6_ro_output.exit_crit_edge: ; preds = %xfrm6_hdr_offset.exit.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm6_ro_output.exit

if.end.i311:                                      ; preds = %xfrm6_hdr_offset.exit.i296
  %354 = ptrtoint ptr %prevhdr.i282 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %prevhdr.i282, align 4
  %header_len.i297 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %356 = ptrtoint ptr %header_len.i297 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %header_len.i297, align 4
  %idx.neg.i298 = sub i32 0, %357
  %add.ptr.i299 = getelementptr i8, ptr %355, i32 %idx.neg.i298
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %358 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i300 = ptrtoint ptr %add.ptr.i299 to i32
  %sub.ptr.rhs.cast.i301 = ptrtoint ptr %359 to i32
  %sub.ptr.sub.i302 = sub i32 %sub.ptr.lhs.cast.i300, %sub.ptr.rhs.cast.i301
  %360 = ptrtoint ptr %head.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %head.i.i.i283, align 8
  %sub.ptr.rhs.cast.i.i.i303 = ptrtoint ptr %361 to i32
  %sub.ptr.sub.i.i.i304 = sub i32 %sub.ptr.rhs.cast.i301, %sub.ptr.rhs.cast.i.i.i303
  %conv.i.i26.i = trunc i32 %sub.ptr.sub.i.i.i304 to i16
  %mac_header.i.i.i305 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %362 = trunc i32 %sub.ptr.sub.i302 to i16
  %conv1.i.i306 = add i16 %conv.i.i26.i, %362
  %363 = ptrtoint ptr %mac_header.i.i.i305 to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %conv1.i.i306, ptr %mac_header.i.i.i305, align 2
  %364 = load i32, ptr %header_len.i297, align 4
  %365 = trunc i32 %364 to i16
  %conv1.i34.i = sub i16 %conv.i.i26.i, %365
  %366 = ptrtoint ptr %network_header.i.i.i284 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %conv1.i34.i, ptr %network_header.i.i.i284, align 4
  %367 = trunc i32 %retval.0.i.i294 to i16
  %conv4.i = add i16 %conv1.i34.i, %367
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %368 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv4.i, ptr %transport_header.i, align 2
  %len1.i.i307 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %369 = ptrtoint ptr %len1.i.i307 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %len1.i.i307, align 4
  %sub.i.i308 = sub i32 %370, %retval.0.i.i294
  store i32 %sub.i.i308, ptr %len1.i.i307, align 4
  %data_len.i.i309 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %371 = ptrtoint ptr %data_len.i.i309 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %data_len.i.i309, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i308, i32 %372)
  %cmp.i.i310 = icmp ult i32 %sub.i.i308, %372
  br i1 %cmp.i.i310, label %do.body4.i.i312, label %__skb_pull.exit.i314, !prof !66

do.body4.i.i312:                                  ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

__skb_pull.exit.i314:                             ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i313 = getelementptr i8, ptr %359, i32 %retval.0.i.i294
  %373 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %add.ptr.i.i313, ptr %data.i, align 4
  %conv.i.i37.i = zext i16 %conv1.i34.i to i32
  %add.ptr.i.i38.i = getelementptr i8, ptr %361, i32 %conv.i.i37.i
  %374 = call ptr @memmove(ptr %add.ptr.i.i38.i, ptr %add.ptr.i.i.i286, i32 %retval.0.i.i294)
  %call7.i = call i64 @ktime_get_real_seconds() #8
  %lastused.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 43
  %375 = ptrtoint ptr %lastused.i to i32
  call void @__asan_store8_noabort(i32 %375)
  store i64 %call7.i, ptr %lastused.i, align 8
  br label %xfrm6_ro_output.exit

xfrm6_ro_output.exit:                             ; preds = %__skb_pull.exit.i314, %xfrm6_hdr_offset.exit.i296.xfrm6_ro_output.exit_crit_edge
  %retval.0.i315 = phi i32 [ 0, %__skb_pull.exit.i314 ], [ %retval.0.i.i294, %xfrm6_hdr_offset.exit.i296.xfrm6_ro_output.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr.i282) #8
  br label %return

land.end:                                         ; preds = %sw.bb29
  %.b141 = load i1, ptr @xfrm_outer_mode_output.__already_done, align 1
  br i1 %.b141, label %land.end.return_crit_edge, label %if.then43, !prof !65

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfrm_outer_mode_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 9, ptr noundef null) #8
  br label %return

land.end80:                                       ; preds = %entry
  %.b140142 = load i1, ptr @xfrm_outer_mode_output.__already_done.1, align 1
  br i1 %.b140142, label %land.end80.return_crit_edge, label %if.then87, !prof !65

land.end80.return_crit_edge:                      ; preds = %land.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then87:                                        ; preds = %land.end80
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfrm_outer_mode_output.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 475, i32 noundef 9, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.then87, %land.end80.return_crit_edge, %if.then43, %land.end.return_crit_edge, %xfrm6_ro_output.exit, %xfrm6_transport_output.exit, %xfrm4_transport_output.exit, %sw.bb12.return_crit_edge, %if.then10.i, %land.end.i251.return_crit_edge, %xfrm6_tunnel_encap_add.exit.i, %xfrm6_beet_encap_add.exit.i, %if.then9.return_crit_edge, %if.then12.i, %land.end.i.return_crit_edge, %if.else.i.i.i.i, %if.then12.i.i.i.i, %xfrm4_beet_encap_add.exit.i, %if.then.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i315, %xfrm6_ro_output.exit ], [ 0, %xfrm4_transport_output.exit ], [ %retval.0.i281, %xfrm6_transport_output.exit ], [ -95, %land.end80.return_crit_edge ], [ -95, %if.then87 ], [ -95, %land.end.return_crit_edge ], [ -95, %if.then43 ], [ -95, %sw.bb12.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ 0, %xfrm4_beet_encap_add.exit.i ], [ %call.i, %if.then.return_crit_edge ], [ -95, %if.then12.i ], [ -95, %land.end.i.return_crit_edge ], [ 0, %if.then12.i.i.i.i ], [ 0, %if.else.i.i.i.i ], [ 0, %xfrm6_tunnel_encap_add.exit.i ], [ 0, %xfrm6_beet_encap_add.exit.i ], [ %call.i143, %if.then9.return_crit_edge ], [ -95, %if.then10.i ], [ -95, %land.end.i251.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm_output_resume(ptr noundef %sk, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !66

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfrm, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %slow_gro.i655.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %skb_dst.exit116.while.cond_crit_edge, %skb_dst.exit
  %err.addr.0 = phi i32 [ %err, %skb_dst.exit ], [ 1, %skb_dst.exit116.while.cond_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

while.cond.skb_dst.exit.i_crit_edge:              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %while.cond
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !66

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %while.cond.skb_dst.exit.i_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfrm.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.addr.0)
  %cmp.i = icmp slt i32 %err.addr.0, 1
  br i1 %cmp.i, label %skb_dst.exit.i.resume.i_crit_edge, label %skb_dst.exit.i.do.body.i_crit_edge

skb_dst.exit.i.do.body.i_crit_edge:               ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

skb_dst.exit.i.resume.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resume.i

do.body.i:                                        ; preds = %land.rhs.i55.do.body.i_crit_edge, %skb_dst.exit.i.do.body.i_crit_edge
  %x.0.i = phi ptr [ %229, %land.rhs.i55.do.body.i_crit_edge ], [ %17, %skb_dst.exit.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.body.i.skb_dst.exit.i.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !66

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %do.body.i.skb_dst.exit.i.i_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %23, -2
  %24 = inttoptr i32 %and25.i.i.i to ptr
  %header_len.i.i = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %header_len.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hard_header_len.i.i, align 2
  %conv1.i.i = zext i16 %30 to i32
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 21
  %31 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %needed_headroom.i.i, align 8
  %conv3.i.i = zext i16 %32 to i32
  %add.i.i = add nuw nsw i32 %conv3.i.i, %conv1.i.i
  %and.i593.i = and i32 %add.i.i, 131056
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %35 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %add4.i.i = add nuw nsw i32 %conv.i.i, 16
  %add5.i.i = add nuw nsw i32 %add4.i.i, %and.i593.i
  %sub.i.i = add i32 %add5.i.i, %sub.ptr.sub.i.neg.i.i
  %needed_tailroom.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 22
  %37 = ptrtoint ptr %needed_tailroom.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %needed_tailroom.i.i, align 2
  %conv8.i.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %skb_dst.exit.i.i.skb_tailroom.exit.i.i_crit_edge

skb_dst.exit.i.i.skb_tailroom.exit.i.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i.i, align 4
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i32.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i33.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i34.neg.i.i = sub i32 %sub.ptr.rhs.cast.i33.i.i, %sub.ptr.lhs.cast.i32.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %skb_dst.exit.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.neg.i.i = phi i32 [ %sub.ptr.sub.i34.neg.i.i, %cond.false.i.i.i ], [ 0, %skb_dst.exit.i.i.skb_tailroom.exit.i.i_crit_edge ]
  %sub10.i.i = add i32 %cond.i.neg.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub10.i.i)
  %cmp12.i.i = icmp slt i32 %sub10.i.i, 1
  br i1 %cmp12.i.i, label %if.then.i.i.if.end46.i_crit_edge, label %if.then.i.i.xfrm_skb_check_space.exit.i_crit_edge

if.then.i.i.xfrm_skb_check_space.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_skb_check_space.exit.i

if.then.i.i.if.end46.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.else.i.i:                                      ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = tail call i32 @llvm.smax.i32(i32 %sub10.i.i, i32 0) #8
  br label %xfrm_skb_check_space.exit.i

xfrm_skb_check_space.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i.xfrm_skb_check_space.exit.i_crit_edge
  %nhead.0.i.i = phi i32 [ %sub.i.i, %if.else.i.i ], [ 0, %if.then.i.i.xfrm_skb_check_space.exit.i_crit_edge ]
  %ntail.0.i.i = phi i32 [ %45, %if.else.i.i ], [ %sub10.i.i, %if.then.i.i.xfrm_skb_check_space.exit.i_crit_edge ]
  %call20.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %nhead.0.i.i, i32 noundef %ntail.0.i.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i54 = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i54, label %xfrm_skb_check_space.exit.i.if.end46.i_crit_edge, label %do.body5.i

xfrm_skb_check_space.exit.i.if.end46.i_crit_edge: ; preds = %xfrm_skb_check_space.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

do.body5.i:                                       ; preds = %xfrm_skb_check_space.exit.i
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %47 = ptrtoint ptr %xfrm_statistics.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xfrm_statistics.i, align 4
  %arrayidx.i = getelementptr [29 x i32], ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %arrayidx.i to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i594.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i594.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i, align 4
  %arrayidx20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx20.i, align 4
  %add.i = add i32 %55, %49
  %56 = inttoptr i32 %add.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add21.i = add i32 %58, 1
  store i32 %add21.i, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i595.i = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i595.i)
  %tobool32.not.i = icmp eq i32 %and.i.i595.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body5.i.do.end39.i_crit_edge, !prof !66

do.body5.i.do.end39.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

if.then36.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then36.i, %do.body5.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #8, !srcloc !71
  br label %while.end

if.end46.i:                                       ; preds = %xfrm_skb_check_space.exit.i.if.end46.i_crit_edge, %if.then.i.i.if.end46.i_crit_edge
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %10, align 4
  %smark.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 14, i32 12
  %62 = ptrtoint ptr %smark.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %smark.i.i, align 4
  %m1.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 14, i32 12, i32 1
  %64 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m1.i.i, align 4
  %and.i596.i = and i32 %65, %63
  %neg.i.i = xor i32 %65, -1
  %and3.i.i = and i32 %61, %neg.i.i
  %or.i.i = or i32 %and.i596.i, %and3.i.i
  store i32 %or.i.i, ptr %10, align 4
  %call48.i = tail call fastcc i32 @xfrm_outer_mode_output(ptr noundef %x.0.i, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end113.i, label %do.body52.i

do.body52.i:                                      ; preds = %if.end46.i
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics75.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %67 = ptrtoint ptr %xfrm_statistics75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xfrm_statistics75.i, align 4
  %arrayidx77.i = getelementptr [29 x i32], ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %arrayidx77.i to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i597.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i597.i to ptr
  %cpu80.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu80.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu80.i, align 4
  %arrayidx81.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx81.i, align 4
  %add82.i = add i32 %75, %69
  %76 = inttoptr i32 %add82.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add83.i = add i32 %78, 1
  store i32 %add83.i, ptr %76, align 4
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i598.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i598.i)
  %tobool94.not.i = icmp eq i32 %and.i.i598.i, 0
  br i1 %tobool94.not.i, label %if.then103.i, label %do.body52.i.do.end106.i_crit_edge, !prof !66

do.body52.i.do.end106.i_crit_edge:                ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106.i

if.then103.i:                                     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end106.i

do.end106.i:                                      ; preds = %if.then103.i, %do.body52.i.do.end106.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #8, !srcloc !71
  br label %while.end

if.end113.i:                                      ; preds = %if.end46.i
  %lock.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %state.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 13, i32 1
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp115.not.i = icmp eq i8 %81, 2
  br i1 %cmp115.not.i, label %if.end186.i, label %do.body125.i, !prof !65

do.body125.i:                                     ; preds = %if.end113.i
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics148.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %83 = ptrtoint ptr %xfrm_statistics148.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xfrm_statistics148.i, align 4
  %arrayidx150.i = getelementptr [29 x i32], ptr %84, i32 0, i32 27
  %85 = ptrtoint ptr %arrayidx150.i to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i599.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i599.i to ptr
  %cpu153.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu153.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu153.i, align 4
  %arrayidx154.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %91, %85
  %92 = inttoptr i32 %add155.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add156.i = add i32 %94, 1
  store i32 %add156.i, ptr %92, align 4
  %95 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i600.i = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i600.i)
  %tobool167.not.i = icmp eq i32 %and.i.i600.i, 0
  br i1 %tobool167.not.i, label %if.then176.i, label %do.body125.i.do.end179.i_crit_edge, !prof !66

do.body125.i.do.end179.i_crit_edge:               ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end179.i

if.then176.i:                                     ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end179.i

do.end179.i:                                      ; preds = %if.then176.i, %do.body125.i.do.end179.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #8, !srcloc !71
  br label %error.i

if.end186.i:                                      ; preds = %if.end113.i
  %call187.i = tail call i32 @xfrm_state_check_expire(ptr noundef %x.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187.i)
  %tobool188.not.i = icmp eq i32 %call187.i, 0
  br i1 %tobool188.not.i, label %if.end253.i, label %do.body191.i

do.body191.i:                                     ; preds = %if.end186.i
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics214.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %97 = ptrtoint ptr %xfrm_statistics214.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xfrm_statistics214.i, align 4
  %arrayidx216.i = getelementptr [29 x i32], ptr %98, i32 0, i32 22
  %99 = ptrtoint ptr %arrayidx216.i to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i601.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i601.i to ptr
  %cpu219.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu219.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu219.i, align 4
  %arrayidx220.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx220.i, align 4
  %add221.i = add i32 %105, %99
  %106 = inttoptr i32 %add221.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add222.i = add i32 %108, 1
  store i32 %add222.i, ptr %106, align 4
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i602.i = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i602.i)
  %tobool234.not.i = icmp eq i32 %and.i.i602.i, 0
  br i1 %tobool234.not.i, label %if.then243.i, label %do.body191.i.do.end246.i_crit_edge, !prof !66

do.body191.i.do.end246.i_crit_edge:               ; preds = %do.body191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end246.i

if.then243.i:                                     ; preds = %do.body191.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end246.i

do.end246.i:                                      ; preds = %if.then243.i, %do.body191.i.do.end246.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %96) #8, !srcloc !71
  br label %error.i

if.end253.i:                                      ; preds = %if.end186.i
  %call254.i = tail call i32 @xfrm_replay_overflow(ptr noundef %x.0.i, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254.i)
  %tobool255.not.i = icmp eq i32 %call254.i, 0
  br i1 %tobool255.not.i, label %if.end319.i, label %do.body258.i

do.body258.i:                                     ; preds = %if.end253.i
  %110 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics281.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %111 = ptrtoint ptr %xfrm_statistics281.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xfrm_statistics281.i, align 4
  %arrayidx283.i = getelementptr [29 x i32], ptr %112, i32 0, i32 21
  %113 = ptrtoint ptr %arrayidx283.i to i32
  %114 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i603.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i603.i to ptr
  %cpu286.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %cpu286.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu286.i, align 4
  %arrayidx287.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx287.i, align 4
  %add288.i = add i32 %119, %113
  %120 = inttoptr i32 %add288.i to ptr
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add289.i = add i32 %122, 1
  store i32 %add289.i, ptr %120, align 4
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i604.i = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i604.i)
  %tobool300.not.i = icmp eq i32 %and.i.i604.i, 0
  br i1 %tobool300.not.i, label %if.then309.i, label %do.body258.i.do.end312.i_crit_edge, !prof !66

do.body258.i.do.end312.i_crit_edge:               ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end312.i

if.then309.i:                                     ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end312.i

do.end312.i:                                      ; preds = %if.then309.i, %do.body258.i.do.end312.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %110) #8, !srcloc !71
  br label %error.i

if.end319.i:                                      ; preds = %if.end253.i
  %124 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i, align 4
  %conv320.i = zext i32 %125 to i64
  %curlft.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 39
  %126 = ptrtoint ptr %curlft.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %curlft.i, align 8
  %add321.i = add i64 %127, %conv320.i
  store i64 %add321.i, ptr %curlft.i, align 8
  %packets.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 39, i32 1
  %128 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %packets.i, align 8
  %inc.i = add i64 %129, 1
  store i64 %inc.i, ptr %packets.i, align 8
  %call323.i = tail call i64 @ktime_get_real_seconds() #8
  %use_time.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 39, i32 3
  %130 = ptrtoint ptr %use_time.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %call323.i, ptr %use_time.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %131 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %0, align 8
  %and.i.i605.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i605.i)
  %tobool.not.i.i606.i = icmp eq i32 %and.i.i605.i, 0
  br i1 %tobool.not.i.i606.i, label %if.end319.i.skb_dst_force.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end319.i.skb_dst_force.exit.i_crit_edge:       ; preds = %if.end319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_force.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end319.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_is_noref.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, !prof !66

land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_is_noref.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst_is_noref.exit.i.i

skb_dst_is_noref.exit.i.i:                        ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge
  %133 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %tobool1.i.i.i = icmp ugt i32 %134, 1
  br i1 %tobool1.i.i.i, label %if.then.i607.i, label %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge

skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_force.exit.i

if.then.i607.i:                                   ; preds = %skb_dst_is_noref.exit.i.i
  %and.i2.i.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i607.i.skb_dst.exit.i618.i_crit_edge, label %land.lhs.true.i.i610.i

if.then.i607.i.skb_dst.exit.i618.i_crit_edge:     ; preds = %if.then.i607.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i618.i

land.lhs.true.i.i610.i:                           ; preds = %if.then.i607.i
  %call.i.i608.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i608.i)
  %tobool1.not.i.i609.i = icmp eq i32 %call.i.i608.i, 0
  br i1 %tobool1.not.i.i609.i, label %land.rhs.i.i613.i, label %land.lhs.true.i.i610.i.skb_dst.exit.i618.i_crit_edge

land.lhs.true.i.i610.i.skb_dst.exit.i618.i_crit_edge: ; preds = %land.lhs.true.i.i610.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i618.i

land.rhs.i.i613.i:                                ; preds = %land.lhs.true.i.i610.i
  %call2.i.i611.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i611.i)
  %tobool3.not.i.i612.i = icmp eq i32 %call2.i.i611.i, 0
  br i1 %tobool3.not.i.i612.i, label %do.end.i.i614.i, label %land.rhs.i.i613.i.skb_dst.exit.i618.i_crit_edge, !prof !66

land.rhs.i.i613.i.skb_dst.exit.i618.i_crit_edge:  ; preds = %land.rhs.i.i613.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i618.i

do.end.i.i614.i:                                  ; preds = %land.rhs.i.i613.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i618.i

skb_dst.exit.i618.i:                              ; preds = %do.end.i.i614.i, %land.rhs.i.i613.i.skb_dst.exit.i618.i_crit_edge, %land.lhs.true.i.i610.i.skb_dst.exit.i618.i_crit_edge, %if.then.i607.i.skb_dst.exit.i618.i_crit_edge
  %135 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %0, align 8
  %and25.i.i615.i = and i32 %136, -2
  %137 = inttoptr i32 %and25.i.i615.i to ptr
  %call2.i616.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i616.i)
  %tobool.not.i617.i = icmp eq i32 %call2.i616.i, 0
  br i1 %tobool.not.i617.i, label %do.end.i619.i, label %skb_dst.exit.i618.i.if.end.i.i_crit_edge, !prof !66

skb_dst.exit.i618.i.if.end.i.i_crit_edge:         ; preds = %skb_dst.exit.i618.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i619.i:                                    ; preds = %skb_dst.exit.i618.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 316, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i619.i, %skb_dst.exit.i618.i.if.end.i.i_crit_edge
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %137, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #8
  %138 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end.i.i.dst_hold_safe.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_hold_safe.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  br label %dst_hold_safe.exit.i.i

dst_hold_safe.exit.i.i:                           ; preds = %do.end11.i.i.i.i.i.i.i, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge
  %spec.select.i.i = phi ptr [ null, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge ], [ %137, %do.end11.i.i.i.i.i.i.i ]
  %139 = ptrtoint ptr %spec.select.i.i to i32
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %0, align 8
  %tobool27.not.i.i = icmp eq ptr %spec.select.i.i, null
  %141 = ptrtoint ptr %slow_gro.i655.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i655.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool27.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear34.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear34.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i655.i, align 2
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.i.i, %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge, %if.end319.i.skb_dst_force.exit.i_crit_edge
  %142 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %0, align 8
  %and.i620.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i620.i)
  %tobool.not.i621.i = icmp eq i32 %and.i620.i, 0
  br i1 %tobool.not.i621.i, label %skb_dst_force.exit.i.skb_dst.exit631.i_crit_edge, label %land.lhs.true.i624.i

skb_dst_force.exit.i.skb_dst.exit631.i_crit_edge: ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit631.i

land.lhs.true.i624.i:                             ; preds = %skb_dst_force.exit.i
  %call.i622.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i622.i)
  %tobool1.not.i623.i = icmp eq i32 %call.i622.i, 0
  br i1 %tobool1.not.i623.i, label %land.rhs.i627.i, label %land.lhs.true.i624.i.skb_dst.exit631thread-pre-split.i_crit_edge

land.lhs.true.i624.i.skb_dst.exit631thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i624.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit631thread-pre-split.i

land.rhs.i627.i:                                  ; preds = %land.lhs.true.i624.i
  %call2.i625.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i625.i)
  %tobool3.not.i626.i = icmp eq i32 %call2.i625.i, 0
  br i1 %tobool3.not.i626.i, label %do.end.i628.i, label %land.rhs.i627.i.skb_dst.exit631thread-pre-split.i_crit_edge, !prof !66

land.rhs.i627.i.skb_dst.exit631thread-pre-split.i_crit_edge: ; preds = %land.rhs.i627.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit631thread-pre-split.i

do.end.i628.i:                                    ; preds = %land.rhs.i627.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit631thread-pre-split.i

skb_dst.exit631thread-pre-split.i:                ; preds = %do.end.i628.i, %land.rhs.i627.i.skb_dst.exit631thread-pre-split.i_crit_edge, %land.lhs.true.i624.i.skb_dst.exit631thread-pre-split.i_crit_edge
  %144 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pr.i = load i32, ptr %0, align 8
  br label %skb_dst.exit631.i

skb_dst.exit631.i:                                ; preds = %skb_dst.exit631thread-pre-split.i, %skb_dst_force.exit.i.skb_dst.exit631.i_crit_edge
  %145 = phi i32 [ %.pr.i, %skb_dst.exit631thread-pre-split.i ], [ %143, %skb_dst_force.exit.i.skb_dst.exit631.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %145)
  %tobool328.not.i = icmp ult i32 %145, 2
  br i1 %tobool328.not.i, label %do.body331.i, label %if.end392.i

do.body331.i:                                     ; preds = %skb_dst.exit631.i
  %146 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics354.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %147 = ptrtoint ptr %xfrm_statistics354.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xfrm_statistics354.i, align 4
  %arrayidx356.i = getelementptr [29 x i32], ptr %148, i32 0, i32 15
  %149 = ptrtoint ptr %arrayidx356.i to i32
  %150 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i632.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i632.i to ptr
  %cpu359.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %cpu359.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu359.i, align 4
  %arrayidx360.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx360.i, align 4
  %add361.i = add i32 %155, %149
  %156 = inttoptr i32 %add361.i to ptr
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %add362.i = add i32 %158, 1
  store i32 %add362.i, ptr %156, align 4
  %159 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i633.i = and i32 %159, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i633.i)
  %tobool373.not.i = icmp eq i32 %and.i.i633.i, 0
  br i1 %tobool373.not.i, label %if.then382.i, label %do.body331.i.do.end385.i_crit_edge, !prof !66

do.body331.i.do.end385.i_crit_edge:               ; preds = %do.body331.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end385.i

if.then382.i:                                     ; preds = %do.body331.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end385.i

do.end385.i:                                      ; preds = %if.then382.i, %do.body331.i.do.end385.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %146) #8, !srcloc !71
  br label %while.end.thread121

if.end392.i:                                      ; preds = %skb_dst.exit631.i
  %160 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %162 = and i8 %161, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.i.not.i.i.i.i = icmp eq i8 %162, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end392.i.if.else.i_crit_edge, label %skb_sec_path.exit.i.i

if.end392.i.if.else.i_crit_edge:                  ; preds = %if.end392.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

skb_sec_path.exit.i.i:                            ; preds = %if.end392.i
  %163 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %164, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %166 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %164, i32 %shl.i.i.i.i
  %tobool.not.i634.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i634.i, label %skb_sec_path.exit.i.i.if.else.i_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.if.else.i_crit_edge:        ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool1.not.i635.i = icmp eq i32 %168, 0
  br i1 %tobool1.not.i635.i, label %lor.lhs.false.i.i.if.else.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %169 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %168)
  %cmp.not.i.i = icmp eq i32 %170, %168
  br i1 %cmp.not.i.i, label %xfrm_offload.exit.i, label %lor.lhs.false2.i.i.if.else.i_crit_edge

lor.lhs.false2.i.i.if.else.i_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

xfrm_offload.exit.i:                              ; preds = %lor.lhs.false2.i.i
  %sub.i636.i = add i32 %168, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i636.i
  %tobool394.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool394.not.i, label %xfrm_offload.exit.i.if.else.i_crit_edge, label %if.then395.i

xfrm_offload.exit.i.if.else.i_crit_edge:          ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then395.i:                                     ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %type_offload.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 49
  %171 = ptrtoint ptr %type_offload.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %type_offload.i, align 8
  %encap.i = getelementptr inbounds %struct.xfrm_type_offload, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %encap.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %encap.i, align 4
  tail call void %174(ptr noundef %x.0.i, ptr noundef %skb) #8
  br label %resume.i

if.else.i:                                        ; preds = %xfrm_offload.exit.i.if.else.i_crit_edge, %lor.lhs.false2.i.i.if.else.i_crit_edge, %lor.lhs.false.i.i.if.else.i_crit_edge, %skb_sec_path.exit.i.i.if.else.i_crit_edge, %if.end392.i.if.else.i_crit_edge
  %175 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -5
  store i16 %bf.clear.i, ptr %encapsulation.i, align 8
  %type.i = getelementptr inbounds %struct.xfrm_state, ptr %x.0.i, i32 0, i32 45
  %176 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %type.i, align 8
  %output.i = getelementptr inbounds %struct.xfrm_type, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %output.i, align 4
  %call396.i = tail call i32 %179(ptr noundef %x.0.i, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call396.i)
  %cmp397.i = icmp eq i32 %call396.i, -115
  br i1 %cmp397.i, label %if.else.i.while.end.thread_crit_edge, label %if.else.i.resume.i_crit_edge

if.else.i.resume.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resume.i

if.else.i.while.end.thread_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

resume.i:                                         ; preds = %if.else.i.resume.i_crit_edge, %if.then395.i, %skb_dst.exit.i.resume.i_crit_edge
  %err.addr.1.i = phi i32 [ %err.addr.0, %skb_dst.exit.i.resume.i_crit_edge ], [ 0, %if.then395.i ], [ %call396.i, %if.else.i.resume.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.1.i)
  %tobool402.not.i = icmp eq i32 %err.addr.1.i, 0
  br i1 %tobool402.not.i, label %if.end466.i, label %do.body405.i

do.body405.i:                                     ; preds = %resume.i
  %180 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics428.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %181 = ptrtoint ptr %xfrm_statistics428.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %xfrm_statistics428.i, align 4
  %arrayidx430.i = getelementptr [29 x i32], ptr %182, i32 0, i32 19
  %183 = ptrtoint ptr %arrayidx430.i to i32
  %184 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i639.i = and i32 %184, -16384
  %185 = inttoptr i32 %and.i639.i to ptr
  %cpu433.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %cpu433.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cpu433.i, align 4
  %arrayidx434.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %187
  %188 = ptrtoint ptr %arrayidx434.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx434.i, align 4
  %add435.i = add i32 %189, %183
  %190 = inttoptr i32 %add435.i to ptr
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %add436.i = add i32 %192, 1
  store i32 %add436.i, ptr %190, align 4
  %193 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i640.i = and i32 %193, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i640.i)
  %tobool447.not.i = icmp eq i32 %and.i.i640.i, 0
  br i1 %tobool447.not.i, label %if.then456.i, label %do.body405.i.do.end459.i_crit_edge, !prof !66

do.body405.i.do.end459.i_crit_edge:               ; preds = %do.body405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end459.i

if.then456.i:                                     ; preds = %do.body405.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end459.i

do.end459.i:                                      ; preds = %if.then456.i, %do.body405.i.do.end459.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %180) #8, !srcloc !71
  br label %while.end

if.end466.i:                                      ; preds = %resume.i
  %194 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %0, align 8
  %and.i.i641.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i641.i)
  %tobool.not.i.i642.i = icmp eq i32 %and.i.i641.i, 0
  br i1 %tobool.not.i.i642.i, label %if.end466.i.skb_dst.exit.i651.i_crit_edge, label %land.lhs.true.i.i645.i

if.end466.i.skb_dst.exit.i651.i_crit_edge:        ; preds = %if.end466.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i651.i

land.lhs.true.i.i645.i:                           ; preds = %if.end466.i
  %call.i.i643.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i643.i)
  %tobool1.not.i.i644.i = icmp eq i32 %call.i.i643.i, 0
  br i1 %tobool1.not.i.i644.i, label %land.rhs.i.i648.i, label %land.lhs.true.i.i645.i.skb_dst.exit.i651.i_crit_edge

land.lhs.true.i.i645.i.skb_dst.exit.i651.i_crit_edge: ; preds = %land.lhs.true.i.i645.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i651.i

land.rhs.i.i648.i:                                ; preds = %land.lhs.true.i.i645.i
  %call2.i.i646.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i646.i)
  %tobool3.not.i.i647.i = icmp eq i32 %call2.i.i646.i, 0
  br i1 %tobool3.not.i.i647.i, label %do.end.i.i649.i, label %land.rhs.i.i648.i.skb_dst.exit.i651.i_crit_edge, !prof !66

land.rhs.i.i648.i.skb_dst.exit.i651.i_crit_edge:  ; preds = %land.rhs.i.i648.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i651.i

do.end.i.i649.i:                                  ; preds = %land.rhs.i.i648.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i651.i

skb_dst.exit.i651.i:                              ; preds = %do.end.i.i649.i, %land.rhs.i.i648.i.skb_dst.exit.i651.i_crit_edge, %land.lhs.true.i.i645.i.skb_dst.exit.i651.i_crit_edge, %if.end466.i.skb_dst.exit.i651.i_crit_edge
  %196 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %0, align 8
  %and25.i.i650.i = and i32 %197, -2
  %198 = inttoptr i32 %and25.i.i650.i to ptr
  %xfrm.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %xfrm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %xfrm.i.i.i, align 4
  %tobool.not.i4.i.i = icmp eq ptr %200, null
  br i1 %tobool.not.i4.i.i, label %lor.lhs.false.i.i.i, label %skb_dst.exit.i651.i.xfrm_dst_child.exit.i.i_crit_edge

skb_dst.exit.i651.i.xfrm_dst_child.exit.i.i_crit_edge: ; preds = %skb_dst.exit.i651.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %skb_dst.exit.i651.i
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %198, i32 0, i32 7
  %201 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %flags.i.i.i, align 4
  %203 = and i16 %202, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool1.not.i5.i.i = icmp eq i16 %203, 0
  br i1 %tobool1.not.i5.i.i, label %lor.lhs.false.i.i.i.dst_clone.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge

lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit.i.i

lor.lhs.false.i.i.i.dst_clone.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_clone.exit.i.i

xfrm_dst_child.exit.i.i:                          ; preds = %lor.lhs.false.i.i.i.xfrm_dst_child.exit.i.i_crit_edge, %skb_dst.exit.i651.i.xfrm_dst_child.exit.i.i_crit_edge
  %child.i.i.i = getelementptr inbounds %struct.xfrm_dst, ptr %198, i32 0, i32 2
  %204 = ptrtoint ptr %child.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %child.i.i.i, align 4
  %tobool.not.i6.i.i = icmp eq ptr %205, null
  br i1 %tobool.not.i6.i.i, label %xfrm_dst_child.exit.i.i.dst_clone.exit.i.i_crit_edge, label %if.then.i7.i.i

xfrm_dst_child.exit.i.i.dst_clone.exit.i.i_crit_edge: ; preds = %xfrm_dst_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_clone.exit.i.i

if.then.i7.i.i:                                   ; preds = %xfrm_dst_child.exit.i.i
  %__refcnt.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %205, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i.i, i32 1, i32 3, i32 1) #8
  %206 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i.i, ptr %__refcnt.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i.i) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %206, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %do.end10.i.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i.i:          ; preds = %if.then.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  br label %dst_clone.exit.i.i

do.end10.i.i.i.i:                                 ; preds = %if.then.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %dst_clone.exit.i.i

dst_clone.exit.i.i:                               ; preds = %do.end10.i.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i.i, %xfrm_dst_child.exit.i.i.dst_clone.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.dst_clone.exit.i.i_crit_edge
  %retval.0.i12.i.i = phi ptr [ null, %xfrm_dst_child.exit.i.i.dst_clone.exit.i.i_crit_edge ], [ %205, %atomic_inc_not_zero.exit.thread.i.i.i.i ], [ %205, %do.end10.i.i.i.i ], [ null, %lor.lhs.false.i.i.i.dst_clone.exit.i.i_crit_edge ]
  %207 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i8.i.i = icmp eq i32 %208, 0
  br i1 %tobool.not.i8.i.i, label %dst_clone.exit.i.i.skb_dst_pop.exit.i_crit_edge, label %if.then.i9.i.i

dst_clone.exit.i.i.skb_dst_pop.exit.i_crit_edge:  ; preds = %dst_clone.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_pop.exit.i

if.then.i9.i.i:                                   ; preds = %dst_clone.exit.i.i
  %and.i.i.i.i = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i9.i.i.refdst_drop.exit.i.i.i_crit_edge

if.then.i9.i.i.refdst_drop.exit.i.i.i_crit_edge:  ; preds = %if.then.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refdst_drop.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i.i.i = and i32 %208, -2
  %209 = inttoptr i32 %and1.i.i.i.i to ptr
  tail call void @dst_release(ptr noundef %209) #8
  br label %refdst_drop.exit.i.i.i

refdst_drop.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %if.then.i9.i.i.refdst_drop.exit.i.i.i_crit_edge
  %210 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %0, align 8
  br label %skb_dst_pop.exit.i

skb_dst_pop.exit.i:                               ; preds = %refdst_drop.exit.i.i.i, %dst_clone.exit.i.i.skb_dst_pop.exit.i_crit_edge
  %tobool468.not.i = icmp eq ptr %retval.0.i12.i.i, null
  br i1 %tobool468.not.i, label %do.body471.i, label %if.end532.i

do.body471.i:                                     ; preds = %skb_dst_pop.exit.i
  %211 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics494.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 30, i32 6
  %212 = ptrtoint ptr %xfrm_statistics494.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %xfrm_statistics494.i, align 4
  %arrayidx496.i = getelementptr [29 x i32], ptr %213, i32 0, i32 15
  %214 = ptrtoint ptr %arrayidx496.i to i32
  %215 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i652.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i652.i to ptr
  %cpu499.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %cpu499.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cpu499.i, align 4
  %arrayidx500.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %218
  %219 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx500.i, align 4
  %add501.i = add i32 %220, %214
  %221 = inttoptr i32 %add501.i to ptr
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 4
  %add502.i = add i32 %223, 1
  store i32 %add502.i, ptr %221, align 4
  %224 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i653.i = and i32 %224, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i653.i)
  %tobool513.not.i = icmp eq i32 %and.i.i653.i, 0
  br i1 %tobool513.not.i, label %if.then522.i, label %do.body471.i.do.end525.i_crit_edge, !prof !66

do.body471.i.do.end525.i_crit_edge:               ; preds = %do.body471.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end525.i

if.then522.i:                                     ; preds = %do.body471.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end525.i

do.end525.i:                                      ; preds = %if.then522.i, %do.body471.i.do.end525.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %211) #8, !srcloc !71
  br label %while.end.thread121

if.end532.i:                                      ; preds = %skb_dst_pop.exit.i
  %225 = ptrtoint ptr %slow_gro.i655.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %bf.load.i656.i = load i32, ptr %slow_gro.i655.i, align 2
  %bf.set.i659.i = or i32 %bf.load.i656.i, 4096
  store i32 %bf.set.i659.i, ptr %slow_gro.i655.i, align 2
  %226 = ptrtoint ptr %retval.0.i12.i.i to i32
  %227 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %0, align 8
  %xfrm533.i = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i12.i.i, i32 0, i32 4
  %228 = ptrtoint ptr %xfrm533.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %xfrm533.i, align 4
  %tobool535.not.i = icmp eq ptr %229, null
  br i1 %tobool535.not.i, label %if.end532.i.while.body_crit_edge, label %land.rhs.i55

if.end532.i.while.body_crit_edge:                 ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.rhs.i55:                                     ; preds = %if.end532.i
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %229, i32 0, i32 48, i32 2
  %230 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %flags.i, align 2
  %232 = and i8 %231, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool537.not.i = icmp eq i8 %232, 0
  br i1 %tobool537.not.i, label %land.rhs.i55.do.body.i_crit_edge, label %land.rhs.i55.while.body_crit_edge

land.rhs.i55.while.body_crit_edge:                ; preds = %land.rhs.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.rhs.i55.do.body.i_crit_edge:                 ; preds = %land.rhs.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

error.i:                                          ; preds = %do.end312.i, %do.end246.i, %do.end179.i
  %err.addr.2.i = phi i32 [ -22, %do.end179.i ], [ %call187.i, %do.end246.i ], [ %call254.i, %do.end312.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %while.end

while.body:                                       ; preds = %land.rhs.i55.while.body_crit_edge, %if.end532.i.while.body_crit_edge
  %233 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i56 = and i32 %234, -8
  %235 = inttoptr i32 %and.i.i56 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i.i57, label %while.body.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i59

while.body.nf_reset_ct.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_reset_ct.exit

land.lhs.true.i.i59:                              ; preds = %while.body
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %235, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr nonnull %235, i32 1, i32 3, i32 1) #8
  %236 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %235, ptr nonnull %235, i32 1, ptr nonnull elementtype(i32) %235) #8, !srcloc !76
  %asmresult.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %236, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i58, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i60, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i58, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %235, i32 noundef 3) #8
  br label %nf_reset_ct.exit

if.then.i.i60:                                    ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %235) #8
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i60, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %while.body.nf_reset_ct.exit_crit_edge
  %237 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %_nfct.i.i, align 8
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %0, align 8
  %and.i61 = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %nf_reset_ct.exit.skb_dst.exit71_crit_edge, label %land.lhs.true.i65

nf_reset_ct.exit.skb_dst.exit71_crit_edge:        ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit71

land.lhs.true.i65:                                ; preds = %nf_reset_ct.exit
  %call.i63 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool1.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool1.not.i64, label %land.rhs.i68, label %land.lhs.true.i65.skb_dst.exit71_crit_edge

land.lhs.true.i65.skb_dst.exit71_crit_edge:       ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit71

land.rhs.i68:                                     ; preds = %land.lhs.true.i65
  %call2.i66 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i66)
  %tobool3.not.i67 = icmp eq i32 %call2.i66, 0
  br i1 %tobool3.not.i67, label %do.end.i69, label %land.rhs.i68.skb_dst.exit71_crit_edge, !prof !66

land.rhs.i68.skb_dst.exit71_crit_edge:            ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit71

do.end.i69:                                       ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit71

skb_dst.exit71:                                   ; preds = %do.end.i69, %land.rhs.i68.skb_dst.exit71_crit_edge, %land.lhs.true.i65.skb_dst.exit71_crit_edge, %nf_reset_ct.exit.skb_dst.exit71_crit_edge
  %240 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %0, align 8
  %and25.i70 = and i32 %241, -2
  %242 = inttoptr i32 %and25.i70 to ptr
  %ops = getelementptr inbounds %struct.dst_entry, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ops, align 4
  %local_out = getelementptr inbounds %struct.dst_ops, ptr %244, i32 0, i32 13
  %245 = ptrtoint ptr %local_out to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %local_out, align 4
  %call5 = tail call i32 %246(ptr noundef %9, ptr noundef %sk, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end, label %skb_dst.exit71.cleanup_crit_edge, !prof !65

skb_dst.exit71.cleanup_crit_edge:                 ; preds = %skb_dst.exit71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit71
  %247 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %0, align 8
  %and.i72 = and i32 %248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %if.end.skb_dst.exit82_crit_edge, label %land.lhs.true.i76

if.end.skb_dst.exit82_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit82

land.lhs.true.i76:                                ; preds = %if.end
  %call.i74 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool1.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool1.not.i75, label %land.rhs.i79, label %land.lhs.true.i76.skb_dst.exit82_crit_edge

land.lhs.true.i76.skb_dst.exit82_crit_edge:       ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit82

land.rhs.i79:                                     ; preds = %land.lhs.true.i76
  %call2.i77 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i77)
  %tobool3.not.i78 = icmp eq i32 %call2.i77, 0
  br i1 %tobool3.not.i78, label %do.end.i80, label %land.rhs.i79.skb_dst.exit82_crit_edge, !prof !66

land.rhs.i79.skb_dst.exit82_crit_edge:            ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit82

do.end.i80:                                       ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit82

skb_dst.exit82:                                   ; preds = %do.end.i80, %land.rhs.i79.skb_dst.exit82_crit_edge, %land.lhs.true.i76.skb_dst.exit82_crit_edge, %if.end.skb_dst.exit82_crit_edge
  %249 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %0, align 8
  %and25.i81 = and i32 %250, -2
  %251 = inttoptr i32 %and25.i81 to ptr
  %xfrm14 = getelementptr inbounds %struct.dst_entry, ptr %251, i32 0, i32 4
  %252 = ptrtoint ptr %xfrm14 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %xfrm14, align 4
  %tobool15.not = icmp eq ptr %253, null
  %and.i.i83 = and i32 %250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %skb_dst.exit82
  br i1 %tobool.not.i.i84, label %if.then16.dst_output.exit_crit_edge, label %land.lhs.true.i.i87

if.then16.dst_output.exit_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.lhs.true.i.i87:                              ; preds = %if.then16
  %call.i.i85 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %tobool1.not.i.i86 = icmp eq i32 %call.i.i85, 0
  br i1 %tobool1.not.i.i86, label %land.rhs.i.i90, label %land.lhs.true.i.i87.dst_output.exit_crit_edge

land.lhs.true.i.i87.dst_output.exit_crit_edge:    ; preds = %land.lhs.true.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.rhs.i.i90:                                   ; preds = %land.lhs.true.i.i87
  %call2.i.i88 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i88)
  %tobool3.not.i.i89 = icmp eq i32 %call2.i.i88, 0
  br i1 %tobool3.not.i.i89, label %do.end.i.i91, label %land.rhs.i.i90.dst_output.exit_crit_edge, !prof !66

land.rhs.i.i90.dst_output.exit_crit_edge:         ; preds = %land.rhs.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

do.end.i.i91:                                     ; preds = %land.rhs.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i91, %land.rhs.i.i90.dst_output.exit_crit_edge, %land.lhs.true.i.i87.dst_output.exit_crit_edge, %if.then16.dst_output.exit_crit_edge
  %254 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %0, align 8
  %and25.i.i92 = and i32 %255, -2
  %256 = inttoptr i32 %and25.i.i92 to ptr
  %output.i93 = getelementptr inbounds %struct.dst_entry, ptr %256, i32 0, i32 6
  %257 = ptrtoint ptr %output.i93 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %output.i93, align 4
  %call1.i = tail call i32 %258(ptr noundef %9, ptr noundef %sk, ptr noundef %skb) #8
  br label %cleanup

if.end18:                                         ; preds = %skb_dst.exit82
  br i1 %tobool.not.i.i84, label %if.end18.skb_dst.exit105_crit_edge, label %land.lhs.true.i99

if.end18.skb_dst.exit105_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit105

land.lhs.true.i99:                                ; preds = %if.end18
  %call.i97 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool1.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool1.not.i98, label %land.rhs.i102, label %land.lhs.true.i99.skb_dst.exit105_crit_edge

land.lhs.true.i99.skb_dst.exit105_crit_edge:      ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit105

land.rhs.i102:                                    ; preds = %land.lhs.true.i99
  %call2.i100 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i100)
  %tobool3.not.i101 = icmp eq i32 %call2.i100, 0
  br i1 %tobool3.not.i101, label %do.end.i103, label %land.rhs.i102.skb_dst.exit105_crit_edge, !prof !66

land.rhs.i102.skb_dst.exit105_crit_edge:          ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit105

do.end.i103:                                      ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit105

skb_dst.exit105:                                  ; preds = %do.end.i103, %land.rhs.i102.skb_dst.exit105_crit_edge, %land.lhs.true.i99.skb_dst.exit105_crit_edge, %if.end18.skb_dst.exit105_crit_edge
  %259 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %0, align 8
  %and25.i104 = and i32 %260, -2
  %261 = inttoptr i32 %and25.i104 to ptr
  %ops20 = getelementptr inbounds %struct.dst_entry, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops20, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %263, align 128
  %conv = trunc i16 %265 to i8
  %and.i106 = and i32 %260, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %skb_dst.exit105.skb_dst.exit116_crit_edge, label %land.lhs.true.i110

skb_dst.exit105.skb_dst.exit116_crit_edge:        ; preds = %skb_dst.exit105
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit116

land.lhs.true.i110:                               ; preds = %skb_dst.exit105
  %call.i108 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool1.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool1.not.i109, label %land.rhs.i113, label %land.lhs.true.i110.skb_dst.exit116_crit_edge

land.lhs.true.i110.skb_dst.exit116_crit_edge:     ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit116

land.rhs.i113:                                    ; preds = %land.lhs.true.i110
  %call2.i111 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i111)
  %tobool3.not.i112 = icmp eq i32 %call2.i111, 0
  br i1 %tobool3.not.i112, label %do.end.i114, label %land.rhs.i113.skb_dst.exit116_crit_edge, !prof !66

land.rhs.i113.skb_dst.exit116_crit_edge:          ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit116

do.end.i114:                                      ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit116

skb_dst.exit116:                                  ; preds = %do.end.i114, %land.rhs.i113.skb_dst.exit116_crit_edge, %land.lhs.true.i110.skb_dst.exit116_crit_edge, %skb_dst.exit105.skb_dst.exit116_crit_edge
  %266 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %0, align 8
  %and25.i115 = and i32 %267, -2
  %268 = inttoptr i32 %and25.i115 to ptr
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %call22 = tail call fastcc i32 @nf_hook(i8 noundef zeroext %conv, ptr noundef %9, ptr noundef %sk, ptr noundef %skb, ptr noundef %270)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %skb_dst.exit116.while.cond_crit_edge, label %skb_dst.exit116.cleanup_crit_edge, !prof !65

skb_dst.exit116.cleanup_crit_edge:                ; preds = %skb_dst.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_dst.exit116.while.cond_crit_edge:             ; preds = %skb_dst.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end.thread121:                              ; preds = %do.end525.i, %do.end385.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

while.end:                                        ; preds = %error.i, %do.end459.i, %do.end106.i, %do.end39.i
  %err.addr.3.i = phi i32 [ %err.addr.1.i, %do.end459.i ], [ %call20.i.i, %do.end39.i ], [ %call48.i, %do.end106.i ], [ %err.addr.2.i, %error.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.addr.3.i)
  %cmp33 = icmp eq i32 %err.addr.3.i, -115
  br i1 %cmp33, label %while.end.while.end.thread_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.else.i.while.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %while.end.thread, %while.end.cleanup_crit_edge, %while.end.thread121, %skb_dst.exit116.cleanup_crit_edge, %dst_output.exit, %skb_dst.exit71.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %dst_output.exit ], [ 0, %while.end.thread ], [ %err.addr.3.i, %while.end.cleanup_crit_edge ], [ -113, %while.end.thread121 ], [ %call22, %skb_dst.exit116.cleanup_crit_edge ], [ %call5, %skb_dst.exit71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %land.end
    i8 7, label %sw.bb102
    i8 12, label %sw.bb122
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b5 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b5, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 4
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b2174 = load i1, ptr @nf_hook.__warned.11, align 1
  br i1 %.b2174, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.end:                                         ; preds = %rcu_read_lock.exit
  %.b2183 = load i1, ptr @nf_hook.__already_done, align 1
  br i1 %.b2183, label %land.end.if.end194_crit_edge, label %if.then46, !prof !65

land.end.if.end194_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then46:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 236, i32 noundef 9, ptr noundef null) #8
  br label %if.end194

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 4
  %9 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b2192 = load i1, ptr @nf_hook.__warned.13, align 1
  br i1 %.b2192, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb122:                                         ; preds = %rcu_read_lock.exit
  %arrayidx128 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 7, i32 4
  %11 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx128, align 4
  %call130 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %sw.bb122.sw.epilog_crit_edge

sw.bb122.sw.epilog_crit_edge:                     ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true132:                                 ; preds = %sw.bb122
  %call133 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.sw.epilog_crit_edge, label %land.lhs.true135

land.lhs.true132.sw.epilog_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b2201 = load i1, ptr @nf_hook.__warned.14, align 1
  br i1 %.b2201, label %land.lhs.true135.sw.epilog_crit_edge, label %land.lhs.true135.sw.epilog.sink.split_crit_edge

land.lhs.true135.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

land.lhs.true135.sw.epilog_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b2216 = load i1, ptr @nf_hook.__already_done.15, align 1
  br i1 %.b2216, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !65

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_hook.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 252, i32 noundef 9, ptr noundef null) #8
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true135.sw.epilog.sink.split_crit_edge, %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.14.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.11, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.13, %land.lhs.true115.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.14, %land.lhs.true135.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ], [ 248, %land.lhs.true135.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true115.sw.epilog.sink.split_crit_edge ], [ %12, %land.lhs.true135.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %nf_hook.__warned.14.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i1 true, ptr %nf_hook.__warned.14.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef %.sink, ptr noundef nonnull @.str.10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true135.sw.epilog_crit_edge, %land.lhs.true132.sw.epilog_crit_edge, %sw.bb122.sw.epilog_crit_edge, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true115.sw.epilog_crit_edge ], [ %10, %land.lhs.true112.sw.epilog_crit_edge ], [ %10, %sw.bb102.sw.epilog_crit_edge ], [ %12, %land.lhs.true135.sw.epilog_crit_edge ], [ %12, %land.lhs.true132.sw.epilog_crit_edge ], [ %12, %sw.bb122.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #8
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %state, align 4
  store i8 4, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xfrm_output2, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #8
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge, %if.then46, %land.end.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then46 ], [ 1, %land.end.if.end194_crit_edge ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ]
  %call.i7 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i7, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end194
  %call1.i8 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %21 = call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i14 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_output2(ptr nocapture noundef readnone %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_output_resume(ptr noundef %sk, ptr noundef %skb, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm_output(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !66

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %and.i197 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i198 = icmp eq i32 %and.i197, 0
  br i1 %tobool.not.i198, label %skb_dst.exit.skb_dst.exit207_crit_edge, label %land.lhs.true.i201

skb_dst.exit.skb_dst.exit207_crit_edge:           ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit207

land.lhs.true.i201:                               ; preds = %skb_dst.exit
  %call.i199 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool1.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool1.not.i200, label %land.rhs.i204, label %land.lhs.true.i201.skb_dst.exit207_crit_edge

land.lhs.true.i201.skb_dst.exit207_crit_edge:     ; preds = %land.lhs.true.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit207

land.rhs.i204:                                    ; preds = %land.lhs.true.i201
  %call2.i202 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i202)
  %tobool3.not.i203 = icmp eq i32 %call2.i202, 0
  br i1 %tobool3.not.i203, label %do.end.i205, label %land.rhs.i204.skb_dst.exit207_crit_edge, !prof !66

land.rhs.i204.skb_dst.exit207_crit_edge:          ; preds = %land.rhs.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit207

do.end.i205:                                      ; preds = %land.rhs.i204
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit207

skb_dst.exit207:                                  ; preds = %do.end.i205, %land.rhs.i204.skb_dst.exit207_crit_edge, %land.lhs.true.i201.skb_dst.exit207_crit_edge, %skb_dst.exit.skb_dst.exit207_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 8
  %and25.i206 = and i32 %11, -2
  %12 = inttoptr i32 %and25.i206 to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfrm, align 4
  %family = getelementptr inbounds %struct.xfrm_state, ptr %14, i32 0, i32 48, i32 1
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %family, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %16, label %skb_dst.exit207.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb7
  ]

skb_dst.exit207.sw.epilog_crit_edge:              ; preds = %skb_dst.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %skb_dst.exit207
  call void @__sanitizer_cov_trace_pc() #10
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %flags, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %skb_dst.exit207
  call void @__sanitizer_cov_trace_pc() #10
  %cb8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %20 = call ptr @memset(ptr %cb8, i32 0, i32 24)
  %flags12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %21 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags12, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %skb_dst.exit207.sw.epilog_crit_edge
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %22 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active_extensions.i.i.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.i.not.i.i, label %sw.epilog.secpath_reset.exit_crit_edge, label %if.then.i.i

sw.epilog.secpath_reset.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %secpath_reset.exit

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #8
  br label %secpath_reset.exit

secpath_reset.exit:                               ; preds = %if.then.i.i, %sw.epilog.secpath_reset.exit_crit_edge
  %call16 = tail call zeroext i1 @xfrm_dev_offload_ok(ptr noundef %skb, ptr noundef %14) #8
  br i1 %call16, label %if.then, label %if.else

if.then:                                          ; preds = %secpath_reset.exit
  %call17 = tail call ptr @secpath_set(ptr noundef %skb) #8
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %do.body19, label %if.end59

do.body19:                                        ; preds = %if.then
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 6
  %26 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx = getelementptr [29 x i32], ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i208 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i208 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx34, align 4
  %add = add i32 %34, %28
  %35 = inttoptr i32 %add to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add35 = add i32 %37, 1
  store i32 %add35, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body19.do.end52_crit_edge, !prof !66

do.body19.do.end52_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.then50:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end52

do.end52:                                         ; preds = %if.then50, %do.body19.do.end52_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #8, !srcloc !71
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup157

if.end59:                                         ; preds = %if.then
  %olen = getelementptr inbounds %struct.sec_path, ptr %call17, i32 0, i32 1
  %39 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %olen, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %olen, align 4
  %41 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call17, align 4
  %inc60 = add i32 %42, 1
  store i32 %inc60, ptr %call17, align 4
  %arrayidx61 = getelementptr %struct.sec_path, ptr %call17, i32 0, i32 2, i32 %42
  %43 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %14, ptr %arrayidx61, align 4
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %14, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end59.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.end59.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end59
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_state_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end59.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end59.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %xfrm_state_hold.exit

xfrm_state_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge
  %46 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %active_extensions.i.i.i, align 1
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.not.i.i.i.i = icmp eq i8 %48, 0
  br i1 %tobool.i.not.i.i.i.i, label %xfrm_state_hold.exit.xfrm_get_inner_ipproto.exit_crit_edge, label %skb_sec_path.exit.i.i

xfrm_state_hold.exit.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %xfrm_state_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

skb_sec_path.exit.i.i:                            ; preds = %xfrm_state_hold.exit
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %49 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %52 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %50, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_sec_path.exit.i.i.xfrm_get_inner_ipproto.exit_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.xfrm_get_inner_ipproto.exit_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %55 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp.not.i.i = icmp eq i32 %56, %54
  br i1 %cmp.not.i.i, label %xfrm_offload.exit.i, label %lor.lhs.false2.i.i.xfrm_get_inner_ipproto.exit_crit_edge

lor.lhs.false2.i.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

xfrm_offload.exit.i:                              ; preds = %lor.lhs.false2.i.i
  %sub.i.i = add i32 %54, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  %tobool.not.i209 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i209, label %xfrm_offload.exit.i.xfrm_get_inner_ipproto.exit_crit_edge, label %if.end.i

xfrm_offload.exit.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

if.end.i:                                         ; preds = %xfrm_offload.exit.i
  %outer_mode.i = getelementptr inbounds %struct.xfrm_state, ptr %14, i32 0, i32 48
  %57 = ptrtoint ptr %outer_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %outer_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp.i = icmp eq i8 %58, 1
  br i1 %cmp.i, label %if.then2.i, label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %59 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %family, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %60, label %if.then2.i.xfrm_get_inner_ipproto.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb6.i
  ]

if.then2.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

sw.bb.i:                                          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %65 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 %conv.i.i.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %cleanup.sink.split.i

sw.bb6.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i60.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %66 = ptrtoint ptr %head.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i60.i, align 8
  %network_header.i.i61.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %68 = ptrtoint ptr %network_header.i.i61.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %network_header.i.i61.i, align 4
  %conv.i.i62.i = zext i16 %69 to i32
  %add.ptr.i.i63.i = getelementptr i8, ptr %67, i32 %conv.i.i62.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63.i, i32 0, i32 3
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %70 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %71 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool10.not.i = icmp eq i16 %71, 0
  br i1 %tobool10.not.i, label %if.end9.i.xfrm_get_inner_ipproto.exit_crit_edge, label %if.end12.i

if.end9.i.xfrm_get_inner_ipproto.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

if.end12.i:                                       ; preds = %if.end9.i
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %72 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load13.i = load i32, ptr %inner_protocol_type.i, align 2
  %73 = and i32 %bf.load13.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp18.not.i = icmp eq i32 %73, 0
  br i1 %cmp18.not.i, label %if.end32.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  br label %cleanup.sink.split.i

if.end32.i:                                       ; preds = %if.end12.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %77 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i.i = zext i16 %78 to i32
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %conv.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %h_proto.i, align 1
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %80, label %if.end32.i.xfrm_get_inner_ipproto.exit_crit_edge [
    i16 -31011, label %sw.bb35.i
    i16 2048, label %sw.bb39.i
  ]

if.end32.i.xfrm_get_inner_ipproto.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_get_inner_ipproto.exit

sw.bb35.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %82 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i65.i = zext i16 %83 to i32
  %add.ptr.i.i66.i = getelementptr i8, ptr %76, i32 %conv.i.i65.i
  %nexthdr37.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i66.i, i32 0, i32 3
  br label %cleanup.sink.split.i

sw.bb39.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %inner_network_header.i.i68.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %84 = ptrtoint ptr %inner_network_header.i.i68.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %inner_network_header.i.i68.i, align 4
  %conv.i.i69.i = zext i16 %85 to i32
  %add.ptr.i.i70.i = getelementptr i8, ptr %76, i32 %conv.i.i69.i
  %protocol41.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i70.i, i32 0, i32 6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb39.i, %sw.bb35.i, %if.then20.i, %sw.bb6.i, %sw.bb.i
  %.sink.in.i = phi ptr [ %nexthdr37.i, %sw.bb35.i ], [ %protocol41.i, %sw.bb39.i ], [ %protocol.i, %sw.bb.i ], [ %nexthdr.i, %sw.bb6.i ], [ %74, %if.then20.i ]
  %86 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %inner_ipproto38.i = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %inner_ipproto38.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink.i, ptr %inner_ipproto38.i, align 1
  br label %xfrm_get_inner_ipproto.exit

xfrm_get_inner_ipproto.exit:                      ; preds = %cleanup.sink.split.i, %if.end32.i.xfrm_get_inner_ipproto.exit_crit_edge, %if.end9.i.xfrm_get_inner_ipproto.exit_crit_edge, %if.then2.i.xfrm_get_inner_ipproto.exit_crit_edge, %xfrm_offload.exit.i.xfrm_get_inner_ipproto.exit_crit_edge, %lor.lhs.false2.i.i.xfrm_get_inner_ipproto.exit_crit_edge, %lor.lhs.false.i.i.xfrm_get_inner_ipproto.exit_crit_edge, %skb_sec_path.exit.i.i.xfrm_get_inner_ipproto.exit_crit_edge, %xfrm_state_hold.exit.xfrm_get_inner_ipproto.exit_crit_edge
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %88 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %89 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool.i.not = icmp eq i16 %92, 0
  br i1 %tobool.i.not, label %if.end70, label %if.then63

if.then63:                                        ; preds = %xfrm_get_inner_ipproto.exit
  %93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %93, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool64.not = icmp eq i16 %95, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then63
  %call.i.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef 0, i1 noundef zeroext true) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i211

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %call.i.i to i32
  br label %cleanup157

if.end.i211:                                      ; preds = %if.then65
  %cmp.i210 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i210, label %if.end.i211.cleanup157_crit_edge, label %if.end.i211.for.body.i_crit_edge

if.end.i211.for.body.i_crit_edge:                 ; preds = %if.end.i211
  br label %for.body.i

if.end.i211.cleanup157_crit_edge:                 ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i211.for.body.i_crit_edge
  %nskb.043.sink.i = phi ptr [ %98, %for.inc.i.for.body.i_crit_edge ], [ %call.i.i, %if.end.i211.for.body.i_crit_edge ]
  %97 = ptrtoint ptr %nskb.043.sink.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nskb.043.sink.i, align 8
  store ptr null, ptr %nskb.043.sink.i, align 8
  %call.i37.i = tail call i32 @xfrm_output_resume(ptr noundef %sk, ptr noundef nonnull %nskb.043.sink.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool10.not.i212 = icmp eq i32 %call.i37.i, 0
  br i1 %tobool10.not.i212, label %for.inc.i, label %cleanup.i, !prof !65

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_list(ptr noundef %98) #8
  br label %cleanup157

for.inc.i:                                        ; preds = %for.body.i
  %tobool15.not.i = icmp eq ptr %98, null
  br i1 %tobool15.not.i, label %for.inc.i.cleanup157_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup157_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

if.end67:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 8
  %99 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gso_type, align 8
  %or69 = or i32 %100, 32768
  store i32 %or69, ptr %gso_type, align 8
  br label %out

if.end70:                                         ; preds = %xfrm_get_inner_ipproto.exit
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %14, i32 0, i32 41
  %101 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xso, align 8
  %tobool72.not = icmp eq ptr %102, null
  br i1 %tobool72.not, label %if.end70.if.end82_crit_edge, label %land.lhs.true

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end70
  %features = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 23
  %103 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %features, align 16
  %and = and i64 %104, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool75.not = icmp eq i64 %and, 0
  br i1 %tobool75.not, label %land.lhs.true.if.end82_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.else:                                          ; preds = %secpath_reset.exit
  %end.i.i213 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %105 = ptrtoint ptr %end.i.i213 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i.i213, align 4
  %gso_size.i214 = getelementptr inbounds %struct.skb_shared_info, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %gso_size.i214 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %gso_size.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool.i215.not = icmp eq i16 %108, 0
  br i1 %tobool.i215.not, label %if.else.if.end82_crit_edge, label %if.then79

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then79:                                        ; preds = %if.else
  %call.i.i216 = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef 0, i1 noundef zeroext true) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %cmp.i.i217 = icmp ugt ptr %call.i.i216, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i217, label %if.then.i218, label %if.end.i220

if.then.i218:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %call.i.i216 to i32
  br label %cleanup157

if.end.i220:                                      ; preds = %if.then79
  %cmp.i219 = icmp eq ptr %call.i.i216, null
  br i1 %cmp.i219, label %if.end.i220.cleanup157_crit_edge, label %if.end.i220.for.body.i224_crit_edge

if.end.i220.for.body.i224_crit_edge:              ; preds = %if.end.i220
  br label %for.body.i224

if.end.i220.cleanup157_crit_edge:                 ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

for.body.i224:                                    ; preds = %for.inc.i227.for.body.i224_crit_edge, %if.end.i220.for.body.i224_crit_edge
  %nskb.043.sink.i221 = phi ptr [ %111, %for.inc.i227.for.body.i224_crit_edge ], [ %call.i.i216, %if.end.i220.for.body.i224_crit_edge ]
  %110 = ptrtoint ptr %nskb.043.sink.i221 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nskb.043.sink.i221, align 8
  store ptr null, ptr %nskb.043.sink.i221, align 8
  %call.i37.i222 = tail call i32 @xfrm_output_resume(ptr noundef %sk, ptr noundef nonnull %nskb.043.sink.i221, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i222)
  %tobool10.not.i223 = icmp eq i32 %call.i37.i222, 0
  br i1 %tobool10.not.i223, label %for.inc.i227, label %cleanup.i225, !prof !65

cleanup.i225:                                     ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_list(ptr noundef %111) #8
  br label %cleanup157

for.inc.i227:                                     ; preds = %for.body.i224
  %tobool15.not.i226 = icmp eq ptr %111, null
  br i1 %tobool15.not.i226, label %for.inc.i227.cleanup157_crit_edge, label %for.inc.i227.for.body.i224_crit_edge

for.inc.i227.for.body.i224_crit_edge:             ; preds = %for.inc.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i224

for.inc.i227.cleanup157_crit_edge:                ; preds = %for.inc.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

if.end82:                                         ; preds = %if.else.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end70.if.end82_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load83 = load i16, ptr %ip_summed, align 8
  %113 = and i16 %bf.load83, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %113)
  %cmp86 = icmp eq i16 %113, 1536
  br i1 %cmp86, label %if.then88, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then88:                                        ; preds = %if.end82
  %call89 = tail call i32 @skb_checksum_help(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then88.out_crit_edge, label %do.body93

if.then88.out_crit_edge:                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body93:                                        ; preds = %if.then88
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %xfrm_statistics116 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 6
  %115 = ptrtoint ptr %xfrm_statistics116 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xfrm_statistics116, align 4
  %arrayidx118 = getelementptr [29 x i32], ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %arrayidx118 to i32
  %118 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i230 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i230 to ptr
  %cpu121 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu121 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu121, align 4
  %arrayidx122 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx122, align 4
  %add123 = add i32 %123, %117
  %124 = inttoptr i32 %add123 to ptr
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add124 = add i32 %126, 1
  store i32 %add124, ptr %124, align 4
  %127 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !70
  %and.i.i231 = and i32 %127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i231)
  %tobool135.not = icmp eq i32 %and.i.i231, 0
  br i1 %tobool135.not, label %if.then144, label %do.body93.do.end147_crit_edge, !prof !66

do.body93.do.end147_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end147

if.then144:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %do.body93.do.end147_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %114) #8, !srcloc !71
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup157

out:                                              ; preds = %if.then88.out_crit_edge, %if.end82.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end67
  %call.i232 = tail call i32 @xfrm_output_resume(ptr noundef %sk, ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup157

cleanup157:                                       ; preds = %out, %do.end147, %for.inc.i227.cleanup157_crit_edge, %cleanup.i225, %if.end.i220.cleanup157_crit_edge, %if.then.i218, %for.inc.i.cleanup157_crit_edge, %cleanup.i, %if.end.i211.cleanup157_crit_edge, %if.then.i, %do.end52
  %retval.1 = phi i32 [ %call.i232, %out ], [ %call89, %do.end147 ], [ %109, %if.then.i218 ], [ %call.i37.i222, %cleanup.i225 ], [ -22, %if.end.i220.cleanup157_crit_edge ], [ -22, %if.end.i211.cleanup157_crit_edge ], [ %call.i37.i, %cleanup.i ], [ %96, %if.then.i ], [ -12, %do.end52 ], [ 0, %for.inc.i.cleanup157_crit_edge ], [ 0, %for.inc.i227.cleanup157_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfrm_dev_offload_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_local_error(ptr noundef %skb, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 2048, label %entry.if.end11_crit_edge
    i16 -31011, label %land.lhs.true
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp7 = icmp eq i16 %7, 10
  br i1 %cmp7, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %proto.0 = phi i32 [ 2, %entry.if.end11_crit_edge ], [ 10, %land.lhs.true.if.end11_crit_edge ]
  %call = tail call ptr @xfrm_state_get_afinfo(i32 noundef %proto.0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.then12

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end11
  %local_error = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %local_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local_error, align 4
  tail call void %9(ptr noundef %skb, i32 noundef %mtu) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %10 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_get_afinfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_inner_extract_output(ptr noundef readonly %x, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then.skb_dst.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !66

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %ops = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %11)
  %switch.selectcmp.i = icmp eq i16 %11, 10
  %switch.select.i = select i1 %switch.selectcmp.i, i32 41, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %switch.selectcmp2.i = icmp eq i16 %11, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4, i32 %switch.select.i
  %12 = zext i32 %switch.select3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %switch.select3.i, label %skb_dst.exit.if.else.i_crit_edge [
    i32 4, label %land.lhs.true.i23
    i32 41, label %land.lhs.true5.i
  ]

skb_dst.exit.if.else.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i23:                                ; preds = %skb_dst.exit
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %13 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp1.i = icmp eq i16 %14, 2
  br i1 %cmp1.i, label %land.lhs.true.i23.if.then.i_crit_edge, label %land.lhs.true.i23.if.else.i_crit_edge

land.lhs.true.i23.if.else.i_crit_edge:            ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i23.if.then.i_crit_edge:            ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true5.i:                                 ; preds = %skb_dst.exit
  %family7.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %15 = ptrtoint ptr %family7.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %16)
  %cmp9.i = icmp eq i16 %16, 10
  br i1 %cmp9.i, label %land.lhs.true5.i.if.then.i_crit_edge, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true5.i.if.then.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true5.i.if.then.i_crit_edge, %land.lhs.true.i23.if.then.i_crit_edge
  %inner_mode.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 46
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i23.if.else.i_crit_edge, %skb_dst.exit.if.else.i_crit_edge
  %inner_mode_iaf.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 47
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inner_mode6 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i, %if.then.i
  %inner_mode.0 = phi ptr [ %inner_mode6, %if.else ], [ %inner_mode.i, %if.then.i ], [ %inner_mode_iaf.i, %if.else.i ]
  %cmp7 = icmp eq ptr %inner_mode.0, null
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %family11 = getelementptr inbounds %struct.xfrm_mode, ptr %inner_mode.0, i32 0, i32 1
  %17 = ptrtoint ptr %family11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %family11, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %18, label %if.end10.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb14
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %outer_mode.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48
  %20 = ptrtoint ptr %outer_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %outer_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.i = icmp eq i8 %21, 4
  br i1 %cmp.i, label %land.lhs.true.i24, label %sw.bb.if.end10.i_crit_edge

sw.bb.if.end10.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

land.lhs.true.i24:                                ; preds = %sw.bb
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %frag_off.i.i, align 2
  %28 = and i16 %27, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.not.i = icmp eq i16 %28, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i24.if.end10.i_crit_edge, label %do.body.i

land.lhs.true.i24.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

do.body.i:                                        ; preds = %land.lhs.true.i24
  %call4.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i25 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i25, label %do.body.i.cleanup_crit_edge, label %do.end.i26

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i26:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end10.i:                                       ; preds = %land.lhs.true.i24.if.end10.i_crit_edge, %sw.bb.if.end10.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i.i, align 4
  %31 = and i16 %30, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end.i.i:                                       ; preds = %if.end10.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i.i
  %frag_off.i22.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %frag_off.i22.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %frag_off.i22.i, align 2
  %38 = and i16 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool3.not.i.i = icmp eq i16 %38, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end14.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %ignore_df.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %39 = ptrtoint ptr %ignore_df.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i.i = load i16, ptr %ignore_df.i.i, align 8
  %40 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool5.not.i.i = icmp eq i16 %40, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %lor.lhs.false.i.i.if.end14.i_crit_edge

lor.lhs.false.i.i.if.end14.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end7.i.i:                                      ; preds = %lor.lhs.false.i.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %and.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end7.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end7.i.i.skb_dst.exit.i.i_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end7.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !66

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.end7.i.i.skb_dst.exit.i.i_crit_edge
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 8
  %and25.i.i.i = and i32 %45, -2
  %46 = inttoptr i32 %and25.i.i.i to ptr
  %ops.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i.i, align 4
  %mtu.i.i.i = getelementptr inbounds %struct.dst_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mtu.i.i.i, align 4
  %call.i38.i.i = tail call i32 %50(ptr noundef %46) #8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %51 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.i.not.i.i = icmp eq i16 %54, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true15.i.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %call.i38.i.i)
  %cmp.i23.i = icmp ugt i32 %56, %call.i38.i.i
  br i1 %cmp.i23.i, label %land.lhs.true.i.i.if.then18.i.i_crit_edge, label %land.lhs.true.i.i.if.end14.i_crit_edge

land.lhs.true.i.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

land.lhs.true.i.i.if.then18.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i.i

land.lhs.true15.i.i:                              ; preds = %skb_dst.exit.i.i
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool.not.i42.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i42.i.i, label %land.lhs.true15.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true15.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true15.i.i
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i43.i.i = zext i8 %61 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i43.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false1.i.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.lhs.false1.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %pmtudisc.i.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %59, i32 0, i32 11
  %62 = ptrtoint ptr %pmtudisc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pmtudisc.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp.i.i.i.i = icmp ult i8 %63, 3
  br i1 %cmp.i.i.i.i, label %lor.lhs.false1.i.i.i.if.then.i.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false1.i.i.i.if.then.i.i.i_crit_edge:     ; preds = %lor.lhs.false1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false1.i.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true15.i.i.if.then.i.i.i_crit_edge
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags.i.i, align 4
  %66 = and i16 %65, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool3.i.i.i = icmp ne i16 %66, 0
  %67 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %41, align 8
  %and.i21.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i21.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, !prof !66

land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %69 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %41, align 8
  %and25.i.i.i.i = and i32 %70, -2
  %71 = inttoptr i32 %and25.i.i.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %nd_net.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 127
  %74 = ptrtoint ptr %nd_net.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nd_net.i.i.i.i.i, align 4
  %sysctl_ip_fwd_use_pmtu.i.i.i.i = getelementptr inbounds %struct.net, ptr %75, i32 0, i32 35, i32 39
  %76 = ptrtoint ptr %sysctl_ip_fwd_use_pmtu.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sysctl_ip_fwd_use_pmtu.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i22.i.i.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i22.i.i.i, label %lor.lhs.false.i.i.i.i, label %skb_dst.exit.i.i.i.if.then.i.i.i.i_crit_edge

skb_dst.exit.i.i.i.if.then.i.i.i.i_crit_edge:     ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %rt_mtu_locked.i.i.i.i.i = getelementptr inbounds %struct.rtable, ptr %71, i32 0, i32 9
  %78 = ptrtoint ptr %rt_mtu_locked.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load.i.i.i.i.i = load i32, ptr %rt_mtu_locked.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i32 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %ip_mtu_locked.exit.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i

ip_mtu_locked.exit.i.i.i.i:                       ; preds = %lor.lhs.false.i.i.i.i
  %_metrics.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 2
  %79 = ptrtoint ptr %_metrics.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %_metrics.i.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %80, -4
  %81 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool2.not.i.i.i.i = icmp eq i32 %84, 0
  %85 = and i1 %tobool3.i.i.i, %tobool2.not.i.i.i.i
  br i1 %85, label %ip_mtu_locked.exit.i.i.i.i.if.end9.i.i.i.i_crit_edge, label %ip_mtu_locked.exit.i.i.i.i.if.then.i.i.i.i_crit_edge

ip_mtu_locked.exit.i.i.i.i.if.then.i.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i

ip_mtu_locked.exit.i.i.i.i.if.end9.i.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %ip_mtu_locked.exit.i.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %skb_dst.exit.i.i.i.if.then.i.i.i.i_crit_edge
  %rt_pmtu.i.i.i.i = getelementptr inbounds %struct.rtable, ptr %71, i32 0, i32 9
  %86 = ptrtoint ptr %rt_pmtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load.i.i.i.i = load i32, ptr %rt_pmtu.i.i.i.i, align 4
  %bf.clear.i.i.i.i = and i32 %bf.load.i.i.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %bf.clear.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.then.i.i.i.i.if.end9.i.i.i.i_crit_edge, label %land.lhs.true.i24.i.i.i

if.then.i.i.i.i.if.end9.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i.i.i

land.lhs.true.i24.i.i.i:                          ; preds = %if.then.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %expires.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 3
  %88 = ptrtoint ptr %expires.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %expires.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i23.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i23.i.i.i, label %land.lhs.true.i24.i.i.i.out.i.i.i.i_crit_edge, label %land.lhs.true.i24.i.i.i.if.end9.i.i.i.i_crit_edge

land.lhs.true.i24.i.i.i.if.end9.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i.i.i

land.lhs.true.i24.i.i.i.out.i.i.i.i_crit_edge:    ; preds = %land.lhs.true.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %land.lhs.true.i24.i.i.i.if.end9.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end9.i.i.i.i_crit_edge, %ip_mtu_locked.exit.i.i.i.i.if.end9.i.i.i.i_crit_edge
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 2
  %90 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %91, -4
  %92 = inttoptr i32 %and.i.i.i.i.i to ptr
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %92, i32 1
  %93 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool11.not.i.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool11.not.i.i.i.i, label %do.end.i25.i.i.i, label %if.end9.i.i.i.i.out.i.i.i.i_crit_edge

if.end9.i.i.i.i.out.i.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i.i.i

do.end.i25.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %mtu16.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 20
  %95 = ptrtoint ptr %mtu16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %mtu16.i.i.i.i, align 4
  %rt_mtu_locked.i50.i.i.i.i = getelementptr inbounds %struct.rtable, ptr %71, i32 0, i32 9
  %97 = ptrtoint ptr %rt_mtu_locked.i50.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load.i51.i.i.i.i = load i32, ptr %rt_mtu_locked.i50.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i51.i.i.i.i)
  %tobool.not.i52.i.i.i.i = icmp sgt i32 %bf.load.i51.i.i.i.i, -1
  br i1 %tobool.not.i52.i.i.i.i, label %ip_mtu_locked.exit58.i.i.i.i, label %do.end.i25.i.i.i.if.then21.i.i.i.i_crit_edge

do.end.i25.i.i.i.if.then21.i.i.i.i_crit_edge:     ; preds = %do.end.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i.i.i.i

ip_mtu_locked.exit58.i.i.i.i:                     ; preds = %do.end.i25.i.i.i
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %92, align 4
  %100 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool18.not.i.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool18.not.i.i.i.i, label %ip_mtu_locked.exit58.i.i.i.i.out.i.i.i.i_crit_edge, label %ip_mtu_locked.exit58.i.i.i.i.if.then21.i.i.i.i_crit_edge, !prof !65

ip_mtu_locked.exit58.i.i.i.i.if.then21.i.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i.i.i.i

ip_mtu_locked.exit58.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i.i.i

if.then21.i.i.i.i:                                ; preds = %ip_mtu_locked.exit58.i.i.i.i.if.then21.i.i.i.i_crit_edge, %do.end.i25.i.i.i.if.then21.i.i.i.i_crit_edge
  %rt_uses_gateway.i.i.i.i = getelementptr inbounds %struct.rtable, ptr %71, i32 0, i32 5
  %101 = ptrtoint ptr %rt_uses_gateway.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rt_uses_gateway.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool23.not.i.i.i.i = icmp eq i8 %102, 0
  %103 = tail call i32 @llvm.umin.i32(i32 %96, i32 576) #8
  %spec.select.i.i.i.i = select i1 %tobool23.not.i.i.i.i, i32 %96, i32 %103
  br label %out.i.i.i.i

out.i.i.i.i:                                      ; preds = %if.then21.i.i.i.i, %ip_mtu_locked.exit58.i.i.i.i.out.i.i.i.i_crit_edge, %if.end9.i.i.i.i.out.i.i.i.i_crit_edge, %land.lhs.true.i24.i.i.i.out.i.i.i.i_crit_edge
  %mtu.0.i.i.i.i = phi i32 [ %bf.clear.i.i.i.i, %land.lhs.true.i24.i.i.i.out.i.i.i.i_crit_edge ], [ %94, %if.end9.i.i.i.i.out.i.i.i.i_crit_edge ], [ %96, %ip_mtu_locked.exit58.i.i.i.i.out.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then21.i.i.i.i ]
  %104 = tail call i32 @llvm.umin.i32(i32 %mtu.0.i.i.i.i, i32 65535) #8
  %lwtstate.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 13
  %105 = ptrtoint ptr %lwtstate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lwtstate.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i.i.i.i, label %out.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

out.i.i.i.i.if.end.i.i.i.i.i_crit_edge:           ; preds = %out.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %out.i.i.i.i
  %flags.i.i.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags.i.i.i.i.i.i, align 2
  %109 = and i16 %108, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i.i.i
  %headroom.i.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %106, i32 0, i32 2
  %111 = ptrtoint ptr %headroom.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %headroom.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %104, %conv.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_dst_mtu_maybe_forward.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %out.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  br label %ip_dst_mtu_maybe_forward.exit.i.i.i

ip_dst_mtu_maybe_forward.exit.i.i.i:              ; preds = %if.end.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ 0, %if.end.i.i.i.i.i ], [ %conv.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i.i_crit_edge ]
  %sub34.i.i.i.i = sub nsw i32 %104, %retval.0.i.i.i.i.i
  br label %ip_skb_dst_mtu.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false1.i.i.i
  %113 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %41, align 8
  %and.i26.i.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i.i)
  %tobool.not.i27.i.i.i = icmp eq i32 %and.i26.i.i.i, 0
  br i1 %tobool.not.i27.i.i.i, label %if.end.i.i.i.skb_dst.exit36.i.i.i_crit_edge, label %land.lhs.true.i30.i.i.i

if.end.i.i.i.skb_dst.exit36.i.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit36.i.i.i

land.lhs.true.i30.i.i.i:                          ; preds = %if.end.i.i.i
  %call.i28.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i.i.i)
  %tobool1.not.i29.i.i.i = icmp eq i32 %call.i28.i.i.i, 0
  br i1 %tobool1.not.i29.i.i.i, label %land.rhs.i33.i.i.i, label %land.lhs.true.i30.i.i.i.skb_dst.exit36.i.i.i_crit_edge

land.lhs.true.i30.i.i.i.skb_dst.exit36.i.i.i_crit_edge: ; preds = %land.lhs.true.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit36.i.i.i

land.rhs.i33.i.i.i:                               ; preds = %land.lhs.true.i30.i.i.i
  %call2.i31.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31.i.i.i)
  %tobool3.not.i32.i.i.i = icmp eq i32 %call2.i31.i.i.i, 0
  br i1 %tobool3.not.i32.i.i.i, label %do.end.i34.i.i.i, label %land.rhs.i33.i.i.i.skb_dst.exit36.i.i.i_crit_edge, !prof !66

land.rhs.i33.i.i.i.skb_dst.exit36.i.i.i_crit_edge: ; preds = %land.rhs.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit36.i.i.i

do.end.i34.i.i.i:                                 ; preds = %land.rhs.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit36.i.i.i

skb_dst.exit36.i.i.i:                             ; preds = %do.end.i34.i.i.i, %land.rhs.i33.i.i.i.skb_dst.exit36.i.i.i_crit_edge, %land.lhs.true.i30.i.i.i.skb_dst.exit36.i.i.i_crit_edge, %if.end.i.i.i.skb_dst.exit36.i.i.i_crit_edge
  %115 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %41, align 8
  %and25.i35.i.i.i = and i32 %116, -2
  %117 = inttoptr i32 %and25.i35.i.i.i to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %mtu8.i.i.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 20
  %120 = ptrtoint ptr %mtu8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %mtu8.i.i.i, align 4
  %122 = tail call i32 @llvm.umin.i32(i32 %121, i32 65535) #8
  %and.i37.i.i.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i.i.i)
  %tobool.not.i38.i.i.i = icmp eq i32 %and.i37.i.i.i, 0
  br i1 %tobool.not.i38.i.i.i, label %skb_dst.exit36.i.i.i.skb_dst.exit47.i.i.i_crit_edge, label %land.lhs.true.i41.i.i.i

skb_dst.exit36.i.i.i.skb_dst.exit47.i.i.i_crit_edge: ; preds = %skb_dst.exit36.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit47.i.i.i

land.lhs.true.i41.i.i.i:                          ; preds = %skb_dst.exit36.i.i.i
  %call.i39.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i.i)
  %tobool1.not.i40.i.i.i = icmp eq i32 %call.i39.i.i.i, 0
  br i1 %tobool1.not.i40.i.i.i, label %land.rhs.i44.i.i.i, label %land.lhs.true.i41.i.i.i.skb_dst.exit47.i.i.i_crit_edge

land.lhs.true.i41.i.i.i.skb_dst.exit47.i.i.i_crit_edge: ; preds = %land.lhs.true.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit47.i.i.i

land.rhs.i44.i.i.i:                               ; preds = %land.lhs.true.i41.i.i.i
  %call2.i42.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42.i.i.i)
  %tobool3.not.i43.i.i.i = icmp eq i32 %call2.i42.i.i.i, 0
  br i1 %tobool3.not.i43.i.i.i, label %do.end.i45.i.i.i, label %land.rhs.i44.i.i.i.skb_dst.exit47.i.i.i_crit_edge, !prof !66

land.rhs.i44.i.i.i.skb_dst.exit47.i.i.i_crit_edge: ; preds = %land.rhs.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit47.i.i.i

do.end.i45.i.i.i:                                 ; preds = %land.rhs.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit47.i.i.i

skb_dst.exit47.i.i.i:                             ; preds = %do.end.i45.i.i.i, %land.rhs.i44.i.i.i.skb_dst.exit47.i.i.i_crit_edge, %land.lhs.true.i41.i.i.i.skb_dst.exit47.i.i.i_crit_edge, %skb_dst.exit36.i.i.i.skb_dst.exit47.i.i.i_crit_edge
  %123 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %41, align 8
  %and25.i46.i.i.i = and i32 %124, -2
  %125 = inttoptr i32 %and25.i46.i.i.i to ptr
  %lwtstate.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %lwtstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lwtstate.i.i.i, align 4
  %tobool.not.i.i48.i.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i48.i.i.i, label %skb_dst.exit47.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i49.i.i.i

skb_dst.exit47.i.i.i.if.end.i.i.i.i_crit_edge:    ; preds = %skb_dst.exit47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true.i.i49.i.i.i:                        ; preds = %skb_dst.exit47.i.i.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %flags.i.i.i.i.i, align 2
  %130 = and i16 %129, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %land.lhs.true.i.i49.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i52.i.i.i

land.lhs.true.i.i49.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true.i52.i.i.i:                          ; preds = %land.lhs.true.i.i49.i.i.i
  %headroom.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %127, i32 0, i32 2
  %132 = ptrtoint ptr %headroom.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %headroom.i.i.i.i, align 4
  %conv.i50.i.i.i = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %conv.i50.i.i.i)
  %cmp.i51.i.i.i = icmp ugt i32 %122, %conv.i50.i.i.i
  br i1 %cmp.i51.i.i.i, label %land.lhs.true.i52.i.i.i.lwtunnel_headroom.exit.i.i.i_crit_edge, label %land.lhs.true.i52.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true.i52.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true.i52.i.i.i.lwtunnel_headroom.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lwtunnel_headroom.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i52.i.i.i.if.end.i.i.i.i_crit_edge, %land.lhs.true.i.i49.i.i.i.if.end.i.i.i.i_crit_edge, %skb_dst.exit47.i.i.i.if.end.i.i.i.i_crit_edge
  br label %lwtunnel_headroom.exit.i.i.i

lwtunnel_headroom.exit.i.i.i:                     ; preds = %if.end.i.i.i.i, %land.lhs.true.i52.i.i.i.lwtunnel_headroom.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.end.i.i.i.i ], [ %conv.i50.i.i.i, %land.lhs.true.i52.i.i.i.lwtunnel_headroom.exit.i.i.i_crit_edge ]
  %sub.i.i.i = sub nsw i32 %122, %retval.0.i.i.i.i
  br label %ip_skb_dst_mtu.exit.i.i

ip_skb_dst_mtu.exit.i.i:                          ; preds = %lwtunnel_headroom.exit.i.i.i, %ip_dst_mtu_maybe_forward.exit.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub34.i.i.i.i, %ip_dst_mtu_maybe_forward.exit.i.i.i ], [ %sub.i.i.i, %lwtunnel_headroom.exit.i.i.i ]
  %call17.i.i = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %retval.0.i.i.i) #8
  br i1 %call17.i.i, label %ip_skb_dst_mtu.exit.i.i.if.end14.i_crit_edge, label %ip_skb_dst_mtu.exit.i.i.if.then18.i.i_crit_edge

ip_skb_dst_mtu.exit.i.i.if.then18.i.i_crit_edge:  ; preds = %ip_skb_dst_mtu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i.i

ip_skb_dst_mtu.exit.i.i.if.end14.i_crit_edge:     ; preds = %ip_skb_dst_mtu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then18.i.i:                                    ; preds = %ip_skb_dst_mtu.exit.i.i.if.then18.i.i_crit_edge, %land.lhs.true.i.i.if.then18.i.i_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %134 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 2048, ptr %protocol.i.i, align 8
  %135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %tobool19.not.i.i = icmp eq ptr %137, null
  br i1 %tobool19.not.i.i, label %if.else.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_local_error(ptr noundef %skb, i32 noundef %call.i38.i.i) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %opt.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %call.i38.i.i, ptr noundef %opt.i.i.i) #8
  br label %cleanup

if.end14.i:                                       ; preds = %ip_skb_dst_mtu.exit.i.i.if.end14.i_crit_edge, %land.lhs.true.i.i.if.end14.i_crit_edge, %lor.lhs.false.i.i.if.end14.i_crit_edge, %if.end.i.i.if.end14.i_crit_edge, %if.end10.i.if.end14.i_crit_edge
  %head.i.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %138 = ptrtoint ptr %head.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %head.i.i24.i, align 8
  %network_header.i.i25.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %140 = ptrtoint ptr %network_header.i.i25.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %network_header.i.i25.i, align 4
  %conv.i.i26.i = zext i16 %141 to i32
  %add.ptr.i.i27.i = getelementptr i8, ptr %139, i32 %conv.i.i26.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i27.i, i32 0, i32 6
  %142 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %protocol.i, align 1
  %protocol16.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %144 = ptrtoint ptr %protocol16.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %protocol16.i, align 1
  %ihl.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %145 = ptrtoint ptr %ihl.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 20, ptr %ihl.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i27.i, i32 0, i32 3
  %146 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %id.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %148 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %id3.i.i, align 4
  %frag_off.i32.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i27.i, i32 0, i32 4
  %149 = ptrtoint ptr %frag_off.i32.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %frag_off.i32.i, align 2
  %frag_off6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %151 = ptrtoint ptr %frag_off6.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %frag_off6.i.i, align 2
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i27.i, i32 0, i32 1
  %152 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %tos.i.i, align 1
  %tos9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %154 = ptrtoint ptr %tos9.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %tos9.i.i, align 1
  %ttl.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i27.i, i32 0, i32 5
  %155 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ttl.i.i, align 4
  %ttl12.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %157 = ptrtoint ptr %ttl12.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %ttl12.i.i, align 2
  %158 = ptrtoint ptr %add.ptr.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load.i33.i = load i8, ptr %add.ptr.i.i27.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i33.i, 2
  %159 = and i8 %bf.clear.i.i, 60
  %sub.i.i = add nsw i8 %159, -20
  %optlen.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %160 = ptrtoint ptr %optlen.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %sub.i.i, ptr %optlen.i.i, align 4
  %flow_lbl.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %161 = call ptr @memset(ptr %flow_lbl.i.i, i32 0, i32 3)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end10
  %162 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %and.i.i.i28 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i28)
  %tobool.not.i.i.i29 = icmp eq i32 %and.i.i.i28, 0
  br i1 %tobool.not.i.i.i29, label %sw.bb14.skb_dst.exit.i.i41_crit_edge, label %land.lhs.true.i.i.i32

sw.bb14.skb_dst.exit.i.i41_crit_edge:             ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i41

land.lhs.true.i.i.i32:                            ; preds = %sw.bb14
  %call.i.i.i30 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i30)
  %tobool1.not.i.i.i31 = icmp eq i32 %call.i.i.i30, 0
  br i1 %tobool1.not.i.i.i31, label %land.rhs.i.i.i35, label %land.lhs.true.i.i.i32.skb_dst.exit.i.i41_crit_edge

land.lhs.true.i.i.i32.skb_dst.exit.i.i41_crit_edge: ; preds = %land.lhs.true.i.i.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i41

land.rhs.i.i.i35:                                 ; preds = %land.lhs.true.i.i.i32
  %call2.i.i.i33 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i33)
  %tobool3.not.i.i.i34 = icmp eq i32 %call2.i.i.i33, 0
  br i1 %tobool3.not.i.i.i34, label %do.end.i.i.i36, label %land.rhs.i.i.i35.skb_dst.exit.i.i41_crit_edge, !prof !66

land.rhs.i.i.i35.skb_dst.exit.i.i41_crit_edge:    ; preds = %land.rhs.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i41

do.end.i.i.i36:                                   ; preds = %land.rhs.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i41

skb_dst.exit.i.i41:                               ; preds = %do.end.i.i.i36, %land.rhs.i.i.i35.skb_dst.exit.i.i41_crit_edge, %land.lhs.true.i.i.i32.skb_dst.exit.i.i41_crit_edge, %sw.bb14.skb_dst.exit.i.i41_crit_edge
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %162, align 8
  %and25.i.i.i37 = and i32 %166, -2
  %167 = inttoptr i32 %and25.i.i.i37 to ptr
  %ignore_df.i.i38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %168 = ptrtoint ptr %ignore_df.i.i38 to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load.i.i39 = load i16, ptr %ignore_df.i.i38, align 8
  %169 = and i16 %bf.load.i.i39, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool.not.i.i40 = icmp eq i16 %169, 0
  br i1 %tobool.not.i.i40, label %if.end.i.i48, label %skb_dst.exit.i.i41.if.end.i_crit_edge

skb_dst.exit.i.i41.if.end.i_crit_edge:            ; preds = %skb_dst.exit.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i48:                                     ; preds = %skb_dst.exit.i.i41
  %ops.i.i.i42 = getelementptr inbounds %struct.dst_entry, ptr %167, i32 0, i32 1
  %170 = ptrtoint ptr %ops.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i.i.i42, align 4
  %mtu.i.i.i43 = getelementptr inbounds %struct.dst_ops, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %mtu.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mtu.i.i.i43, align 4
  %call.i38.i.i44 = tail call i32 %173(ptr noundef %167) #8
  %174 = tail call i32 @llvm.smax.i32(i32 %call.i38.i.i44, i32 1280) #8
  %end.i.i.i.i45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %175 = ptrtoint ptr %end.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end.i.i.i.i45, align 4
  %gso_size.i.i.i46 = getelementptr inbounds %struct.skb_shared_info, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %gso_size.i.i.i46 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %gso_size.i.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %tobool.i.not.i.i47 = icmp eq i16 %178, 0
  br i1 %tobool.i.not.i.i47, label %land.lhs.true.i.i50, label %land.lhs.true7.i.i

land.lhs.true.i.i50:                              ; preds = %if.end.i.i48
  %len.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %179 = ptrtoint ptr %len.i.i49 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len.i.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %174)
  %cmp5.i.i = icmp ugt i32 %180, %174
  br i1 %cmp5.i.i, label %land.lhs.true.i.i50.if.then10.i.i_crit_edge, label %land.lhs.true.i.i50.if.end.i_crit_edge

land.lhs.true.i.i50.if.end.i_crit_edge:           ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.i50.if.then10.i.i_crit_edge:      ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i48
  %181 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %tobool.not.i42.i.i51 = icmp eq ptr %183, null
  br i1 %tobool.not.i42.i.i51, label %land.lhs.true7.i.i.cond.end.i.i.i_crit_edge, label %land.lhs.true.i44.i.i

land.lhs.true7.i.i.cond.end.i.i.i_crit_edge:      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

land.lhs.true.i44.i.i:                            ; preds = %land.lhs.true7.i.i
  %184 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i.i.i = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %187, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %188 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i52 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %191
  %192 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %193, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11) to i32)
  %194 = inttoptr i32 %add.i.i.i.i to ptr
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load volatile i16, ptr %194, align 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %197 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i19.i.i.i.i = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i.i19.i.i.i.i to ptr
  %preempt_count.i.i20.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %preempt_count.i.i20.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %preempt_count.i.i20.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %200, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i20.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool1.not.i43.i.i = icmp eq i16 %196, 0
  br i1 %tobool1.not.i43.i.i, label %cond.true.i.i.i, label %land.lhs.true.i44.i.i.cond.end.i.i.i_crit_edge

land.lhs.true.i44.i.i.cond.end.i.i.i_crit_edge:   ; preds = %land.lhs.true.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i44.i.i
  %201 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %181, align 4
  %skc_state.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %skc_state.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load volatile i8, ptr %skc_state.i.i.i.i.i, align 2
  %conv.i.i.i.i.i53 = zext i8 %204 to i32
  %shl.i.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i.i53
  %and.i.i17.i.i.i = and i32 %shl.i.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i17.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i.i

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.true.i.i.i.i:                                ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pinet6.i.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %202, i32 0, i32 1
  %205 = ptrtoint ptr %pinet6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pinet6.i.i.i.i, align 8
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge, %land.lhs.true.i44.i.i.cond.end.i.i.i_crit_edge, %land.lhs.true7.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ null, %land.lhs.true.i44.i.i.cond.end.i.i.i_crit_edge ], [ null, %land.lhs.true7.i.i.cond.end.i.i.i_crit_edge ], [ %206, %cond.true.i.i.i.i ], [ null, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %207 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %162, align 8
  %and.i.i.i.i54 = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i54)
  %tobool.not.i.i.i.i55 = icmp eq i32 %and.i.i.i.i54, 0
  br i1 %tobool.not.i.i.i.i55, label %cond.end.i.i.i.skb_dst.exit.i.i.i64_crit_edge, label %land.lhs.true.i.i.i.i58

cond.end.i.i.i.skb_dst.exit.i.i.i64_crit_edge:    ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i64

land.lhs.true.i.i.i.i58:                          ; preds = %cond.end.i.i.i
  %call.i.i.i.i56 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i56)
  %tobool1.not.i.i.i.i57 = icmp eq i32 %call.i.i.i.i56, 0
  br i1 %tobool1.not.i.i.i.i57, label %land.rhs.i.i.i.i61, label %land.lhs.true.i.i.i.i58.skb_dst.exit.i.i.i64_crit_edge

land.lhs.true.i.i.i.i58.skb_dst.exit.i.i.i64_crit_edge: ; preds = %land.lhs.true.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i64

land.rhs.i.i.i.i61:                               ; preds = %land.lhs.true.i.i.i.i58
  %call2.i.i.i.i59 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i59)
  %tobool3.not.i.i.i.i60 = icmp eq i32 %call2.i.i.i.i59, 0
  br i1 %tobool3.not.i.i.i.i60, label %do.end.i.i.i.i62, label %land.rhs.i.i.i.i61.skb_dst.exit.i.i.i64_crit_edge, !prof !66

land.rhs.i.i.i.i61.skb_dst.exit.i.i.i64_crit_edge: ; preds = %land.rhs.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i.i64

do.end.i.i.i.i62:                                 ; preds = %land.rhs.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i.i64

skb_dst.exit.i.i.i64:                             ; preds = %do.end.i.i.i.i62, %land.rhs.i.i.i.i61.skb_dst.exit.i.i.i64_crit_edge, %land.lhs.true.i.i.i.i58.skb_dst.exit.i.i.i64_crit_edge, %cond.end.i.i.i.skb_dst.exit.i.i.i64_crit_edge
  %209 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %162, align 8
  %and25.i.i.i.i63 = and i32 %210, -2
  %211 = inttoptr i32 %and25.i.i.i.i63 to ptr
  %tobool4.not.i.i.i = icmp eq ptr %cond.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %skb_dst.exit.i.i.i64.if.else.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

skb_dst.exit.i.i.i64.if.else.i.i.i_crit_edge:     ; preds = %skb_dst.exit.i.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %skb_dst.exit.i.i.i64
  %pmtudisc.i.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i, i32 0, i32 10
  %212 = ptrtoint ptr %pmtudisc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %bf.load.i.i.i = load i16, ptr %pmtudisc.i.i.i, align 2
  %213 = and i16 %bf.load.i.i.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %213)
  %cmp.i.i.i = icmp ugt i16 %213, 2048
  br i1 %cmp.i.i.i, label %do.end.i45.i.i, label %land.lhs.true5.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true5.i.i.i.if.else.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

do.end.i45.i.i:                                   ; preds = %land.lhs.true5.i.i.i
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %211, align 4
  %mtu7.i.i.i = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 20
  %216 = ptrtoint ptr %mtu7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %mtu7.i.i.i, align 4
  %lwtstate.i.i.i65 = getelementptr inbounds %struct.dst_entry, ptr %211, i32 0, i32 13
  %218 = ptrtoint ptr %lwtstate.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %lwtstate.i.i.i65, align 4
  %tobool.not.i.i.i.i.i66 = icmp eq ptr %219, null
  br i1 %tobool.not.i.i.i.i.i66, label %do.end.i45.i.i.if.end.i.i.i.i71_crit_edge, label %land.lhs.true.i.i.i.i.i68

do.end.i45.i.i.if.end.i.i.i.i71_crit_edge:        ; preds = %do.end.i45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i71

land.lhs.true.i.i.i.i.i68:                        ; preds = %do.end.i45.i.i
  %flags.i.i.i.i.i67 = getelementptr inbounds %struct.lwtunnel_state, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %flags.i.i.i.i.i67 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %flags.i.i.i.i.i67, align 2
  %222 = and i16 %221, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %222)
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %land.lhs.true.i.i.i.i.i68.if.end.i.i.i.i71_crit_edge, label %land.lhs.true.i19.i.i.i

land.lhs.true.i.i.i.i.i68.if.end.i.i.i.i71_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i71

land.lhs.true.i19.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i.i68
  %headroom.i.i.i.i69 = getelementptr inbounds %struct.lwtunnel_state, ptr %219, i32 0, i32 2
  %224 = ptrtoint ptr %headroom.i.i.i.i69 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %headroom.i.i.i.i69, align 4
  %conv.i18.i.i.i = zext i16 %225 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %conv.i18.i.i.i)
  %cmp.i.i.i.i70 = icmp ugt i32 %217, %conv.i18.i.i.i
  br i1 %cmp.i.i.i.i70, label %land.lhs.true.i19.i.i.i.lwtunnel_headroom.exit.i.i.i74_crit_edge, label %land.lhs.true.i19.i.i.i.if.end.i.i.i.i71_crit_edge

land.lhs.true.i19.i.i.i.if.end.i.i.i.i71_crit_edge: ; preds = %land.lhs.true.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i71

land.lhs.true.i19.i.i.i.lwtunnel_headroom.exit.i.i.i74_crit_edge: ; preds = %land.lhs.true.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lwtunnel_headroom.exit.i.i.i74

if.end.i.i.i.i71:                                 ; preds = %land.lhs.true.i19.i.i.i.if.end.i.i.i.i71_crit_edge, %land.lhs.true.i.i.i.i.i68.if.end.i.i.i.i71_crit_edge, %do.end.i45.i.i.if.end.i.i.i.i71_crit_edge
  br label %lwtunnel_headroom.exit.i.i.i74

lwtunnel_headroom.exit.i.i.i74:                   ; preds = %if.end.i.i.i.i71, %land.lhs.true.i19.i.i.i.lwtunnel_headroom.exit.i.i.i74_crit_edge
  %retval.0.i.i.i.i72 = phi i32 [ 0, %if.end.i.i.i.i71 ], [ %conv.i18.i.i.i, %land.lhs.true.i19.i.i.i.lwtunnel_headroom.exit.i.i.i74_crit_edge ]
  %sub.i.i.i73 = sub i32 %217, %retval.0.i.i.i.i72
  br label %ip6_skb_dst_mtu.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i.if.else.i.i.i_crit_edge, %skb_dst.exit.i.i.i64.if.else.i.i.i_crit_edge
  %ops.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %211, i32 0, i32 1
  %226 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops.i.i.i.i, align 4
  %mtu.i.i.i.i = getelementptr inbounds %struct.dst_ops, ptr %227, i32 0, i32 5
  %228 = ptrtoint ptr %mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mtu.i.i.i.i, align 4
  %call.i20.i.i.i = tail call i32 %229(ptr noundef %211) #8
  br label %ip6_skb_dst_mtu.exit.i.i

ip6_skb_dst_mtu.exit.i.i:                         ; preds = %if.else.i.i.i, %lwtunnel_headroom.exit.i.i.i74
  %mtu.0.i.i.i = phi i32 [ %sub.i.i.i73, %lwtunnel_headroom.exit.i.i.i74 ], [ %call.i20.i.i.i, %if.else.i.i.i ]
  %call9.i.i = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %mtu.0.i.i.i) #8
  br i1 %call9.i.i, label %ip6_skb_dst_mtu.exit.i.i.if.end.i_crit_edge, label %ip6_skb_dst_mtu.exit.i.i.if.then10.i.i_crit_edge

ip6_skb_dst_mtu.exit.i.i.if.then10.i.i_crit_edge: ; preds = %ip6_skb_dst_mtu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

ip6_skb_dst_mtu.exit.i.i.if.end.i_crit_edge:      ; preds = %ip6_skb_dst_mtu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i.i:                                    ; preds = %ip6_skb_dst_mtu.exit.i.i.if.then10.i.i_crit_edge, %land.lhs.true.i.i50.if.then10.i.i_crit_edge
  %230 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %167, align 4
  %232 = getelementptr inbounds %struct.anon.22, ptr %skb, i32 0, i32 2
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %231, ptr %232, align 8
  %protocol.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %234 = ptrtoint ptr %protocol.i.i75 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 -31011, ptr %protocol.i.i75, align 8
  %235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %tobool.not.i46.i.i = icmp eq ptr %237, null
  br i1 %tobool.not.i46.i.i, label %if.else15.i.i, label %lor.lhs.false.i.i.i76

lor.lhs.false.i.i.i76:                            ; preds = %if.then10.i.i
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %skc_family.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %239)
  %cmp.not.i.i.i = icmp eq i16 %239, 10
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i77, label %lor.lhs.false.i.i.i76.if.then14.i.i_crit_edge

lor.lhs.false.i.i.i76.if.then14.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i.i

if.end.i.i.i77:                                   ; preds = %lor.lhs.false.i.i.i76
  %sk_protocol.i.i.i = getelementptr inbounds %struct.sock, ptr %237, i32 0, i32 46
  %240 = ptrtoint ptr %sk_protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %sk_protocol.i.i.i, align 4
  %242 = zext i16 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %241, label %if.end.i.i.i77.if.then14.i.i_crit_edge [
    i16 17, label %if.end.i.i.i77.if.then8.i.i.i_crit_edge
    i16 255, label %if.end.i.i.i77.if.then8.i.i.i_crit_edge91
  ]

if.end.i.i.i77.if.then8.i.i.i_crit_edge91:        ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i.i

if.end.i.i.i77.if.then8.i.i.i_crit_edge:          ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i.i

if.end.i.i.i77.if.then14.i.i_crit_edge:           ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i77.if.then8.i.i.i_crit_edge, %if.end.i.i.i77.if.then8.i.i.i_crit_edge91
  %skc_state.i.i.i47.i.i = getelementptr inbounds %struct.sock_common, ptr %237, i32 0, i32 4
  %243 = ptrtoint ptr %skc_state.i.i.i47.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load volatile i8, ptr %skc_state.i.i.i47.i.i, align 2
  %conv.i.i.i48.i.i = zext i8 %244 to i32
  %shl.i.i.i49.i.i = shl nuw i32 1, %conv.i.i.i48.i.i
  %and.i.i.i50.i.i = and i32 %shl.i.i.i49.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i50.i.i)
  %tobool.i.not.i.i51.i.i = icmp eq i32 %and.i.i.i50.i.i, 0
  br i1 %tobool.i.not.i.i51.i.i, label %if.then8.i.i.i.xfrm6_local_dontfrag.exit.i.i_crit_edge, label %cond.true.i.i53.i.i

if.then8.i.i.i.xfrm6_local_dontfrag.exit.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm6_local_dontfrag.exit.i.i

cond.true.i.i53.i.i:                              ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pinet6.i.i52.i.i = getelementptr inbounds %struct.inet_sock, ptr %237, i32 0, i32 1
  %245 = ptrtoint ptr %pinet6.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pinet6.i.i52.i.i, align 8
  br label %xfrm6_local_dontfrag.exit.i.i

xfrm6_local_dontfrag.exit.i.i:                    ; preds = %cond.true.i.i53.i.i, %if.then8.i.i.i.xfrm6_local_dontfrag.exit.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %246, %cond.true.i.i53.i.i ], [ null, %if.then8.i.i.i.xfrm6_local_dontfrag.exit.i.i_crit_edge ]
  %dontfrag.i.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i.i, i32 0, i32 10
  %247 = ptrtoint ptr %dontfrag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %bf.load.i54.i.i = load i16, ptr %dontfrag.i.i.i, align 2
  %248 = and i16 %bf.load.i54.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool9.i.not.i.i = icmp eq i16 %248, 0
  br i1 %tobool9.i.not.i.i, label %xfrm6_local_dontfrag.exit.i.i.if.then14.i.i_crit_edge, label %if.then12.i.i

xfrm6_local_dontfrag.exit.i.i.if.then14.i.i_crit_edge: ; preds = %xfrm6_local_dontfrag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i.i

if.then12.i.i:                                    ; preds = %xfrm6_local_dontfrag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %249 = load ptr, ptr @ipv6_stub, align 4
  %xfrm6_local_rxpmtu.i.i = getelementptr inbounds %struct.ipv6_stub, ptr %249, i32 0, i32 17
  %250 = ptrtoint ptr %xfrm6_local_rxpmtu.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %xfrm6_local_rxpmtu.i.i, align 4
  tail call void %251(ptr noundef %skb, i32 noundef %174) #8
  br label %cleanup

if.then14.i.i:                                    ; preds = %xfrm6_local_dontfrag.exit.i.i.if.then14.i.i_crit_edge, %if.end.i.i.i77.if.then14.i.i_crit_edge, %lor.lhs.false.i.i.i76.if.then14.i.i_crit_edge
  tail call void @xfrm_local_error(ptr noundef %skb, i32 noundef %174) #8
  br label %cleanup

if.else15.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %174, ptr noundef null, ptr noundef %cb.i.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %ip6_skb_dst_mtu.exit.i.i.if.end.i_crit_edge, %land.lhs.true.i.i50.if.end.i_crit_edge, %skb_dst.exit.i.i41.if.end.i_crit_edge
  %head.i.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %252 = ptrtoint ptr %head.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %head.i.i.i78, align 8
  %network_header.i.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %254 = ptrtoint ptr %network_header.i.i.i79 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %network_header.i.i.i79, align 4
  %conv.i.i.i80 = zext i16 %255 to i32
  %add.ptr.i.i.i81 = getelementptr i8, ptr %253, i32 %conv.i.i.i80
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i81, i32 0, i32 3
  %256 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %nexthdr.i, align 2
  %protocol.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %258 = ptrtoint ptr %protocol.i82 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %protocol.i82, align 1
  %ihl.i.i83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %259 = ptrtoint ptr %ihl.i.i83 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 40, ptr %ihl.i.i83, align 8
  %id.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %260 = ptrtoint ptr %id.i.i84 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 0, ptr %id.i.i84, align 4
  %frag_off.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %261 = ptrtoint ptr %frag_off.i.i85 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 16384, ptr %frag_off.i.i85, align 2
  %262 = ptrtoint ptr %add.ptr.i.i.i81 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %add.ptr.i.i.i81, align 2
  %264 = lshr i16 %263, 4
  %conv1.i.i.i = trunc i16 %264 to i8
  %tos.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %265 = ptrtoint ptr %tos.i.i86 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv1.i.i.i, ptr %tos.i.i86, align 1
  %hop_limit.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i81, i32 0, i32 4
  %266 = ptrtoint ptr %hop_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %hop_limit.i.i, align 1
  %ttl.i.i87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %268 = ptrtoint ptr %ttl.i.i87 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %ttl.i.i87, align 2
  %optlen.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %269 = ptrtoint ptr %optlen.i.i88 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %optlen.i.i88, align 4
  %flow_lbl.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %flow_lbl14.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i81, i32 0, i32 1
  %270 = call ptr @memcpy(ptr %flow_lbl.i.i89, ptr %flow_lbl14.i.i, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else15.i.i, %if.then14.i.i, %if.then12.i.i, %if.end14.i, %if.else.i.i, %if.then20.i.i, %do.end.i26, %do.body.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -97, %if.end.cleanup_crit_edge ], [ -97, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.i ], [ -97, %do.end.i26 ], [ -97, %do.body.i.cleanup_crit_edge ], [ -90, %if.else.i.i ], [ -90, %if.then20.i.i ], [ 0, %if.end.i ], [ -90, %if.then14.i.i ], [ -90, %if.else15.i.i ], [ -90, %if.then12.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip6_rthdr_offset(ptr noundef %skb, ptr nocapture noundef %nexthdr, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %nexthdr3 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %type)
  %cmp4 = icmp ne i32 %type, 43
  br label %while.cond

while.cond:                                       ; preds = %if.end35.while.cond_crit_edge, %entry
  %storemerge = phi ptr [ %nexthdr3, %entry ], [ %add.ptr37, %if.end35.while.cond_crit_edge ]
  %found_rhdr.0 = phi i32 [ 0, %entry ], [ %found_rhdr.1, %if.end35.while.cond_crit_edge ]
  %offset.0 = phi i32 [ 40, %entry ], [ %add40, %if.end35.while.cond_crit_edge ]
  %6 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %nexthdr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %sub.ptr.sub)
  %cmp.not = icmp ugt i32 %offset.0, %sub.ptr.sub
  br i1 %cmp.not, label %while.cond.cleanup49_crit_edge, label %while.body

while.cond.cleanup49_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

while.body:                                       ; preds = %while.cond
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nexthdr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %10, label %while.body.cleanup49_crit_edge [
    i8 0, label %while.body.sw.epilog_crit_edge
    i8 43, label %sw.bb
    i8 60, label %sw.bb14
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.body.cleanup49_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

sw.bb:                                            ; preds = %while.body
  %add = or i32 %offset.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub)
  %cmp6.not = icmp ugt i32 %add, %sub.ptr.sub
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.0
  %type8 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %type8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp10.not = icmp eq i8 %13, 0
  br i1 %cmp10.not, label %if.then.sw.epilog_crit_edge, label %if.then.cleanup49_crit_edge

if.then.cleanup49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %call15 = tail call i32 @ipv6_find_tlv(ptr noundef %skb, i32 noundef %offset.0, i32 noundef 201) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %do.body, label %if.end27

do.body:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip6_rthdr_offset.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip6_rthdr_offset, %land.lhs.true22)) #8
          to label %cleanup49 [label %land.lhs.true22], !srcloc !83

land.lhs.true22:                                  ; preds = %do.body
  %call23 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.cleanup49_crit_edge, label %if.then25

land.lhs.true22.cleanup49_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mip6_rthdr_offset.descriptor, ptr noundef nonnull @.str.7) #8
  br label %cleanup49

if.end27:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_rhdr.0)
  %tobool28.not = icmp eq i32 %found_rhdr.0, 0
  br i1 %tobool28.not, label %if.end27.sw.epilog_crit_edge, label %if.end27.cleanup49_crit_edge

if.end27.cleanup49_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end27.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %found_rhdr.1 = phi i32 [ 0, %if.end27.sw.epilog_crit_edge ], [ %found_rhdr.0, %while.body.sw.epilog_crit_edge ], [ 1, %if.then.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  %add31 = or i32 %offset.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %sub.ptr.sub)
  %cmp32 = icmp ugt i32 %add31, %sub.ptr.sub
  br i1 %cmp32, label %sw.epilog.cleanup49_crit_edge, label %if.end35

sw.epilog.cleanup49_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end35:                                         ; preds = %sw.epilog
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i, align 4
  %conv.i78 = zext i16 %17 to i32
  %add.ptr.i79 = getelementptr i8, ptr %15, i32 %conv.i78
  %add.ptr37 = getelementptr i8, ptr %add.ptr.i79, i32 %offset.0
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr37, i32 0, i32 1
  %18 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdrlen, align 1
  %conv38 = zext i8 %19 to i32
  %add39 = shl nuw nsw i32 %conv38, 3
  %shl = add nuw nsw i32 %offset.0, 8
  %add40 = add nuw nsw i32 %shl, %add39
  %cmp41 = icmp ugt i32 %add40, 65535
  br i1 %cmp41, label %if.end35.cleanup49_crit_edge, label %if.end35.while.cond_crit_edge

if.end35.while.cond_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end35.cleanup49_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

cleanup49:                                        ; preds = %if.end35.cleanup49_crit_edge, %sw.epilog.cleanup49_crit_edge, %if.end27.cleanup49_crit_edge, %if.then25, %land.lhs.true22.cleanup49_crit_edge, %do.body, %if.then.cleanup49_crit_edge, %while.body.cleanup49_crit_edge, %while.cond.cleanup49_crit_edge
  %retval.5 = phi i32 [ %offset.0, %do.body ], [ %offset.0, %land.lhs.true22.cleanup49_crit_edge ], [ %offset.0, %if.then25 ], [ %offset.0, %if.then.cleanup49_crit_edge ], [ %offset.0, %if.end27.cleanup49_crit_edge ], [ %offset.0, %while.body.cleanup49_crit_edge ], [ -22, %sw.epilog.cleanup49_crit_edge ], [ -22, %if.end35.cleanup49_crit_edge ], [ -22, %while.cond.cleanup49_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_check_expire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_overflow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_pktgen_xfrm_outer_mode_output, !1, !"__ksymtab_pktgen_xfrm_outer_mode_output", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_output.c", i32 487, i32 1}
!2 = !{ptr @__ksymtab_xfrm_output_resume, !3, !"__ksymtab_xfrm_output_resume", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_output.c", i32 611, i32 1}
!4 = !{ptr @__ksymtab_xfrm_output, !5, !"__ksymtab_xfrm_output", i1 false, i1 false}
!5 = !{!"../net/xfrm/xfrm_output.c", i32 767, i32 1}
!6 = !{ptr @__ksymtab_xfrm_local_error, !7, !"__ksymtab_xfrm_local_error", i1 false, i1 false}
!7 = !{!"../net/xfrm/xfrm_output.c", i32 909, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/xfrm/xfrm_output.c", i32 472, i32 3}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/xfrm/xfrm_output.c", i32 475, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../net/xfrm/xfrm_output.c", i32 423, i32 2}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/xfrm/xfrm_output.c", i32 802, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xfrm4_extract_output._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @xfrm4_extract_output._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/net/dst.h", i32 161, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/xfrm/xfrm_output.c", i32 445, i32 3}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/xfrm/xfrm_output.c", i32 113, i32 5}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mip6_rthdr_offset.descriptor, !26, !"descriptor", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2154959688, i64 2154960176, i64 2154959725, i64 2154959781, i64 2154959815, i64 2154959839, i64 2154959880, i64 2154959901, i64 2154959929, i64 2154959963}
!68 = !{!"auto-init"}
!69 = !{i64 764919, i64 764980}
!70 = !{i64 767651}
!71 = !{i64 767936}
!72 = !{i64 2148360638}
!73 = !{i64 846258, i64 846283, i64 846305, i64 846321, i64 846333, i64 846353, i64 846377, i64 846393, i64 846405}
!74 = !{i64 2148360826}
!75 = !{i64 2148450774}
!76 = !{i64 2148365214, i64 2148365246, i64 2148365275, i64 2148365309, i64 2148365340, i64 2148365363}
!77 = !{i64 2149325350}
!78 = !{i64 2149375840}
!79 = !{i64 2149376106}
!80 = !{i64 2148362749, i64 2148362781, i64 2148362810, i64 2148362844, i64 2148362875, i64 2148362898}
!81 = !{i64 2155686479}
!82 = !{i64 2155704847}
!83 = !{i64 2148974596, i64 2148974601, i64 2148974614, i64 2148974658, i64 2148974692, i64 2148974713}
