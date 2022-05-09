; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_device.c_pt.bc'
source_filename = "../net/xfrm/xfrm_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+validate_xmit_xfrm\22, \22a\22\09"
module asm "\09.weak\09__crc_validate_xmit_xfrm\09\09\09\09"
module asm "\09.long\09__crc_validate_xmit_xfrm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_validate_xmit_xfrm:\09\09\09\09\09"
module asm "\09.asciz \09\22validate_xmit_xfrm\22\09\09\09\09\09"
module asm "__kstrtabns_validate_xmit_xfrm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_dev_state_add\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_dev_state_add\09\09\09\09"
module asm "\09.long\09__crc_xfrm_dev_state_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_dev_state_add:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_dev_state_add\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_dev_state_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_dev_offload_ok\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_dev_offload_ok\09\09\09\09"
module asm "\09.long\09__crc_xfrm_dev_offload_ok\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_dev_offload_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_dev_offload_ok\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_dev_offload_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrm_dev_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_dev_resume\09\09\09\09"
module asm "\09.long\09__crc_xfrm_dev_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_dev_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_dev_resume\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_dev_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.151, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.151 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%struct.llist_node = type { ptr }
%union.anon.48 = type { i32 }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.130, %union.anon.131, [48 x i8], %union.anon.132, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.134, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.136, i32, i32, i32, i16, i16, %union.anon.138, i32, %union.anon.139, %union.anon.140, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.136 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.152, i32, i32, i8, i8 }
%struct.anon.152 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.127, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.128, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.128 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.129 = type { ptr }
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
%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.100, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.100 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_user_offload = type { i32, i8 }
%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.153, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.153 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_validate_xmit_xfrm = external dso_local constant [0 x i8], align 1
@__kstrtabns_validate_xmit_xfrm = external dso_local constant [0 x i8], align 1
@__ksymtab_validate_xmit_xfrm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @validate_xmit_xfrm to i32), ptr @__kstrtab_validate_xmit_xfrm, ptr @__kstrtabns_validate_xmit_xfrm }, section "___ksymtab_gpl+validate_xmit_xfrm", align 4
@__kstrtab_xfrm_dev_state_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_dev_state_add = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_dev_state_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_dev_state_add to i32), ptr @__kstrtab_xfrm_dev_state_add, ptr @__kstrtabns_xfrm_dev_state_add }, section "___ksymtab_gpl+xfrm_dev_state_add", align 4
@__kstrtab_xfrm_dev_offload_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_dev_offload_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_dev_offload_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_dev_offload_ok to i32), ptr @__kstrtab_xfrm_dev_offload_ok, ptr @__kstrtabns_xfrm_dev_offload_ok }, section "___ksymtab_gpl+xfrm_dev_offload_ok", align 4
@__kstrtab_xfrm_dev_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_dev_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_dev_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_dev_resume to i32), ptr @__kstrtab_xfrm_dev_resume, ptr @__kstrtabns_xfrm_dev_resume }, section "___ksymtab_gpl+xfrm_dev_resume", align 4
@xfrm_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @xfrm_dev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 6, i64 12]
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"xfrm_dev_notifier\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../net/xfrm/xfrm_device.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 423, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 1011, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_validate_xmit_xfrm, ptr @__ksymtab_xfrm_dev_offload_ok, ptr @__ksymtab_xfrm_dev_resume, ptr @__ksymtab_xfrm_dev_state_add, ptr @xfrm_dev_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @validate_xmit_xfrm(ptr noundef %skb, i64 noundef %features, ptr nocapture noundef writeonly %again) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.cleanup285_crit_edge, label %skb_sec_path.exit.i

entry.cleanup285_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.cleanup285_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.cleanup285_crit_edge:         ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup285_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup285_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.cleanup285_crit_edge

lor.lhs.false2.i.cleanup285_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %11 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %xfrm_offload.exit.cleanup285_crit_edge, label %lor.lhs.false

xfrm_offload.exit.cleanup285_crit_edge:           ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

lor.lhs.false:                                    ; preds = %xfrm_offload.exit
  %flags1 = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1, align 4
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %skb_sec_path.exit, label %lor.lhs.false.cleanup285_crit_edge

lor.lhs.false.cleanup285_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

skb_sec_path.exit:                                ; preds = %lor.lhs.false
  %and3 = and i64 %features, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %and6 = and i64 %features, -28
  %spec.select = select i1 %tobool4.not, i64 %and6, i64 %features
  %16 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %21, -1
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %sub
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %and10 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %skb_sec_path.exit.cleanup285_crit_edge

skb_sec_path.exit.cleanup285_crit_edge:           ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

lor.lhs.false12:                                  ; preds = %skb_sec_path.exit
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %23, i32 0, i32 41
  %flags13 = getelementptr inbounds %struct.xfrm_state, ptr %23, i32 0, i32 41, i32 5
  %24 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags13, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not = icmp eq i8 %26, 0
  br i1 %tobool15.not, label %if.end17, label %lor.lhs.false12.cleanup285_crit_edge

lor.lhs.false12.cleanup285_crit_edge:             ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

if.end17:                                         ; preds = %lor.lhs.false12
  %27 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xso, align 8
  %cmp.not = icmp eq ptr %28, %13
  br i1 %cmp.not, label %if.end17.do.body26_crit_edge, label %land.lhs.true

if.end17.do.body26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

land.lhs.true:                                    ; preds = %if.end17
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %23, i32 0, i32 41, i32 2
  %29 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %real_dev, align 8
  %cmp22 = icmp eq ptr %30, %13
  br i1 %cmp22, label %land.lhs.true.cleanup285_crit_edge, label %land.lhs.true.do.body26_crit_edge

land.lhs.true.do.body26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

land.lhs.true.cleanup285_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

do.body26:                                        ; preds = %land.lhs.true.do.body26_crit_edge, %if.end17.do.body26_crit_edge
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %and.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not = icmp eq i32 %and.i, 0
  br i1 %tobool37.not, label %if.then38, label %do.body26.do.body42_crit_edge

