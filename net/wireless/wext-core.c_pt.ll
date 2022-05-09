; ModuleID = '/llk/IR_all_yes/net/wireless/wext-core.c_pt.bc'
source_filename = "../net/wireless/wext-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wireless_nlevent_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_wireless_nlevent_flush\09\09\09\09"
module asm "\09.long\09__crc_wireless_nlevent_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wireless_nlevent_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22wireless_nlevent_flush\22\09\09\09\09\09"
module asm "__kstrtabns_wireless_nlevent_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wireless_send_event\22, \22a\22\09"
module asm "\09.weak\09__crc_wireless_send_event\09\09\09\09"
module asm "\09.long\09__crc_wireless_send_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wireless_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22wireless_send_event\22\09\09\09\09\09"
module asm "__kstrtabns_wireless_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iwe_stream_add_event\22, \22a\22\09"
module asm "\09.weak\09__crc_iwe_stream_add_event\09\09\09\09"
module asm "\09.long\09__crc_iwe_stream_add_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwe_stream_add_event:\09\09\09\09\09"
module asm "\09.asciz \09\22iwe_stream_add_event\22\09\09\09\09\09"
module asm "__kstrtabns_iwe_stream_add_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iwe_stream_add_point\22, \22a\22\09"
module asm "\09.weak\09__crc_iwe_stream_add_point\09\09\09\09"
module asm "\09.long\09__crc_iwe_stream_add_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwe_stream_add_point:\09\09\09\09\09"
module asm "\09.asciz \09\22iwe_stream_add_point\22\09\09\09\09\09"
module asm "__kstrtabns_iwe_stream_add_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iwe_stream_add_value\22, \22a\22\09"
module asm "\09.weak\09__crc_iwe_stream_add_value\09\09\09\09"
module asm "\09.long\09__crc_iwe_stream_add_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwe_stream_add_value:\09\09\09\09\09"
module asm "\09.asciz \09\22iwe_stream_add_value\22\09\09\09\09\09"
module asm "__kstrtabns_iwe_stream_add_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iw_ioctl_description = type { i8, i8, i16, i16, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.105, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.105 = type { i64, i64, i8 }
%struct.iw_request_info = type { i16, i16 }
%struct.iwreq = type { %union.anon.130, %union.iwreq_data }
%union.anon.130 = type { [16 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }

@net_rwsem = external dso_local global %struct.rw_semaphore, align 4
@net_namespace_list = external dso_local global %struct.list_head, align 4
@__kstrtab_wireless_nlevent_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_wireless_nlevent_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_wireless_nlevent_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wireless_nlevent_flush to i32), ptr @__kstrtab_wireless_nlevent_flush, ptr @__kstrtabns_wireless_nlevent_flush }, section "___ksymtab_gpl+wireless_nlevent_flush", align 4
@__initcall__kmod_wext_core__345_408_wireless_nlevent_init4 = internal global ptr @wireless_nlevent_init, section ".initcall4.init", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/wireless/wext-core.c\00", [39 x i8] zeroinitializer }, align 32
@standard_ioctl = internal constant { [55 x %struct.iw_ioctl_description], [172 x i8] } { [55 x %struct.iw_ioctl_description] [%struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 2, i8 0, i16 0, i16 0, i16 0, i32 1 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 2 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 1 }, %struct.iw_ioctl_description { i8 5, i8 0, i16 0, i16 0, i16 0, i32 2 }, %struct.iw_ioctl_description { i8 5, i8 0, i16 0, i16 0, i16 0, i32 1 }, %struct.iw_ioctl_description { i8 4, i8 0, i16 0, i16 0, i16 0, i32 2 }, %struct.iw_ioctl_description { i8 4, i8 0, i16 0, i16 0, i16 0, i32 1 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 568, i32 1 }, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 8, i8 0, i16 24, i16 0, i16 16, i32 8 }, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 32, i32 1 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 16, i16 0, i16 8, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 20, i16 0, i16 8, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 28, i16 1, i16 1, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 28, i16 1, i16 1, i32 0 }, %struct.iw_ioctl_description { i8 6, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 6, i8 0, i16 0, i16 0, i16 0, i32 1 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 20, i16 20, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 20, i16 0, i16 64, i32 8 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 316, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 4096, i32 8 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 32, i32 2 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 32, i32 1 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 32, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 32, i32 0 }, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 64, i32 6 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 64, i32 5 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description zeroinitializer, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 1024, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 1024, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 9, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 40, i16 104, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 40, i16 104, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 36, i16 36, i32 0 }], [172 x i8] zeroinitializer }, align 32
@standard_event = internal constant { [10 x %struct.iw_ioctl_description], [40 x i8] } { [10 x %struct.iw_ioctl_description] [%struct.iw_ioctl_description { i8 6, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 10, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 256, i32 0 }, %struct.iw_ioctl_description { i8 6, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 6, i8 0, i16 0, i16 0, i16 0, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 1024, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 28, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 1024, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 1024, i32 0 }, %struct.iw_ioctl_description { i8 8, i8 0, i16 1, i16 0, i16 24, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(WE) : Invalid/Unknown Wireless Event (0x%04X)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(WE) : Wireless Event (cmd=0x%04X) too big (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(WE) : Wireless Event (cmd=0x%04X) too small (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@event_type_size = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 4, i32 0, i32 20, i32 0, i32 8, i32 12, i32 20, i32 0, i32 8, i32 12, i32 8], [52 x i8] zeroinitializer }, align 32
@wireless_nlevent_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @wireless_nlevent_work, i64 4), ptr getelementptr (i8, ptr @wireless_nlevent_work, i64 4) }, ptr @wireless_nlevent_process, %struct.lockdep_map { ptr @wireless_nlevent_work, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wireless_send_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_wireless_send_event = external dso_local constant [0 x i8], align 1
@__ksymtab_wireless_send_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wireless_send_event to i32), ptr @__kstrtab_wireless_send_event, ptr @__kstrtabns_wireless_send_event }, section "___ksymtab+wireless_send_event", align 4
@__kstrtab_iwe_stream_add_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwe_stream_add_event = external dso_local constant [0 x i8], align 1
@__ksymtab_iwe_stream_add_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwe_stream_add_event to i32), ptr @__kstrtab_iwe_stream_add_event, ptr @__kstrtabns_iwe_stream_add_event }, section "___ksymtab+iwe_stream_add_event", align 4
@__kstrtab_iwe_stream_add_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwe_stream_add_point = external dso_local constant [0 x i8], align 1
@__ksymtab_iwe_stream_add_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwe_stream_add_point to i32), ptr @__kstrtab_iwe_stream_add_point, ptr @__kstrtabns_iwe_stream_add_point }, section "___ksymtab+iwe_stream_add_point", align 4
@__kstrtab_iwe_stream_add_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwe_stream_add_value = external dso_local constant [0 x i8], align 1
@__ksymtab_iwe_stream_add_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwe_stream_add_value to i32), ptr @__kstrtab_iwe_stream_add_value, ptr @__kstrtabns_iwe_stream_add_value }, section "___ksymtab+iwe_stream_add_value", align 4
@wext_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @wext_pernet_init, ptr null, ptr @wext_pernet_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@wext_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wext_netdev_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wireless_nlevent_work\00", [42 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35627, i64 35637]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 35597, i64 35599]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 481, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"standard_ioctl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 32, i32 42 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"standard_event\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 265, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 503, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 512, i32 20 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 517, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"event_type_size\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 312, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"wireless_nlevent_work\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"wext_pernet_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 390, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"wext_netdev_notifier\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 375, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1984, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 991, i32 3 }
@___asan_gen_.53 = private constant [28 x i8] c"../net/wireless/wext-core.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 416, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 230, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 214, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_wext_core__345_408_wireless_nlevent_init4, ptr @__ksymtab_iwe_stream_add_event, ptr @__ksymtab_iwe_stream_add_point, ptr @__ksymtab_iwe_stream_add_value, ptr @__ksymtab_wireless_nlevent_flush, ptr @__ksymtab_wireless_send_event, ptr @.str, ptr @standard_ioctl, ptr @standard_event, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @event_type_size, ptr @wireless_nlevent_work, ptr @wext_pernet_ops, ptr @wext_netdev_notifier, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_ioctl to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_event to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_type_size to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wireless_nlevent_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wext_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wext_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wireless_nlevent_flush() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @net_rwsem) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn11 = load ptr, ptr @net_namespace_list, align 4
  %cmp.not13 = icmp eq ptr %.pn11, @net_namespace_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  br label %while.cond.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.loopexit:                                ; preds = %while.body.for.cond.loopexit_crit_edge, %while.cond.preheader.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, @net_namespace_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.while.cond.preheader_crit_edge