do.body26.do.body42_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body26.do.body42_crit_edge
  %32 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i375 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i375 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx48, align 4
  %add = add i32 %37, ptrtoint (ptr @softnet_data to i32)
  %38 = inttoptr i32 %add to ptr
  %xfrm_backlog = getelementptr inbounds %struct.softnet_data, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %xfrm_backlog to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfrm_backlog, align 4
  %cmp.i.not = icmp eq ptr %40, %xfrm_backlog
  br i1 %tobool37.not, label %if.then60, label %do.body42.do.body62_crit_edge

do.body42.do.body62_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.then60:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body62

do.body62:                                        ; preds = %if.then60, %do.body42.do.body62_crit_edge
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool70.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool70.not, label %if.then78, label %do.body62.do.end81_crit_edge, !prof !31

do.body62.do.end81_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

if.then78:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body62.do.end81_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #7, !srcloc !32
  br i1 %cmp.i.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %again to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %again, align 1
  br label %cleanup285

if.end88:                                         ; preds = %do.end81
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %43 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.i.not = icmp eq i16 %46, 0
  br i1 %tobool.i.not, label %if.end88.if.end108_crit_edge, label %land.lhs.true91

if.end88.if.end108_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

land.lhs.true91:                                  ; preds = %if.end88
  %47 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xso, align 8
  %cmp94.not = icmp eq ptr %48, %13
  br i1 %cmp94.not, label %land.lhs.true91.if.end108_crit_edge, label %if.then102, !prof !33

land.lhs.true91.if.end108_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then102:                                       ; preds = %land.lhs.true91
  %and103 = and i64 %spec.select, -1125902054326273
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and103, i1 noundef zeroext true) #7
  %cmp.i377 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i377, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_dropped, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tx_dropped, i32 1, i32 3, i32 1) #7
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_dropped, ptr %tx_dropped, i32 1, ptr elementtype(i32) %tx_dropped) #7, !srcloc !34
  br label %cleanup285

cleanup:                                          ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end108

if.end108:                                        ; preds = %cleanup, %land.lhs.true91.if.end108_crit_edge, %if.end88.if.end108_crit_edge
  %esp_features.1 = phi i64 [ %and103, %cleanup ], [ %spec.select, %land.lhs.true91.if.end108_crit_edge ], [ %spec.select, %if.end88.if.end108_crit_edge ]
  %skb.addr.1 = phi ptr [ %call.i, %cleanup ], [ %skb, %land.lhs.true91.if.end108_crit_edge ], [ %skb, %if.end88.if.end108_crit_edge ]
  %50 = ptrtoint ptr %skb.addr.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb.addr.1, align 8
  %tobool109.not = icmp eq ptr %51, null
  br i1 %tobool109.not, label %if.then110, label %if.end182

if.then110:                                       ; preds = %if.end108
  %52 = getelementptr inbounds %struct.anon, ptr %skb.addr.1, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 29
  %55 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %gso_partial_features, align 64
  %or = or i64 %56, %esp_features.1
  tail call fastcc void @xfrm_outer_mode_prep(ptr noundef %23, ptr noundef %skb.addr.1)
  %57 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags1, align 4
  %or112 = or i32 %58, 128
  store i32 %or112, ptr %flags1, align 4
  %type_offload = getelementptr inbounds %struct.xfrm_state, ptr %23, i32 0, i32 49
  %59 = ptrtoint ptr %type_offload to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type_offload, align 8
  %xmit = getelementptr inbounds %struct.xfrm_type_offload, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xmit, align 4
  %call113 = tail call i32 %62(ptr noundef %23, ptr noundef %skb.addr.1, i64 noundef %or) #7
  %63 = zext i32 %call113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call113, label %do.body121 [
    i32 0, label %if.end179
    i32 -115, label %if.then110.cleanup285_crit_edge
  ]

if.then110.cleanup285_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

do.body121:                                       ; preds = %if.then110
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %65 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %23, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 30, i32 6
  %67 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx143 = getelementptr [29 x i32], ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %arrayidx143 to i32
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx147 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx147, align 4
  %add148 = add i32 %73, %69
  %74 = inttoptr i32 %add148 to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add149 = add i32 %76, 1
  store i32 %add149, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i378 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i378)
  %tobool160.not = icmp eq i32 %and.i.i378, 0
  br i1 %tobool160.not, label %if.then169, label %do.body121.do.end172_crit_edge, !prof !31

do.body121.do.end172_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end172

if.then169:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end172

do.end172:                                        ; preds = %if.then169, %do.body121.do.end172_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #7, !srcloc !32
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #7
  br label %cleanup285

if.end179:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %80 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 21
  %82 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mac_header.i, align 2
  %conv.i379 = zext i16 %83 to i32
  %add.ptr.i = getelementptr i8, ptr %81, i32 %conv.i379
  %sub.ptr.lhs.cast = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call181 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef %sub.ptr.sub) #7
  br label %cleanup285

if.end182:                                        ; preds = %if.end108
  %tobool185.not410 = icmp eq ptr %skb.addr.1, null
  br i1 %tobool185.not410, label %if.end182.cleanup285_crit_edge, label %for.body.lr.ph

if.end182.cleanup285_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

for.body.lr.ph:                                   ; preds = %if.end182
  %type_offload191 = getelementptr inbounds %struct.xfrm_state, ptr %23, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %cond.end283, %for.body.lr.ph
  %skb.addr.2415 = phi ptr [ %skb.addr.1, %for.body.lr.ph ], [ %skb.addr.3, %cond.end283 ]
  %skb2.0414 = phi ptr [ %skb.addr.1, %for.body.lr.ph ], [ %nskb.0413, %cond.end283 ]
  %nskb.0413 = phi ptr [ %51, %for.body.lr.ph ], [ %132, %cond.end283 ]
  %pskb.0412 = phi ptr [ null, %for.body.lr.ph ], [ %pskb.1, %cond.end283 ]
  %esp_features.2411 = phi i64 [ %esp_features.1, %for.body.lr.ph ], [ %or187, %cond.end283 ]
  %84 = getelementptr inbounds %struct.anon, ptr %skb.addr.2415, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %gso_partial_features186 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 29
  %87 = ptrtoint ptr %gso_partial_features186 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %gso_partial_features186, align 64
  %or187 = or i64 %88, %esp_features.2411
  %89 = ptrtoint ptr %skb2.0414 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %skb2.0414, align 8
  %active_extensions.i.i.i.i380 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0414, i32 0, i32 13
  %90 = ptrtoint ptr %active_extensions.i.i.i.i380 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %active_extensions.i.i.i.i380, align 1
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.i.not.i.i.i381 = icmp eq i8 %92, 0
  br i1 %tobool.i.not.i.i.i381, label %for.body.xfrm_offload.exit398_crit_edge, label %skb_sec_path.exit.i388

for.body.xfrm_offload.exit398_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit398

skb_sec_path.exit.i388:                           ; preds = %for.body
  %extensions.i.i.i382 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0414, i32 0, i32 22
  %93 = ptrtoint ptr %extensions.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %extensions.i.i.i382, align 8
  %arrayidx.i.i.i383 = getelementptr %struct.skb_ext, ptr %94, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %arrayidx.i.i.i383 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.i383, align 1
  %conv.i.i.i384 = zext i8 %96 to i32
  %shl.i.i.i385 = shl nuw nsw i32 %conv.i.i.i384, 3
  %add.ptr.i.i.i386 = getelementptr i8, ptr %94, i32 %shl.i.i.i385
  %tobool.not.i387 = icmp eq ptr %add.ptr.i.i.i386, null
  br i1 %tobool.not.i387, label %skb_sec_path.exit.i388.xfrm_offload.exit398_crit_edge, label %lor.lhs.false.i391

skb_sec_path.exit.i388.xfrm_offload.exit398_crit_edge: ; preds = %skb_sec_path.exit.i388
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit398

lor.lhs.false.i391:                               ; preds = %skb_sec_path.exit.i388
  %olen.i389 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i386, i32 0, i32 1
  %97 = ptrtoint ptr %olen.i389 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %olen.i389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool1.not.i390 = icmp eq i32 %98, 0
  br i1 %tobool1.not.i390, label %lor.lhs.false.i391.xfrm_offload.exit398_crit_edge, label %lor.lhs.false2.i393

lor.lhs.false.i391.xfrm_offload.exit398_crit_edge: ; preds = %lor.lhs.false.i391
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit398

lor.lhs.false2.i393:                              ; preds = %lor.lhs.false.i391
  %99 = ptrtoint ptr %add.ptr.i.i.i386 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i.i386, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %98)
  %cmp.not.i392 = icmp eq i32 %100, %98
  br i1 %cmp.not.i392, label %if.end.i396, label %lor.lhs.false2.i393.xfrm_offload.exit398_crit_edge

lor.lhs.false2.i393.xfrm_offload.exit398_crit_edge: ; preds = %lor.lhs.false2.i393
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit398

if.end.i396:                                      ; preds = %lor.lhs.false2.i393
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i394 = add i32 %98, -1
  %arrayidx.i395 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i386, i32 0, i32 3, i32 %sub.i394
  br label %xfrm_offload.exit398

xfrm_offload.exit398:                             ; preds = %if.end.i396, %lor.lhs.false2.i393.xfrm_offload.exit398_crit_edge, %lor.lhs.false.i391.xfrm_offload.exit398_crit_edge, %skb_sec_path.exit.i388.xfrm_offload.exit398_crit_edge, %for.body.xfrm_offload.exit398_crit_edge
  %retval.0.i397 = phi ptr [ %arrayidx.i395, %if.end.i396 ], [ null, %lor.lhs.false2.i393.xfrm_offload.exit398_crit_edge ], [ null, %lor.lhs.false.i391.xfrm_offload.exit398_crit_edge ], [ null, %skb_sec_path.exit.i388.xfrm_offload.exit398_crit_edge ], [ null, %for.body.xfrm_offload.exit398_crit_edge ]
  %flags189 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i397, i32 0, i32 1
  %101 = ptrtoint ptr %flags189 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags189, align 4
  %or190 = or i32 %102, 128
  store i32 %or190, ptr %flags189, align 4
  tail call fastcc void @xfrm_outer_mode_prep(ptr noundef %23, ptr noundef nonnull %skb2.0414)
  %103 = ptrtoint ptr %type_offload191 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %type_offload191, align 8
  %xmit192 = getelementptr inbounds %struct.xfrm_type_offload, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %xmit192 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xmit192, align 4
  %call193 = tail call i32 %106(ptr noundef %23, ptr noundef nonnull %skb2.0414, i64 noundef %or187) #7
  %107 = zext i32 %call193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call193, label %do.body202 [
    i32 0, label %if.then195
    i32 -115, label %if.else265
  ]

if.then195:                                       ; preds = %xfrm_offload.exit398
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %skb2.0414 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %nskb.0413, ptr %skb2.0414, align 8
  %data273 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0414, i32 0, i32 19
  %109 = ptrtoint ptr %data273 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data273, align 4
  %head.i399 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0414, i32 0, i32 18
  %111 = ptrtoint ptr %head.i399 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i399, align 8
  %mac_header.i400 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0414, i32 0, i32 15, i32 0, i32 21
  %113 = ptrtoint ptr %mac_header.i400 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mac_header.i400, align 2
  %conv.i401 = zext i16 %114 to i32
  %add.ptr.i402 = getelementptr i8, ptr %112, i32 %conv.i401
  %sub.ptr.lhs.cast275 = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast276 = ptrtoint ptr %add.ptr.i402 to i32
  %sub.ptr.sub277 = sub i32 %sub.ptr.lhs.cast275, %sub.ptr.rhs.cast276
  %call278 = tail call ptr @skb_push(ptr noundef nonnull %skb2.0414, i32 noundef %sub.ptr.sub277) #7
  br label %for.inc