for.cond.loopexit.while.cond.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

while.cond.preheader:                             ; preds = %for.cond.loopexit.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.cond.loopexit.while.cond.preheader_crit_edge ], [ %.pn11, %entry.while.cond.preheader_crit_edge ]
  %net.015 = getelementptr i8, ptr %.pn14, i32 -108
  %wext_nlevents = getelementptr i8, ptr %.pn14, i32 3036
  %call8 = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents) #10
  %tobool.not9 = icmp eq ptr %call8, null
  br i1 %tobool.not9, label %while.cond.preheader.for.cond.loopexit_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.cond.loopexit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call10 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call8, %while.cond.preheader.while.body_crit_edge ]
  tail call void @rtnl_notify(ptr noundef nonnull %call10, ptr noundef %net.015, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 3264) #10
  %call = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.for.cond.loopexit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.for.cond.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @net_rwsem) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wireless_nlevent_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @wext_pernet_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @wext_netdev_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @wext_pernet_ops) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wireless_send_event(ptr noundef %dev, i32 noundef %cmd, ptr nocapture noundef readonly %wrqu, ptr noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35609, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35609
  %tobool = icmp ne ptr %extra, null
  %spec.select = and i1 %cmp, %tobool
  br i1 %spec.select, label %if.end33.thread, label %if.end, !prof !55

if.end33.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #10
  br label %if.end36

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35840, i32 %cmd)
  %cmp23 = icmp ult i32 %cmd, 35840
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  %sub = add nsw i32 %cmd, -35584
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %sub)
  %cmp25 = icmp ult i32 %sub, 55
  %arrayidx = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub
  br i1 %cmp25, label %if.then24.if.end33_crit_edge, label %if.then24.if.then35_crit_edge

if.then24.if.then35_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.else:                                          ; preds = %if.end
  %sub28 = add i32 %cmd, -35840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub28)
  %cmp29 = icmp ult i32 %sub28, 10
  %arrayidx31 = getelementptr [10 x %struct.iw_ioctl_description], ptr @standard_event, i32 0, i32 %sub28
  br i1 %cmp29, label %if.else.if.end33_crit_edge, label %if.else.if.then35_crit_edge

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then24.if.end33_crit_edge
  %descr.0 = phi ptr [ %arrayidx, %if.then24.if.end33_crit_edge ], [ %arrayidx31, %if.else.if.end33_crit_edge ]
  %cmp34 = icmp eq ptr %descr.0, null
  br i1 %cmp34, label %if.end33.if.then35_crit_edge, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.else.if.then35_crit_edge, %if.then24.if.then35_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %cmd) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end33.if.end36_crit_edge, %if.end33.thread
  %descr.0202 = phi ptr [ getelementptr inbounds ([55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 25), %if.end33.thread ], [ %descr.0, %if.end33.if.end36_crit_edge ]
  %spec.select177184201 = phi ptr [ null, %if.end33.thread ], [ %extra, %if.end33.if.end36_crit_edge ]
  %0 = ptrtoint ptr %descr.0202 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %descr.0202, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp37 = icmp eq i8 %1, 8
  br i1 %cmp37, label %if.then39, label %if.end36.if.end64_crit_edge

if.end36.if.end64_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then39:                                        ; preds = %if.end36
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  %conv40 = zext i16 %3 to i32
  %max_tokens = getelementptr inbounds %struct.iw_ioctl_description, ptr %descr.0202, i32 0, i32 4
  %4 = ptrtoint ptr %max_tokens to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_tokens, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp42 = icmp ugt i16 %3, %5
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %cmd, i32 noundef %conv40) #13
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  %min_tokens = getelementptr inbounds %struct.iw_ioctl_description, ptr %descr.0202, i32 0, i32 3
  %6 = ptrtoint ptr %min_tokens to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %min_tokens, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %7)
  %cmp51 = icmp ult i16 %3, %7
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %cmd, i32 noundef %conv40) #13
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %cmp57.not = icmp eq ptr %spec.select177184201, null
  br i1 %cmp57.not, label %if.end56.if.end64_crit_edge, label %if.then59

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %token_size = getelementptr inbounds %struct.iw_ioctl_description, ptr %descr.0202, i32 0, i32 2
  %8 = ptrtoint ptr %token_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %token_size, align 2
  %conv62 = zext i16 %9 to i32
  %mul = mul nuw i32 %conv62, %conv40
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end56.if.end64_crit_edge, %if.end36.if.end64_crit_edge
  %extra_len.1 = phi i32 [ 0, %if.end36.if.end64_crit_edge ], [ %mul, %if.then59 ], [ 0, %if.end56.if.end64_crit_edge ]
  %wrqu_off.0 = phi i32 [ 0, %if.end36.if.end64_crit_edge ], [ 4, %if.then59 ], [ 4, %if.end56.if.end64_crit_edge ]
  %idxprom = zext i8 %1 to i32
  %arrayidx66 = getelementptr [11 x i32], ptr @event_type_size, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx66, align 4
  %add = add i32 %11, %extra_len.1
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool67.not = icmp eq ptr %call.i.i, null
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end69.do.end90_crit_edge

if.end69.do.end90_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

skb_tailroom.exit.i.i:                            ; preds = %if.end69
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 32
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.do.end90_crit_edge, label %nlmsg_put.exit.i, !prof !55

skb_tailroom.exit.i.i.do.end90_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.do.end90_crit_edge, label %if.end.i

nlmsg_put.exit.i.do.end90_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %add.ptr.i.i, align 4
  %__ifi_pad.i = getelementptr i8, ptr %call3.i.i, i32 17
  %19 = ptrtoint ptr %__ifi_pad.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %__ifi_pad.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type.i, align 16
  %ifi_type.i = getelementptr i8, ptr %call3.i.i, i32 18
  %22 = ptrtoint ptr %ifi_type.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %ifi_type.i, align 2
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex.i, align 4
  %ifi_index.i = getelementptr i8, ptr %call3.i.i, i32 20
  %25 = ptrtoint ptr %ifi_index.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ifi_index.i, align 4
  %call2.i = tail call i32 @dev_get_flags(ptr noundef %dev) #10
  %ifi_flags.i = getelementptr i8, ptr %call3.i.i, i32 24
  %26 = ptrtoint ptr %ifi_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i, ptr %ifi_flags.i, align 4
  %ifi_change.i = getelementptr i8, ptr %call3.i.i, i32 28
  %27 = ptrtoint ptr %ifi_change.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ifi_change.i, align 4
  %call.i.i180 = tail call i32 @strlen(ptr noundef %dev) #14
  %add.i.i = add i32 %call.i.i180, 1
  %call1.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef %add.i.i, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool4.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool4.not.i, label %if.end106, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %29, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !55

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i21.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i22.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i23.i = sub i32 %sub.ptr.lhs.cast.i.i21.i, %sub.ptr.rhs.cast.i.i22.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i23.i) #10
  br label %do.end90