do.body202:                                       ; preds = %xfrm_offload.exit398
  %115 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %116 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %23, align 4
  %xfrm_statistics226 = getelementptr inbounds %struct.net, ptr %117, i32 0, i32 30, i32 6
  %118 = ptrtoint ptr %xfrm_statistics226 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %xfrm_statistics226, align 4
  %arrayidx228 = getelementptr [29 x i32], ptr %119, i32 0, i32 19
  %120 = ptrtoint ptr %arrayidx228 to i32
  %121 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu, align 4
  %arrayidx232 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx232, align 4
  %add233 = add i32 %124, %120
  %125 = inttoptr i32 %add233 to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add234 = add i32 %127, 1
  store i32 %add234, ptr %125, align 4
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i403 = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i403)
  %tobool245.not = icmp eq i32 %and.i.i403, 0
  br i1 %tobool245.not, label %if.then254, label %do.body202.do.end257_crit_edge, !prof !31

do.body202.do.end257_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end257

if.then254:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end257

do.end257:                                        ; preds = %if.then254, %do.body202.do.end257_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %115) #7, !srcloc !32
  %129 = ptrtoint ptr %skb2.0414 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %nskb.0413, ptr %skb2.0414, align 8
  tail call void @kfree_skb_list(ptr noundef nonnull %skb2.0414) #7
  br label %cleanup285

if.else265:                                       ; preds = %xfrm_offload.exit398
  %cmp266 = icmp eq ptr %skb.addr.2415, %skb2.0414
  br i1 %cmp266, label %if.else265.for.inc_crit_edge, label %if.else269

if.else265.for.inc_crit_edge:                     ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else269:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %pskb.0412 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %nskb.0413, ptr %pskb.0412, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else269, %if.else265.for.inc_crit_edge, %if.then195
  %pskb.1 = phi ptr [ %pskb.0412, %if.else269 ], [ %skb2.0414, %if.then195 ], [ %pskb.0412, %if.else265.for.inc_crit_edge ]
  %skb.addr.3 = phi ptr [ %skb.addr.2415, %if.else269 ], [ %skb.addr.2415, %if.then195 ], [ %nskb.0413, %if.else265.for.inc_crit_edge ]
  %tobool279.not = icmp eq ptr %nskb.0413, null
  br i1 %tobool279.not, label %for.inc.cleanup285_crit_edge, label %cond.end283

for.inc.cleanup285_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup285

cond.end283:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %nskb.0413 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %nskb.0413, align 8
  br label %for.body

cleanup285:                                       ; preds = %for.inc.cleanup285_crit_edge, %do.end257, %if.end182.cleanup285_crit_edge, %if.end179, %do.end172, %if.then110.cleanup285_crit_edge, %cleanup.thread, %if.then87, %land.lhs.true.cleanup285_crit_edge, %lor.lhs.false12.cleanup285_crit_edge, %skb_sec_path.exit.cleanup285_crit_edge, %lor.lhs.false.cleanup285_crit_edge, %xfrm_offload.exit.cleanup285_crit_edge, %lor.lhs.false2.i.cleanup285_crit_edge, %lor.lhs.false.i.cleanup285_crit_edge, %skb_sec_path.exit.i.cleanup285_crit_edge, %entry.cleanup285_crit_edge
  %retval.1 = phi ptr [ %skb, %if.then87 ], [ null, %do.end257 ], [ null, %do.end172 ], [ %skb.addr.1, %if.end179 ], [ %skb, %lor.lhs.false.cleanup285_crit_edge ], [ %skb, %xfrm_offload.exit.cleanup285_crit_edge ], [ %skb, %lor.lhs.false12.cleanup285_crit_edge ], [ %skb, %skb_sec_path.exit.cleanup285_crit_edge ], [ %skb, %land.lhs.true.cleanup285_crit_edge ], [ null, %if.then110.cleanup285_crit_edge ], [ null, %cleanup.thread ], [ %skb, %lor.lhs.false2.i.cleanup285_crit_edge ], [ %skb, %lor.lhs.false.i.cleanup285_crit_edge ], [ %skb, %skb_sec_path.exit.i.cleanup285_crit_edge ], [ %skb, %entry.cleanup285_crit_edge ], [ null, %if.end182.cleanup285_crit_edge ], [ %skb.addr.3, %for.inc.cleanup285_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfrm_outer_mode_prep(ptr nocapture noundef readonly %x, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48
  %0 = ptrtoint ptr %outer_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %outer_mode, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb11
    i8 4, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %4, label %sw.bb.sw.epilog_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then9
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_mode_tunnel_prep(ptr noundef %x, ptr noundef %skb, i32 noundef 20)
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_mode_tunnel_prep(ptr noundef %x, ptr noundef %skb, i32 noundef 40)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %family13 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %family13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family13, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %7, label %sw.bb11.sw.epilog_crit_edge [
    i8 2, label %if.then17
    i8 10, label %if.then24
  ]

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_transport_prep(ptr noundef %x, ptr noundef %skb)
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_transport_prep(ptr noundef %x, ptr noundef %skb)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %family28 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %9 = ptrtoint ptr %family28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family28, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %10, label %sw.bb26.sw.epilog_crit_edge [
    i8 2, label %if.then32
    i8 10, label %if.then39
  ]

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_mode_beet_prep(ptr noundef %x, ptr noundef %skb, i32 noundef 20)
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__xfrm_mode_beet_prep(ptr noundef %x, ptr noundef %skb, i32 noundef 40)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %if.then32, %sw.bb26.sw.epilog_crit_edge, %if.then24, %if.then17, %sw.bb11.sw.epilog_crit_edge, %if.then9, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm_dev_state_add(ptr noundef %net, ptr noundef %x, ptr nocapture noundef readonly %xuo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xso1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %type_offload = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 49
  %0 = ptrtoint ptr %type_offload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type_offload, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %2 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encap, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tfcpad = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %4 = ptrtoint ptr %tfcpad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tfcpad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.xfrm_user_offload, ptr %xuo, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %tobool6.not = icmp ult i8 %7, 4
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %xuo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xuo, align 4
  %call = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %9) #7
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end31_crit_edge

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then10:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 4
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  %id18 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %saddr21 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %saddr.0 = select i1 %tobool14.not, ptr %saddr21, ptr %id18
  %daddr.0 = select i1 %tobool14.not, ptr %id18, ptr %saddr21
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %family, align 2
  %conv24 = zext i16 %14 to i32
  %smark.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 12
  %15 = ptrtoint ptr %smark.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smark.i, align 4
  %m1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 12, i32 1
  %17 = ptrtoint ptr %m1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m1.i, align 4
  %and.i = and i32 %18, %16
  %call26 = tail call ptr @__xfrm_dst_lookup(ptr noundef %net, i32 noundef 0, i32 noundef 0, ptr noundef %saddr.0, ptr noundef %daddr.0, i32 noundef %conv24, i32 noundef %and.i) #7
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.end29

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call26, align 4
  tail call fastcc void @dev_hold(ptr noundef %20)
  tail call void @dst_release(ptr noundef %call26) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end8.if.end31_crit_edge
  %dev.0 = phi ptr [ %call, %if.end8.if.end31_crit_edge ], [ %20, %if.end29 ]
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 47
  %21 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfrmdev_ops, align 4
  %tobool32.not = icmp eq ptr %22, null
  br i1 %tobool32.not, label %if.end31.if.then36_crit_edge, label %lor.lhs.false33

if.end31.if.then36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false33:                                  ; preds = %if.end31
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %lor.lhs.false33.if.then36_crit_edge, label %if.end38

lor.lhs.false33.if.then36_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33.if.then36_crit_edge, %if.end31.if.then36_crit_edge
  %25 = ptrtoint ptr %xso1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xso1, align 4
  %tobool.not.i = icmp eq ptr %dev.0, null
  br i1 %tobool.not.i, label %if.then36.cleanup_crit_edge, label %do.body1.i

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i:                                       ; preds = %if.then36
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %27 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcpu_refcnt.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add13.i = add i32 %38, -1
  store i32 %add13.i, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !31

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #7, !srcloc !32
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false33
  %flags40 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %40 = ptrtoint ptr %flags40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool43.not = icmp sgt i8 %41, -1
  br i1 %tobool43.not, label %if.end38.if.end48_crit_edge, label %land.lhs.true

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end38
  %xdo_dev_state_advance_esn = getelementptr inbounds %struct.xfrmdev_ops, ptr %22, i32 0, i32 4
  %42 = ptrtoint ptr %xdo_dev_state_advance_esn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xdo_dev_state_advance_esn, align 4
  %tobool45.not = icmp eq ptr %43, null
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %xso1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %xso1, align 4
  tail call fastcc void @dev_put(ptr noundef %dev.0)
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %45 = ptrtoint ptr %xso1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev.0, ptr %xso1, align 4
  %dev_tracker = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 2592) #7
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 2
  %46 = ptrtoint ptr %real_dev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev.0, ptr %real_dev, align 4
  %num_exthdrs = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 4
  %47 = ptrtoint ptr %num_exthdrs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_exthdrs, align 4
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 4
  %50 = and i8 %49, -2
  %flags54 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 5
  %51 = ptrtoint ptr %flags54 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %flags54, align 4
  %52 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xfrmdev_ops, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call57 = tail call i32 %55(ptr noundef %x) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end48.if.end68_crit_edge, label %if.then59

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then59:                                        ; preds = %if.end48
  %56 = ptrtoint ptr %num_exthdrs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %num_exthdrs, align 4
  %57 = ptrtoint ptr %flags54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %flags54, align 4
  %58 = ptrtoint ptr %xso1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %xso1, align 4
  %59 = ptrtoint ptr %real_dev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %real_dev, align 4
  tail call fastcc void @dev_put_track(ptr noundef %dev.0, ptr noundef %dev_tracker)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call57)
  %cmp.not = icmp eq i32 %call57, -95
  br i1 %cmp.not, label %if.then59.if.end68_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %if.then59.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then59.cleanup_crit_edge, %if.then46, %do.end30.i, %if.then36.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68 ], [ -22, %if.then46 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ %call57, %if.then59.cleanup_crit_edge ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %do.end30.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xfrm_dst_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !31

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !32
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !31

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !32
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put_track(ptr noundef %dev, ptr noundef %tracker) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i, ptr noundef %tracker) #7
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !31

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfrm_dev_offload_ok(ptr noundef %skb, ptr noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !31

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %6 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xso, align 8
  %type_offload = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 49
  %8 = ptrtoint ptr %type_offload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type_offload, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %skb_dst.exit.cleanup_crit_edge, label %lor.lhs.false

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_dst.exit
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %10 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encap, align 8
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false4

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false4:                                   ; preds = %if.end
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i52 = icmp eq ptr %13, null
  br i1 %tobool.not.i52, label %lor.lhs.false.i, label %lor.lhs.false4.if.then.i_crit_edge

lor.lhs.false4.if.then.i_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false4
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 4
  %16 = and i16 %15, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool1.not.i53 = icmp eq i16 %16, 0
  br i1 %tobool1.not.i53, label %lor.lhs.false.i.xfrm_dst_path.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.xfrm_dst_path.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_path.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %lor.lhs.false4.if.then.i_crit_edge
  %path.i = getelementptr inbounds %struct.xfrm_dst, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path.i, align 4
  br label %xfrm_dst_path.exit

xfrm_dst_path.exit:                               ; preds = %if.then.i, %lor.lhs.false.i.xfrm_dst_path.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then.i ], [ %5, %lor.lhs.false.i.xfrm_dst_path.exit_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i, align 4
  %cmp = icmp eq ptr %7, %20
  br i1 %cmp, label %xfrm_dst_path.exit.land.lhs.true_crit_edge, label %xfrm_dst_path.exit.cleanup_crit_edge

xfrm_dst_path.exit.cleanup_crit_edge:             ; preds = %xfrm_dst_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfrm_dst_path.exit.land.lhs.true_crit_edge:       ; preds = %xfrm_dst_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %xfrm_dst_path.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %child = getelementptr inbounds %struct.xfrm_dst, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %child, align 4
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xfrm, align 4
  %tobool7.not = icmp eq ptr %24, null
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %child_mtu_cached = getelementptr inbounds %struct.xfrm_dst, ptr %5, i32 0, i32 10
  %25 = ptrtoint ptr %child_mtu_cached to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %child_mtu_cached, align 4
  %call9 = tail call i32 @xfrm_state_mtu(ptr noundef %x, i32 noundef %26) #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call9)
  %cmp10.not = icmp ugt i32 %28, %call9
  br i1 %cmp10.not, label %if.end12, label %ok

if.end12:                                         ; preds = %if.then8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i.not = icmp eq i16 %32, 0
  br i1 %tobool.i.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14:                                  ; preds = %if.end12
  %call15 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %call9) #7
  %call15.not = xor i1 %call15, true
  %brmerge = select i1 %call15.not, i1 true, i1 %tobool3.not
  br i1 %brmerge, label %land.lhs.true14.cleanup_crit_edge, label %land.lhs.true14.land.lhs.true20_crit_edge