do.end90:                                         ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.do.end90_crit_edge, %skb_tailroom.exit.i.i.do.end90_crit_edge, %if.end69.do.end90_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end106:                                        ; preds = %if.end.i
  %call107 = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i, i32 noundef 11, i32 noundef %add) #10
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end110:                                        ; preds = %if.end106
  %add.ptr.i = getelementptr i8, ptr %call107, i32 4
  %32 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %11)
  %conv112 = trunc i32 %add to i16
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv112, ptr %add.ptr.i, align 4
  %conv113 = trunc i32 %cmd to i16
  %cmd114 = getelementptr i8, ptr %call107, i32 6
  %34 = ptrtoint ptr %cmd114 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv113, ptr %cmd114, align 2
  %u = getelementptr i8, ptr %call107, i32 8
  %add.ptr = getelementptr i8, ptr %wrqu, i32 %wrqu_off.0
  %sub115 = add i32 %11, -4
  %35 = call ptr @memcpy(ptr %u, ptr %add.ptr, i32 %sub115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_len.1)
  %tobool116.not = icmp eq i32 %extra_len.1, 0
  br i1 %tobool116.not, label %if.end110.if.end119_crit_edge, label %if.then117

if.end110.if.end119_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then117:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr118 = getelementptr i8, ptr %add.ptr.i, i32 %11
  %36 = call ptr @memcpy(ptr %add.ptr118, ptr %spec.select177184201, i32 %extra_len.1)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end110.if.end119_crit_edge
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %40 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nd_net.i, align 4
  %wext_nlevents = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 42
  tail call void @skb_queue_tail(ptr noundef %wext_nlevents, ptr noundef nonnull %call.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i181 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef nonnull @wireless_nlevent_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.then109, %do.end90, %if.end64.cleanup_crit_edge, %if.then53, %if.then44, %if.then35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_wireless_stats(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_handlers, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_wireless_stats = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_wireless_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_wireless_stats, align 4
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return.sink.split_crit_edge

land.lhs.true.return.sink.split_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %land.lhs.true5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true5:                                   ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true5.return_crit_edge, label %land.lhs.true8

land.lhs.true5.return_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %wext = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 63
  %8 = ptrtoint ptr %wext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wext, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true8.return_crit_edge, label %land.lhs.true12

land.lhs.true8.return_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %get_wireless_stats16 = getelementptr inbounds %struct.iw_handler_def, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_wireless_stats16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_wireless_stats16, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %land.lhs.true12.return_crit_edge, label %land.lhs.true12.return.sink.split_crit_edge

land.lhs.true12.return.sink.split_crit_edge:      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

land.lhs.true12.return_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.sink.split:                                ; preds = %land.lhs.true12.return.sink.split_crit_edge, %land.lhs.true.return.sink.split_crit_edge
  %.sink = phi ptr [ %3, %land.lhs.true.return.sink.split_crit_edge ], [ %11, %land.lhs.true12.return.sink.split_crit_edge ]
  %call23 = tail call ptr %.sink(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true12.return_crit_edge, %land.lhs.true8.return_crit_edge, %land.lhs.true5.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true12.return_crit_edge ], [ null, %land.lhs.true8.return_crit_edge ], [ null, %land.lhs.true5.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %call23, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_commit_handler(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true:                                    ; preds = %entry
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %2 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wireless_handlers, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true1

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true1.return_crit_edge, label %if.then

land.lhs.true1.return_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %7(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true1.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then ], [ 0, %land.lhs.true1.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wext_handle_ioctl(ptr noundef %net, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.iw_request_info, align 2
  %iwr = alloca %struct.iwreq, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %0 = getelementptr inbounds %struct.iw_request_info, ptr %info, i32 0, i32 1
  %conv = trunc i32 %cmd to i16
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %info, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iwr) #10
  %3 = getelementptr inbounds [16 x i8], ptr %iwr, i32 0, i32 15
  %4 = call ptr @memset(ptr %iwr, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #15
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !56

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %iwr, i32 noundef 32) #10
  %6 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !57
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %iwr, ptr noundef %arg, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !56

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i33 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i33
  %add.ptr.i.i = getelementptr i8, ptr %iwr, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i33)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  %and.i.i = and i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.land.lhs.true.i.i27_crit_edge, label %switch.early.test.i.i

if.end.land.lhs.true.i.i27_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i27

switch.early.test.i.i:                            ; preds = %if.end
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %switch.early.test.i.i.if.end.i_crit_edge [
    i32 35637, label %switch.early.test.i.i.land.lhs.true.i.i27_crit_edge
    i32 35627, label %switch.early.test.i.i.land.lhs.true.i.i27_crit_edge46
  ]

switch.early.test.i.i.land.lhs.true.i.i27_crit_edge46: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i27

switch.early.test.i.i.land.lhs.true.i.i27_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i27

switch.early.test.i.i.if.end.i_crit_edge:         ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.i27:                              ; preds = %switch.early.test.i.i.land.lhs.true.i.i27_crit_edge, %switch.early.test.i.i.land.lhs.true.i.i27_crit_edge46, %if.end.land.lhs.true.i.i27_crit_edge
  %call.i.i26 = call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call.i.i26, label %land.lhs.true.i.i27.if.end.i_crit_edge, label %land.lhs.true.i.i27.if.end9_crit_edge

land.lhs.true.i.i27.if.end9_crit_edge:            ; preds = %land.lhs.true.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i.i27.if.end.i_crit_edge:           ; preds = %land.lhs.true.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.i27.if.end.i_crit_edge, %switch.early.test.i.i.if.end.i_crit_edge
  call void @dev_load(ptr noundef %net, ptr noundef nonnull %iwr) #10
  call void @rtnl_lock() #10
  %call.i1.i = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull %iwr) #10
  %cmp.i.i28 = icmp eq ptr %call.i1.i, null
  br i1 %cmp.i.i28, label %if.end.i.wext_ioctl_dispatch.exit.thread40_crit_edge, label %if.end.i2.i

if.end.i.wext_ioctl_dispatch.exit.thread40_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wext_ioctl_dispatch.exit.thread40

if.end.i2.i:                                      ; preds = %if.end.i
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %if.end.i2.i.if.end8.i.i30_crit_edge [
    i32 35599, label %if.then2.i.i29
    i32 35597, label %land.lhs.true.i4.i
  ]

if.end.i2.i.if.end8.i.i30_crit_edge:              ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i30

if.then2.i.i29:                                   ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = call fastcc i32 @ioctl_standard_call(ptr noundef nonnull %call.i1.i, ptr noundef nonnull %iwr, i32 noundef 35599, ptr noundef nonnull %info, ptr noundef nonnull @iw_handler_get_iwstats) #10
  br label %wext_ioctl_dispatch.exit

land.lhs.true.i4.i:                               ; preds = %if.end.i2.i
  %wireless_handlers.i.i = getelementptr inbounds %struct.net_device, ptr %call.i1.i, i32 0, i32 42
  %13 = ptrtoint ptr %wireless_handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wireless_handlers.i.i, align 8
  %tobool.not.i3.i = icmp eq ptr %14, null
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.if.end8.i.i30_crit_edge, label %if.then6.i.i

land.lhs.true.i4.i.if.end8.i.i30_crit_edge:       ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i30

if.then6.i.i:                                     ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i = call fastcc i32 @ioctl_standard_call(ptr noundef nonnull %call.i1.i, ptr noundef nonnull %iwr, i32 noundef 35597, ptr noundef nonnull %info, ptr noundef nonnull @iw_handler_get_private) #10
  br label %wext_ioctl_dispatch.exit

if.end8.i.i30:                                    ; preds = %land.lhs.true.i4.i.if.end8.i.i30_crit_edge, %if.end.i2.i.if.end8.i.i30_crit_edge
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i1.i, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i, label %if.end8.i.i30.wext_ioctl_dispatch.exit.thread40_crit_edge, label %if.end11.i.i

if.end8.i.i30.wext_ioctl_dispatch.exit.thread40_crit_edge: ; preds = %if.end8.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %wext_ioctl_dispatch.exit.thread40

if.end11.i.i:                                     ; preds = %if.end8.i.i30
  %ieee80211_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i1.i, i32 0, i32 82
  %18 = ptrtoint ptr %ieee80211_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ieee80211_ptr.i.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end11.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end11.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end11.i.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool2.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wext.i.i.i = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 63
  %22 = ptrtoint ptr %wext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wext.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end11.i.i.if.end.i.i.i_crit_edge
  %handlers.0.i.i.i = phi ptr [ %23, %if.then.i.i.i ], [ null, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end11.i.i.if.end.i.i.i_crit_edge ]
  %wireless_handlers.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i1.i, i32 0, i32 42
  %24 = ptrtoint ptr %wireless_handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wireless_handlers.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %25, null
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr %handlers.0.i.i.i, ptr %25
  %tobool9.not.i.i.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %if.end.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge, label %if.end11.i.i.i

if.end.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wext_ioctl_dispatch.exit.thread40

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  %sub.i.i.i = add i32 %cmd, -35584
  %num_standard.i.i.i = getelementptr inbounds %struct.iw_handler_def, ptr %spec.select.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %num_standard.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_standard.i.i.i, align 4
  %conv.i.i.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.end11.i.i.i.get_handler.exit.i.i_crit_edge, label %if.end14.i.i.i

if.end11.i.i.i.get_handler.exit.i.i_crit_edge:    ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_handler.exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end11.i.i.i
  %sub15.i.i.i = add i32 %cmd, -35808
  %num_private.i.i.i = getelementptr inbounds %struct.iw_handler_def, ptr %spec.select.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %num_private.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_private.i.i.i, align 2
  %conv16.i.i.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i.i, i32 %conv16.i.i.i)
  %cmp17.i.i.i = icmp ult i32 %sub15.i.i.i, %conv16.i.i.i
  br i1 %cmp17.i.i.i, label %if.then19.i.i.i, label %if.end14.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge

if.end14.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wext_ioctl_dispatch.exit.thread40

if.then19.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.i.i = getelementptr inbounds %struct.iw_handler_def, ptr %spec.select.i.i.i, i32 0, i32 4
  br label %get_handler.exit.i.i

get_handler.exit.i.i:                             ; preds = %if.then19.i.i.i, %if.end11.i.i.i.get_handler.exit.i.i_crit_edge
  %private.sink.i.i.i = phi ptr [ %private.i.i.i, %if.then19.i.i.i ], [ %spec.select.i.i.i, %if.end11.i.i.i.get_handler.exit.i.i_crit_edge ]
  %sub15.sink.i.i.i = phi i32 [ %sub15.i.i.i, %if.then19.i.i.i ], [ %sub.i.i.i, %if.end11.i.i.i.get_handler.exit.i.i_crit_edge ]
  %30 = ptrtoint ptr %private.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.sink.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr ptr, ptr %31, i32 %sub15.sink.i.i.i
  %32 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx20.i.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %33, null
  br i1 %tobool13.not.i.i, label %get_handler.exit.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge, label %if.then14.i.i

get_handler.exit.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge: ; preds = %get_handler.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wext_ioctl_dispatch.exit.thread40

if.then14.i.i:                                    ; preds = %get_handler.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35808, i32 %cmd)
  %cmp15.i.i = icmp ult i32 %cmd, 35808
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.then19.i.i

if.then16.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i.i = call fastcc i32 @ioctl_standard_call(ptr noundef nonnull %call.i1.i, ptr noundef nonnull %iwr, i32 noundef %cmd, ptr noundef nonnull %info, ptr noundef nonnull %33) #10
  br label %wext_ioctl_dispatch.exit

if.then19.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i.i = call i32 @ioctl_private_call(ptr noundef nonnull %call.i1.i, ptr noundef nonnull %iwr, i32 noundef %cmd, ptr noundef nonnull %info, ptr noundef nonnull %33) #10
  br label %wext_ioctl_dispatch.exit

wext_ioctl_dispatch.exit.thread40:                ; preds = %get_handler.exit.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge, %if.end14.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge, %if.end.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge, %if.end8.i.i30.wext_ioctl_dispatch.exit.thread40_crit_edge, %if.end.i.wext_ioctl_dispatch.exit.thread40_crit_edge
  %retval.0.i5.i.ph = phi i32 [ -95, %if.end14.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge ], [ -95, %if.end.i.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge ], [ -95, %get_handler.exit.i.i.wext_ioctl_dispatch.exit.thread40_crit_edge ], [ -19, %if.end8.i.i30.wext_ioctl_dispatch.exit.thread40_crit_edge ], [ -19, %if.end.i.wext_ioctl_dispatch.exit.thread40_crit_edge ]
  call void @rtnl_unlock() #10
  br label %if.end9

wext_ioctl_dispatch.exit:                         ; preds = %if.then19.i.i, %if.then16.i.i, %if.then6.i.i, %if.then2.i.i29
  %retval.0.i5.i = phi i32 [ %call3.i.i, %if.then2.i.i29 ], [ %call7.i.i, %if.then6.i.i ], [ %call17.i.i, %if.then16.i.i ], [ %call20.i.i, %if.then19.i.i ]
  call void @rtnl_unlock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i5.i)
  %cmp = icmp slt i32 %retval.0.i5.i, 0
  %or.cond = or i1 %tobool.not.i.i, %cmp
  br i1 %or.cond, label %wext_ioctl_dispatch.exit.if.end9_crit_edge, label %if.end8.i.i19