land.lhs.true14.land.lhs.true20_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true20

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ok:                                               ; preds = %if.then8
  br i1 %tobool3.not, label %ok.cleanup_crit_edge, label %ok.land.lhs.true20_crit_edge

ok.land.lhs.true20_crit_edge:                     ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true20

ok.cleanup_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true20:                                  ; preds = %ok.land.lhs.true20_crit_edge, %land.lhs.true14.land.lhs.true20_crit_edge
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 47
  %33 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfrmdev_ops, align 4
  %tobool21.not = icmp eq ptr %34, null
  br i1 %tobool21.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true22

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %xdo_dev_offload_ok = getelementptr inbounds %struct.xfrmdev_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %xdo_dev_offload_ok to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xdo_dev_offload_ok, align 4
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %land.lhs.true22.cleanup_crit_edge, label %if.then25

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xso, align 8
  %xfrmdev_ops28 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 47
  %39 = ptrtoint ptr %xfrmdev_ops28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfrmdev_ops28, align 4
  %xdo_dev_offload_ok29 = getelementptr inbounds %struct.xfrmdev_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %xdo_dev_offload_ok29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xdo_dev_offload_ok29, align 4
  %call30 = tail call zeroext i1 %42(ptr noundef %skb, ptr noundef %x) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %ok.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %xfrm_dst_path.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ %call30, %if.then25 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %skb_dst.exit.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ %call15, %land.lhs.true14.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %xfrm_dst_path.exit.cleanup_crit_edge ], [ true, %land.lhs.true22.cleanup_crit_edge ], [ true, %land.lhs.true20.cleanup_crit_edge ], [ true, %ok.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_dev_resume(ptr noundef %skb) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %ret, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @netdev_core_pick_tx(ptr noundef %2, ptr noundef %skb, ptr noundef null) #7
  %features = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %and = and i64 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %call, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #7
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %xmit_lock_owner.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %and.i81 = and i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.i.not = icmp eq i32 %and.i81, 0
  br i1 %tobool.i.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call ptr @dev_hard_start_xmit(ptr noundef %skb, ptr noundef %2, ptr noundef %call, ptr noundef nonnull %ret) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end.if.end6_crit_edge ], [ %call5, %if.then4 ]
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features, align 16
  %and8 = and i64 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %cmp9 = icmp eq i64 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %xmit_lock_owner.i82 = getelementptr inbounds %struct.netdev_queue, ptr %call, i32 0, i32 11
  %19 = ptrtoint ptr %xmit_lock_owner.i82 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1, ptr %xmit_lock_owner.i82, align 4
  %_xmit_lock.i83 = getelementptr inbounds %struct.netdev_queue, ptr %call, i32 0, i32 10
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i83) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp.i = icmp slt i32 %21, 15
  br i1 %cmp.i, label %if.end12.if.end67_crit_edge, label %do.body15

if.end12.if.end67_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.body15:                                        ; preds = %if.end12
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %and.i84 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not = icmp eq i32 %and.i84, 0
  br i1 %tobool.not, label %if.then25, label %do.body15.do.body29_crit_edge

do.body15.do.body29_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then25:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body15.do.body29_crit_edge
  %23 = call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i85 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i85 to ptr
  %cpu35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu35, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, ptrtoint (ptr @softnet_data to i32)
  %29 = inttoptr i32 %add to ptr
  %xfrm_backlog = getelementptr inbounds %struct.softnet_data, ptr %29, i32 0, i32 10
  call void @skb_queue_tail(ptr noundef %xfrm_backlog, ptr noundef %skb.addr.0) #7
  call void @raise_softirq_irqoff(i32 noundef 2) #7
  br i1 %tobool.not, label %if.then45, label %do.body29.do.body47_crit_edge

do.body29.do.body47_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.then45:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body47

do.body47:                                        ; preds = %if.then45, %do.body29.do.body47_crit_edge
  %30 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool55.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool55.not, label %if.then59, label %do.body47.do.end62_crit_edge, !prof !31

do.body47.do.end62_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47.do.end62_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #7, !srcloc !32
  br label %if.end67

if.end67:                                         ; preds = %do.end62, %if.end12.if.end67_crit_edge
  %call.i87 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i87, label %if.end67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i90