wext_ioctl_dispatch.exit.if.end9_crit_edge:       ; preds = %wext_ioctl_dispatch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end8.i.i19:                                    ; preds = %wext_ioctl_dispatch.exit
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #10
  %call.i.i20 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i20, label %if.end8.i.i19.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i19.cleanup_crit_edge:                  ; preds = %if.end8.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i19
  %call.i.i.i24 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %iwr, i32 noundef 32) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %iwr, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool7.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool7.not, label %copy_to_user.exit.if.end9_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.if.end9_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %copy_to_user.exit.if.end9_crit_edge, %wext_ioctl_dispatch.exit.if.end9_crit_edge, %wext_ioctl_dispatch.exit.thread40, %land.lhs.true.i.i27.if.end9_crit_edge
  %retval.0.i39 = phi i32 [ %retval.0.i5.i, %copy_to_user.exit.if.end9_crit_edge ], [ %retval.0.i5.i, %wext_ioctl_dispatch.exit.if.end9_crit_edge ], [ %retval.0.i5.i.ph, %wext_ioctl_dispatch.exit.thread40 ], [ -1, %land.lhs.true.i.i27.if.end9_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %copy_to_user.exit.cleanup_crit_edge, %if.end8.i.i19.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i39, %if.end9 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iwr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ioctl_standard_call(ptr noundef %dev, ptr noundef %iwr, i32 noundef %cmd, ptr noundef %info, ptr nocapture noundef readonly %handler) unnamed_addr #0 align 64 {
entry:
  %essid.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %cmd, -35584
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %sub)
  %cmp = icmp ugt i32 %sub, 54
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp2.not = icmp eq i8 %1, 8
  %u12 = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = tail call i32 %handler(ptr noundef %dev, ptr noundef %info, ptr noundef %u12, ptr noundef null) #10
  %flags = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4.if.end14_crit_edge, label %land.lhs.true

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then4
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call, label %land.lhs.true.cleanup_crit_edge [
    i32 0, label %land.lhs.true.if.then9_crit_edge
    i32 -115, label %land.lhs.true.if.then9_crit_edge39
  ]

land.lhs.true.if.then9_crit_edge39:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge39
  tail call void @wireless_send_event(ptr noundef %dev, i32 noundef %cmd, ptr noundef %u12, ptr noundef null)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %max_tokens.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 4
  %5 = ptrtoint ptr %max_tokens.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_tokens.i, align 2
  %conv.i = zext i16 %6 to i32
  %token_size.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 2
  %7 = ptrtoint ptr %token_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %token_size.i, align 2
  %conv1.i = zext i16 %8 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %cmd.off.i = add nsw i32 %cmd, -35610
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmd.off.i)
  %switch.i = icmp ult i32 %cmd.off.i, 4
  br i1 %switch.i, label %sw.bb.i, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else
  %length.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length.i, align 4
  %conv2.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.i = icmp eq i32 %add.i, %conv2.i
  br i1 %cmp.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.else.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  %and.i = and i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp8.not.i = icmp eq i16 %10, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %if.else.i.sw.epilog.i_crit_edge, label %if.then10.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then10.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %essid.i) #10
  %11 = call ptr @memset(ptr %essid.i, i32 255, i32 33)
  %mul15.i = mul nuw i32 %conv2.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul15.i)
  %cmp16.i = icmp ugt i32 %mul15.i, 32
  br i1 %cmp16.i, label %if.then10.i.cleanup.thread.i_crit_edge, label %if.end.i

if.then10.i.cleanup.thread.i_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %if.then10.i
  %12 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %u12, align 4
  call void @__check_object_size(ptr noundef nonnull %essid.i, i32 noundef %mul15.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %mul15.i, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !56

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %essid.i, i32 noundef %mul15.i) #10
  %15 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !57
  %and.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %essid.i, ptr noundef %13, i32 noundef %mul15.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul15.i, %if.end.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul15.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %cleanup.i, label %if.then11.i.i.i, !prof !56

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %mul15.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %essid.i, i32 %sub.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then11.i.i.i, %if.then10.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %essid.i) #10
  br label %cleanup

cleanup.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length.i, align 4
  %conv23.i = zext i16 %20 to i32
  %sub.i = add nsw i32 %conv23.i, -1
  %arrayidx.i = getelementptr [33 x i8], ptr %essid.i, i32 0, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp25.i = icmp eq i8 %22, 0
  %spec.select.i = zext i1 %cmp25.i to i16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %essid.i) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cleanup.i, %if.else.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.else.sw.epilog.i_crit_edge
  %essid_compat.2.i = phi i16 [ 0, %if.else.sw.epilog.i_crit_edge ], [ 0, %if.else.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %cleanup.i ], [ 1, %sw.bb.i.sw.epilog.i_crit_edge ]
  %length32.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %length32.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length32.i, align 4
  %conv35.i = sub i16 %24, %essid_compat.2.i
  store i16 %conv35.i, ptr %length32.i, align 4
  %and36.i = and i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %25 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %u12, align 4
  br i1 %tobool37.not.i, label %if.then38.i, label %if.else63.i

if.then38.i:                                      ; preds = %sw.epilog.i
  %tobool40.not.i = icmp ne ptr %26, null
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %essid_compat.2.i)
  %cmp44.not.i = icmp eq i16 %24, %essid_compat.2.i
  %or.cond241.i = select i1 %tobool40.not.i, i1 true, i1 %cmp44.not.i
  br i1 %or.cond241.i, label %if.end47.i, label %if.then38.i.cleanup_crit_edge

if.then38.i.cleanup_crit_edge:                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv35.i, i16 %6)
  %cmp52.i = icmp ugt i16 %conv35.i, %6
  br i1 %cmp52.i, label %if.end47.i.cleanup_crit_edge, label %if.end55.i

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55.i:                                       ; preds = %if.end47.i
  %min_tokens.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 3
  %27 = ptrtoint ptr %min_tokens.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %min_tokens.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv35.i, i16 %28)
  %cmp59.i = icmp ult i16 %conv35.i, %28
  br i1 %cmp59.i, label %if.end55.i.cleanup_crit_edge, label %if.end55.i.if.end8.i.i301.i_crit_edge

if.end55.i.if.end8.i.i301.i_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i301.i

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else63.i:                                      ; preds = %sw.epilog.i
  %tobool65.not.i = icmp eq ptr %26, null
  br i1 %tobool65.not.i, label %if.else63.i.cleanup_crit_edge, label %if.end67.i

if.else63.i.cleanup_crit_edge:                    ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67.i:                                       ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv69.i = zext i16 %conv35.i to i32
  %flags.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 5
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and70.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp ne i32 %and70.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %conv35.i, i16 %6)
  %cmp75.i = icmp ugt i16 %conv35.i, %6
  %or.cond = select i1 %tobool71.not.i, i1 %cmp75.i, i1 false
  %mul80.i = mul nuw i32 %conv69.i, %conv1.i
  %spec.select = select i1 %or.cond, i32 %mul80.i, i32 %mul.i
  br label %if.end8.i.i301.i

if.end8.i.i301.i:                                 ; preds = %if.end67.i, %if.end55.i.if.end8.i.i301.i_crit_edge
  %extra_size.0.i = phi i32 [ %mul.i, %if.end55.i.if.end8.i.i301.i_crit_edge ], [ %spec.select, %if.end67.i ]
  %user_length.0.i = phi i32 [ 0, %if.end55.i.if.end8.i.i301.i_crit_edge ], [ %conv69.i, %if.end67.i ]
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %extra_size.0.i, i32 noundef 3520) #16
  %tobool84.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool84.not.i, label %if.end8.i.i301.i.cleanup_crit_edge, label %if.end86.i

if.end8.i.i301.i.cleanup_crit_edge:               ; preds = %if.end8.i.i301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86.i:                                       ; preds = %if.end8.i.i301.i
  br i1 %tobool37.not.i, label %land.lhs.true89.i, label %land.lhs.true123.critedge.i

land.lhs.true89.i:                                ; preds = %if.end86.i
  %31 = ptrtoint ptr %length32.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %length32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp92.not.i = icmp eq i16 %32, 0
  br i1 %cmp92.not.i, label %land.lhs.true89.i.if.end130.i_crit_edge, label %if.then94.i

land.lhs.true89.i.if.end130.i_crit_edge:          ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130.i

if.then94.i:                                      ; preds = %land.lhs.true89.i
  %conv91.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %u12, align 4
  %mul100.i = mul nuw i32 %conv91.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul100.i)
  %cmp9.i.i250.i = icmp slt i32 %mul100.i, 0
  br i1 %cmp9.i.i250.i, label %land.rhs16.i.i253.i, label %if.then.i.i.i256.i

land.rhs16.i.i253.i:                              ; preds = %if.then94.i
  %.b71.i.i252.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i252.i, label %land.rhs16.i.i253.i.out.i_crit_edge, label %if.then27.i.i254.i, !prof !56

land.rhs16.i.i253.i.out.i_crit_edge:              ; preds = %land.rhs16.i.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then27.i.i254.i:                               ; preds = %land.rhs16.i.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out.i

if.then.i.i.i256.i:                               ; preds = %if.then94.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul100.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i257.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i257.i, label %if.then.i.i.i256.i.if.end.i.i271.i_crit_edge, label %land.lhs.true.i.i261.i

if.then.i.i.i256.i.if.end.i.i271.i_crit_edge:     ; preds = %if.then.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i271.i

land.lhs.true.i.i261.i:                           ; preds = %if.then.i.i.i256.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 %mul100.i, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i259.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i259.i)
  %cmp.i6.i260.i = icmp eq i32 %asmresult.i.i259.i, 0
  br i1 %cmp.i6.i260.i, label %if.then.i7.i268.i, label %land.lhs.true.i.i261.i.if.end.i.i271.i_crit_edge, !prof !56

land.lhs.true.i.i261.i.if.end.i.i271.i_crit_edge: ; preds = %land.lhs.true.i.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i271.i