if.end67.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i90:                                ; preds = %if.end67
  %call1.i88 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, %if.end67.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %31 = call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i.i.i.i94 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i95, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_core_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_hard_start_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_dev_backlog(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfrm_backlog1 = getelementptr inbounds %struct.softnet_data, ptr %sd, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #7
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %xfrm_backlog1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xfrm_backlog1, align 4
  %cmp.i.not = icmp eq ptr %3, %xfrm_backlog1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.96, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %lock = getelementptr inbounds %struct.softnet_data, ptr %sd, i32 0, i32 10, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %7 = ptrtoint ptr %xfrm_backlog1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfrm_backlog1, align 4
  %cmp.i.not.i = icmp eq ptr %8, %xfrm_backlog1
  br i1 %cmp.i.not.i, label %if.end.skb_queue_splice_init.exit_crit_edge, label %if.then.i

if.end.skb_queue_splice_init.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.softnet_data, ptr %sd, i32 0, i32 10, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %prev5.i.i, align 4
  store volatile ptr %8, ptr %list, align 8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %12, ptr %prev35.i.i, align 4
  %qlen.i11 = getelementptr inbounds %struct.softnet_data, ptr %sd, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %qlen.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i11, align 4
  %18 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %19, %17
  store i32 %add.i, ptr %qlen.i, align 4
  %20 = ptrtoint ptr %xfrm_backlog1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %xfrm_backlog1, ptr %xfrm_backlog1, align 4
  store ptr %xfrm_backlog1, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i11, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %if.end.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %cmp.i1215 = icmp eq ptr %22, %list
  br i1 %cmp.i1215, label %skb_queue_splice_init.exit.cleanup_crit_edge, label %skb_queue_splice_init.exit.while.body_crit_edge

skb_queue_splice_init.exit.while.body_crit_edge:  ; preds = %skb_queue_splice_init.exit
  br label %while.body

skb_queue_splice_init.exit.cleanup_crit_edge:     ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %skb_queue_splice_init.exit.while.body_crit_edge
  %23 = phi ptr [ %33, %__skb_dequeue.exit.while.body_crit_edge ], [ %22, %skb_queue_splice_init.exit.while.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i14

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_dequeue.exit

if.then.i14:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %23, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %prev17.i.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %29, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i14, %while.body.__skb_dequeue.exit_crit_edge
  call void @xfrm_dev_resume(ptr noundef %23)
  %32 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %list, align 4
  %cmp.i12 = icmp eq ptr %33, %list
  br i1 %cmp.i12, label %__skb_dequeue.exit.cleanup_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

__skb_dequeue.exit.cleanup_crit_edge:             ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %__skb_dequeue.exit.cleanup_crit_edge, %skb_queue_splice_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_dev_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @xfrm_dev_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfrm_mode_tunnel_prep(ptr nocapture noundef readonly %x, ptr noundef %skb, i32 noundef %hsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xfrm_offload.exit.if.end_crit_edge, label %if.then

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header, align 4
  %15 = trunc i32 %hsize to i16
  %conv1 = add i16 %14, %15
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv1, ptr %transport_header, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %xfrm_offload.exit.if.end_crit_edge
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_header.i, align 2
  %sub.i10 = sub i16 %18, %20
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %21 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %sub.i10, ptr %mac_len.i, align 4
  %conv2 = zext i16 %sub.i10 to i32
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %22 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %header_len, align 4
  %add3 = add i32 %23, %conv2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add3)
  %cmp.i = icmp ult i32 %25, %add3
  br i1 %cmp.i, label %if.end.pskb_pull.exit_crit_edge, label %cond.false.i, !prof !31

if.end.pskb_pull.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

cond.false.i:                                     ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %add3, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.if.end.i.i_crit_edge

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %add3, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %29, %add3
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %add3
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  br label %pskb_pull.exit

pskb_pull.exit:                                   ; preds = %if.end.i.i, %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %if.end.pskb_pull.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfrm_transport_prep(ptr nocapture noundef readonly %x, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i, align 2
  %sub.i1 = sub i16 %12, %14
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %15 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %sub.i1, ptr %mac_len.i, align 4
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xfrm_offload.exit.if.end_crit_edge, label %if.then

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %18 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %header_len, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header, align 2
  %22 = trunc i32 %19 to i16
  %conv1 = sub i16 %21, %22
  store i16 %conv1, ptr %transport_header, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %xfrm_offload.exit.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %header_len4 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %29 = ptrtoint ptr %header_len4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %header_len4, align 4
  %add = add i32 %sub.ptr.sub.i, %30
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add)
  %cmp.i = icmp ult i32 %32, %add
  br i1 %cmp.i, label %if.end.pskb_pull.exit_crit_edge, label %cond.false.i, !prof !31

if.end.pskb_pull.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

cond.false.i:                                     ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.if.end.i.i_crit_edge

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %35 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %36, %add
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %38, i32 %add
  store ptr %add.ptr.i.i2, ptr %data.i, align 4
  br label %pskb_pull.exit

pskb_pull.exit:                                   ; preds = %if.end.i.i, %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %if.end.pskb_pull.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfrm_mode_beet_prep(ptr nocapture noundef readonly %x, ptr noundef %skb, i32 noundef %hsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xfrm_offload.exit.if.end_crit_edge, label %if.then

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header, align 4
  %15 = trunc i32 %hsize to i16
  %conv1 = add i16 %14, %15
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv1, ptr %transport_header, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %xfrm_offload.exit.if.end_crit_edge
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_header.i, align 2
  %sub.i26 = sub i16 %18, %20
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %21 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %sub.i26, ptr %mac_len.i, align 4
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %23)
  %cmp.not = icmp eq i16 %23, 10
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %family5 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48, i32 1
  %24 = ptrtoint ptr %family5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %family5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %25)
  %cmp7 = icmp eq i8 %25, 10
  %spec.select = select i1 %cmp7, i32 -28, i32 -8
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %if.end.if.end12_crit_edge
  %phlen.0.neg = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ %spec.select, %if.then4 ]
  %conv13 = zext i16 %sub.i26 to i32
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %26 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %header_len, align 4
  %sub = add i32 %conv13, %hsize
  %add14 = add i32 %sub, %phlen.0.neg
  %add15 = add i32 %add14, %27
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add15)
  %cmp.i = icmp ult i32 %29, %add15
  br i1 %cmp.i, label %if.end12.pskb_pull.exit_crit_edge, label %cond.false.i, !prof !31

if.end12.pskb_pull.exit_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

cond.false.i:                                     ; preds = %if.end12
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %add15, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.if.end.i.i_crit_edge

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %add15, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %32 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %33, %add15
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %add15
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  br label %pskb_pull.exit

pskb_pull.exit:                                   ; preds = %if.end.i.i, %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %if.end12.pskb_pull.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 12, label %sw.bb2
    i32 2, label %entry.sw.bb4_crit_edge
    i32 6, label %entry.sw.bb4_crit_edge22
  ]

entry.sw.bb4_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features.i.i, align 16
  %5 = and i64 %4, 3377699720527872
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251799813685248, i64 %5)
  %6 = icmp eq i64 %5, 2251799813685248
  br i1 %6, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %and2.i.i = and i64 %4, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %land.lhs.true7.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %xfrmdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 47
  %7 = ptrtoint ptr %xfrmdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfrmdev_ops.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %8, null
  br i1 %tobool8.not.i.i, label %land.lhs.true7.i.i.cleanup_crit_edge, label %land.lhs.true9.i.i