if.then.i7.i268.i:                                ; preds = %land.lhs.true.i.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i262.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul100.i) #10
  %36 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i.i263.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i263.i to ptr
  %cpu_domain.i.i.i.i.i264.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i264.i) #7, !srcloc !57
  %and.i.i.i.i265.i = and i32 %38, -13
  %or.i.i.i.i266.i = or i32 %and.i.i.i.i265.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i266.i) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %call1.i.i.i267.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i, ptr noundef %34, i32 noundef %mul100.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end.i.i271.i

if.end.i.i271.i:                                  ; preds = %if.then.i7.i268.i, %land.lhs.true.i.i261.i.if.end.i.i271.i_crit_edge, %if.then.i.i.i256.i.if.end.i.i271.i_crit_edge
  %res.0.i.i269.i = phi i32 [ %mul100.i, %if.then.i.i.i256.i.if.end.i.i271.i_crit_edge ], [ %call1.i.i.i267.i, %if.then.i7.i268.i ], [ %mul100.i, %land.lhs.true.i.i261.i.if.end.i.i271.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i269.i)
  %tobool4.not.i.i270.i = icmp eq i32 %res.0.i.i269.i, 0
  br i1 %tobool4.not.i.i270.i, label %if.end104.i, label %if.then11.i.i274.i, !prof !56

if.then11.i.i274.i:                               ; preds = %if.end.i.i271.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i272.i = sub i32 %mul100.i, %res.0.i.i269.i
  %add.ptr.i.i273.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i.i272.i
  %39 = call ptr @memset(ptr %add.ptr.i.i273.i, i32 0, i32 %res.0.i.i269.i)
  br label %out.i

if.end104.i:                                      ; preds = %if.end.i.i271.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35636, i32 %cmd)
  %cmp105.i = icmp eq i32 %cmd, 35636
  br i1 %cmp105.i, label %if.then107.i, label %if.end104.i.if.end130.i_crit_edge

if.end104.i.if.end130.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130.i

if.then107.i:                                     ; preds = %if.end104.i
  %40 = ptrtoint ptr %length32.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %length32.i, align 4
  %conv109.i = zext i16 %41 to i32
  %key_len.i = getelementptr inbounds %struct.iw_encode_ext, ptr %call9.i.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_len.i, align 2
  %conv110.i = zext i16 %43 to i32
  %add111.i = add nuw nsw i32 %conv110.i, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add111.i, i32 %conv109.i)
  %cmp112.i = icmp ugt i32 %add111.i, %conv109.i
  br i1 %cmp112.i, label %if.then107.i.out.i_crit_edge, label %if.then107.i.if.end130.i_crit_edge

if.then107.i.if.end130.i_crit_edge:               ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130.i

if.then107.i.out.i_crit_edge:                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

land.lhs.true123.critedge.i:                      ; preds = %if.end86.i
  %flags124.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 5
  %44 = ptrtoint ptr %flags124.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags124.i, align 4
  %and125.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.then127.i, label %land.lhs.true123.critedge.i.if.end130.i_crit_edge

land.lhs.true123.critedge.i.if.end130.i_crit_edge: ; preds = %land.lhs.true123.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130.i

if.then127.i:                                     ; preds = %land.lhs.true123.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %length32.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %6, ptr %length32.i, align 4
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then127.i, %land.lhs.true123.critedge.i.if.end130.i_crit_edge, %if.then107.i.if.end130.i_crit_edge, %if.end104.i.if.end130.i_crit_edge, %land.lhs.true89.i.if.end130.i_crit_edge
  %call131.i = call i32 %handler(ptr noundef %dev, ptr noundef %info, ptr noundef %u12, ptr noundef nonnull %call9.i.i.i) #10
  %47 = ptrtoint ptr %length32.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %length32.i, align 4
  %conv135.i = add i16 %48, %essid_compat.2.i
  store i16 %conv135.i, ptr %length32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool136.not.i = icmp ne i32 %call131.i, 0
  %brmerge.i = or i1 %tobool37.not.i, %tobool136.not.i
  br i1 %brmerge.i, label %if.end130.i.if.end157.i_crit_edge, label %if.then140.i

if.end130.i.if.end157.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

if.then140.i:                                     ; preds = %if.end130.i
  %conv142.i = zext i16 %conv135.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %user_length.0.i, i32 %conv142.i)
  %cmp143.i = icmp ult i32 %user_length.0.i, %conv142.i
  br i1 %cmp143.i, label %if.then140.i.out.i_crit_edge, label %if.end146.i

if.then140.i.out.i_crit_edge:                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end146.i:                                      ; preds = %if.then140.i
  %49 = ptrtoint ptr %u12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %u12, align 4
  %mul152.i = mul nuw i32 %conv142.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul152.i)
  %cmp9.i.i283.i = icmp slt i32 %mul152.i, 0
  br i1 %cmp9.i.i283.i, label %land.rhs16.i.i286.i, label %if.then.i.i.i289.i

land.rhs16.i.i286.i:                              ; preds = %if.end146.i
  %.b71.i.i285.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i285.i, label %land.rhs16.i.i286.i.out.i_crit_edge, label %if.then27.i.i287.i, !prof !56

land.rhs16.i.i286.i.out.i_crit_edge:              ; preds = %land.rhs16.i.i286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then27.i.i287.i:                               ; preds = %land.rhs16.i.i286.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out.i

if.then.i.i.i289.i:                               ; preds = %if.end146.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul152.i, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #10
  %call.i.i290.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i290.i, label %if.then.i.i.i289.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i294.i

if.then.i.i.i289.i.copy_to_user.exit.i_crit_edge: ; preds = %if.then.i.i.i289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.end.i.i294.i:                                  ; preds = %if.then.i.i.i289.i
  %51 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 %mul152.i, i32 -1226833920) #15, !srcloc !61
  %asmresult.i.i292.i = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i292.i)
  %cmp.i6.i293.i = icmp eq i32 %asmresult.i.i292.i, 0
  br i1 %cmp.i6.i293.i, label %if.then2.i.i.i, label %if.end.i.i294.i.copy_to_user.exit.i_crit_edge

if.end.i.i294.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i295.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul152.i) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %50, ptr noundef nonnull %call9.i.i.i, i32 noundef %mul152.i) #10
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i294.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i289.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i296.i = phi i32 [ %mul152.i, %if.then.i.i.i289.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %mul152.i, %if.end.i.i294.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i296.i)
  %tobool154.not.i = icmp eq i32 %n.addr.0.i296.i, 0
  br i1 %tobool154.not.i, label %copy_to_user.exit.i.if.end157.i_crit_edge, label %copy_to_user.exit.i.out.i_crit_edge

copy_to_user.exit.i.out.i_crit_edge:              ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

copy_to_user.exit.i.if.end157.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

if.end157.i:                                      ; preds = %copy_to_user.exit.i.if.end157.i_crit_edge, %if.end130.i.if.end157.i_crit_edge
  %flags158.i = getelementptr [55 x %struct.iw_ioctl_description], ptr @standard_ioctl, i32 0, i32 %sub, i32 5
  %52 = ptrtoint ptr %flags158.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags158.i, align 4
  %and159.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.end157.i.out.i_crit_edge, label %land.lhs.true161.i

if.end157.i.out.i_crit_edge:                      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

land.lhs.true161.i:                               ; preds = %if.end157.i
  %54 = zext i32 %call131.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call131.i, label %land.lhs.true161.i.out.i_crit_edge [
    i32 0, label %land.lhs.true161.i.if.then166.i_crit_edge
    i32 -115, label %land.lhs.true161.i.if.then166.i_crit_edge40
  ]

land.lhs.true161.i.if.then166.i_crit_edge40:      ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then166.i

land.lhs.true161.i.if.then166.i_crit_edge:        ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then166.i

land.lhs.true161.i.out.i_crit_edge:               ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then166.i:                                     ; preds = %land.lhs.true161.i.if.then166.i_crit_edge, %land.lhs.true161.i.if.then166.i_crit_edge40
  %55 = add i32 %cmd, -35628
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %55)
  %56 = icmp ult i32 %55, -2
  br i1 %56, label %if.else171.i, label %if.then170.i

if.then170.i:                                     ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @wireless_send_event(ptr noundef %dev, i32 noundef %cmd, ptr noundef %u12, ptr noundef null) #10
  br label %out.i

if.else171.i:                                     ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @wireless_send_event(ptr noundef %dev, i32 noundef %cmd, ptr noundef %u12, ptr noundef nonnull %call9.i.i.i) #10
  br label %out.i

out.i:                                            ; preds = %if.else171.i, %if.then170.i, %land.lhs.true161.i.out.i_crit_edge, %if.end157.i.out.i_crit_edge, %copy_to_user.exit.i.out.i_crit_edge, %if.then27.i.i287.i, %land.rhs16.i.i286.i.out.i_crit_edge, %if.then140.i.out.i_crit_edge, %if.then107.i.out.i_crit_edge, %if.then11.i.i274.i, %if.then27.i.i254.i, %land.rhs16.i.i253.i.out.i_crit_edge
  %err.3.i = phi i32 [ %call131.i, %if.end157.i.out.i_crit_edge ], [ -14, %if.then107.i.out.i_crit_edge ], [ -7, %if.then140.i.out.i_crit_edge ], [ -14, %copy_to_user.exit.i.out.i_crit_edge ], [ %call131.i, %land.lhs.true161.i.out.i_crit_edge ], [ %call131.i, %if.else171.i ], [ %call131.i, %if.then170.i ], [ -14, %if.then11.i.i274.i ], [ -14, %if.then27.i.i254.i ], [ -14, %land.rhs16.i.i253.i.out.i_crit_edge ], [ -14, %if.then27.i.i287.i ], [ -14, %land.rhs16.i.i286.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %if.end14

if.end14:                                         ; preds = %out.i, %if.then9, %if.then4.if.end14_crit_edge
  %ret.0 = phi i32 [ %call, %if.then9 ], [ %call, %if.then4.if.end14_crit_edge ], [ %err.3.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %ret.0)
  %cmp15 = icmp eq i32 %ret.0, -115
  br i1 %cmp15, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then17.cleanup_crit_edge, label %land.lhs.true.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then17
  %wireless_handlers.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %59 = ptrtoint ptr %wireless_handlers.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wireless_handlers.i, align 8
  %tobool.not.i36 = icmp eq ptr %60, null
  br i1 %tobool.not.i36, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool3.not.i = icmp eq ptr %64, null
  br i1 %tobool3.not.i, label %land.lhs.true1.i.cleanup_crit_edge, label %if.then.i

land.lhs.true1.i.cleanup_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = call i32 %64(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.i.i301.i.cleanup_crit_edge, %if.else63.i.cleanup_crit_edge, %if.end55.i.cleanup_crit_edge, %if.end47.i.cleanup_crit_edge, %if.then38.i.cleanup_crit_edge, %cleanup.thread.i, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %if.end14.cleanup_crit_edge ], [ %call7.i, %if.then.i ], [ 0, %land.lhs.true1.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ -14, %cleanup.thread.i ], [ -12, %if.end8.i.i301.i.cleanup_crit_edge ], [ -14, %if.else63.i.cleanup_crit_edge ], [ -22, %if.end55.i.cleanup_crit_edge ], [ -7, %if.end47.i.cleanup_crit_edge ], [ -14, %if.then38.i.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioctl_private_call(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwe_stream_add_event(ptr nocapture readnone %info, ptr noundef writeonly %stream, ptr noundef readnone %ends, ptr nocapture noundef %iwe, i32 noundef %event_len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %stream, i32 %event_len
  %cmp = icmp ult ptr %add.ptr, %ends
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %event_len to i16
  %0 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %iwe, align 4
  %1 = load i32, ptr %iwe, align 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %stream, align 1
  %add.ptr3 = getelementptr i8, ptr %stream, i32 4
  %u = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %sub = add i32 %event_len, -4
  %3 = call ptr @memcpy(ptr %add.ptr3, ptr %u, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stream.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %stream, %entry.if.end_crit_edge ]
  ret ptr %stream.addr.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwe_stream_add_point(ptr nocapture readnone %info, ptr noundef writeonly %stream, ptr noundef readnone %ends, ptr nocapture noundef %iwe, ptr noundef readonly %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %add.ptr = getelementptr i8, ptr %stream, i32 %add
  %cmp = icmp ult ptr %add.ptr, %ends
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge, !prof !56

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %conv5 = trunc i32 %add to i16
  %2 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv5, ptr %iwe, align 4
  %3 = load i32, ptr %iwe, align 1
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %stream, align 1
  %add.ptr6 = getelementptr i8, ptr %stream, i32 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %length, align 1
  %7 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr6, align 1
  %8 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool12.not = icmp eq i16 %8, 0
  %tobool13.not = icmp eq ptr %extra, null
  %or.cond = or i1 %tobool13.not, %tobool12.not
  br i1 %or.cond, label %if.then.if.end20_crit_edge, label %if.then14

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = zext i16 %8 to i32
  %add.ptr15 = getelementptr i8, ptr %stream, i32 8
  %9 = call ptr @memcpy(ptr %add.ptr15, ptr %extra, i32 %conv11)
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %stream.addr.0 = phi ptr [ %stream, %entry.if.end20_crit_edge ], [ %add.ptr, %if.then14 ], [ %add.ptr, %if.then.if.end20_crit_edge ]
  ret ptr %stream.addr.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwe_stream_add_value(ptr nocapture readnone %info, ptr noundef %event, ptr noundef %value, ptr noundef readnone %ends, ptr nocapture noundef %iwe, i32 noundef %event_len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %event_len, -4
  %add.ptr = getelementptr i8, ptr %value, i32 %sub
  %cmp = icmp ult ptr %add.ptr, %ends
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %u = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %value, ptr %u, i32 %sub)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %event to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  %1 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %iwe, align 4
  %2 = load i32, ptr %iwe, align 1
  %3 = ptrtoint ptr %event to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %event, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %value, %entry.if.end_crit_edge ]
  ret ptr %value.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wext_pernet_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wext_nlevents = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 42
  %lock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 42, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %0 = ptrtoint ptr %wext_nlevents to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %wext_nlevents, ptr %wext_nlevents, align 4
  %prev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 42, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wext_nlevents, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 42, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wext_pernet_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wext_nlevents = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 42
  tail call void @skb_queue_purge(ptr noundef %wext_nlevents) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wext_netdev_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %state, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @net_rwsem) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn11.i = load ptr, ptr @net_namespace_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn11.i, @net_namespace_list
  br i1 %cmp.not13.i, label %entry.wireless_nlevent_flush.exit_crit_edge, label %entry.while.cond.preheader.i_crit_edge

entry.while.cond.preheader.i_crit_edge:           ; preds = %entry
  br label %while.cond.preheader.i

entry.wireless_nlevent_flush.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wireless_nlevent_flush.exit

for.cond.loopexit.i:                              ; preds = %while.body.i.for.cond.loopexit.i_crit_edge, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge
  %0 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_namespace_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge, label %for.cond.loopexit.i.while.cond.preheader.i_crit_edge

for.cond.loopexit.i.while.cond.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wireless_nlevent_flush.exit

while.cond.preheader.i:                           ; preds = %for.cond.loopexit.i.while.cond.preheader.i_crit_edge, %entry.while.cond.preheader.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ %.pn11.i, %entry.while.cond.preheader.i_crit_edge ]
  %net.015.i = getelementptr i8, ptr %.pn14.i, i32 -108
  %wext_nlevents.i = getelementptr i8, ptr %.pn14.i, i32 3036
  %call8.i = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents.i) #10
  %tobool.not9.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not9.i, label %while.cond.preheader.i.for.cond.loopexit.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call10.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call8.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  tail call void @rtnl_notify(ptr noundef nonnull %call10.i, ptr noundef %net.015.i, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 3264) #10
  %call.i = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.for.cond.loopexit.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.for.cond.loopexit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

wireless_nlevent_flush.exit:                      ; preds = %for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge, %entry.wireless_nlevent_flush.exit_crit_edge
  tail call void @up_read(ptr noundef nonnull @net_rwsem) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wireless_nlevent_process(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @net_rwsem) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn11.i = load ptr, ptr @net_namespace_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn11.i, @net_namespace_list
  br i1 %cmp.not13.i, label %entry.wireless_nlevent_flush.exit_crit_edge, label %entry.while.cond.preheader.i_crit_edge

entry.while.cond.preheader.i_crit_edge:           ; preds = %entry
  br label %while.cond.preheader.i

entry.wireless_nlevent_flush.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wireless_nlevent_flush.exit

for.cond.loopexit.i:                              ; preds = %while.body.i.for.cond.loopexit.i_crit_edge, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge
  %0 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_namespace_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge, label %for.cond.loopexit.i.while.cond.preheader.i_crit_edge

for.cond.loopexit.i.while.cond.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wireless_nlevent_flush.exit

while.cond.preheader.i:                           ; preds = %for.cond.loopexit.i.while.cond.preheader.i_crit_edge, %entry.while.cond.preheader.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ %.pn11.i, %entry.while.cond.preheader.i_crit_edge ]
  %net.015.i = getelementptr i8, ptr %.pn14.i, i32 -108
  %wext_nlevents.i = getelementptr i8, ptr %.pn14.i, i32 3036
  %call8.i = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents.i) #10
  %tobool.not9.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not9.i, label %while.cond.preheader.i.for.cond.loopexit.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call10.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call8.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  tail call void @rtnl_notify(ptr noundef nonnull %call10.i, ptr noundef %net.015.i, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 3264) #10
  %call.i = tail call ptr @skb_dequeue(ptr noundef %wext_nlevents.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.for.cond.loopexit.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.for.cond.loopexit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

wireless_nlevent_flush.exit:                      ; preds = %for.cond.loopexit.i.wireless_nlevent_flush.exit_crit_edge, %entry.wireless_nlevent_flush.exit_crit_edge
  tail call void @up_read(ptr noundef nonnull @net_rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iw_handler_get_iwstats(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_handlers.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %wireless_handlers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_handlers.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %get_wireless_stats.i = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_wireless_stats.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_wireless_stats.i, align 4
  %cmp2.not.i = icmp eq ptr %3, null
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.get_wireless_stats.exit_crit_edge

land.lhs.true.i.get_wireless_stats.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_wireless_stats.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr.i, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %if.end.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true8.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %wext.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 63
  %8 = ptrtoint ptr %wext.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wext.i, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %land.lhs.true8.i.cleanup_crit_edge, label %land.lhs.true12.i

land.lhs.true8.i.cleanup_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true12.i:                                ; preds = %land.lhs.true8.i
  %get_wireless_stats16.i = getelementptr inbounds %struct.iw_handler_def, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_wireless_stats16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_wireless_stats16.i, align 4
  %tobool17.not.i = icmp eq ptr %11, null
  br i1 %tobool17.not.i, label %land.lhs.true12.i.cleanup_crit_edge, label %land.lhs.true12.i.get_wireless_stats.exit_crit_edge

land.lhs.true12.i.get_wireless_stats.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_wireless_stats.exit

land.lhs.true12.i.cleanup_crit_edge:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

get_wireless_stats.exit:                          ; preds = %land.lhs.true12.i.get_wireless_stats.exit_crit_edge, %land.lhs.true.i.get_wireless_stats.exit_crit_edge
  %.sink.i = phi ptr [ %3, %land.lhs.true.i.get_wireless_stats.exit_crit_edge ], [ %11, %land.lhs.true12.i.get_wireless_stats.exit_crit_edge ]
  %call23.i = tail call ptr %.sink.i(ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call23.i, null
  br i1 %tobool.not, label %get_wireless_stats.exit.cleanup_crit_edge, label %if.then

get_wireless_stats.exit.cleanup_crit_edge:        ; preds = %get_wireless_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %get_wireless_stats.exit
  %12 = call ptr @memcpy(ptr %extra, ptr %call23.i, i32 32)
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 32, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not = icmp eq i16 %15, 0
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %updated = getelementptr inbounds %struct.iw_statistics, ptr %call23.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %updated, align 1
  %18 = and i8 %17, -8
  store i8 %18, ptr %updated, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then.cleanup_crit_edge, %get_wireless_stats.exit.cleanup_crit_edge, %land.lhs.true12.i.cleanup_crit_edge, %land.lhs.true8.i.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ -95, %get_wireless_stats.exit.cleanup_crit_edge ], [ -95, %land.lhs.true12.i.cleanup_crit_edge ], [ -95, %land.lhs.true8.i.cleanup_crit_edge ], [ -95, %land.lhs.true5.i.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_private(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_wireless_nlevent_flush, !1, !"__ksymtab_wireless_nlevent_flush", i1 false, i1 false}
!1 = !{!"../net/wireless/wext-core.c", i32 358, i32 1}
!2 = !{ptr @__initcall__kmod_wext_core__345_408_wireless_nlevent_init4, !3, !"__initcall__kmod_wext_core__345_408_wireless_nlevent_init4", i1 false, i1 false}
!3 = !{!"../net/wireless/wext-core.c", i32 408, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/wireless/wext-core.c", i32 481, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/wireless/wext-core.c", i32 503, i32 19}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/wireless/wext-core.c", i32 512, i32 20}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/wireless/wext-core.c", i32 517, i32 20}
!12 = !{ptr @__ksymtab_wireless_send_event, !13, !"__ksymtab_wireless_send_event", i1 false, i1 false}
!13 = !{!"../net/wireless/wext-core.c", i32 634, i32 1}
!14 = !{ptr @__ksymtab_iwe_stream_add_event, !15, !"__ksymtab_iwe_stream_add_event", i1 false, i1 false}
!15 = !{!"../net/wireless/wext-core.c", i32 1143, i32 1}
!16 = !{ptr @__ksymtab_iwe_stream_add_point, !17, !"__ksymtab_iwe_stream_add_point", i1 false, i1 false}
!17 = !{!"../net/wireless/wext-core.c", i32 1166, i32 1}
!18 = !{ptr @__ksymtab_iwe_stream_add_value, !19, !"__ksymtab_iwe_stream_add_value", i1 false, i1 false}
!19 = !{!"../net/wireless/wext-core.c", i32 1189, i32 1}
!20 = !{ptr @wext_pernet_ops, !21, !"wext_pernet_ops", i1 false, i1 false}
!21 = !{!"../net/wireless/wext-core.c", i32 390, i32 33}
!22 = !{ptr @skb_queue_head_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wext_netdev_notifier, !26, !"wext_netdev_notifier", i1 false, i1 false}
!26 = !{!"../net/wireless/wext-core.c", i32 375, i32 30}
!27 = !{ptr @standard_ioctl, !28, !"standard_ioctl", i1 false, i1 false}
!28 = !{!"../net/wireless/wext-core.c", i32 32, i32 42}
!29 = !{ptr @standard_event, !30, !"standard_event", i1 false, i1 false}
!30 = !{!"../net/wireless/wext-core.c", i32 265, i32 42}
!31 = !{ptr @event_type_size, !32, !"event_type_size", i1 false, i1 false}
!32 = !{!"../net/wireless/wext-core.c", i32 312, i32 18}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/net/netlink.h", i32 991, i32 3}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/wireless/wext-core.c", i32 416, i32 8}
!37 = !{ptr @wireless_nlevent_work, !36, !"wireless_nlevent_work", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 5393566}
!58 = !{i64 5393763}
!59 = !{i64 2152878996}
!60 = !{i64 2152898011, i64 2152898036}
!61 = !{i64 2152898692, i64 2152898717}