land.lhs.true7.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true9.i.i:                               ; preds = %land.lhs.true7.i.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool11.not.i.i = icmp eq ptr %10, null
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.cleanup_crit_edge, label %land.lhs.true12.i.i

land.lhs.true9.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true12.i.i:                              ; preds = %land.lhs.true9.i.i
  %xdo_dev_state_delete.i.i = getelementptr inbounds %struct.xfrmdev_ops, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %xdo_dev_state_delete.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdo_dev_state_delete.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i.i, label %land.lhs.true12.i.i.cleanup_crit_edge, label %land.lhs.true12.i.i.if.end16.i.i_crit_edge

land.lhs.true12.i.i.if.end16.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

land.lhs.true12.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i.i:                                     ; preds = %land.lhs.true12.i.i.if.end16.i.i_crit_edge, %if.end.i.i.if.end16.i.i_crit_edge
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %features.i.i8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %features.i.i8 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i.i8, align 16
  %15 = and i64 %14, 3377699720527872
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251799813685248, i64 %15)
  %16 = icmp eq i64 %15, 2251799813685248
  br i1 %16, label %sw.bb2.cleanup_crit_edge, label %if.end.i.i11

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i11:                                     ; preds = %sw.bb2
  %and2.i.i9 = and i64 %14, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i9)
  %tobool3.not.i.i10 = icmp eq i64 %and2.i.i9, 0
  br i1 %tobool3.not.i.i10, label %if.end.i.i11.if.end16.i.i20_crit_edge, label %land.lhs.true7.i.i14

if.end.i.i11.if.end16.i.i20_crit_edge:            ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i20

land.lhs.true7.i.i14:                             ; preds = %if.end.i.i11
  %xfrmdev_ops.i.i12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 47
  %17 = ptrtoint ptr %xfrmdev_ops.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfrmdev_ops.i.i12, align 4
  %tobool8.not.i.i13 = icmp eq ptr %18, null
  br i1 %tobool8.not.i.i13, label %land.lhs.true7.i.i14.cleanup_crit_edge, label %land.lhs.true9.i.i16

land.lhs.true7.i.i14.cleanup_crit_edge:           ; preds = %land.lhs.true7.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true9.i.i16:                             ; preds = %land.lhs.true7.i.i14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool11.not.i.i15 = icmp eq ptr %20, null
  br i1 %tobool11.not.i.i15, label %land.lhs.true9.i.i16.cleanup_crit_edge, label %land.lhs.true12.i.i19

land.lhs.true9.i.i16.cleanup_crit_edge:           ; preds = %land.lhs.true9.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true12.i.i19:                            ; preds = %land.lhs.true9.i.i16
  %xdo_dev_state_delete.i.i17 = getelementptr inbounds %struct.xfrmdev_ops, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %xdo_dev_state_delete.i.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xdo_dev_state_delete.i.i17, align 4
  %tobool14.not.i.i18 = icmp eq ptr %22, null
  br i1 %tobool14.not.i.i18, label %land.lhs.true12.i.i19.cleanup_crit_edge, label %land.lhs.true12.i.i19.if.end16.i.i20_crit_edge

land.lhs.true12.i.i19.if.end16.i.i20_crit_edge:   ; preds = %land.lhs.true12.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i20

land.lhs.true12.i.i19.cleanup_crit_edge:          ; preds = %land.lhs.true12.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i.i20:                                   ; preds = %land.lhs.true12.i.i19.if.end16.i.i20_crit_edge, %if.end.i.i11.if.end16.i.i20_crit_edge
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge22
  %features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features.i, align 16
  %and.i = and i64 %24, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb4.cleanup_crit_edge, label %if.then.i

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  %call1.i = tail call i32 @xfrm_dev_state_flush(ptr noundef %26, ptr noundef %1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %sw.bb4.cleanup_crit_edge, %if.end16.i.i20, %land.lhs.true12.i.i19.cleanup_crit_edge, %land.lhs.true9.i.i16.cleanup_crit_edge, %land.lhs.true7.i.i14.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end16.i.i, %land.lhs.true12.i.i.cleanup_crit_edge, %land.lhs.true9.i.i.cleanup_crit_edge, %land.lhs.true7.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end16.i.i ], [ 32770, %sw.bb.cleanup_crit_edge ], [ 32770, %land.lhs.true12.i.i.cleanup_crit_edge ], [ 32770, %land.lhs.true9.i.i.cleanup_crit_edge ], [ 32770, %land.lhs.true7.i.i.cleanup_crit_edge ], [ 0, %if.end16.i.i20 ], [ 32770, %sw.bb2.cleanup_crit_edge ], [ 32770, %land.lhs.true12.i.i19.cleanup_crit_edge ], [ 32770, %land.lhs.true9.i.i16.cleanup_crit_edge ], [ 32770, %land.lhs.true7.i.i14.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_dev_state_flush(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_validate_xmit_xfrm, !1, !"__ksymtab_validate_xmit_xfrm", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_device.c", i32 207, i32 1}
!2 = !{ptr @__ksymtab_xfrm_dev_state_add, !3, !"__ksymtab_xfrm_dev_state_add", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_device.c", i32 285, i32 1}
!4 = !{ptr @__ksymtab_xfrm_dev_offload_ok, !5, !"__ksymtab_xfrm_dev_offload_ok", i1 false, i1 false}
!5 = !{!"../net/xfrm/xfrm_device.c", i32 315, i32 1}
!6 = !{ptr @__ksymtab_xfrm_dev_resume, !7, !"__ksymtab_xfrm_dev_resume", i1 false, i1 false}
!7 = !{!"../net/xfrm/xfrm_device.c", i32 342, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xfrm_dev_notifier, !18, !"xfrm_dev_notifier", i1 false, i1 false}
!18 = !{!"../net/xfrm/xfrm_device.c", i32 423, i32 30}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 753448, i64 753509}
!30 = !{i64 756180}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 756465}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148349748, i64 2148349774, i64 2148349803, i64 2148349837, i64 2148349868, i64 2148349891}
!35 = !{i64 2149364369}
!36 = !{i64 2149364635}
